import paramiko
import hashlib
import os
import zlib
import struct

REMOTE_IMG = "/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img"
LOCAL_IMG = r"D:\infinity_x_bg6_ready.img"
CHUNK_SIZE = 4 * 1024 * 1024

REMOTE_SH = r'''set -e
export PATH="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin:$PATH"
IMG="/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img"
MNT="/nvme0n1-disk/infinity_x/mnt_mock"

echo '${BG6_SERVER_PASS}' | sudo -S umount "$MNT" 2>/dev/null || true
sudo chown administrator:administrator "$IMG"

echo "1. Erasing old AVB footer and regenerating fresh SHA256 dm-verity hashtree footer..."
avbtool erase_footer --image "$IMG" 2>/dev/null || true

BLOCKS=$(dumpe2fs -h "$IMG" 2>/dev/null | awk -F: '/Block count:/ {gsub(/ /,"",$2); print $2}')
FS_BYTES=$(( BLOCKS * 4096 ))
PART_BYTES=$(( FS_BYTES + 67108864 ))
echo "FS_BYTES=$FS_BYTES PART_BYTES=$PART_BYTES"

truncate -s $FS_BYTES "$IMG"
e2fsck -fy "$IMG" >/dev/null 2>&1 || true

avbtool add_hashtree_footer \
    --image "$IMG" \
    --partition_name system \
    --partition_size $PART_BYTES \
    --hash_algorithm sha256 \
    --key /nvme0n1-disk/shunno_os/external/avb/test/data/testkey_rsa2048.pem \
    --algorithm SHA256_RSA2048

avbtool info_image --image "$IMG" | head -n 20

echo "HASH_START"
python3 - << 'PYHASH'
import hashlib, os
p = "/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img"
sz = os.path.getsize(p)
print("SIZE", sz)
full = hashlib.md5()
with open(p, "rb") as f:
    idx = 0
    while True:
        buf = f.read(4 * 1024 * 1024)
        if not buf:
            break
        full.update(buf)
        print("CHUNK", idx, hashlib.md5(buf).hexdigest())
        idx += 1
print("FULL_MD5", full.hexdigest())
PYHASH
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)

print("Regenerating AVB dm-verity hashtree footer on Linux server...", flush=True)
stdin, stdout, stderr = c.exec_command("bash -s", timeout=180)
stdin.write(REMOTE_SH)
stdin.channel.shutdown_write()

out = stdout.read().decode()
err = stderr.read().decode()

if "HASH_START" not in out:
    print("OUT:", out)
    print("ERR:", err)
    raise RuntimeError("Failed before HASH_START")

pre_hash, hash_part = out.split("HASH_START", 1)
print(pre_hash, flush=True)

remote_size = 0
remote_full_md5 = ""
remote_hashes = {}
for line in hash_part.strip().splitlines():
    parts = line.split()
    if not parts:
        continue
    if parts[0] == "SIZE":
        remote_size = int(parts[1])
    elif parts[0] == "FULL_MD5":
        remote_full_md5 = parts[1]
    elif parts[0] == "CHUNK":
        remote_hashes[int(parts[1])] = parts[2]

print(f"Remote size: {remote_size:,} | Remote MD5: {remote_full_md5}", flush=True)

with open(LOCAL_IMG, "r+b") as f:
    f.truncate(remote_size)

changed = []
with open(LOCAL_IMG, "rb") as f:
    for idx in range(len(remote_hashes)):
        buf = f.read(CHUNK_SIZE)
        lh = hashlib.md5(buf).hexdigest() if buf else ""
        if lh != remote_hashes[idx]:
            changed.append(idx)

print(f"Changed 4MB chunks (AVB hashtree footer): {len(changed)} ({len(changed)*4} MB)", flush=True)

if changed:
    chunk_list_str = ",".join(str(x) for x in changed)
    stream_py = f"""python3 - << 'PYSTREAM'
import zlib, struct, sys
p = "{REMOTE_IMG}"
chunks = [{chunk_list_str}]
cs = {CHUNK_SIZE}
out = sys.stdout.buffer
with open(p, "rb") as f:
    for idx in chunks:
        f.seek(idx * cs)
        raw = f.read(cs)
        comp = zlib.compress(raw, 1)
        out.write(struct.pack(">III", idx, len(raw), len(comp)))
        out.write(comp)
        out.flush()
PYSTREAM
"""
    stdin, stdout, stderr = c.exec_command(stream_py, timeout=300)
    with open(LOCAL_IMG, "r+b") as lf:
        for i in range(len(changed)):
            hdr = stdout.channel.recv(12)
            while len(hdr) < 12:
                more = stdout.channel.recv(12 - len(hdr))
                if not more:
                    raise EOFError("Unexpected EOF reading chunk header")
                hdr += more
            idx, raw_len, comp_len = struct.unpack(">III", hdr)
            comp_buf = bytearray()
            while len(comp_buf) < comp_len:
                part = stdout.channel.recv(min(65536, comp_len - len(comp_buf)))
                if not part:
                    raise EOFError("Unexpected EOF reading chunk body")
                comp_buf.extend(part)
            raw = zlib.decompress(bytes(comp_buf))
            assert len(raw) == raw_len
            assert hashlib.md5(raw).hexdigest() == remote_hashes[idx], f"Chunk {idx} MD5 mismatch!"
            lf.seek(idx * CHUNK_SIZE)
            lf.write(raw)
            print(f"  [{i+1}/{len(changed)}] Synced chunk {idx} ({comp_len//1024} KB)", flush=True)
        lf.flush()

c.close()

h = hashlib.md5()
with open(LOCAL_IMG, "rb") as lf:
    while b := lf.read(8 * 1024 * 1024):
        h.update(b)
local_md5 = h.hexdigest()
print(f"Local  MD5: {local_md5}", flush=True)
print(f"Remote MD5: {remote_full_md5}", flush=True)
assert local_md5 == remote_full_md5, "FINAL MD5 MISMATCH!"
print("AVB_FOOTER_AND_SYNC_100_PERCENT_VERIFIED", flush=True)
