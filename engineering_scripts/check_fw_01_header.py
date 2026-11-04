with open(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\chipone_ts_fw_01.bin", "rb") as f:
    fw = f.read()

print(f"Total size: {len(fw)} (0x{len(fw):x})")
print("0x100..0x120:", fw[0x100:0x120].hex())
import struct
print("u16 at 0x100:", hex(struct.unpack("<H", fw[0x100:0x102])[0]))
print("u32 at 0x17000:", hex(struct.unpack("<I", fw[0x17000:0x17004])[0]) if len(fw) >= 0x17008 else "N/A")
