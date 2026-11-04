import struct

with open(r'C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\vendor_hwcomposer.unisoc.so', 'rb') as f:
    data = f.read()

# Find ADRP + ADD referencing 0x2171b or 0x20933 in .text (0x3f000..0x7a8d8)
text_start = 0x3f000
text_end = 0x7a8d8

targets = [0x2171b, 0x20933, 0x1f291, 0x3144a, 0x1b05e]
for off in range(text_start, text_end - 4, 4):
    insn1 = struct.unpack_from('<I', data, off)[0]
    if (insn1 & 0x9f000000) == 0x90000000:
        immlo = (insn1 >> 29) & 0x3
        immhi = (insn1 >> 5) & 0x7ffff
        imm = (immhi << 2) | immlo
        if imm & (1 << 20):
            imm -= (1 << 21)
        page = (off & ~0xfff) + (imm << 12)
        # Check next few instructions for ADD with low12 of any target
        for k in range(1, 6):
            if off + 4*k >= text_end:
                break
            insn2 = struct.unpack_from('<I', data, off + 4*k)[0]
            if (insn2 & 0xff800000) == 0x91000000:
                imm12 = (insn2 >> 10) & 0xfff
                addr = page + imm12
                if addr in targets:
                    print(f"Ref to 0x{addr:x} at 0x{off:x}")
