import os
import hashlib
import paramiko
import struct
import zlib

REMOTE_IMG = "/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img"
LOCAL_IMG = r"D:\infinity_x_bg6_ready.img"
CHUNK_SIZE = 4 * 1024 * 1024  # 4MB

REMOTE_HASH_SCRIPT = f"""
import hashlib

chunk_size = {CHUNK_SIZE}
with open("{REMOTE_IMG}", "rb") as f:
    idx = 0
    while True:
        buf = f.read(chunk_size)
        if not buf:
            break
        h = hashlib.md5(buf).hexdigest()
        print(f"{{idx}}:{{h}}:{{len(buf)}}")
        idx += 1
"""

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=15)

sftp = c.open_sftp()
with sftp.file("/nvme0n1-disk/infinity_x/mock_work/hash_chunks.py", "w") as f:
    f.write(REMOTE_HASH_SCRIPT)

print("1. Computing remote 4MB chunk hashes on Linux server...")
stdin, stdout, stderr = c.exec_command("python3 /nvme0n1-disk/infinity_x/mock_work/hash_chunks.py")
remote_lines = stdout.read().decode().strip().splitlines()

remote_hashes = {}
for line in remote_lines:
    idx_s, h, length_s = line.split(":")
    remote_hashes[int(idx_s)] = (h, int(length_s))

print(f"Total remote 4MB chunks: {len(remote_hashes)}")

diff_chunks = []
with open(LOCAL_IMG, "rb") as lf:
    for idx, (rh, rlen) in remote_hashes.items():
        lf.seek(idx * CHUNK_SIZE)
        lbuf = lf.read(CHUNK_SIZE)
        lh = hashlib.md5(lbuf).hexdigest() if lbuf else ""
        if lh != rh:
            diff_chunks.append(idx)

print(f"Changed 4MB chunks to sync: {len(diff_chunks)} ({len(diff_chunks) * 4} MB)")

if diff_chunks:
    with sftp.file(REMOTE_IMG, "rb") as rf, open(LOCAL_IMG, "r+b") as lf:
        for i, idx in enumerate(diff_chunks, 1):
            offset = idx * CHUNK_SIZE
            rf.seek(offset)
            data = rf.read(remote_hashes[idx][1])
            lf.seek(offset)
            lf.write(data)
            if i % 5 == 0 or i == len(diff_chunks):
                print(f"  Synced {i}/{len(diff_chunks)} chunks...")
        lf.flush()

sftp.close()

print("2. Verifying full image MD5...")
stdin, stdout, stderr = c.exec_command(f"md5sum {REMOTE_IMG}")
remote_md5 = stdout.read().decode().split()[0]
c.close()

local_md5_hash = hashlib.md5()
with open(LOCAL_IMG, "rb") as lf:
    while True:
        b = lf.read(16 * 1024 * 1024)
        if not b:
            break
        local_md5_hash.update(b)
local_md5 = local_md5_hash.hexdigest()

print(f"Remote MD5: {remote_md5}")
print(f"Local  MD5: {local_md5}")
assert remote_md5 == local_md5, "MD5 MISMATCH!"
print("DELTA_SYNC_VERIFIED_100_PERCENT")
