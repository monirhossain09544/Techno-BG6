import struct

# Header: magic 0x7f4b5355 ("USK\x7f"), version 3
header = struct.pack("<II", 0x7f4b5355, 3)

# Entry 0: com.android.shell (exact 776 bytes from device)
e0 = bytearray(776)
struct.pack_into("<I", e0, 0x00, 2) # KSU_APP_PROFILE_VER = 2
pkg0 = b"com.android.shell"
e0[0x04:0x04+len(pkg0)] = pkg0
struct.pack_into("<i", e0, 0x104, 2000) # current_uid = 2000
struct.pack_into("<I", e0, 0x108, 1)    # allow_su = true
struct.pack_into("<I", e0, 0x110, 1)    # rp_config.use_default = true
sctx = b"u:r:su:s0"
e0[0x2c0:0x2c0+len(sctx)] = sctx

# Entry 1: com.logistics.rider.foodpanda (776 bytes)
e1 = bytearray(776)
struct.pack_into("<I", e1, 0x00, 2) # KSU_APP_PROFILE_VER = 2
pkg1 = b"com.logistics.rider.foodpanda"
e1[0x04:0x04+len(pkg1)] = pkg1
struct.pack_into("<i", e1, 0x104, 10246) # current_uid = 10246 (u0_a246)
struct.pack_into("<I", e1, 0x108, 0)     # allow_su = false
e1[0x110] = 0                            # nrp_config.use_default = false
e1[0x111] = 1                            # nrp_config.profile.umount_modules = true (1-byte aligned)
e1[0x114] = 1                            # nrp_config.profile.umount_modules = true (4-byte aligned fallback)

out_path = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\ksu_allowlist_new.bin"
with open(out_path, "wb") as f:
    f.write(header + e0 + e1)
print("Wrote", len(header + e0 + e1), "bytes to", out_path)
