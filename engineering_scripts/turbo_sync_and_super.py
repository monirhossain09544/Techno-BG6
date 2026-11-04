import os
import sys
import zlib
import struct
import hashlib
import paramiko
import time

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

REMOTE_IMG = "/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img"
LOCAL_IMG = r"D:\infinity_x_bg6_ready.img"
SUPER_IMG = r"D:\Tecno_BG6_Full_ROM_Backup\super.img"
LIVE_META = r"D:\Tecno_BG6_Full_ROM_Backup\live_super_meta.bin"
CHUNK_SIZE = 4 * 1024 * 1024  # 4MB

t0 = time.time()
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)

print("1. Fetching remote 4MB chunk hashes...", flush=True)
_, stdout, _ = ssh.exec_command("python3 /nvme0n1-disk/infinity_x/mock_work/hash_chunks.py", timeout=60)
remote_hashes = {}
for line in stdout.read().decode().strip().splitlines():
    idx_s, h, length_s = line.split(":")
    remote_hashes[int(idx_s)] = (h, int(length_s))

diff_chunks = []
with open(LOCAL_IMG, "rb") as lf:
    for idx, (rh, rlen) in remote_hashes.items():
        lf.seek(idx * CHUNK_SIZE)
        lbuf = lf.read(CHUNK_SIZE)
        lh = hashlib.md5(lbuf).hexdigest() if lbuf else ""
        if lh != rh:
            diff_chunks.append(idx)

print(f"Remaining changed 4MB chunks: {len(diff_chunks)} ({len(diff_chunks)*4} MB) — streaming with zlib over raw SSH...", flush=True)

if diff_chunks:
    idx_csv = ",".join(str(x) for x in diff_chunks)
    stream_py = f"""python3 -u -c '
import sys, zlib
idxs = [{idx_csv}]
cs = {CHUNK_SIZE}
with open("{REMOTE_IMG}", "rb") as f:
    for idx in idxs:
        f.seek(idx * cs)
        data = f.read(cs)
        comp = zlib.compress(data, 1)
        sys.stdout.buffer.write(idx.to_bytes(4, "little") + len(data).to_bytes(4, "little") + len(comp).to_bytes(4, "little") + comp)
        sys.stdout.buffer.flush()
'"""
    _, stdout, stderr = ssh.exec_command(stream_py, bufsize=0)
    ch = stdout.channel

    def recv_exact(n):
        buf = bytearray()
        while len(buf) < n:
            pkt = ch.recv(n - len(buf))
            if not pkt:
                raise EOFError("SSH stream ended early")
            buf.extend(pkt)
        return bytes(buf)

    with open(LOCAL_IMG, "r+b") as lf:
        for i in range(1, len(diff_chunks) + 1):
            hdr = recv_exact(12)
            c_idx, raw_len, comp_len = struct.unpack("<III", hdr)
            comp_data = recv_exact(comp_len)
            raw_data = zlib.decompress(comp_data)
            assert len(raw_data) == raw_len
            lf.seek(c_idx * CHUNK_SIZE)
            lf.write(raw_data)
            if i % 10 == 0 or i == len(diff_chunks):
                print(f"  Streamed {i}/{len(diff_chunks)} chunks ({time.time()-t0:.1f}s)...", flush=True)
        lf.flush()

print("2. Verifying full 3.42 GB image MD5...", flush=True)
_, stdout, _ = ssh.exec_command(f"md5sum {REMOTE_IMG}", timeout=60)
remote_md5 = stdout.read().decode().split()[0]
ssh.close()

h_md5 = hashlib.md5()
with open(LOCAL_IMG, "rb") as lf:
    while True:
        b = lf.read(16 * 1024 * 1024)
        if not b:
            break
        h_md5.update(b)
local_md5 = h_md5.hexdigest()
print(f"Remote MD5: {remote_md5}\nLocal  MD5: {local_md5}", flush=True)
assert remote_md5 == local_md5, "MD5 MISMATCH!"

print("3. Updating D:\\Tecno_BG6_Full_ROM_Backup\\super.img in-place...", flush=True)
meta_bytes = open(LIVE_META, "rb").read()
sys_size = os.path.getsize(LOCAL_IMG)

sys_exts = None
for s in [0x3000, 0x13000, 0x23000, 0x33000, 0x43000, 0x53000]:
    magic, maj, min_v, hdr_sz = struct.unpack_from("<IHHI", meta_bytes, s)
    if magic != 0x414C5030:
        continue
    p_off, p_num, p_esz = struct.unpack_from("<III", meta_bytes, s + 80)
    e_off, e_num, e_esz = struct.unpack_from("<III", meta_bytes, s + 92)
    base = s + hdr_sz
    extents = [struct.unpack_from("<QIQI", meta_bytes, base + e_off + i * e_esz) for i in range(e_num)]
    for i in range(p_num):
        po = base + p_off + i * p_esz
        name = meta_bytes[po:po+36].split(b"\x00")[0].decode("ascii", errors="ignore")
        attr, first_ext, num_ext, grp = struct.unpack_from("<IIII", meta_bytes, po + 36)
        if name == "system_a" and num_ext > 0:
            exts = [(extents[ei][2] * 512, extents[ei][0] * 512) for ei in range(first_ext, first_ext + num_ext)]
            if sum(l for _, l in exts) == sys_size:
                sys_exts = exts
                break
    if sys_exts:
        break

assert sys_exts, "Could not match system_a extents in live_super_meta.bin!"
with open(SUPER_IMG, "r+b") as fsup, open(LOCAL_IMG, "rb") as fsys:
    fsup.seek(0)
    fsup.write(meta_bytes)
    for idx, (s_off, s_len) in enumerate(sys_exts, 1):
        fsup.seek(s_off)
        left = s_len
        while left > 0:
            buf = fsys.read(min(16 * 1024 * 1024, left))
            fsup.write(buf)
            left -= len(buf)
        print(f"  Updated super.img extent {idx}/{len(sys_exts)} at 0x{s_off:x} ({s_len//(1024*1024)} MB)", flush=True)
    fsup.flush()

print(f"ALL_SYNC_AND_SUPER_REPACK_COMPLETE in {time.time()-t0:.1f}s!", flush=True)
