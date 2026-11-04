import os
import sys
import time
import lzma
import hashlib
import threading
import paramiko

HOST = "${BG6_SERVER_IP}"
PORT = 22
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

REMOTE_FILE = "/nvme0n1-disk/sunno_release/sunno_system.img.xz"
LOCAL_DIR = r"C:\Users\Monir\.gemini\antigravity\scratch\sunno_os"
LOCAL_XZ = os.path.join(LOCAL_DIR, "sunno_system.img.xz")
LOCAL_IMG = os.path.join(LOCAL_DIR, "sunno_system.img")
NUM_THREADS = 16

os.makedirs(LOCAL_DIR, exist_ok=True)

def get_remote_size_and_md5():
    c = paramiko.SSHClient()
    c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    c.connect(HOST, port=PORT, username=USER, password=PASS, timeout=20)
    _, stdout, _ = c.exec_command(f"stat -c '%s' {REMOTE_FILE} && md5sum {REMOTE_FILE}")
    lines = stdout.read().decode().strip().splitlines()
    c.close()
    size = int(lines[0].strip())
    md5 = lines[1].split()[0].strip()
    return size, md5

print("Checking remote file size and MD5...")
total_size, expected_md5 = get_remote_size_and_md5()
print(f"Remote size: {total_size:,} bytes ({total_size/1024/1024:.2f} MB), MD5: {expected_md5}")

# Pre-allocate local file
with open(LOCAL_XZ, "wb") as f:
    f.truncate(total_size)

downloaded_bytes = [0] * NUM_THREADS
errors = []

def worker(tid, start_off, end_off):
    try:
        t = paramiko.Transport((HOST, PORT))
        t.set_keepalive(15)
        t.connect(username=USER, password=PASS)
        sftp = paramiko.SFTPClient.from_transport(t)
        sftp.get_channel().settimeout(60)
        with sftp.open(REMOTE_FILE, "rb") as rf:
            rf.seek(start_off)
            rf.prefetch(end_off - start_off)
            with open(LOCAL_XZ, "r+b") as lf:
                lf.seek(start_off)
                pos = start_off
                while pos < end_off:
                    chunk_sz = min(262144, end_off - pos)
                    data = rf.read(chunk_sz)
                    if not data:
                        raise IOError(f"Unexpected EOF at {pos}")
                    lf.write(data)
                    pos += len(data)
                    downloaded_bytes[tid] += len(data)
        sftp.close()
        t.close()
    except Exception as e:
        errors.append((tid, str(e)))

chunk = total_size // NUM_THREADS
threads = []
t0 = time.time()
for i in range(NUM_THREADS):
    s = i * chunk
    e = total_size if i == NUM_THREADS - 1 else (i + 1) * chunk
    th = threading.Thread(target=worker, args=(i, s, e), daemon=True)
    threads.append(th)
    th.start()

while any(th.is_alive() for th in threads):
    time.sleep(5)
    done = sum(downloaded_bytes)
    elapsed = time.time() - t0
    speed = (done / 1024 / 1024) / max(elapsed, 0.1)
    pct = (done * 100.0) / total_size
    print(f"[{elapsed:5.1f}s] Downloaded {done/1024/1024:6.2f} / {total_size/1024/1024:6.2f} MB ({pct:5.1f}%) @ {speed:.2f} MB/s", flush=True)

for th in threads:
    th.join()

if errors:
    print("Errors occurred:", errors)
    sys.exit(1)

print("Verifying MD5 checksum...")
h = hashlib.md5()
with open(LOCAL_XZ, "rb") as f:
    while True:
        b = f.read(4 * 1024 * 1024)
        if not b:
            break
        h.update(b)
actual_md5 = h.hexdigest()
print(f"Actual MD5:   {actual_md5}")
print(f"Expected MD5: {expected_md5}")
if actual_md5 != expected_md5:
    print("MD5 mismatch!")
    sys.exit(1)

print("Decompressing sunno_system.img.xz -> sunno_system.img...")
with lzma.open(LOCAL_XZ, "rb") as f_in, open(LOCAL_IMG, "wb") as f_out:
    while True:
        buf = f_in.read(8 * 1024 * 1024)
        if not buf:
            break
        f_out.write(buf)

print(f"SUCCESS! Decompressed image ready at {LOCAL_IMG} ({os.path.getsize(LOCAL_IMG):,} bytes)")
