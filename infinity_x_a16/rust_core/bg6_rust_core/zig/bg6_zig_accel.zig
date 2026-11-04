// ============================================================================
// TECNO-BG6 Polyglot Zig 0.13.0 Hardware Accelerator (ARMv8.2-A Cortex-A55)
// Zero-dependency freestanding staticlib linked into bg6_rust_core + LLVM BOLT
// ============================================================================

export fn bg6_zig_arm64_cntvct() callconv(.C) u64 {
    return asm volatile ("mrs %[ret], cntvct_el0"
        : [ret] "=r" (-> u64),
    );
}

export fn bg6_zig_fast_hash64(ptr: [*]const u8, len: usize) callconv(.C) u64 {
    var h: u64 = 0xcbf29ce484222325;
    var i: usize = 0;
    while (i < len) : (i += 1) {
        h ^= @as(u64, ptr[i]);
        h *%= 0x100000001b3;
    }
    return h;
}
