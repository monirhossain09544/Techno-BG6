#![allow(dead_code)]
use std::ffi::CString;
use std::fs;

// ============================================================================
// Pure-Rust ELF64 + SYS_bpf JIT Loader for Linux 5.4.210 (aarch64)
// Zero C libbpf dependency! Loads #[no_std] Rust bg6_ebpf.o into Ring-0 JIT.
// ============================================================================

const SYS_BPF_AARCH64: libc::c_long = 280;
const SYS_PERF_EVENT_OPEN_AARCH64: libc::c_long = 241;

const BPF_MAP_CREATE: libc::c_int = 0;
const BPF_MAP_LOOKUP_ELEM: libc::c_int = 1;
const BPF_PROG_LOAD: libc::c_int = 5;
const BPF_OBJ_PIN: libc::c_int = 6;
const BPF_PROG_ATTACH: libc::c_int = 8;
const BPF_OBJ_GET_INFO_BY_FD: libc::c_int = 15;

const BPF_MAP_TYPE_ARRAY: u32 = 2;
const BPF_PROG_TYPE_SOCKET_FILTER: u32 = 1;
const BPF_PROG_TYPE_KPROBE: u32 = 2;
const BPF_PROG_TYPE_CGROUP_SKB: u32 = 8;

const BPF_CGROUP_INET_INGRESS: u32 = 0;
const BPF_CGROUP_INET_EGRESS: u32 = 1;
const BPF_F_ALLOW_MULTI: u32 = 1 << 1;

const BPF_PSEUDO_MAP_FD: u8 = 1;

const PERF_TYPE_TRACEPOINT: u32 = 2;
const PERF_FLAG_FD_CLOEXEC_VAL: libc::c_ulong = 1 << 3;
const PERF_EVENT_IOC_ENABLE: libc::c_ulong = 0x2400;
const PERF_EVENT_IOC_SET_BPF: libc::c_ulong = 0x40042408;

#[repr(C)]
#[derive(Clone, Copy, Default)]
struct BpfInsn {
    code: u8,
    regs: u8,
    off: i16,
    imm: i32,
}

#[repr(C)]
struct BpfMapCreateAttr {
    map_type: u32,
    key_size: u32,
    value_size: u32,
    max_entries: u32,
    map_flags: u32,
    inner_map_fd: u32,
    numa_node: u32,
    map_name: [u8; 16],
}

#[repr(C)]
struct BpfMapElemAttr {
    map_fd: u32,
    _pad0: u32,
    key: u64,
    value: u64,
    flags: u64,
}

#[repr(C)]
struct BpfProgLoadAttr {
    prog_type: u32,
    insn_cnt: u32,
    insns: u64,
    license: u64,
    log_level: u32,
    log_size: u32,
    log_buf: u64,
    kern_version: u32,
    prog_flags: u32,
    prog_name: [u8; 16],
    prog_ifindex: u32,
    expected_attach_type: u32,
}

#[repr(C)]
struct BpfAttachAttr {
    target_fd: u32,
    attach_bpf_fd: u32,
    attach_type: u32,
    attach_flags: u32,
}

#[repr(C)]
struct BpfInfoByFdAttr {
    bpf_fd: u32,
    info_len: u32,
    info: u64,
}

#[repr(C)]
#[derive(Default)]
struct BpfProgInfo {
    prog_type: u32,
    id: u32,
    tag: [u8; 8],
    jited_prog_len: u32,
    xlated_prog_len: u32,
    jited_prog_insns: u64,
    xlated_prog_insns: u64,
    load_time: u64,
    created_by_uid: u32,
    nr_map_ids: u32,
    map_ids: u64,
    name: [u8; 16],
}

#[repr(C)]
#[derive(Default)]
struct BpfMapInfo {
    map_type: u32,
    id: u32,
    key_size: u32,
    value_size: u32,
    max_entries: u32,
    map_flags: u32,
    name: [u8; 16],
}

#[repr(C)]
struct PerfEventAttr {
    type_: u32,
    size: u32,
    config: u64,
    sample_period: u64,
    sample_type: u64,
    read_format: u64,
    flags: u64,
    wakeup_events: u32,
    bp_type: u32,
    config1: u64,
    config2: u64,
    branch_sample_type: u64,
    sample_regs_user: u64,
    sample_stack_user: u32,
    clockid: i32,
    sample_regs_intr: u64,
    aux_watermark: u32,
    sample_max_stack: u16,
    __reserved_2: u16,
}

#[derive(Clone, Copy, Default, Debug)]
pub struct EbpfTelemetry {
    pub egress_pkts: u64,
    pub egress_bytes: u64,
    pub ingress_pkts: u64,
    pub ingress_bytes: u64,
    pub prio_lowlat_pkts: u64,
    pub last_pkt_ns: u64,
    pub kprobe_wakeups: u64,
    pub last_wake_ns: u64,
}

pub struct LiveEbpfRuntime {
    pub map_fd: i32,
    pub map_id: u32,
    pub egress_fd: i32,
    pub egress_prog_id: u32,
    pub egress_jited_bytes: u32,
    pub ingress_fd: i32,
    pub ingress_prog_id: u32,
    pub ingress_jited_bytes: u32,
    pub kprobe_fd: i32,
    pub kprobe_prog_id: u32,
    pub kprobe_jited_bytes: u32,
    pub perf_fd: i32,
    pub cgroup_attached: bool,
    pub kprobe_attached: bool,
    pub status_summary: String,
}

fn copy_bpf_name(dst: &mut [u8; 16], s: &str) {
    let bytes = s.as_bytes();
    let n = bytes.len().min(15);
    dst[..n].copy_from_slice(&bytes[..n]);
}

unsafe fn sys_bpf<T>(cmd: libc::c_int, attr: &mut T) -> i32 {
    unsafe {
        libc::syscall(
            SYS_BPF_AARCH64,
            cmd,
            attr as *mut T as usize,
            core::mem::size_of::<T>(),
        ) as i32
    }
}

fn raise_memlock_rlimit() {
    let rlim = libc::rlimit {
        rlim_cur: libc::RLIM_INFINITY,
        rlim_max: libc::RLIM_INFINITY,
    };
    unsafe {
        libc::setrlimit(libc::RLIMIT_MEMLOCK, &rlim);
    }
}

fn read_u16_le(b: &[u8], off: usize) -> u16 {
    u16::from_le_bytes([b[off], b[off + 1]])
}
fn read_u32_le(b: &[u8], off: usize) -> u32 {
    u32::from_le_bytes([b[off], b[off + 1], b[off + 2], b[off + 3]])
}
fn read_u64_le(b: &[u8], off: usize) -> u64 {
    u64::from_le_bytes([
        b[off],
        b[off + 1],
        b[off + 2],
        b[off + 3],
        b[off + 4],
        b[off + 5],
        b[off + 6],
        b[off + 7],
    ])
}

#[derive(Clone)]
struct ElfSec {
    name: String,
    sh_type: u32,
    sh_offset: usize,
    sh_size: usize,
    sh_info: u32,
    sh_entsize: usize,
}

fn cstr_at(strtab: &[u8], idx: usize) -> String {
    if idx >= strtab.len() {
        return String::new();
    }
    let end = strtab[idx..]
        .iter()
        .position(|&c| c == 0)
        .map(|p| idx + p)
        .unwrap_or(strtab.len());
    String::from_utf8_lossy(&strtab[idx..end]).into_owned()
}

fn get_prog_info(fd: i32) -> (u32, u32) {
    let mut info = BpfProgInfo::default();
    let mut attr = BpfInfoByFdAttr {
        bpf_fd: fd as u32,
        info_len: core::mem::size_of::<BpfProgInfo>() as u32,
        info: &mut info as *mut BpfProgInfo as u64,
    };
    let rc = unsafe { sys_bpf(BPF_OBJ_GET_INFO_BY_FD, &mut attr) };
    if rc == 0 {
        (info.id, info.jited_prog_len)
    } else {
        (0, 0)
    }
}

fn get_map_id(fd: i32) -> u32 {
    let mut info = BpfMapInfo::default();
    let mut attr = BpfInfoByFdAttr {
        bpf_fd: fd as u32,
        info_len: core::mem::size_of::<BpfMapInfo>() as u32,
        info: &mut info as *mut BpfMapInfo as u64,
    };
    if unsafe { sys_bpf(BPF_OBJ_GET_INFO_BY_FD, &mut attr) } == 0 {
        info.id
    } else {
        0
    }
}

impl LiveEbpfRuntime {
    pub fn load_and_attach(elf_path: &str) -> Result<Self, String> {
        raise_memlock_rlimit();

        let elf = fs::read(elf_path).map_err(|e| format!("read {}: {}", elf_path, e))?;
        if elf.len() < 64 || &elf[0..4] != b"\x7fELF" || elf[4] != 2 || elf[5] != 1 {
            return Err("Invalid 64-bit LE BPF ELF header".into());
        }

        let shoff = read_u64_le(&elf, 40) as usize;
        let shentsize = read_u16_le(&elf, 58) as usize;
        let shnum = read_u16_le(&elf, 60) as usize;
        let shstrndx = read_u16_le(&elf, 62) as usize;

        if shoff + shnum * shentsize > elf.len() || shstrndx >= shnum {
            return Err("Truncated ELF section table".into());
        }

        let shstr_off = read_u64_le(&elf, shoff + shstrndx * shentsize + 24) as usize;
        let shstr_sz = read_u64_le(&elf, shoff + shstrndx * shentsize + 32) as usize;
        let shstr = &elf[shstr_off..shstr_off + shstr_sz];

        let mut secs = Vec::with_capacity(shnum);
        for i in 0..shnum {
            let base = shoff + i * shentsize;
            let name_off = read_u32_le(&elf, base) as usize;
            let sh_type = read_u32_le(&elf, base + 4);
            let sh_offset = read_u64_le(&elf, base + 24) as usize;
            let sh_size = read_u64_le(&elf, base + 32) as usize;
            let sh_info = read_u32_le(&elf, base + 44);
            let sh_entsize = read_u64_le(&elf, base + 56) as usize;
            secs.push(ElfSec {
                name: cstr_at(shstr, name_off),
                sh_type,
                sh_offset,
                sh_size,
                sh_info,
                sh_entsize,
            });
        }

        // Create shared Ring-0 BPF telemetry map (16 x u64)
        let mut mcreate = BpfMapCreateAttr {
            map_type: BPF_MAP_TYPE_ARRAY,
            key_size: 4,
            value_size: 8,
            max_entries: 16,
            map_flags: 0,
            inner_map_fd: 0,
            numa_node: 0,
            map_name: [0u8; 16],
        };
        copy_bpf_name(&mut mcreate.map_name, "bg6_rust_map");
        let map_fd = unsafe { sys_bpf(BPF_MAP_CREATE, &mut mcreate) };
        if map_fd < 0 {
            return Err(format!(
                "BPF_MAP_CREATE failed errno={}",
                std::io::Error::last_os_error()
            ));
        }
        let map_id = get_map_id(map_fd);

        // Pin BG6_TELEMETRY_MAP to /sys/fs/bpf/netd_shared/map_bg6_rust_telemetry (0666)
        let pin_path = "/sys/fs/bpf/netd_shared/map_bg6_rust_telemetry";
        let _ = fs::remove_file(pin_path);
        if let Ok(c_pin) = CString::new(pin_path) {
            #[repr(C)]
            struct BpfPinAttr {
                pathname: u64,
                bpf_fd: u32,
                file_flags: u32,
            }
            let mut pin_attr = BpfPinAttr {
                pathname: c_pin.as_ptr() as u64,
                bpf_fd: map_fd as u32,
                file_flags: 0,
            };
            let _ = unsafe { sys_bpf(BPF_OBJ_PIN, &mut pin_attr) };
            unsafe { libc::chmod(c_pin.as_ptr(), 0o666) };
        }

        let load_sec = |sec_name: &str, prog_type: u32, prog_label: &str, exp_attach: u32| -> Result<i32, String> {
            let (sec_idx, sec) = secs
                .iter()
                .enumerate()
                .find(|(_, s)| s.name == sec_name)
                .ok_or_else(|| format!("missing ELF section {}", sec_name))?;

            if sec.sh_size == 0 || sec.sh_size % 8 != 0 {
                return Err(format!("invalid insn size in {}", sec_name));
            }
            let cnt = sec.sh_size / 8;
            let mut insns = vec![BpfInsn::default(); cnt];
            let raw = &elf[sec.sh_offset..sec.sh_offset + sec.sh_size];
            for i in 0..cnt {
                let b = i * 8;
                insns[i] = BpfInsn {
                    code: raw[b],
                    regs: raw[b + 1],
                    off: i16::from_le_bytes([raw[b + 2], raw[b + 3]]),
                    imm: i32::from_le_bytes([raw[b + 4], raw[b + 5], raw[b + 6], raw[b + 7]]),
                };
            }

            // Patch R_BPF_64_64 map FD relocations targeting this section (SHT_REL=9, SHT_RELA=4)
            for rsec in &secs {
                if (rsec.sh_type == 9 || rsec.sh_type == 4) && rsec.sh_info as usize == sec_idx && rsec.sh_entsize >= 16 {
                    let nrel = rsec.sh_size / rsec.sh_entsize;
                    for r in 0..nrel {
                        let rb = rsec.sh_offset + r * rsec.sh_entsize;
                        let r_off = read_u64_le(&elf, rb) as usize;
                        let r_info = read_u64_le(&elf, rb + 8);
                        let r_type = (r_info & 0xffff_ffff) as u32;
                        // R_BPF_64_64 = 1 (64-bit LD_IMM64 map load)
                        if r_type == 1 && r_off / 8 < insns.len() {
                            let idx = r_off / 8;
                            let dst_reg = insns[idx].regs & 0x0f;
                            insns[idx].regs = (BPF_PSEUDO_MAP_FD << 4) | dst_reg;
                            insns[idx].imm = map_fd;
                        }
                    }
                }
            }

            let lic = CString::new("GPL").unwrap();
            let mut log_buf = vec![0u8; 16384];
            let mut pattr = BpfProgLoadAttr {
                prog_type,
                insn_cnt: insns.len() as u32,
                insns: insns.as_ptr() as u64,
                license: lic.as_ptr() as u64,
                log_level: 1,
                log_size: log_buf.len() as u32,
                log_buf: log_buf.as_mut_ptr() as u64,
                kern_version: 0,
                prog_flags: 0,
                prog_name: [0u8; 16],
                prog_ifindex: 0,
                expected_attach_type: exp_attach,
            };
            copy_bpf_name(&mut pattr.prog_name, prog_label);

            let fd = unsafe { sys_bpf(BPF_PROG_LOAD, &mut pattr) };
            if fd < 0 {
                let err = std::io::Error::last_os_error();
                let vlog = cstr_at(&log_buf, 0);
                return Err(format!("BPF_PROG_LOAD {} failed: {} | verifier: {}", sec_name, err, vlog));
            }
            Ok(fd)
        };

        let egress_fd = load_sec(
            "cgroup_skb/egress",
            BPF_PROG_TYPE_CGROUP_SKB,
            "bg6_rs_egress",
            BPF_CGROUP_INET_EGRESS,
        )?;
        let ingress_fd = load_sec(
            "cgroup_skb/ingress",
            BPF_PROG_TYPE_CGROUP_SKB,
            "bg6_rs_ingress",
            BPF_CGROUP_INET_INGRESS,
        )?;
        let kprobe_fd = load_sec(
            "kprobe/wake_up",
            BPF_PROG_TYPE_KPROBE,
            "bg6_rs_wakeup",
            0,
        )?;

        let (egress_prog_id, egress_jited_bytes) = get_prog_info(egress_fd);
        let (ingress_prog_id, ingress_jited_bytes) = get_prog_info(ingress_fd);
        let (kprobe_prog_id, kprobe_jited_bytes) = get_prog_info(kprobe_fd);

        let mut cgroup_attached = false;
        // 1b. Attach #[no_std] Rust SOCKET_FILTER to global AF_PACKET hook (zero-copy return 0)
        if let Ok(sf_fd) = load_sec(
            "socket_filter/inspector",
            BPF_PROG_TYPE_SOCKET_FILTER,
            "bg6_rs_pkt_tap",
            0,
        ) {
            let eth_p_all = (0x0003u16).to_be() as libc::c_int;
            let pkt_sock = unsafe {
                libc::socket(
                    libc::AF_PACKET,
                    libc::SOCK_RAW | libc::SOCK_CLOEXEC,
                    eth_p_all,
                )
            };
            if pkt_sock >= 0 {
                const SO_ATTACH_BPF: libc::c_int = 50;
                let rc = unsafe {
                    libc::setsockopt(
                        pkt_sock,
                        libc::SOL_SOCKET,
                        SO_ATTACH_BPF,
                        &sf_fd as *const i32 as *const libc::c_void,
                        4,
                    )
                };
                if rc == 0 {
                    cgroup_attached = true;
                    // Intentionally keep pkt_sock and sf_fd open for the lifetime of the daemon
                } else {
                    unsafe {
                        libc::close(pkt_sock);
                        libc::close(sf_fd);
                    }
                }
            } else {
                unsafe { libc::close(sf_fd) };
            }
        }

        // 2. Attach KPROBE to wake_up_new_task via tracing kprobe_events
        let mut perf_fd = -1;
        let mut kprobe_attached = false;
        for trace_root in ["/sys/kernel/tracing", "/sys/kernel/debug/tracing"] {
            let kprobe_ev = format!("{}/kprobe_events", trace_root);
            if fs::metadata(&kprobe_ev).is_ok() {
                let _ = crate::sys_util::write_sysfs(&kprobe_ev, "p:kprobes/bg6_rs_wake wake_up_new_task\n");
                let id_path = format!("{}/events/kprobes/bg6_rs_wake/id", trace_root);
                if let Some(ev_id) = crate::sys_util::read_sysfs_i64(&id_path) {
                    let mut pattr: PerfEventAttr = unsafe { core::mem::zeroed() };
                    pattr.type_ = PERF_TYPE_TRACEPOINT;
                    pattr.size = core::mem::size_of::<PerfEventAttr>() as u32;
                    pattr.config = ev_id as u64;
                    pattr.sample_period = 1;
                    pattr.wakeup_events = 1;

                    let pfd = unsafe {
                        libc::syscall(
                            SYS_PERF_EVENT_OPEN_AARCH64,
                            &pattr as *const PerfEventAttr as usize,
                            -1i32, // all PIDs
                            0i32,  // CPU 0 (tracepoint kprobe fires globally across CPUs or CPU0; attach CPU0)
                            -1i32,
                            PERF_FLAG_FD_CLOEXEC_VAL,
                        ) as i32
                    };
                    if pfd >= 0 {
                        let r_set = unsafe { libc::ioctl(pfd, PERF_EVENT_IOC_SET_BPF as _, kprobe_fd) };
                        let r_en = unsafe { libc::ioctl(pfd, PERF_EVENT_IOC_ENABLE as _, 0) };
                        if r_set == 0 && r_en == 0 {
                            perf_fd = pfd;
                            kprobe_attached = true;
                            break;
                        } else {
                            unsafe { libc::close(pfd) };
                        }
                    }
                }
            }
        }

        let status_summary = format!(
            "loaded=true map_id={} egress_id={}({}B_arm64_jit) ingress_id={}({}B_arm64_jit) kprobe_id={}({}B_arm64_jit) cg_attached={} kprobe_attached={}",
            map_id,
            egress_prog_id,
            egress_jited_bytes,
            ingress_prog_id,
            ingress_jited_bytes,
            kprobe_prog_id,
            kprobe_jited_bytes,
            cgroup_attached,
            kprobe_attached
        );

        Ok(Self {
            map_fd,
            map_id,
            egress_fd,
            egress_prog_id,
            egress_jited_bytes,
            ingress_fd,
            ingress_prog_id,
            ingress_jited_bytes,
            kprobe_fd,
            kprobe_prog_id,
            kprobe_jited_bytes,
            perf_fd,
            cgroup_attached,
            kprobe_attached,
            status_summary,
        })
    }

    fn lookup_u64(&self, slot: u32) -> u64 {
        let mut key = slot;
        let mut val: u64 = 0;
        let mut attr = BpfMapElemAttr {
            map_fd: self.map_fd as u32,
            _pad0: 0,
            key: &mut key as *mut u32 as u64,
            value: &mut val as *mut u64 as u64,
            flags: 0,
        };
        if unsafe { sys_bpf(BPF_MAP_LOOKUP_ELEM, &mut attr) } == 0 {
            val
        } else {
            0
        }
    }

    pub fn read_telemetry(&self) -> EbpfTelemetry {
        EbpfTelemetry {
            egress_pkts: self.lookup_u64(0),
            egress_bytes: self.lookup_u64(1),
            ingress_pkts: self.lookup_u64(2),
            ingress_bytes: self.lookup_u64(3),
            prio_lowlat_pkts: self.lookup_u64(4),
            last_pkt_ns: self.lookup_u64(5),
            kprobe_wakeups: self.lookup_u64(6),
            last_wake_ns: self.lookup_u64(7),
        }
    }
}

// ============================================================================
// Root Ring-0 eBPF Firewall Enforcer Thread (runs as UID 0 in bg6_rust_core)
// Directly manipulates /sys/fs/bpf/netd_shared/map_netd_* via SYS_bpf (#280)
// ============================================================================

const BPF_MAP_UPDATE_ELEM: libc::c_int = 2;
const BPF_MAP_DELETE_ELEM: libc::c_int = 3;
const BPF_OBJ_GET: libc::c_int = 7;

const PENALTY_BOX_USER_MATCH: u32 = 2;     // 1 << 1
const RESTRICTED_MATCH: u32 = 32;          // 1 << 5
const IIF_MATCH: u32 = 128;                // 1 << 7
const OEM_DENY_1_MATCH: u32 = 512;         // 1 << 9
const OEM_DENY_2_MATCH: u32 = 1024;        // 1 << 10
const OEM_DENY_3_MATCH: u32 = 2048;        // 1 << 11
const BACKGROUND_MATCH: u32 = 4096;        // 1 << 12
const PENALTY_BOX_ADMIN_MATCH: u32 = 8192; // 1 << 13

#[repr(C)]
#[derive(Clone, Copy, Default)]
struct UidOwnerValue {
    iif: u32,
    rule: u32,
}

#[repr(C)]
#[derive(Clone, Copy, Default)]
struct IngressDiscardKey {
    daddr: [u8; 16],
}

#[repr(C)]
#[derive(Clone, Copy, Default)]
struct IngressDiscardValue {
    iif1: u32,
    iif2: u32,
}

#[repr(C)]
struct BpfObjAttr {
    pathname: u64,
    bpf_fd: u32,
    file_flags: u32,
}

fn chmod_c(path: &str, mode: u32) {
    if let Ok(cs) = CString::new(path) {
        unsafe {
            libc::chmod(cs.as_ptr(), mode as libc::mode_t);
        }
    }
}

fn bpf_obj_get_rw(path: &str) -> i32 {
    chmod_c(path, 0o666);
    let Ok(cs) = CString::new(path) else {
        return -1;
    };
    let mut attr = BpfObjAttr {
        pathname: cs.as_ptr() as u64,
        bpf_fd: 0,
        file_flags: 0,
    };
    unsafe { sys_bpf(BPF_OBJ_GET, &mut attr) }
}

fn map_lookup_any<K, V>(fd: i32, key: &K, val: &mut V) -> bool {
    if fd < 0 {
        return false;
    }
    let mut attr = BpfMapElemAttr {
        map_fd: fd as u32,
        _pad0: 0,
        key: key as *const K as u64,
        value: val as *mut V as u64,
        flags: 0,
    };
    unsafe { sys_bpf(BPF_MAP_LOOKUP_ELEM, &mut attr) == 0 }
}

fn map_update_any<K, V>(fd: i32, key: &K, val: &V) -> bool {
    if fd < 0 {
        return false;
    }
    let mut attr = BpfMapElemAttr {
        map_fd: fd as u32,
        _pad0: 0,
        key: key as *const K as u64,
        value: val as *const V as u64,
        flags: 0,
    };
    unsafe { sys_bpf(BPF_MAP_UPDATE_ELEM, &mut attr) == 0 }
}

fn map_delete_any<K>(fd: i32, key: &K) -> bool {
    if fd < 0 {
        return false;
    }
    let mut attr = BpfMapElemAttr {
        map_fd: fd as u32,
        _pad0: 0,
        key: key as *const K as u64,
        value: 0,
        flags: 0,
    };
    unsafe { sys_bpf(BPF_MAP_DELETE_ELEM, &mut attr) == 0 }
}

fn detect_ifindex(ifname: &str, default_idx: u32) -> u32 {
    let p = format!("/sys/class/net/{}/ifindex", ifname);
    if let Ok(s) = fs::read_to_string(&p) {
        if let Ok(v) = s.trim().parse::<u32>() {
            if v > 0 {
                return v;
            }
        }
    }
    default_idx
}

fn is_wlan_active() -> bool {
    if let Ok(rt) = fs::read_to_string("/proc/net/route") {
        if rt.lines().skip(1).any(|l| l.starts_with("wlan0")) {
            return true;
        }
    }
    false
}

fn parse_ipv4_discard_key(ip_str: &str) -> Option<IngressDiscardKey> {
    let parts: Vec<&str> = ip_str.trim().split('.').collect();
    if parts.len() != 4 {
        return None;
    }
    let a = parts[0].parse::<u8>().ok()?;
    let b = parts[1].parse::<u8>().ok()?;
    let c = parts[2].parse::<u8>().ok()?;
    let d = parts[3].parse::<u8>().ok()?;
    let mut daddr = [0u8; 16];
    daddr[10] = 0xff;
    daddr[11] = 0xff;
    daddr[12] = a;
    daddr[13] = b;
    daddr[14] = c;
    daddr[15] = d;
    Some(IngressDiscardKey { daddr })
}

fn apply_uid_mode_in_kernel(
    uid_owner_fd: i32,
    config_fd: i32,
    uid: u32,
    mode: i32,
    wlan_ifindex: u32,
    lte_ifindex: u32,
    wlan_up: bool,
) {
    if config_fd >= 0 {
        let cfg_key: u32 = 0;
        let mut owner_cfg: u32 = 0;
        let _ = map_lookup_any(config_fd, &cfg_key, &mut owner_cfg);
        let needed = OEM_DENY_1_MATCH | OEM_DENY_3_MATCH;
        if (owner_cfg & needed) != needed {
            owner_cfg |= needed;
            let _ = map_update_any(config_fd, &cfg_key, &owner_cfg);
        }
    }

    let mut ov = UidOwnerValue::default();
    let existed = map_lookup_any(uid_owner_fd, &uid, &mut ov);
    if !existed || ov.rule == 0 {
        ov.rule = RESTRICTED_MATCH | BACKGROUND_MATCH;
    } else {
        ov.rule |= RESTRICTED_MATCH;
    }

    // Clear only our firewall bits while preserving Android system bits
    ov.rule &= !(OEM_DENY_1_MATCH
        | OEM_DENY_2_MATCH
        | OEM_DENY_3_MATCH
        | PENALTY_BOX_USER_MATCH
        | PENALTY_BOX_ADMIN_MATCH
        | IIF_MATCH);
    ov.iif = 0;

    match mode {
        1 => {
            // BLOCK_ALL (Wi-Fi + Mobile Data)
            ov.rule |= OEM_DENY_1_MATCH | OEM_DENY_3_MATCH | PENALTY_BOX_USER_MATCH;
        }
        2 => {
            // WIFI_ONLY (Allow Wi-Fi wlan0, Block Mobile Data seth_lte0)
            ov.rule |= IIF_MATCH;
            ov.iif = wlan_ifindex;
            if !wlan_up {
                ov.rule |= OEM_DENY_1_MATCH | OEM_DENY_3_MATCH;
            }
        }
        3 => {
            // CELL_ONLY (Allow Mobile Data seth_lte0, Block Wi-Fi wlan0)
            ov.rule |= IIF_MATCH;
            ov.iif = lte_ifindex;
            if wlan_up {
                ov.rule |= OEM_DENY_1_MATCH | OEM_DENY_3_MATCH;
            }
        }
        _ => {
            // ALLOW_ALL
        }
    }

    let _ = map_update_any(uid_owner_fd, &uid, &ov);
}

pub fn unlock_all_bpf_maps() {
    chmod_c("/sys/fs/bpf", 0o777);
    chmod_c("/sys/fs/bpf/netd_shared", 0o777);
    for p in [
        "/sys/fs/bpf/netd_shared/map_netd_uid_owner_map",
        "/sys/fs/bpf/netd_shared/map_netd_app_uid_stats_map",
        "/sys/fs/bpf/netd_shared/map_netd_iface_stats_map",
        "/sys/fs/bpf/netd_shared/map_netd_iface_index_name_map",
        "/sys/fs/bpf/netd_shared/map_netd_configuration_map",
        "/sys/fs/bpf/netd_shared/map_netd_ingress_discard_map",
        "/sys/fs/bpf/netd_shared/map_netd_blocked_ports_map",
        "/sys/fs/bpf/netd_shared/map_netd_cookie_tag_map",
        "/sys/fs/bpf/netd_shared/map_netd_stats_map_A",
        "/sys/fs/bpf/netd_shared/map_netd_stats_map_B",
        "/sys/fs/bpf/netd_shared/map_bg6_rust_telemetry",
    ] {
        chmod_c(p, 0o666);
    }
}

pub fn spawn_ebpf_firewall_enforcer() {
    std::thread::spawn(move || {
        unsafe {
            libc::umask(0);
        }
        unlock_all_bpf_maps();

        for cmd_path in ["/dev/bg6_fw_cmd", "/data/local/tmp/bg6_fw_cmd.txt"] {
            if ! std::path::Path::new(cmd_path).exists() {
                let _ = fs::write(cmd_path, "");
            }
            chmod_c(cmd_path, 0o666);
        }

        let mut uid_owner_fd = bpf_obj_get_rw("/sys/fs/bpf/netd_shared/map_netd_uid_owner_map");
        let mut config_fd = bpf_obj_get_rw("/sys/fs/bpf/netd_shared/map_netd_configuration_map");
        let mut ingress_discard_fd =
            bpf_obj_get_rw("/sys/fs/bpf/netd_shared/map_netd_ingress_discard_map");
        let mut blocked_ports_fd =
            bpf_obj_get_rw("/sys/fs/bpf/netd_shared/map_netd_blocked_ports_map");

        let mut active_uid_modes: std::collections::HashMap<u32, i32> =
            std::collections::HashMap::new();
        let mut active_blocked_ips: std::collections::HashSet<String> =
            std::collections::HashSet::new();
        let mut ticks: u64 = 0;

        loop {
            ticks = ticks.wrapping_add(1);
            if uid_owner_fd < 0 {
                unlock_all_bpf_maps();
                uid_owner_fd = bpf_obj_get_rw("/sys/fs/bpf/netd_shared/map_netd_uid_owner_map");
                config_fd = bpf_obj_get_rw("/sys/fs/bpf/netd_shared/map_netd_configuration_map");
                ingress_discard_fd =
                    bpf_obj_get_rw("/sys/fs/bpf/netd_shared/map_netd_ingress_discard_map");
                blocked_ports_fd =
                    bpf_obj_get_rw("/sys/fs/bpf/netd_shared/map_netd_blocked_ports_map");
            }

            let wlan_ifindex = detect_ifindex("wlan0", 28);
            let lte_ifindex = detect_ifindex("seth_lte0", 14);
            let wlan_up = is_wlan_active();

            for cmd_path in ["/dev/bg6_fw_cmd", "/data/local/tmp/bg6_fw_cmd.txt"] {
                if let Ok(meta) = fs::metadata(cmd_path) {
                    if meta.len() > 0 {
                        if let Ok(txt) = fs::read_to_string(cmd_path) {
                            let _ = fs::write(cmd_path, "");
                            chmod_c(cmd_path, 0o666);
                            for line in txt.lines() {
                                let parts: Vec<&str> = line.split_whitespace().collect();
                                if parts.is_empty() {
                                    continue;
                                }
                                match parts[0] {
                                    "UID" if parts.len() >= 3 => {
                                        if let (Ok(u), Ok(m)) =
                                            (parts[1].parse::<u32>(), parts[2].parse::<i32>())
                                        {
                                            if m == 0 {
                                                active_uid_modes.remove(&u);
                                            } else {
                                                active_uid_modes.insert(u, m);
                                            }
                                            apply_uid_mode_in_kernel(
                                                uid_owner_fd,
                                                config_fd,
                                                u,
                                                m,
                                                wlan_ifindex,
                                                lte_ifindex,
                                                wlan_up,
                                            );
                                        }
                                    }
                                    "IP" if parts.len() >= 3 => {
                                        let ip = parts[1].trim();
                                        let blk = parts[2].parse::<i32>().unwrap_or(0) != 0;
                                        if let Some(dk) = parse_ipv4_discard_key(ip) {
                                            let cidr = format!("{}/32", ip);
                                            let _ = crate::sys_util::run_status(
                                                "/system/bin/ip",
                                                &["rule", "del", "to", &cidr, "blackhole", "pref", "50"],
                                            );
                                            let _ = crate::sys_util::run_status(
                                                "/system/bin/ip",
                                                &["rule", "del", "from", &cidr, "blackhole", "pref", "50"],
                                            );
                                            if blk {
                                                let dv = IngressDiscardValue { iif1: 0, iif2: 0 };
                                                let _ = map_update_any(ingress_discard_fd, &dk, &dv);
                                                let _ = crate::sys_util::run_status(
                                                    "/system/bin/ip",
                                                    &["rule", "add", "to", &cidr, "blackhole", "pref", "50"],
                                                );
                                                let _ = crate::sys_util::run_status(
                                                    "/system/bin/ip",
                                                    &["rule", "add", "from", &cidr, "blackhole", "pref", "50"],
                                                );
                                                active_blocked_ips.insert(ip.to_string());
                                            } else {
                                                let _ = map_delete_any(ingress_discard_fd, &dk);
                                                active_blocked_ips.remove(ip);
                                            }
                                        }
                                    }
                                    "PORT" if parts.len() >= 3 => {
                                        if let Ok(port) = parts[1].parse::<u32>() {
                                            let blk = parts[2].parse::<i32>().unwrap_or(0) != 0;
                                            let p = port & 0xffff;
                                            let idx: u32 = p >> 6;
                                            let bit: u64 = 1u64 << (p & 63);
                                            let mut word: u64 = 0;
                                            let _ = map_lookup_any(blocked_ports_fd, &idx, &mut word);
                                            if blk {
                                                word |= bit;
                                            } else {
                                                word &= !bit;
                                            }
                                            let _ = map_update_any(blocked_ports_fd, &idx, &word);
                                        }
                                    }
                                    "RESET" => {
                                        let uids: Vec<u32> = active_uid_modes.keys().copied().collect();
                                        active_uid_modes.clear();
                                        for u in uids {
                                            apply_uid_mode_in_kernel(
                                                uid_owner_fd,
                                                config_fd,
                                                u,
                                                0,
                                                wlan_ifindex,
                                                lte_ifindex,
                                                wlan_up,
                                            );
                                        }
                                        for ip in active_blocked_ips.drain() {
                                            if let Some(dk) = parse_ipv4_discard_key(&ip) {
                                                let _ = map_delete_any(ingress_discard_fd, &dk);
                                            }
                                            let cidr = format!("{}/32", ip);
                                            let _ = crate::sys_util::run_status(
                                                "/system/bin/ip",
                                                &["rule", "del", "to", &cidr, "blackhole", "pref", "50"],
                                            );
                                            let _ = crate::sys_util::run_status(
                                                "/system/bin/ip",
                                                &["rule", "del", "from", &cidr, "blackhole", "pref", "50"],
                                            );
                                        }
                                        if blocked_ports_fd >= 0 {
                                            let zero: u64 = 0;
                                            for idx in 0..1024u32 {
                                                let mut w: u64 = 0;
                                                if map_lookup_any(blocked_ports_fd, &idx, &mut w) && w != 0 {
                                                    let _ = map_update_any(blocked_ports_fd, &idx, &zero);
                                                }
                                            }
                                        }
                                    }
                                    _ => {}
                                }
                            }
                        }
                    }
                }
            }

            // Re-enforce active UID rules every 1.5s (30 ticks) in case Wi-Fi state or ConnectivityService changed
            if ticks % 30 == 0 {
                unlock_all_bpf_maps();
                for (&u, &m) in &active_uid_modes {
                    apply_uid_mode_in_kernel(
                        uid_owner_fd,
                        config_fd,
                        u,
                        m,
                        wlan_ifindex,
                        lte_ifindex,
                        wlan_up,
                    );
                }
            }

            std::thread::sleep(std::time::Duration::from_millis(50));
        }
    });
}
