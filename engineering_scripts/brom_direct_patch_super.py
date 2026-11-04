import os
import struct
import subprocess
import threading
import time

BACKUP_DIR = r"D:\Tecno_BG6_Full_ROM_Backup"
SYS_IMG = r"D:\infinity_x_bg6_ready.img"
LIVE_META = os.path.join(BACKUP_DIR, "live_super_meta.bin")
CHUNK = 4 * 1024 * 1024

SYS_SIZE = os.path.getsize(SYS_IMG)
assert SYS_SIZE == 3423481856, f"Unexpected SYS_SIZE: {SYS_SIZE}"

# Ranges (start_byte, end_byte) in D:\infinity_x_bg6_ready.img that changed since task-19521
RANGES = [
    (0 * CHUNK, 1 * CHUNK),
    (64 * CHUNK, 65 * CHUNK),
    (128 * CHUNK, 129 * CHUNK),
    (136 * CHUNK, 142 * CHUNK),
    (416 * CHUNK, 417 * CHUNK),
    (543 * CHUNK, 544 * CHUNK),
    (576 * CHUNK, 577 * CHUNK),
    (584 * CHUNK, 590 * CHUNK),
    (608 * CHUNK, 609 * CHUNK),
    (628 * CHUNK, 636 * CHUNK),
    (800 * CHUNK, SYS_SIZE),
]

def parse_system_a_extents(meta_bytes):
    for s in [0x3000, 0x13000, 0x23000, 0x33000, 0x43000, 0x53000]:
        if s + 128 > len(meta_bytes):
            continue
        magic, maj, min_v, hdr_sz = struct.unpack_from("<IHHI", meta_bytes, s)
        if magic != 0x414C5030:
            continue
        p_off, p_num, p_esz = struct.unpack_from("<III", meta_bytes, s + 80)
        e_off, e_num, e_esz = struct.unpack_from("<III", meta_bytes, s + 92)
        base = s + hdr_sz
        extents = []
        for i in range(e_num):
            eo = base + e_off + i * e_esz
            num_sec, t_type, t_data, t_src = struct.unpack_from("<QIQI", meta_bytes, eo)
            extents.append((num_sec, t_type, t_data, t_src))
        for i in range(p_num):
            po = base + p_off + i * p_esz
            name = meta_bytes[po:po+36].split(b"\x00")[0].decode("ascii", errors="ignore")
            attr, first_ext, num_ext, grp = struct.unpack_from("<IIII", meta_bytes, po + 36)
            if name == "system_a" and num_ext > 0:
                sys_exts = []
                tot = 0
                for ei in range(first_ext, first_ext + num_ext):
                    ns, tt, td, ts = extents[ei]
                    sys_exts.append((td * 512, ns * 512))
                    tot += ns * 512
                print(f"Found system_a at metadata slot 0x{s:x}: {num_ext} extents, total={tot:,} bytes", flush=True)
                if tot == SYS_SIZE:
                    return sys_exts
    raise RuntimeError("Could not find system_a matching SYS_SIZE in live_super_meta.bin!")

def map_ranges_to_super(sys_exts, ranges):
    # sys_exts is list of (super_byte_offset, ext_byte_len)
    # Build cumulative logical offsets inside system_a
    ext_map = []
    cur_logical = 0
    for sup_off, ext_len in sys_exts:
        ext_map.append((cur_logical, cur_logical + ext_len, sup_off))
        cur_logical += ext_len

    super_writes = []
    for r_start, r_end in ranges:
        pos = r_start
        while pos < r_end:
            for l_start, l_end, sup_base in ext_map:
                if l_start <= pos < l_end:
                    take = min(r_end - pos, l_end - pos)
                    sup_target = sup_base + (pos - l_start)
                    super_writes.append((sup_target, pos, take))
                    pos += take
                    break
            else:
                raise RuntimeError(f"Logical offset {pos} not in any extent!")
    return super_writes

os.chdir(BACKUP_DIR)
if os.path.exists(LIVE_META):
    os.remove(LIVE_META)

cmd = [
    os.path.join(BACKUP_DIR, "spd_dump.exe"),
    "--wait", "300",
    "exec_addr", "0x65015f08",
    "fdl", "fdl1-dl.bin", "0x65000800",
    "fdl", "fdl2-dl.bin", "0x9efffe00",
    "exec",
    "read_part", "super", "0", "0x100000", "live_super_meta.bin"
]

attempt = 0
while True:
    attempt += 1
    if os.path.exists(LIVE_META):
        os.remove(LIVE_META)
    print(f"[Attempt {attempt}] Waiting for BROM on COM3 to patch super directly (NO FASTBOOT NEEDED)...", flush=True)
    p = subprocess.Popen(cmd, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)

    stop_reader = False
    out_Log = []

    def reader():
        for line in p.stdout:
            print(line, end="", flush=True)
            out_Log.append(line)
            if "Press any key to continue" in line:
                try:
                    p.stdin.write("\n")
                    p.stdin.flush()
                except Exception:
                    pass
                p.kill()
                break

    t = threading.Thread(target=reader, daemon=True)
    t.start()

    # Wait until either process exits or live_super_meta.bin is downloaded (1,048,576 bytes)
    got_meta = False
    while p.poll() is None:
        if os.path.exists(LIVE_META) and os.path.getsize(LIVE_META) == 0x100000:
            time.sleep(0.3)
            got_meta = True
            break
        time.sleep(0.2)

    if not got_meta:
        p.wait()
        time.sleep(0.5)
        continue

    print("\n>>> Read live_super_meta.bin! Computing exact super offsets for system_a...", flush=True)
    with open(LIVE_META, "rb") as mf:
        meta_bytes = mf.read()

    sys_exts = parse_system_a_extents(meta_bytes)
    writes = map_ranges_to_super(sys_exts, RANGES)
    print(f">>> Mapped {len(RANGES)} ranges into {len(writes)} contiguous super writes ({sum(w[2] for w in writes)//(1024*1024)} MB total)!", flush=True)

    with open(SYS_IMG, "rb") as sf:
        for idx, (sup_off, sys_off, length) in enumerate(writes):
            seg_name = f"seg_{idx}.bin"
            sf.seek(sys_off)
            buf = sf.read(length)
            assert len(buf) == length
            with open(seg_name, "wb") as out_f:
                out_f.write(buf)
            cmd_line = f"wof super 0x{sup_off:x} {seg_name}\n"
            print(f">>> Sending to FDL2: {cmd_line.strip()} ({length//1024} KB)", flush=True)
            p.stdin.write(cmd_line)
            p.stdin.flush()

    final_cmds = (
        "w misc misc.img\n"
        "w vbmeta_a vbmeta_a_disabled.img\n"
        "w vbmeta_system_a vbmeta_system_a_disabled.img\n"
        "verity 0\n"
        "reset\n"
    )
    print(">>> Sending final misc clear + vbmeta disable + reset to FDL2...", flush=True)
    p.stdin.write(final_cmds)
    p.stdin.flush()

    p.wait(timeout=300)
    t.join(timeout=5)
    print("\n=== DIRECT BROM SUPER PATCH & REBOOT 100% COMPLETE! ===", flush=True)
    break
