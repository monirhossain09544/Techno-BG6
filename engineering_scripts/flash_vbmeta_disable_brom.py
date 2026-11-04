import struct
import subprocess
import os
import time

BACKUP_DIR = r"D:\Tecno_BG6_Full_ROM_Backup"
os.chdir(BACKUP_DIR)

for src, dst in [("vbmeta_a.img", "vbmeta_a_disabled.img"), ("vbmeta_system_a.img", "vbmeta_system_a_disabled.img")]:
    with open(src, "rb") as f:
        data = bytearray(f.read())
    assert data[:4] == b"AVB0", f"Invalid AVB magic in {src}"
    # Offset 120 (0x78) is uint32_t flags (big-endian): 3 = disable-verity | disable-verification
    struct.pack_into(">I", data, 120, 3)
    with open(dst, "wb") as f:
        f.write(data)
    flags_chk = struct.unpack_from(">I", data, 120)[0]
    print(f"Created {dst} with flags=0x{flags_chk:08x} (--disable-verity --disable-verification)", flush=True)

cmd = [
    os.path.join(BACKUP_DIR, "spd_dump.exe"),
    "--wait", "300",
    "exec_addr", "0x65015f08",
    "fdl", "fdl1-dl.bin", "0x65000800",
    "fdl", "fdl2-dl.bin", "0x9efffe00",
    "exec",
    "w", "vbmeta_a", "vbmeta_a_disabled.img",
    "w", "vbmeta_system_a", "vbmeta_system_a_disabled.img",
    "w", "misc", "misc_fastbootd.img",
    "reset"
]

attempt = 0
while True:
    attempt += 1
    print(f"[Attempt {attempt}] Waiting for BROM connection on COM3...", flush=True)
    p = subprocess.Popen(cmd, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
    out_lines = []
    for line in p.stdout:
        print(line, end="", flush=True)
        out_lines.append(line)
        if "Press any key to continue" in line:
            try:
                p.stdin.write("\n")
                p.stdin.flush()
            except Exception:
                pass
            p.kill()
            break
    p.wait()
    full_out = "".join(out_lines)
    if "Write Part Done: misc" in full_out:
        print("VBMETA_VERITY_DISABLED_AND_FASTBOOTD_SET_SUCCESS!", flush=True)
        break
    time.sleep(0.5)
