import os
import sys
import time
import lzma
import hashlib
import threading
import urllib.request

URL = "https://make-attempted-trade-assessed.trycloudflare.com/sunno_system.img.xz"
EXPECTED_SIZE = 820378960
EXPECTED_MD5 = "5279eed9a4ac87c1aa53a8ee8ca74ed0"

LOCAL_DIR = r"C:\Users\Monir\.gemini\antigravity\scratch\sunno_os"
LOCAL_XZ = os.path.join(LOCAL_DIR, "sunno_system.img.xz")
LOCAL_IMG = os.path.join(LOCAL_DIR, "sunno_system.img")
NUM_THREADS = 12

os.makedirs(LOCAL_DIR, exist_ok=True)
with open(LOCAL_XZ, "wb") as f:
    f.truncate(EXPECTED_SIZE)

downloaded = [0] * NUM_THREADS
errors = []

def worker(tid, start_off, end_off):
    pos = start_off
    for attempt in range(15):
        if pos > end_off:
            return
        try:
            req = urllib.request.Request(
                URL,
                headers={
                    "Range": f"bytes={pos}-{end_off}",
                    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"
                }
            )
            with urllib.request.urlopen(req, timeout=30) as resp, open(LOCAL_XZ, "r+b") as lf:
                lf.seek(pos)
                while pos <= end_off:
                    buf = resp.read(262144)
                    if not buf:
                        break
                    lf.write(buf)
                    pos += len(buf)
                    downloaded[tid] += len(buf)
            if pos > end_off:
                return
        except Exception as e:
            if attempt == 14:
                errors.append((tid, str(e)))
            time.sleep(1.0)

chunk = EXPECTED_SIZE // NUM_THREADS
threads = []
t0 = time.time()
for i in range(NUM_THREADS):
    s = i * chunk
    e = (EXPECTED_SIZE - 1) if i == NUM_THREADS - 1 else ((i + 1) * chunk - 1)
    th = threading.Thread(target=worker, args=(i, s, e), daemon=True)
    threads.append(th)
    th.start()
    time.sleep(0.1)

while any(th.is_alive() for th in threads):
    time.sleep(5)
    done = sum(downloaded)
    elapsed = time.time() - t0
    speed = (done / 1024 / 1024) / max(elapsed, 0.1)
    pct = (done * 100.0) / EXPECTED_SIZE
    print(f"[{elapsed:5.1f}s] {done/1024/1024:6.2f} / {EXPECTED_SIZE/1024/1024:6.2f} MB ({pct:5.1f}%) @ {speed:.2f} MB/s", flush=True)

for th in threads:
    th.join()

if errors:
    print("Errors:", errors)
    sys.exit(1)

print("Verifying MD5...")
h = hashlib.md5()
with open(LOCAL_XZ, "rb") as f:
    while True:
        b = f.read(8 * 1024 * 1024)
        if not b:
            break
        h.update(b)
actual_md5 = h.hexdigest()
print(f"MD5: {actual_md5} (expected {EXPECTED_MD5})")
if actual_md5 != EXPECTED_MD5:
    sys.exit(1)

print("Decompressing sunno_system.img.xz -> sunno_system.img...")
with lzma.open(LOCAL_XZ, "rb") as f_in, open(LOCAL_IMG, "wb") as f_out:
    while True:
        buf = f_in.read(8 * 1024 * 1024)
        if not buf:
            break
        f_out.write(buf)

print(f"DONE! Size: {os.path.getsize(LOCAL_IMG):,} bytes")
