import paramiko, os

REMOTE_PY = r'''import subprocess, os, re, urllib.request, zipfile

WORK = "/nvme0n1-disk/infinity_x/filemanager_work"
os.makedirs(WORK, exist_ok=True)
UA = "Mozilla/5.0 (Linux; Android 14; TECNO BG6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36"

req = urllib.request.Request(
    "https://com-transsion-filemanagerx.en.uptodown.com/android/download",
    headers={"User-Agent": UA}
)
html = urllib.request.urlopen(req, timeout=20).read().decode("utf-8", "ignore")
m = re.search(r'data-url="([^"]+)"', html)
print("data-url found:", bool(m))
assert m, "No data-url found!"
dl_url = "https://dw.uptodown.com/dwn/" + m.group(1)
out_bin = f"{WORK}/FileManager_dl.bin"
subprocess.check_call([
    "curl", "-sL", "-A", UA,
    "-H", "Referer: https://com-transsion-filemanagerx.en.uptodown.com/android/download",
    "-o", out_bin, dl_url
])
print("Downloaded size:", os.path.getsize(out_bin))
ftype = subprocess.check_output(["file", out_bin]).decode().strip()
print("File type:", ftype)

# Check if it's a direct APK or XAPK bundle
with zipfile.ZipFile(out_bin) as zf:
    names = zf.namelist()
    print("Zip entries sample:", names[:15])
    if "AndroidManifest.xml" in names:
        apk_path = f"{WORK}/TranssionFileManager.apk"
        subprocess.check_call(["cp", out_bin, apk_path])
    else:
        # XAPK
        zf.extractall(f"{WORK}/xapk")
        print("Extracted XAPK:", os.listdir(f"{WORK}/xapk"))
        apk_path = None
        for f in os.listdir(f"{WORK}/xapk"):
            if f.endswith(".apk") and "transsion" in f:
                apk_path = f"{WORK}/xapk/{f}"

if apk_path:
    apksigner_jar = subprocess.check_output("find /nvme0n1-disk/shunno_os -name apksigner.jar | head -n 1", shell=True).decode().strip()
    print("=== Cert Verification ===")
    print(subprocess.check_output(f"java -jar {apksigner_jar} verify --print-certs {apk_path}", shell=True).decode())
    print("=== Badging ===")
    print(subprocess.check_output(f"/usr/bin/aapt2 dump badging {apk_path} | head -n 15", shell=True).decode())
    print("FINAL_APK:", apk_path)
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=90)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
out = stdout.read().decode()
err = stderr.read().decode()
print(out)
if err:
    print("ERR:", err)

if "FINAL_APK:" in out:
    remote_apk = [l.split("FINAL_APK:")[1].strip() for l in out.splitlines() if "FINAL_APK:" in l][0]
    local_apk = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\TranssionFileManager.apk"
    sftp = c.open_sftp()
    sftp.get(remote_apk, local_apk)
    sftp.close()
    print("Pulled local FileManager APK:", local_apk, os.path.getsize(local_apk))
c.close()
