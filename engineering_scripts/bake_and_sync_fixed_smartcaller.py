import os, sys, zlib, struct, hashlib, subprocess, time
import paramiko

sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ADB = "adb -s 1099738415003670"
HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

REMOTE_IMG = "/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img"
LOCAL_IMG = r"D:\infinity_x_bg6_ready.img"
SUPER_IMG = r"D:\Tecno_BG6_Full_ROM_Backup\super.img"
LIVE_META = r"D:\Tecno_BG6_Full_ROM_Backup\live_super_meta.bin"
CHUNK_SIZE = 4 * 1024 * 1024

# 1. Put live phone cleanly on Contacts main list so user sees SIM + Google contacts immediately
subprocess.run(f"{ADB} shell am force-stop com.sh.smart.caller", shell=True)
time.sleep(0.3)
subprocess.run(f"{ADB} shell am start -n com.sh.smart.caller/com.android.contacts.activities.PeopleActivity", shell=True)

# 2. Update SmartCaller.apk inside remote ext4 image + AVB footer + AOSP source tree
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)

bake_sh = r"""#!/bin/bash
set -e
export PATH="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin:$PATH"
IMG=/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img
AVBTOOL=/nvme0n1-disk/shunno_os/external/avb/avbtool.py
MNT=/tmp/mnt_sc_fix

mkdir -p "$MNT"
if mountpoint -q "$MNT"; then umount "$MNT"; fi

ORIG_SIZE=$(stat -c%s "$IMG")
echo "Original image size: $ORIG_SIZE"

python3 "$AVBTOOL" erase_footer --image "$IMG" 2>/dev/null || true
e2fsck -fy "$IMG" || true
mount -o rw,loop "$IMG" "$MNT"

cp -f /nvme0n1-disk/infinity_x/smartcaller_v6_work/SmartCaller_V6_A16.apk "$MNT/system/system_ext/priv-app/SmartCaller/SmartCaller.apk"
chmod 0644 "$MNT/system/system_ext/priv-app/SmartCaller/SmartCaller.apk"

python3 - << 'PY'
import os
p = "/tmp/mnt_sc_fix/system/system_ext/priv-app/SmartCaller/SmartCaller.apk"
os.setxattr(p, "security.selinux", b"u:object_r:system_file:s0\x00", follow_symlinks=False)
PY

ls -lh "$MNT/system/system_ext/priv-app/SmartCaller/SmartCaller.apk"
sync
umount "$MNT"

BLOCKS=$(dumpe2fs -h "$IMG" 2>/dev/null | awk -F: '/Block count:/ {gsub(/ /,"",$2); print $2}')
FS_BYTES=$(( BLOCKS * 4096 ))
PART_BYTES=$(( FS_BYTES + 67108864 ))
truncate -s "$FS_BYTES" "$IMG"
e2fsck -fy "$IMG" || true

python3 "$AVBTOOL" add_hashtree_footer \
    --image "$IMG" \
    --partition_name system \
    --partition_size "$PART_BYTES" \
    --hash_algorithm sha256 \
    --key /nvme0n1-disk/shunno_os/external/avb/test/data/testkey_rsa2048.pem \
    --algorithm SHA256_RSA2048

python3 "$AVBTOOL" verify_image \
    --image "$IMG" \
    --key /nvme0n1-disk/shunno_os/external/avb/test/data/testkey_rsa2048.pem

chown administrator:administrator "$IMG"
cp -f /nvme0n1-disk/infinity_x/smartcaller_v6_work/SmartCaller_V6_A16.apk /nvme0n1-disk/shunno_os/vendor/transsion/bg6_suite/prebuilt/SmartCaller.apk
chown administrator:administrator /nvme0n1-disk/shunno_os/vendor/transsion/bg6_suite/prebuilt/SmartCaller.apk
echo "REMOTE_BAKE_DONE $(stat -c%s "$IMG")"
"""

sftp = ssh.open_sftp()
with sftp.open("/tmp/update_sc_fix.sh", "w") as f:
    f.write(bake_sh)
sftp.close()

print("2. Baking updated SmartCaller.apk into remote image + AVB signing...", flush=True)
_, stdout, stderr = ssh.exec_command("chmod +x /tmp/update_sc_fix.sh && echo '${BG6_SERVER_PASS}' | sudo -S /tmp/update_sc_fix.sh", timeout=180)
out_txt = stdout.read().decode("utf-8", errors="replace")
err_txt = stderr.read().decode("utf-8", errors="replace")
print(out_txt)
if "REMOTE_BAKE_DONE" not in out_txt:
    print("STDERR:", err_txt)
    sys.exit(1)

t0 = time.time()
print("3. Fetching remote 4MB chunk hashes for delta sync...", flush=True)
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

print(f"Changed 4MB chunks: {len(diff_chunks)} ({len(diff_chunks)*4} MB) — streaming...", flush=True)
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
    _, stdout, _ = ssh.exec_command(stream_py, bufsize=0)
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
            if i % 5 == 0 or i == len(diff_chunks):
                print(f"  Streamed {i}/{len(diff_chunks)} chunks ({time.time()-t0:.1f}s)...", flush=True)
        lf.flush()

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

print("4. Updating D:\\Tecno_BG6_Full_ROM_Backup\\super.img in-place...", flush=True)
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

assert sys_exts is not None, "Could not match system_a extents!"
with open(LOCAL_IMG, "rb") as src, open(SUPER_IMG, "r+b") as dst:
    for phys_off, length in sys_exts:
        dst.seek(phys_off)
        rem = length
        while rem > 0:
            chunk = src.read(min(16 * 1024 * 1024, rem))
            assert chunk
            dst.write(chunk)
            rem -= len(chunk)
    dst.flush()

print("ALL_SYNC_AND_SUPER_DONE_100_PERCENT!")
