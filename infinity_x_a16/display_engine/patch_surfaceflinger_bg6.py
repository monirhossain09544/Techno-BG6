#!/usr/bin/env python3
"""
Deterministic ARM64 ELF Binary Patcher for Android 16 QPR2 SurfaceFlinger
Target Device: TECNO SPARK Go 2024 (TECNO-BG6, Unisoc T606 / ums9230, Mali-G57 MP1)
Target ROM   : Project Infinity-X v3.12 (Android 16 QPR2 / BP4A.251205.006)

Fixes all color-matrix & display composition features on Unisoc HWC2 without black-screen:
  1. Display::getSkipColorTransform() @ 0x51d350 -> return false (mov w0, #0; ret)
     Ensures Skia RenderEngine never skips colorTransformMatrix during GPU client composition.
  2. SurfaceFlinger::updateColorMatrixLocked() @ 0x35be70 -> RX cave 0x854400
     Inspects all 16 floats of mCurrentState.colorMatrix:
       - Identity matrix     -> mDebugDisableHWC (this + 0xacc) = 0 (Pure 90Hz hardware DPU composition)
       - Non-identity matrix -> mDebugDisableHWC (this + 0xacc) = 1 (90Hz Mali-G57 Skia GPU composition)
     Fixes Night Light, Extra Dim, LiveDisplay (Reading Mode + RGB Calibration),
     Color Modes, Color Correction (Daltonizer), and Color Inversion.
  3. SurfaceFlinger::updateColorMatrixLocked() @ 0x35bc10 -> RX cave 0x854380
     Implements native saturation multipliers when mGlobalSaturationFactor == 1.0f:
       - ColorMode::SRGB / UNMANAGED (1, "Saturated") -> 1.25x saturation
       - ColorMode::ENHANCED         (2, "Adaptive")  -> 1.125x saturation
  4. SurfaceFlinger::onTransact case 1023 @ 0x35ae50 -> RX cave 0x8543c0
     Locks mStateLock (this + 0xd0) and invokes updateColorMatrixLocked() immediately
     upon receiving SURFACE_FLINGER_TRANSACTION_DISPLAY_COLOR (code 1023).

Usage:
  python3 patch_surfaceflinger_bg6.py <input_vanilla_surfaceflinger> <output_patched_surfaceflinger>
"""

import os
import struct
import sys


def patch_surfaceflinger(in_path: str, out_path: str) -> None:
    data = bytearray(open(in_path, "rb").read())

    def u32(off: int) -> int:
        return struct.unpack_from("<I", data, off)[0]

    def p32(off: int, val: int) -> None:
        struct.pack_into("<I", data, off, val & 0xFFFFFFFF)

    def b_imm(src: int, dst: int) -> int:
        diff = (dst - src) >> 2
        assert -(1 << 25) <= diff < (1 << 25)
        return 0x14000000 | (diff & 0x3FFFFFF)

    def bl_imm(src: int, dst: int) -> int:
        diff = (dst - src) >> 2
        assert -(1 << 25) <= diff < (1 << 25)
        return 0x94000000 | (diff & 0x3FFFFFF)

    def b_cond(src: int, dst: int, cond: int) -> int:
        diff = (dst - src) >> 2
        assert -(1 << 18) <= diff < (1 << 18)
        return 0x54000000 | ((diff & 0x7FFFF) << 5) | (cond & 0xF)

    def ldr_s_uimm(rt: int, rn: int, byte_off: int) -> int:
        assert byte_off % 4 == 0
        return 0xBD400000 | ((byte_off // 4) << 10) | (rn << 5) | rt

    assert u32(0x51D350) == 0xD10143FF, f"Unexpected insn @ 0x51d350: {u32(0x51D350):#x}"
    assert u32(0x35BC10) == 0xBD42F000, f"Unexpected insn @ 0x35bc10: {u32(0x35BC10):#x}"
    assert u32(0x35AE50) == 0xB9108260, f"Unexpected insn @ 0x35ae50: {u32(0x35AE50):#x}"
    assert u32(0x35BE70) == 0xAD010920, f"Unexpected insn @ 0x35be70: {u32(0x35BE70):#x}"

    # 1. Display::getSkipColorTransform() -> return false
    p32(0x51D350, 0x52800000)  # mov w0, #0
    p32(0x51D354, 0xD65F03C0)  # ret

    # 2. Cave 1 @ 0x854380: Saturated (1.25f) & Adaptive (1.125f) color modes
    c1 = 0x854380
    pc = c1
    p32(pc, 0xBD42F000); pc += 4               # ldr s0, [x0, #0x2f0]
    p32(pc, 0x1E212000); pc += 4               # fcmp s0, s1
    b_ne_done1 = pc; pc += 4                   # b.ne done
    p32(pc, 0xB9508009); pc += 4               # ldr w9, [x0, #0x1080]
    p32(pc, 0x7100053F); pc += 4               # cmp w9, #1
    b_ne_chk2 = pc; pc += 4                    # b.ne chk2
    p32(pc, 0x1E2E9000); pc += 4               # fmov s0, #1.25
    b_to_done = pc; pc += 4                    # b done
    chk2_lbl = pc
    p32(pc, 0x7100093F); pc += 4               # cmp w9, #2
    b_ne_done2 = pc; pc += 4                   # b.ne done
    p32(pc, 0x1E2E5000); pc += 4               # fmov s0, #1.125
    done1_lbl = pc
    p32(pc, b_imm(pc, 0x35BC14)); pc += 4      # b 0x35bc14

    p32(b_ne_done1, b_cond(b_ne_done1, done1_lbl, 1))
    p32(b_ne_chk2,  b_cond(b_ne_chk2,  chk2_lbl,  1))
    p32(b_to_done,  b_imm(b_to_done,   done1_lbl))
    p32(b_ne_done2, b_cond(b_ne_done2, done1_lbl, 1))
    p32(0x35BC10,   b_imm(0x35BC10,    c1))

    # 3. Cave 2 @ 0x8543c0: Trigger updateColorMatrixLocked on transaction 1023
    c2 = 0x8543C0
    pc = c2
    p32(pc, 0xB9108260); pc += 4               # str w0, [x19, #0x1080]
    p32(pc, 0x91034260); pc += 4               # add x0, x19, #0xd0
    p32(pc, bl_imm(pc, 0x850C00)); pc += 4     # bl pthread_mutex_lock@plt
    p32(pc, 0xAA1303E0); pc += 4               # mov x0, x19
    p32(pc, bl_imm(pc, 0x35BBE0)); pc += 4     # bl updateColorMatrixLocked
    p32(pc, 0x91034260); pc += 4               # add x0, x19, #0xd0
    p32(pc, bl_imm(pc, 0x850C10)); pc += 4     # bl pthread_mutex_unlock@plt
    p32(pc, b_imm(pc, 0x35AE54)); pc += 4      # b 0x35ae54
    p32(0x35AE50, b_imm(0x35AE50, c2))

    # 4. Cave 3 @ 0x854400: Auto-toggle mDebugDisableHWC = (colorMatrix != Identity)
    c3 = 0x854400
    pc = c3
    p32(pc, 0xAD010920); pc += 4               # stp q0, q2, [x9, #0x20]
    p32(pc, 0x1E2E1001); pc += 4               # fmov s1, #1.0

    branch_fixups = []
    for diag_off in (0, 20, 40, 60):
        p32(pc, ldr_s_uimm(0, 9, diag_off)); pc += 4
        p32(pc, 0x1E212000); pc += 4
        branch_fixups.append(pc); pc += 4

    for zero_off in (4, 8, 12, 16, 24, 28, 32, 36, 44, 48, 52, 56):
        p32(pc, ldr_s_uimm(0, 9, zero_off)); pc += 4
        p32(pc, 0x1E202008); pc += 4
        branch_fixups.append(pc); pc += 4

    p32(pc, 0x2A1F03E8); pc += 4               # mov w8, wzr
    b_store = pc; pc += 4
    non_id_lbl = pc
    p32(pc, 0x52800028); pc += 4               # mov w8, #1
    store_lbl = pc
    p32(pc, 0x912B3009); pc += 4               # add x9, x0, #0xacc
    p32(pc, 0x089FFD28); pc += 4               # stlrb w8, [x9]
    p32(pc, b_imm(pc, 0x35BE74)); pc += 4      # b 0x35be74

    for bf in branch_fixups:
        p32(bf, b_cond(bf, non_id_lbl, 1))
    p32(b_store, b_imm(b_store, store_lbl))
    p32(0x35BE70, b_imm(0x35BE70, c3))

    # 5. Expand RX LOAD PHDR & .plt section header to cover cave [0x854380..0x854600)
    e_phoff = struct.unpack_from("<Q", data, 0x20)[0]
    e_shoff = struct.unpack_from("<Q", data, 0x28)[0]
    e_phentsize, e_phnum, e_shentsize, e_shnum = struct.unpack_from("<HHHH", data, 0x36)
    patched_phdr = False
    for i in range(e_phnum):
        poff = e_phoff + i * e_phentsize
        p_type, _, p_offset = struct.unpack_from("<IIQ", data, poff)
        if p_type == 1 and p_offset == 0x208000:
            new_sz = 0x854600 - 0x208000
            struct.pack_into("<QQ", data, poff + 0x20, new_sz, new_sz)
            patched_phdr = True
    assert patched_phdr
    for i in range(e_shnum):
        soff = e_shoff + i * e_shentsize
        sh_off = struct.unpack_from("<Q", data, soff + 0x18)[0]
        if sh_off == 0x850520:
            struct.pack_into("<Q", data, soff + 0x20, 0x854600 - 0x850520)

    with open(out_path, "wb") as f:
        f.write(data)
    os.chmod(out_path, 0o755)
    print(f"Successfully patched SurfaceFlinger -> {out_path} ({len(data):,} bytes)")


if __name__ == "__main__":
    if len(sys.argv) != 3:
        raise SystemExit(f"Usage: {sys.argv[0]} <vanilla_surfaceflinger> <patched_surfaceflinger>")
    patch_surfaceflinger(sys.argv[1], sys.argv[2])
