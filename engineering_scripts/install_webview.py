import paramiko
import lzma
import os
import time
import subprocess

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"
remote_apk = "/nvme0n1-disk/shunno_os/external/chromium-webview/prebuilt/arm64/webview.apk"
local_apk = r"C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\webview.apk"
adb_exe = r"C:\Users\Monir\Android\Sdk\platform-tools\adb.exe"

t0 = time.time()
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

print("Compressing with 72-core xz -T72 and streaming webview.apk...")
stdin, stdout, stderr = ssh.exec_command(f"xz -T72 -3 -c {remote_apk}")
decomp = lzma.LZMADecompressor()

total_in = 0
total_out = 0
last_print = time.time()
with open(local_apk, "wb") as f:
    while True:
        chunk = stdout.read(256 * 1024)
        if not chunk:
            break
        total_in += len(chunk)
        data = decomp.decompress(chunk)
        if data:
            f.write(data)
            total_out += len(data)
        if time.time() - last_print >= 5.0:
            print(f"[{time.time()-t0:.1f}s] streamed {total_in/1048576:.2f} MB -> decompressed {total_out/1048576:.2f} MB")
            last_print = time.time()

ssh.close()
print(f"Downloaded {total_out} bytes (compressed {total_in} bytes) in {time.time() - t0:.1f}s")

print("Installing com.android.webview onto phone via ADB...")
res = subprocess.run([adb_exe, "-s", "1099738415003670", "install", "-r", local_apk], capture_output=True, text=True)
print("ADB install stdout:", res.stdout)
print("ADB install stderr:", res.stderr)

print("Checking dumpsys webviewupdate...")
wv = subprocess.check_output([adb_exe, "-s", "1099738415003670", "shell", "dumpsys", "webviewupdate"], text=True)
print(wv)

print("Clearing Google Play services & Play Store crash state so user can sign in immediately...")
subprocess.run([adb_exe, "-s", "1099738415003670", "shell", "am", "force-stop", "com.google.android.gms"])
subprocess.run([adb_exe, "-s", "1099738415003670", "shell", "am", "force-stop", "com.android.vending"])
print("DONE!")
