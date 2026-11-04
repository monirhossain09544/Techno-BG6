import paramiko
import os
import time
import hashlib
import threading

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = r"${BG6_SERVER_PASS}"
REMOTE_PATH = "/nvme0n1-disk/hios14_rom/hios14_5_system.img"
LOCAL_PATH = r"D:\hios14_5_system.img"
ORIG_SIZE = 2591678464

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=15)

cmd = """echo '${BG6_SERVER_PASS}' | sudo -S bash -c '
set -e
cd /nvme0n1-disk/hios14_rom
AVBTOOL=/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/avbtool
KEY=/nvme0n1-disk/shunno_os/external/avb/test/data/testkey_rsa2048.pem
export PATH="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin:$PATH"

$AVBTOOL erase_footer --image hios14_5_system.img || true
truncate -s 2591678464 hios14_5_system.img

MAX_SIZE=$($AVBTOOL add_hashtree_footer --partition_size $((2591678464 + 67108864)) --calc_max_image_size)
# Use exact needed size: 2591678464 + 41943040 (40MB) = 2633621504
PART_SIZE=$((2591678464 + 41943040))

$AVBTOOL add_hashtree_footer \
    --image hios14_5_system.img \
    --partition_name system \
    --partition_size $PART_SIZE \
    --hash_algorithm sha256 \
    --key $KEY \
    --algorithm SHA256_RSA2048 \
    --rollback_index 1722816000 \
    --prop com.android.build.system.os_version:14 \
    --prop com.android.build.system.security_patch:2024-08-05

$AVBTOOL info_image --image hios14_5_system.img
stat -c %s hios14_5_system.img
sha256sum hios14_5_system.img
'"""
_, stdout, stderr = ssh.exec_command(cmd)
out_text = stdout.read().decode()
err_text = stderr.read().decode()
print(out_text, flush=True)
if err_text:
    print("STDERR:", err_text, flush=True)

lines = [l.strip() for l in out_text.strip().splitlines() if l.strip()]
remote_sha256 = lines[-1].split()[0]
total_size = int(lines[-2])
ssh.close()

tail_size = total_size - ORIG_SIZE
print(f"Downloading appended AVB tail: {tail_size:,} bytes ({tail_size / (1024**2):.2f} MB)...", flush=True)

with open(LOCAL_PATH, "r+b") as f:
    f.truncate(total_size)

NUM_THREADS = 8
chunk_size = (tail_size + NUM_THREADS - 1) // NUM_THREADS
downloaded = [0] * NUM_THREADS

def download_worker(idx, start, end):
    length = end - start
    if length <= 0:
        return
    for _ in range(5):
        try:
            cur_offset = start + downloaded[idx]
            rem = end - cur_offset
            if rem <= 0:
                return
            client = paramiko.SSHClient()
            client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
            client.connect(HOST, username=USER, password=PASS, timeout=20)
            c = f"python3 -c 'import sys; f=open(\"{REMOTE_PATH}\",\"rb\"); f.seek({cur_offset}); rem={rem};\nwhile rem>0:\n d=f.read(min(262144,rem))\n if not d: break\n sys.stdout.buffer.write(d); rem-=len(d)'"
            _, so, _ = client.exec_command(c)
            ch = so.channel
            with open(LOCAL_PATH, "r+b") as lf:
                lf.seek(cur_offset)
                while rem > 0:
                    data = ch.recv(262144)
                    if not data:
                        break
                    lf.write(data)
                    downloaded[idx] += len(data)
                    rem -= len(data)
            client.close()
            if start + downloaded[idx] >= end:
                return
        except Exception:
            time.sleep(1)

threads = []
for i in range(NUM_THREADS):
    s = ORIG_SIZE + i * chunk_size
    e = min(total_size, ORIG_SIZE + (i + 1) * chunk_size)
    t = threading.Thread(target=download_worker, args=(i, s, e), daemon=True)
    threads.append(t)
    t.start()

for t in threads:
    t.join()

print("Tail download complete! Verifying full SHA256...", flush=True)
h = hashlib.sha256()
with open(LOCAL_PATH, "rb") as f:
    while True:
        b = f.read(4 * 1024 * 1024)
        if not b:
            break
        h.update(b)
local_sha256 = h.hexdigest()
print(f"Remote SHA256: {remote_sha256}", flush=True)
print(f"Local  SHA256: {local_sha256}", flush=True)
assert local_sha256 == remote_sha256, "SHA256 mismatch!"
print("AVB_TAIL_AND_VERIFY_100_PERCENT_SUCCESS!", flush=True)
