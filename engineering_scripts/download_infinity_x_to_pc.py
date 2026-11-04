import paramiko, os, sys, time, zlib, subprocess
from concurrent.futures import ThreadPoolExecutor

HOST = '${BG6_SERVER_IP}'
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'
REMOTE_PATH = '/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img'
LOCAL_PATH = r'D:\infinity_x_bg6_ready.img'
NUM_THREADS = 8

print("=== Checking connected ADB/Fastboot devices ===")
subprocess.run(["adb", "devices"], check=False)

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

stdin, stdout, stderr = ssh.exec_command(f"echo '{PASS}' | sudo -S chown administrator:administrator {REMOTE_PATH} && stat -c %s {REMOTE_PATH} && md5sum {REMOTE_PATH}")
out = stdout.read().decode().strip().splitlines()
total_size = int(out[0].strip())
remote_md5 = out[1].split()[0]
ssh.close()

print(f"Remote file: {REMOTE_PATH}")
print(f"Total size:  {total_size:,} bytes ({total_size / (1024**3):.2f} GiB)")
print(f"Remote MD5:  {remote_md5}")

with open(LOCAL_PATH, 'wb') as f:
    f.truncate(total_size)

chunk_size = (total_size + NUM_THREADS - 1) // NUM_THREADS
start_time = time.time()
progress = [0] * NUM_THREADS

def download_chunk(idx):
    offset = idx * chunk_size
    length = min(chunk_size, total_size - offset)
    if length <= 0:
        return
    c = paramiko.SSHClient()
    c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    c.connect(HOST, username=USER, password=PASS, timeout=30)
    cmd = f"dd if={REMOTE_PATH} bs=1M iflag=skip_bytes,count_bytes skip={offset} count={length} 2>/dev/null | gzip -1 -c"
    stdin, stdout, stderr = c.exec_command(cmd, bufsize=1024*1024)
    decomp = zlib.decompressobj(16 + zlib.MAX_WBITS)
    written = 0
    with open(LOCAL_PATH, 'r+b') as f:
        f.seek(offset)
        while True:
            data = stdout.read(262144)
            if not data:
                break
            raw = decomp.decompress(data)
            if raw:
                f.write(raw)
                written += len(raw)
                progress[idx] = written
        tail = decomp.flush()
        if tail:
            f.write(tail)
            written += len(tail)
            progress[idx] = written
    c.close()
    assert written == length, f"Chunk {idx} mismatch: {written} != {length}"

with ThreadPoolExecutor(max_workers=NUM_THREADS) as ex:
    futures = [ex.submit(download_chunk, i) for i in range(NUM_THREADS)]
    while not all(ft.done() for ft in futures):
        time.sleep(3)
        done_bytes = sum(progress)
        elapsed = time.time() - start_time
        pct = (done_bytes / total_size) * 100
        speed = (done_bytes / (1024*1024)) / max(elapsed, 0.1)
        print(f"Progress: {pct:5.1f}% ({done_bytes / (1024*1024):7.1f} / {total_size / (1024*1024):.1f} MB) | {speed:.1f} MB/s", flush=True)
    for ft in futures:
        ft.result()

import hashlib
h = hashlib.md5()
with open(LOCAL_PATH, 'rb') as f:
    while chunk := f.read(8 * 1024 * 1024):
        h.update(chunk)
local_md5 = h.hexdigest()
print(f"Download complete! Local MD5: {local_md5}")
assert local_md5 == remote_md5, f"MD5 mismatch! {local_md5} != {remote_md5}"
print("=== D:\\infinity_x_bg6_ready.img VERIFIED 100% ===")
