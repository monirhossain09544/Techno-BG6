use std::ffi::CString;
use std::fs::{self, OpenOptions};
use std::os::unix::io::IntoRawFd;

// ============================================================================
// Pure-Rust ELF64 + SYS_bpf JIT Loader for Linux 5.4.210 (aarch64)
// Zero C libbpf dependency! Loads #[no_std] Rust bg6_ebpf.o into Ring-0 JIT.
// ============================================================================

const SYS_BPF_AARCH64: libc::c_long = 280;
const SYS_PERF_EVENT_OPEN_AARCH64: libc::c_long = 241;

const BPF_MAP_CREATE: libc::c_int = 0;
const BPF_MAP_LOOKUP_ELEM: libc::c_int = 1;
const BPF_PROG_LOAD: libc::c_int = 5;
const BPF_PROG_ATTACH: libc::c_int = 8;
const BPF_OBJ_GET_INFO_BY_FD: libc::c_int = 15;

const BPF_MAP_TYPE_ARRAY: u32 = 2;
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

        // 1. Attach CGROUP_SKB egress & ingress (prefer /sys/fs/cgroup/apps so we never collide with netbpfload on root)
        let mut cgroup_attached = false;
        for cg_path in ["/sys/fs/cgroup/apps", "/dev/cg2_bpf", "/sys/fs/cgroup"] {
            if let Ok(cg_file) = OpenOptions::new().read(true).open(cg_path) {
                let cg_fd = cg_file.into_raw_fd();
                let mut a_eg = BpfAttachAttr {
                    target_fd: cg_fd as u32,
                    attach_bpf_fd: egress_fd as u32,
                    attach_type: BPF_CGROUP_INET_EGRESS,
                    attach_flags: BPF_F_ALLOW_MULTI,
                };
                let mut a_in = BpfAttachAttr {
                    target_fd: cg_fd as u32,
                    attach_bpf_fd: ingress_fd as u32,
                    attach_type: BPF_CGROUP_INET_INGRESS,
                    attach_flags: BPF_F_ALLOW_MULTI,
                };
                let r1 = unsafe { sys_bpf(BPF_PROG_ATTACH, &mut a_eg) };
                let r2 = unsafe { sys_bpf(BPF_PROG_ATTACH, &mut a_in) };
                unsafe { libc::close(cg_fd) };
                if r1 == 0 && r2 == 0 {
                    cgroup_attached = true;
                    break;
                }
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
