#![no_std]

use core::panic::PanicInfo;

// ============================================================================
// TECNO-BG6 Live JIT eBPF Programs in Pure #[no_std] Rust (v9.0)
// Target: bpfel-unknown-none (Linux 5.4.210 ARM64 BPF JIT Always-On)
// Programs:
//   1. cgroup_skb/egress      (BPF_PROG_TYPE_CGROUP_SKB)
//   2. cgroup_skb/ingress     (BPF_PROG_TYPE_CGROUP_SKB)
//   3. socket_filter/inspector(BPF_PROG_TYPE_SOCKET_FILTER)
//   4. sched_cls/tc_filter    (BPF_PROG_TYPE_SCHED_CLS)
//   5. kprobe/wake_up         (BPF_PROG_TYPE_KPROBE)
// ============================================================================

#[repr(C)]
pub struct BpfMapDef {
    pub map_type: u32,
    pub key_size: u32,
    pub value_size: u32,
    pub max_entries: u32,
    pub map_flags: u32,
}

const BPF_MAP_TYPE_ARRAY: u32 = 2;

// Telemetry slot indices in BG6_TELEMETRY_MAP (16 x u64)
pub const SLOT_EGRESS_PKTS: u32 = 0;
pub const SLOT_EGRESS_BYTES: u32 = 1;
pub const SLOT_INGRESS_PKTS: u32 = 2;
pub const SLOT_INGRESS_BYTES: u32 = 3;
pub const SLOT_PRIO_LOWLAT_PKTS: u32 = 4;
pub const SLOT_LAST_PKT_NS: u32 = 5;
pub const SLOT_KPROBE_WAKEUPS: u32 = 6;
pub const SLOT_LAST_WAKE_NS: u32 = 7;
pub const SLOT_SF_PKTS: u32 = 8;
pub const SLOT_SF_BYTES: u32 = 9;
pub const SLOT_DNS_PKTS: u32 = 10;
pub const SLOT_TLS_PKTS: u32 = 11;
pub const SLOT_TCP_PKTS: u32 = 12;
pub const SLOT_UDP_PKTS: u32 = 13;
pub const SLOT_LAST_UID: u32 = 14;
pub const SLOT_BLOCKED_EVENTS: u32 = 15;

#[repr(C)]
pub struct SkBuff {
    pub len: u32,
    pub pkt_type: u32,
    pub mark: u32,
    pub queue_mapping: u32,
    pub protocol: u32,
    pub vlan_present: u32,
    pub vlan_tci: u32,
    pub vlan_proto: u32,
    pub priority: u32,
    pub napi_id: u32,
    pub ifindex: u32,
    pub hash: u32,
    pub tc_index: u32,
    pub cb: [u32; 5],
    pub tc_classid: u32,
    pub data: u32,
    pub data_end: u32,
}

#[link_section = "maps"]
#[no_mangle]
pub static BG6_TELEMETRY_MAP: BpfMapDef = BpfMapDef {
    map_type: BPF_MAP_TYPE_ARRAY,
    key_size: 4,
    value_size: 8,
    max_entries: 16,
    map_flags: 0,
};

#[link_section = "license"]
#[no_mangle]
pub static _license: [u8; 4] = *b"GPL\0";

#[inline(always)]
unsafe fn bpf_map_lookup_elem(map: *const BpfMapDef, key: *const u32) -> *mut u64 {
    let f: unsafe extern "C" fn(*const BpfMapDef, *const u32) -> *mut u64 =
        unsafe { core::mem::transmute(1usize) };
    unsafe { f(map, key) }
}

#[inline(always)]
unsafe fn bpf_ktime_get_ns() -> u64 {
    let f: unsafe extern "C" fn() -> u64 = unsafe { core::mem::transmute(5usize) };
    unsafe { f() }
}

#[inline(always)]
unsafe fn bpf_skb_load_bytes(skb: *const SkBuff, offset: u32, to: *mut u8, len: u32) -> i64 {
    let f: unsafe extern "C" fn(*const SkBuff, u32, *mut u8, u32) -> i64 =
        unsafe { core::mem::transmute(26usize) };
    unsafe { f(skb, offset, to, len) }
}

#[inline(always)]
unsafe fn bpf_get_socket_uid(skb: *const SkBuff) -> u32 {
    let f: unsafe extern "C" fn(*const SkBuff) -> u32 =
        unsafe { core::mem::transmute(46usize) };
    unsafe { f(skb) }
}

#[inline(always)]
unsafe fn add_slot(slot: u32, delta: u64) {
    let k = slot;
    let ptr = unsafe { bpf_map_lookup_elem(&BG6_TELEMETRY_MAP, &k) };
    if !ptr.is_null() {
        unsafe {
            let cur = core::ptr::read_volatile(ptr);
            core::ptr::write_volatile(ptr, cur.wrapping_add(delta));
        }
    }
}

#[inline(always)]
unsafe fn set_slot(slot: u32, val: u64) {
    let k = slot;
    let ptr = unsafe { bpf_map_lookup_elem(&BG6_TELEMETRY_MAP, &k) };
    if !ptr.is_null() {
        unsafe {
            core::ptr::write_volatile(ptr, val);
        }
    }
}

/// CGROUP_SKB Egress Accelerator & UID Packet Sensor
#[link_section = "cgroup_skb/egress"]
#[no_mangle]
pub extern "C" fn bg6_cgroup_egress(skb: *mut SkBuff) -> i32 {
    if skb.is_null() {
        return 1;
    }
    let pkt_len = unsafe { (*skb).len } as u64;
    let uid = unsafe { bpf_get_socket_uid(skb) } as u64;
    unsafe {
        add_slot(SLOT_EGRESS_PKTS, 1);
        add_slot(SLOT_EGRESS_BYTES, pkt_len);
        if pkt_len <= 256 {
            add_slot(SLOT_PRIO_LOWLAT_PKTS, 1);
        }
        if uid > 0 {
            set_slot(SLOT_LAST_UID, uid);
        }
        set_slot(SLOT_LAST_PKT_NS, bpf_ktime_get_ns());
    }
    1
}

/// CGROUP_SKB Ingress Packet Sensor
#[link_section = "cgroup_skb/ingress"]
#[no_mangle]
pub extern "C" fn bg6_cgroup_ingress(skb: *mut SkBuff) -> i32 {
    if skb.is_null() {
        return 1;
    }
    let pkt_len = unsafe { (*skb).len } as u64;
    let uid = unsafe { bpf_get_socket_uid(skb) } as u64;
    unsafe {
        add_slot(SLOT_INGRESS_PKTS, 1);
        add_slot(SLOT_INGRESS_BYTES, pkt_len);
        if pkt_len <= 256 {
            add_slot(SLOT_PRIO_LOWLAT_PKTS, 1);
        }
        if uid > 0 {
            set_slot(SLOT_LAST_UID, uid);
        }
    }
    1
}

/// SOCKET_FILTER Live L3/L4 Header Inspector (BPF_PROG_TYPE_SOCKET_FILTER)
/// Loaded directly into Linux 5.4.210 ARM64 eBPF JIT by bg6_rust_core & libbg6_ebpf_fw.so
#[link_section = "socket_filter/inspector"]
#[no_mangle]
pub extern "C" fn bg6_socket_inspector(skb: *mut SkBuff) -> i32 {
    if skb.is_null() {
        return 0;
    }
    let pkt_len = unsafe { (*skb).len } as u64;
    let pkt_type = unsafe { (*skb).pkt_type };
    let base_slot = if pkt_type == 4 {
        SLOT_EGRESS_PKTS
    } else {
        SLOT_INGRESS_PKTS
    };
    unsafe {
        add_slot(base_slot, 1);
        add_slot(base_slot + 1, pkt_len);
        if pkt_len <= 256 {
            add_slot(SLOT_PRIO_LOWLAT_PKTS, 1);
        }
        set_slot(SLOT_LAST_PKT_NS, bpf_ktime_get_ns());

        // Inspect IPv4 L3/L4 header if >= 24 bytes
        let mut hdr = [0u8; 24];
        if bpf_skb_load_bytes(skb, 0, hdr.as_mut_ptr(), 24) == 0 {
            let ver = hdr[0] >> 4;
            if ver == 4 {
                let proto = hdr[9];
                let dport = ((hdr[22] as u16) << 8) | (hdr[23] as u16);
                let sport = ((hdr[20] as u16) << 8) | (hdr[21] as u16);
                let l4_slot = if dport == 53 || sport == 53 {
                    SLOT_DNS_PKTS
                } else if dport == 443 || sport == 443 {
                    SLOT_TLS_PKTS
                } else if proto == 6 {
                    SLOT_TCP_PKTS
                } else {
                    SLOT_UDP_PKTS
                };
                add_slot(l4_slot, 1);
            }
        }
    }
    0
}

/// KPROBE Task Wakeup Burst Sensor
#[link_section = "kprobe/wake_up"]
#[no_mangle]
pub extern "C" fn bg6_kprobe_wakeup(_ctx: *const u8) -> i32 {
    unsafe {
        add_slot(SLOT_KPROBE_WAKEUPS, 1);
        set_slot(SLOT_LAST_WAKE_NS, bpf_ktime_get_ns());
    }
    0
}

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}
