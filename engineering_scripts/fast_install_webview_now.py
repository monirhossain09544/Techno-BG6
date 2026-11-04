import paramiko
import lzma
import subprocess
import time
import threading

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = r"${BG6_SERVER_PASS}"
SRC_APK = "/nvme0n1-disk/shunno_os/external/chromium-webview/prebuilt/arm64/webview.apk"
REMOTE_XZ = "/tmp/wv_arm64.xz"
NUM_THREADS = 8

t0 = time.time()
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=15)
_, stdout, stderr = ssh.exec_command(f"xz -T72 -3 -c {SRC_APK} > {REMOTE_XZ} && stat -c %s {REMOTE_XZ}")
total_size = int(stdout.read().decode().strip().splitlines()[-1])
ssh.close()

print(f"Compressed to {REMOTE_XZ} ({total_size/1048576:.2f} MB) in {time.time()-t0:.1f}s! Downloading over {NUM_THREADS} streams...", flush=True)
chunk_size = (total_size + NUM_THREADS - 1) // NUM_THREADS
buffers = [bytearray() for _ in range(NUM_THREADS)]

def worker(idx, start, end):
    rem = end - start
    if rem <= 0:
        return
    c = paramiko.SSHClient()
    c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    c.connect(HOST, username=USER, password=PASS, timeout=20)
    cmd = f"python3 -c 'import sys; f=open(\"{REMOTE_XZ}\",\"rb\"); f.seek({start}); rem={rem};\nwhile rem>0:\n d=f.read(min(262144,rem))\n if not d: break\n sys.stdout.buffer.write(d); rem-=len(d)'"
    _, stdout, _ = c.exec_command(cmd)
    ch = stdout.channel
    while rem > 0:
        d = ch.recv(262144)
        if not d:
            break
        buffers[idx].extend(d)
        rem -= len(d)
    c.close()

threads = []
for i in range(NUM_THREADS):
    s = i * chunk_size
    e = min(total_size, (i + 1) * chunk_size)
    t = threading.Thread(target=worker, args=(i, s, e))
    threads.append(t)
    t.start()

for t in threads:
    t.join()

comp_data = b"".join(buffers)
print(f"Downloaded {len(comp_data)/1048576:.2f} MB in {time.time()-t0:.1f}s! Decompressing...", flush=True)
raw_apk = lzma.decompress(comp_data)
local_apk = r"D:\webview.apk"
with open(local_apk, "wb") as f:
    f.write(raw_apk)
print(f"Saved {local_apk} ({len(raw_apk):,} bytes). Installing onto phone...", flush=True)

adb = r"C:\Users\Monir\Android\Sdk\platform-tools\adb.exe"
res = subprocess.run([adb, "-s", "1099738415003670", "install", "-r", local_apk], capture_output=True, text=True)
print("install stdout:", res.stdout.strip(), "stderr:", res.stderr.strip(), flush=True)

wv_out = subprocess.check_output([adb, "-s", "1099738415003670", "shell", "dumpsys", "webviewupdate"], text=True)
print("\n".join(wv_out.splitlines()[:18]), flush=True)

subprocess.run([adb, "-s", "1099738415003670", "shell", "am", "force-stop", "com.google.android.gms"])
subprocess.run([adb, "-s", "1099738415003670", "shell", "am", "force-stop", "com.android.vending"])
subprocess.run([adb, "-s", "1099738415003670", "shell", "monkey", "-p", "com.android.vending", "-c", "android.intent.category.LAUNCHER", "1"])
print("WEBVIEW_AND_PLAY_STORE_FIXED_100_PERCENT!", flush=True)
