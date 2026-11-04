#![no_std]

use core::panic::PanicInfo;

// ============================================================================
// TECNO-BG6 Live JIT eBPF Programs in Pure #[no_std] Rust
// Target: bpfel-unknown-none (Linux 5.4.210 ARM64 BPF JIT Always-On)
// Loaded directly via Pure-Rust ELF + SYS_bpf loader (zero C libbpf!)
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

/// CGROUP_SKB Egress Accelerator & Packet Sensor
/// Returns 1 (ALLOW) so zero packets are ever dropped; classifies interactive
/// small frames (<= 256B DNS/ACK/VoIP/Gaming UDP) for scheduler latency boost.
#[link_section = "cgroup_skb/egress"]
#[no_mangle]
pub extern "C" fn bg6_cgroup_egress(skb: *mut SkBuff) -> i32 {
    if skb.is_null() {
        return 1;
    }
    let pkt_len = unsafe { (*skb).len } as u64;
    unsafe {
        add_slot(SLOT_EGRESS_PKTS, 1);
        add_slot(SLOT_EGRESS_BYTES, pkt_len);
        if pkt_len <= 256 {
            add_slot(SLOT_PRIO_LOWLAT_PKTS, 1);
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
    unsafe {
        add_slot(SLOT_INGRESS_PKTS, 1);
        add_slot(SLOT_INGRESS_BYTES, pkt_len);
        if pkt_len <= 256 {
            add_slot(SLOT_PRIO_LOWLAT_PKTS, 1);
        }
    }
    1
}

/// KPROBE Task Wakeup Burst Sensor (attached to wake_up_new_task / try_to_wake_up)
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
