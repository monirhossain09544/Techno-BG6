import paramiko
import hashlib
import os
import time
import zlib

REMOTE_IMG = "/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img"
LOCAL_IMG = r"D:\infinity_x_bg6_ready.img"
CHUNK_SIZE = 4 * 1024 * 1024

REMOTE_SH = r'''set -e
ZIPALIGN="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/zipalign"
WORK="/nvme0n1-disk/infinity_x/mock_work"
IMG="/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img"
MNT="/nvme0n1-disk/infinity_x/mnt_mock"

echo "1. Running zipalign -f -p 4 on framework.jar & services.jar..."
cd "$WORK"
"$ZIPALIGN" -f -p 4 framework.jar framework_aligned.jar
mv -f framework_aligned.jar framework.jar
"$ZIPALIGN" -c -v 4 framework.jar | grep -E "classes|Verification"

"$ZIPALIGN" -f -p 4 services.jar services_aligned.jar
mv -f services_aligned.jar services.jar
"$ZIPALIGN" -c -v 4 services.jar | grep -E "classes|Verification"

echo "2. Mounting master image and injecting aligned JARs..."
echo '${BG6_SERVER_PASS}' | sudo -S umount "$MNT" 2>/dev/null || true
sudo mkdir -p "$MNT"
sudo mount -o loop,rw "$IMG" "$MNT"

sudo cp "$WORK/framework.jar" "$MNT/system/framework/framework.jar"
sudo cp "$WORK/services.jar" "$MNT/system/framework/services.jar"
sudo chown 0:0 "$MNT/system/framework/framework.jar" "$MNT/system/framework/services.jar"
sudo chmod 0644 "$MNT/system/framework/framework.jar" "$MNT/system/framework/services.jar"
sudo chmod 0644 "$MNT/system/build.prop"

RC="$MNT/system/etc/init/init.bg6.rc"
if ! grep -q "start adbd" "$RC"; then
    cat << 'EOF' | sudo tee -a "$RC" >/dev/null

on post-fs-data
    setprop sys.usb.config adb
    start adbd
EOF
fi
sudo chown 0:0 "$RC"
sudo chmod 0644 "$RC"

sudo python3 - << 'PYEOF'
import os
MNT = "/nvme0n1-disk/infinity_x/mnt_mock"
for p in [
    f"{MNT}/system/framework/framework.jar",
    f"{MNT}/system/framework/services.jar",
    f"{MNT}/system/etc/init/init.bg6.rc",
    f"{MNT}/system/build.prop",
    f"{MNT}/system/bin/kernel-gps",
]:
    if os.path.exists(p):
        os.setxattr(p, "security.selinux", b"u:object_r:system_file:s0\x00")

for p in [
    f"{MNT}/system/bin/rw-system.sh",
    f"{MNT}/system/bin/phh-on-boot.sh",
    f"{MNT}/system/bin/bg6-perf-tune.sh",
    f"{MNT}/system/bin/gnss_kernel_engine",
]:
    if os.path.exists(p):
        os.setxattr(p, "security.selinux", b"u:object_r:phhsu_exec:s0\x00")
PYEOF

sync
sudo umount "$MNT"
sudo e2fsck -fy "$IMG" >/dev/null 2>&1 || true

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

print("Running zipalign + image injection + hash computation on server...", flush=True)
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

changed = []
with open(LOCAL_IMG, "rb") as f:
    for idx in range(len(remote_hashes)):
        buf = f.read(CHUNK_SIZE)
        lh = hashlib.md5(buf).hexdigest() if buf else ""
        if lh != remote_hashes[idx]:
            changed.append(idx)

print(f"Changed 4MB chunks after zipalign: {len(changed)} ({len(changed)*4} MB)", flush=True)

if changed:
    # Stream all changed chunks in ONE single SSH command!
    chunk_list_str = ",".join(str(x) for x in changed)
    stream_py = f"""python3 - << 'PYSTREAM'
import zlib, struct
p = "{REMOTE_IMG}"
chunks = [{chunk_list_str}]
cs = {CHUNK_SIZE}
import sys
out = sys.stdout.buffer
with open(p, "rb") as f:
    for idx in chunks:
        f.seek(idx * cs)
        raw = f.read(cs)
        comp = zlib.compress(raw, 1)
        out.write(struct.pack(">II", idx, len(comp)))
        out.write(comp)
        out.flush()
PYSTREAM
"""
    stdin, stdout, stderr = c.exec_command(stream_py, timeout=300)
    with open(LOCAL_IMG, "r+b") as lf:
        for i in range(len(changed)):
            hdr = stdout.channel.recv(8)
            while len(hdr) < 8:
                more = stdout.channel.recv(8 - len(hdr))
                if not more:
                    raise EOFError("Unexpected EOF reading chunk header")
                hdr += more
            idx, comp_len = __import__("struct").unpack(">II", hdr)
            comp_buf = bytearray()
            while len(comp_buf) < comp_len:
                part = stdout.channel.recv(min(65536, comp_len - len(comp_buf)))
                if not part:
                    raise EOFError("Unexpected EOF reading chunk body")
                comp_buf.extend(part)
            raw = zlib.decompress(bytes(comp_buf))
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
print("ALL_ALIGNED_AND_SYNCED_100_PERCENT", flush=True)
