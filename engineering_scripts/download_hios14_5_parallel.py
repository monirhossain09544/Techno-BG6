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
NUM_THREADS = 8

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=15)

_, stdout, _ = ssh.exec_command(f"stat -c %s {REMOTE_PATH} && sha256sum {REMOTE_PATH}")
out = stdout.read().decode().strip().splitlines()
total_size = int(out[0].strip())
remote_sha256 = out[1].split()[0].strip()
ssh.close()

print(f"Remote size: {total_size:,} bytes ({total_size / (1024**3):.2f} GB)", flush=True)
print(f"Remote SHA256: {remote_sha256}", flush=True)

# Pre-allocate local file
with open(LOCAL_PATH, "wb") as f:
    f.truncate(total_size)

chunk_size = (total_size + NUM_THREADS - 1) // NUM_THREADS
downloaded = [0] * NUM_THREADS
errors = []

def download_worker(idx, start, end):
    length = end - start
    if length <= 0:
        return
    retries = 0
    while retries < 5:
        try:
            cur_offset = start + downloaded[idx]
            rem = end - cur_offset
            if rem <= 0:
                return
            client = paramiko.SSHClient()
            client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
            client.connect(HOST, username=USER, password=PASS, timeout=20)
            cmd = f"python3 -c 'import sys; f=open(\"{REMOTE_PATH}\",\"rb\"); f.seek({cur_offset}); rem={rem};\nwhile rem>0:\n d=f.read(min(262144,rem))\n if not d: break\n sys.stdout.buffer.write(d); rem-=len(d)'"
            _, stdout, _ = client.exec_command(cmd)
            ch = stdout.channel
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
        except Exception as e:
            retries += 1
            time.sleep(2)
    if start + downloaded[idx] < end:
        errors.append(f"Worker {idx} incomplete: {downloaded[idx]}/{length}")

t0 = time.time()
threads = []
for i in range(NUM_THREADS):
    s = i * chunk_size
    e = min(total_size, (i + 1) * chunk_size)
    t = threading.Thread(target=download_worker, args=(i, s, e), daemon=True)
    threads.append(t)
    t.start()

last_print = 0
while any(t.is_alive() for t in threads):
    time.sleep(2)
    done = sum(downloaded)
    elapsed = time.time() - t0
    pct = done * 100.0 / total_size
    speed = (done / (1024 * 1024)) / max(elapsed, 0.1)
    if time.time() - last_print >= 6:
        print(f"Downloaded: {done / (1024**2):.1f} / {total_size / (1024**2):.1f} MB ({pct:.1f}%) @ {speed:.2f} MB/s", flush=True)
        last_print = time.time()

for t in threads:
    t.join()

if errors:
    print("ERRORS:", errors, flush=True)
    raise SystemExit(1)

print("Download complete! Verifying SHA256...", flush=True)
h = hashlib.sha256()
with open(LOCAL_PATH, "rb") as f:
    while True:
        b = f.read(4 * 1024 * 1024)
        if not b:
            break
        h.update(b)
local_sha256 = h.hexdigest()
print(f"Local  SHA256: {local_sha256}", flush=True)
assert local_sha256 == remote_sha256, "SHA256 mismatch!"
print("DOWNLOAD_AND_VERIFY_100_PERCENT_SUCCESS!", flush=True)
