use std::collections::HashMap;
use std::fs::{self, OpenOptions};
use std::io::{Read, Write};

use crate::sys_util::{now_ms, write_sysfs};
use crate::wasm_engine::{WasmJetsamDecision, WasmSandbox};

#[derive(Clone, Copy, Debug, Default)]
pub struct MemorySnapshot {
    pub mem_total_mb: i32,
    pub mem_avail_mb: i32,
    pub file_cache_mb: i32,
    pub anon_pages_mb: i32,
    pub swap_total_mb: i32,
    pub swap_free_mb: i32,
    pub zram_orig_mb: u64,
    pub zram_used_mb: u64,
    pub zram_ratio_x100: u64,
    pub psi_some_x100: i32,
    pub psi_full_x100: i32,
}

#[derive(Clone, Copy, Debug)]
struct PidJetsamState {
    bg_since_ms: i64,
    last_compact_ms: i64,
    post_compact_anon_kb: u64,
    seen_gen: u64,
}

pub struct JetsamMemoryEngine {
    pid_table: HashMap<u32, PidJetsamState>,
    scan_gen: u64,
    last_scan_ms: i64,
    last_swappiness: u32,
    pub total_compacted_apps: u64,
    pub total_reclaimed_kb: u64,
    pub last_mode_name: &'static str,
    pub last_snap: MemorySnapshot,
}

fn read_small_file(path: &str, buf: &mut [u8]) -> usize {
    let Ok(mut f) = OpenOptions::new().read(true).open(path) else {
        return 0;
    };
    f.read(buf).unwrap_or(0)
}

fn parse_kb_line(line: &str) -> u64 {
    for tok in line.split_whitespace().skip(1) {
        if let Ok(v) = tok.parse::<u64>() {
            return v;
        }
    }
    0
}

fn parse_avg10_x100(line: &str) -> i32 {
    for tok in line.split_whitespace() {
        if let Some(rest) = tok.strip_prefix("avg10=") {
            if let Some((int_s, frac_s)) = rest.split_once('.') {
                let i = int_s.parse::<i32>().unwrap_or(0);
                let mut f_chars = frac_s.chars();
                let d1 = f_chars.next().and_then(|c| c.to_digit(10)).unwrap_or(0) as i32;
                let d2 = f_chars.next().and_then(|c| c.to_digit(10)).unwrap_or(0) as i32;
                return i * 100 + d1 * 10 + d2;
            }
        }
    }
    0
}

pub fn sample_system_memory() -> MemorySnapshot {
    let mut snap = MemorySnapshot::default();
    let mut buf = [0u8; 2048];

    let n = read_small_file("/proc/meminfo", &mut buf);
    if n > 0 {
        let s = String::from_utf8_lossy(&buf[..n]);
        for line in s.lines() {
            if line.starts_with("MemTotal:") {
                snap.mem_total_mb = (parse_kb_line(line) / 1024) as i32;
            } else if line.starts_with("MemAvailable:") {
                snap.mem_avail_mb = (parse_kb_line(line) / 1024) as i32;
            } else if line.starts_with("Cached:") {
                snap.file_cache_mb = (parse_kb_line(line) / 1024) as i32;
            } else if line.starts_with("AnonPages:") {
                snap.anon_pages_mb = (parse_kb_line(line) / 1024) as i32;
            } else if line.starts_with("SwapTotal:") {
                snap.swap_total_mb = (parse_kb_line(line) / 1024) as i32;
            } else if line.starts_with("SwapFree:") {
                snap.swap_free_mb = (parse_kb_line(line) / 1024) as i32;
            }
        }
    }

    let n_psi = read_small_file("/proc/pressure/memory", &mut buf);
    if n_psi > 0 {
        let s = String::from_utf8_lossy(&buf[..n_psi]);
        for line in s.lines() {
            if line.starts_with("some ") {
                snap.psi_some_x100 = parse_avg10_x100(line);
            } else if line.starts_with("full ") {
                snap.psi_full_x100 = parse_avg10_x100(line);
            }
        }
    }

    let n_zr = read_small_file("/sys/block/zram0/mm_stat", &mut buf);
    if n_zr > 0 {
        let s = String::from_utf8_lossy(&buf[..n_zr]);
        let mut cols = s.split_whitespace();
        let orig_b = cols.next().and_then(|v| v.parse::<u64>().ok()).unwrap_or(0);
        let _compr_b = cols.next().and_then(|v| v.parse::<u64>().ok()).unwrap_or(0);
        let used_b = cols.next().and_then(|v| v.parse::<u64>().ok()).unwrap_or(0);
        snap.zram_orig_mb = orig_b / (1024 * 1024);
        snap.zram_used_mb = used_b / (1024 * 1024);
        if used_b > 65_536 {
            snap.zram_ratio_x100 = (orig_b.saturating_mul(100)) / used_b;
        } else {
            snap.zram_ratio_x100 = 100;
        }
    }

    snap
}

fn read_pid_oom_adj(pid: u32, buf: &mut [u8; 64]) -> Option<i32> {
    let path = format!("/proc/{}/oom_score_adj", pid);
    let n = read_small_file(&path, buf);
    if n == 0 {
        return None;
    }
    std::str::from_utf8(&buf[..n]).ok()?.trim().parse::<i32>().ok()
}

fn read_pid_rss_anon_kb(pid: u32, buf: &mut [u8; 2048]) -> Option<u64> {
    let path = format!("/proc/{}/status", pid);
    let n = read_small_file(&path, buf);
    if n == 0 {
        return None;
    }
    let s = String::from_utf8_lossy(&buf[..n]);
    for line in s.lines() {
        if line.starts_with("RssAnon:") {
            return Some(parse_kb_line(line));
        }
    }
    None
}

fn reclaim_pid_cold_anon(pid: u32) -> bool {
    let path = format!("/proc/{}/reclaim", pid);
    let Ok(mut f) = OpenOptions::new().write(true).open(&path) else {
        return false;
    };
    f.write_all(b"anon\n").is_ok()
}

impl JetsamMemoryEngine {
    pub fn new() -> Self {
        Self {
            pid_table: HashMap::with_capacity(96),
            scan_gen: 0,
            last_scan_ms: 0,
            last_swappiness: 0,
            total_compacted_apps: 0,
            total_reclaimed_kb: 0,
            last_mode_name: "INIT",
            last_snap: MemorySnapshot::default(),
        }
    }

    pub fn tick(
        &mut self,
        wasm_sb: &mut WasmSandbox,
        ring0_score: i32,
        touch_vel: i32,
        is_standby: bool,
    ) {
        let snap = sample_system_memory();
        self.last_snap = snap;

        let dec: WasmJetsamDecision = wasm_sb.eval_jetsam_action(
            snap.mem_avail_mb,
            snap.swap_free_mb,
            snap.psi_some_x100,
            ring0_score,
            touch_vel,
            is_standby,
        );
        self.last_mode_name = dec.mode_name();

        if dec.target_swappiness != self.last_swappiness {
            let _ = write_sysfs("/proc/sys/vm/swappiness", &dec.target_swappiness.to_string());
            self.last_swappiness = dec.target_swappiness;
        }

        if dec.max_pids_per_pass == 0 {
            return;
        }

        let now = now_ms();
        let min_interval_ms = if dec.mode == 3 { 2_200 } else { 4_500 };
        if now - self.last_scan_ms < min_interval_ms {
            return;
        }
        self.last_scan_ms = now;
        self.scan_gen = self.scan_gen.wrapping_add(1);
        let cur_gen = self.scan_gen;

        let settle_req_ms = if dec.mode == 3 { 6_000 } else { 10_000 };

        let Ok(entries) = fs::read_dir("/proc") else {
            return;
        };

        let mut adj_buf = [0u8; 64];
        let mut status_buf = [0u8; 2048];
        let mut candidates: Vec<(i32, u64, u32)> = Vec::with_capacity(24);

        for entry in entries.flatten() {
            let fname = entry.file_name();
            let Some(s) = fname.to_str() else {
                continue;
            };
            let Ok(pid) = s.parse::<u32>() else {
                continue;
            };
            if pid < 350 {
                continue;
            }

            let Some(adj) = read_pid_oom_adj(pid, &mut adj_buf) else {
                continue;
            };

            if adj < 500 {
                // App moved back to foreground/visible/perceptible -> reset background timer!
                self.pid_table.remove(&pid);
                continue;
            }

            let st = self.pid_table.entry(pid).or_insert(PidJetsamState {
                bg_since_ms: now,
                last_compact_ms: 0,
                post_compact_anon_kb: 0,
                seen_gen: cur_gen,
            });
            st.seen_gen = cur_gen;

            if adj < dec.min_oom_adj {
                continue;
            }
            if now - st.bg_since_ms < settle_req_ms {
                continue;
            }
            if st.last_compact_ms > 0 && now - st.last_compact_ms < 25_000 {
                continue;
            }

            let Some(anon_kb) = read_pid_rss_anon_kb(pid, &mut status_buf) else {
                continue;
            };
            if anon_kb < dec.min_anon_kb {
                continue;
            }
            // Skip already-compacted apps unless their anonymous heap grew by >= 10 MB again
            if st.last_compact_ms > 0 && anon_kb < st.post_compact_anon_kb.saturating_add(10_240) {
                continue;
            }

            candidates.push((adj, anon_kb, pid));
        }

        // Prune exited processes cleanly
        self.pid_table.retain(|_, v| v.seen_gen == cur_gen);

        if candidates.is_empty() {
            return;
        }

        // Prioritize coldest cached apps first (highest oom_score_adj, then largest RssAnon)
        candidates.sort_unstable_by(|a, b| b.0.cmp(&a.0).then_with(|| b.1.cmp(&a.1)));

        for &(_adj, before_anon_kb, pid) in candidates.iter().take(dec.max_pids_per_pass) {
            if reclaim_pid_cold_anon(pid) {
                let after_anon_kb =
                    read_pid_rss_anon_kb(pid, &mut status_buf).unwrap_or(before_anon_kb / 2);
                let saved_kb = before_anon_kb.saturating_sub(after_anon_kb);
                if let Some(st) = self.pid_table.get_mut(&pid) {
                    st.last_compact_ms = now;
                    st.post_compact_anon_kb = after_anon_kb;
                }
                self.total_compacted_apps = self.total_compacted_apps.saturating_add(1);
                self.total_reclaimed_kb = self.total_reclaimed_kb.saturating_add(saved_kb);
            }
        }
    }
}
