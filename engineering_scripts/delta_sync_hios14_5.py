import paramiko
import hashlib
import zlib
import os
import time
import struct

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = r"${BG6_SERVER_PASS}"
REMOTE_PATH = "/nvme0n1-disk/hios14_rom/hios14_5_system.img"
LOCAL_OLD = r"D:\hios14_5_system.img"
LOCAL_NEW = r"D:\hios14_5_system_fixed.img"
EXPECTED_SHA256 = "41f47bd3374355fb39770c34740e460d0316be25a62f1e5fa2d905581ae76556"
BLK = 4096

t0 = time.time()
print("1. Indexing local 4KB blocks from D:\\hios14_5_system.img ...", flush=True)
local_map = {}
with open(LOCAL_OLD, "rb") as f:
    idx = 0
    while True:
        buf = f.read(BLK * 256)
        if not buf:
            break
        mv = memoryview(buf)
        for off in range(0, len(buf), BLK):
            b = mv[off:off+BLK]
            h = hashlib.blake2b(b, digest_size=12).digest()
            if h not in local_map:
                local_map[h] = idx
            idx += 1

print(f"Indexed {idx} blocks ({len(local_map)} unique) in {time.time()-t0:.1f}s", flush=True)

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)

print("2. Computing remote 4KB block hashes on server...", flush=True)
remote_hash_cmd = f"""python3 -c '
import hashlib, sys, zlib
BLK = 4096
out = bytearray()
with open("{REMOTE_PATH}", "rb") as f:
    while True:
        buf = f.read(BLK * 256)
        if not buf: break
        mv = memoryview(buf)
        for off in range(0, len(buf), BLK):
            out.extend(hashlib.blake2b(mv[off:off+BLK], digest_size=12).digest())
sys.stdout.buffer.write(zlib.compress(bytes(out), 3))
'"""
_, stdout, stderr = ssh.exec_command(remote_hash_cmd)
comp_hashes = stdout.read()
raw_hashes = zlib.decompress(comp_hashes)
num_remote_blocks = len(raw_hashes) // 12
print(f"Received {num_remote_blocks} remote block hashes ({len(comp_hashes)/1024:.1f} KB compressed) in {time.time()-t0:.1f}s", flush=True)

missing_blocks = []
for i in range(num_remote_blocks):
    h = raw_hashes[i*12:(i+1)*12]
    if h not in local_map:
        missing_blocks.append(i)

print(f"3. Delta analysis: {len(missing_blocks)} / {num_remote_blocks} blocks changed ({len(missing_blocks)*4/1024:.2f} MB to download!)", flush=True)

# Upload missing_blocks list as compressed uint32 array and stream back the missing blocks
missing_bytes = zlib.compress(struct.pack(f"<{len(missing_blocks)}I", *missing_blocks), 6)
sftp = ssh.open_sftp()
with sftp.file("/tmp/missing_blocks.bin", "wb") as rf:
    rf.write(missing_bytes)
sftp.close()

fetch_cmd = f"""python3 -c '
import struct, zlib, sys
BLK = 4096
raw = zlib.decompress(open("/tmp/missing_blocks.bin", "rb").read())
indices = struct.unpack(f"<{{len(raw)//4}}I", raw)
with open("{REMOTE_PATH}", "rb") as f:
    for idx in indices:
        f.seek(idx * BLK)
        sys.stdout.buffer.write(f.read(BLK))
'"""
_, stdout, _ = ssh.exec_command(fetch_cmd)
ch = stdout.channel

missing_data = bytearray()
total_missing_bytes = len(missing_blocks) * BLK
last_p = time.time()
while len(missing_data) < total_missing_bytes:
    d = ch.recv(262144)
    if not d:
        break
    missing_data.extend(d)
    if time.time() - last_p >= 3:
        print(f"  Downloaded {len(missing_data)/(1024**2):.2f} / {total_missing_bytes/(1024**2):.2f} MB ...", flush=True)
        last_p = time.time()

ssh.close()
assert len(missing_data) == total_missing_bytes, f"Expected {total_missing_bytes}, got {len(missing_data)}"
print("4. Reconstructing fixed D:\\hios14_5_system.img locally...", flush=True)

missing_pos = {blk_idx: pos for pos, blk_idx in enumerate(missing_blocks)}
sha = hashlib.sha256()

with open(LOCAL_OLD, "rb") as fold, open(LOCAL_NEW, "wb") as fnew:
    # Read old file into memory-mapped buffer for instant random access
    import mmap
    mm = mmap.mmap(fold.fileno(), 0, access=mmap.ACCESS_READ)
    out_chunk = bytearray()
    for i in range(num_remote_blocks):
        h = raw_hashes[i*12:(i+1)*12]
        old_idx = local_map.get(h)
        if old_idx is not None:
            blk_bytes = mm[old_idx*BLK : (old_idx+1)*BLK]
        else:
            mpos = missing_pos[i]
            blk_bytes = missing_data[mpos*BLK : (mpos+1)*BLK]
        out_chunk.extend(blk_bytes)
        if len(out_chunk) >= 4 * 1024 * 1024:
            fnew.write(out_chunk)
            sha.update(out_chunk)
            out_chunk.clear()
    if out_chunk:
        fnew.write(out_chunk)
        sha.update(out_chunk)
        out_chunk.clear()
    mm.close()

calc_sha = sha.hexdigest()
print(f"Expected SHA256: {EXPECTED_SHA256}", flush=True)
print(f"Local    SHA256: {calc_sha}", flush=True)
assert calc_sha == EXPECTED_SHA256, "SHA256 mismatch!"
os.replace(LOCAL_NEW, LOCAL_OLD)
print(f"DELTA_SYNC_100_PERCENT_SUCCESS in {time.time()-t0:.1f}s!", flush=True)
