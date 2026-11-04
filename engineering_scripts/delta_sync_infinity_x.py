import paramiko
import hashlib
import os
import time
import zlib

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"
REMOTE_PATH = "/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img"
LOCAL_PATH = r"D:\infinity_x_bg6_ready.img"
CHUNK_SIZE = 4 * 1024 * 1024  # 4 MB

print("1. Computing remote 4MB chunk hashes on server...", flush=True)
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

remote_py = f"""python3 - << 'PY'
import hashlib, os
p = "{REMOTE_PATH}"
sz = os.path.getsize(p)
print("SIZE", sz)
full = hashlib.md5()
with open(p, "rb") as f:
    idx = 0
    while True:
        buf = f.read({CHUNK_SIZE})
        if not buf:
            break
        full.update(buf)
        print(idx, hashlib.md5(buf).hexdigest())
        idx += 1
print("FULL_MD5", full.hexdigest())
PY
"""
stdin, stdout, stderr = ssh.exec_command(remote_py)
lines = stdout.read().decode().strip().splitlines()

remote_size = 0
remote_full_md5 = ""
remote_hashes = {}
for line in lines:
    parts = line.split()
    if parts[0] == "SIZE":
        remote_size = int(parts[1])
    elif parts[0] == "FULL_MD5":
        remote_full_md5 = parts[1]
    else:
        remote_hashes[int(parts[0])] = parts[1]

print(f"Remote size: {remote_size:,} bytes | Full MD5: {remote_full_md5}", flush=True)

with open(LOCAL_PATH, "r+b") as f:
    f.truncate(remote_size)

print("2. Comparing with local D:\\infinity_x_bg6_ready.img...", flush=True)
changed_chunks = []
with open(LOCAL_PATH, "rb") as f:
    for idx in range(len(remote_hashes)):
        buf = f.read(CHUNK_SIZE)
        local_h = hashlib.md5(buf).hexdigest() if buf else ""
        if local_h != remote_hashes[idx]:
            changed_chunks.append(idx)

print(f"Remaining changed 4MB chunks: {len(changed_chunks)} / {len(remote_hashes)} ({len(changed_chunks)*4} MB)", flush=True)

t0 = time.time()
for i, idx in enumerate(changed_chunks, 1):
    offset = idx * CHUNK_SIZE
    length = min(CHUNK_SIZE, remote_size - offset)
    cmd = f"dd if={REMOTE_PATH} bs=1M iflag=skip_bytes,count_bytes skip={offset} count={length} 2>/dev/null | gzip -1 -c"
    stdin, stdout, stderr = ssh.exec_command(cmd)
    comp = stdout.read()
    raw = zlib.decompress(comp, 16 + zlib.MAX_WBITS)
    assert len(raw) == length, f"Length mismatch on chunk {idx}: {len(raw)} != {length}"
    assert hashlib.md5(raw).hexdigest() == remote_hashes[idx], f"MD5 mismatch on chunk {idx}"
    with open(LOCAL_PATH, "r+b") as f:
        f.seek(offset)
        f.write(raw)
    print(f"  [{i}/{len(changed_chunks)}] Synced chunk {idx} (compressed {len(comp)//1024} KB)", flush=True)

ssh.close()
print(f"Synced {len(changed_chunks)} chunks in {time.time() - t0:.1f}s! Verifying full file MD5...", flush=True)
h = hashlib.md5()
with open(LOCAL_PATH, "rb") as f:
    while b := f.read(8 * 1024 * 1024):
        h.update(b)
local_full_md5 = h.hexdigest()
print(f"Local MD5:  {local_full_md5}", flush=True)
print(f"Remote MD5: {remote_full_md5}", flush=True)
assert local_full_md5 == remote_full_md5, "MD5 MISMATCH!"
print("=== DELTA SYNC 100% VERIFIED ===", flush=True)
