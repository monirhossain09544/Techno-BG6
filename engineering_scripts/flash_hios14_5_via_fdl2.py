import subprocess
import struct
import os
import time

BACKUP_DIR = r"D:\Tecno_BG6_Full_ROM_Backup"
IMG_PATH = r"D:\hios14_5_system.img"
TEMP_EXT = r"D:\cur_ext.bin"
META_FILE = os.path.join(BACKUP_DIR, "current_super_meta.bin")

if os.path.exists(META_FILE):
    os.remove(META_FILE)

print("=== Waiting for phone in BROM mode (Hold Volume Down + Power until screen turns black) ===", flush=True)
spd_cmd = [
    os.path.join(BACKUP_DIR, "spd_dump.exe"),
    "--wait", "300",
    "exec_addr", "0x65015f08",
    "fdl", "fdl1-dl.bin", "0x65000800",
    "fdl", "fdl2-dl.bin", "0x9efffe00",
    "exec",
    "read_part", "super", "0", "0x100000", "current_super_meta.bin",
    "w", "misc", "misc.img"
]

proc = subprocess.Popen(
    spd_cmd,
    cwd=BACKUP_DIR,
    stdin=subprocess.PIPE,
    stdout=subprocess.PIPE,
    stderr=subprocess.STDOUT,
    text=True,
    bufsize=1
)

for line in proc.stdout:
    print(line, end="", flush=True)
    if "Write Part Done: misc" in line:
        break

print("\n=== Parsing current_super_meta.bin for system_a extents ===", flush=True)
data = open(META_FILE, "rb").read()
off = 12288
magic, maj, min_v, hdr_sz = struct.unpack("<IHHI", data[off:off+12])
assert magic == 0x414c5030, f"Invalid LP_METADATA_HEADER_MAGIC: {hex(magic)}"
p_off, p_num, p_esz = struct.unpack("<III", data[off+80:off+92])
e_off, e_num, e_esz = struct.unpack("<III", data[off+92:off+104])
base = off + hdr_sz

sys_extents = []
for i in range(p_num):
    pe = data[base + p_off + i*p_esz : base + p_off + (i+1)*p_esz]
    name = pe[:36].split(b"\x00")[0].decode()
    attr, first_ext, num_ext, grp = struct.unpack("<IIII", pe[36:52])
    if name == "system_a":
        for j in range(first_ext, first_ext + num_ext):
            ee = data[base + e_off + j*e_esz : base + e_off + (j+1)*e_esz]
            num_sec, target_type, target_data, target_src = struct.unpack("<QIQI", ee[:28])
            sys_extents.append((target_data * 512, num_sec * 512))
        break

total_ext_bytes = sum(length for _, length in sys_extents)
img_size = os.path.getsize(IMG_PATH)
print(f"Found system_a with {len(sys_extents)} extent(s), total={total_ext_bytes:,} bytes (img_size={img_size:,} bytes)", flush=True)
for idx, (s_off, s_len) in enumerate(sys_extents):
    print(f"  Extent {idx}: super_offset=0x{s_off:x} ({s_off:,}), length=0x{s_len:x} ({s_len:,})", flush=True)

assert total_ext_bytes >= img_size, f"system_a in super ({total_ext_bytes}) is smaller than image ({img_size})!"

with open(IMG_PATH, "rb") as fimg:
    rem_img = img_size
    for idx, (s_off, s_len) in enumerate(sys_extents):
        if rem_img <= 0:
            break
        to_write = min(rem_img, s_len)
        print(f"\n=== Extracting & Writing Extent {idx+1}/{len(sys_extents)} ({to_write/(1024**2):.2f} MB) to super+0x{s_off:x} ===", flush=True)
        with open(TEMP_EXT, "wb") as fext:
            left = to_write
            while left > 0:
                chunk = fimg.read(min(8 * 1024 * 1024, left))
                if not chunk:
                    break
                fext.write(chunk)
                left -= len(chunk)
        rem_img -= to_write

        cmd_str = f"wof super 0x{s_off:x} {TEMP_EXT}\n"
        print(f">>> Sending FDL2 command: {cmd_str.strip()}", flush=True)
        proc.stdin.write(cmd_str)
        proc.stdin.flush()

        for line in proc.stdout:
            print(line, end="", flush=True)
            if "Write Part Done:" in line:
                break

if os.path.exists(TEMP_EXT):
    os.remove(TEMP_EXT)

print("\n=== Erasing metadata & Resetting phone into Official TECNO HiOS 14.5! ===", flush=True)
proc.stdin.write("e metadata\nreset\n")
proc.stdin.flush()

for line in proc.stdout:
    print(line, end="", flush=True)
proc.wait()
print("\nDIRECT_SUPER_FLASH_100_PERCENT_COMPLETE!", flush=True)
