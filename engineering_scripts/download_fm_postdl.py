import paramiko, os

REMOTE_PY = r'''import subprocess, os, re, urllib.request, http.cookiejar, zipfile

WORK = "/nvme0n1-disk/infinity_x/filemanager_work"
os.makedirs(WORK, exist_ok=True)
UA = "Mozilla/5.0 (Linux; Android 14; TECNO BG6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36"

cj = http.cookiejar.CookieJar()
opener = urllib.request.build_opener(urllib.request.HTTPCookieProcessor(cj))
opener.addheaders = [("User-Agent", UA)]

r1 = opener.open("https://com-transsion-filemanagerx.en.uptodown.com/android/download", timeout=20).read().decode("utf-8", "ignore")
req_post = urllib.request.Request(
    "https://com-transsion-filemanagerx.en.uptodown.com/android/post-download/1102137384",
    headers={"User-Agent": UA, "Referer": "https://com-transsion-filemanagerx.en.uptodown.com/android/download"}
)
r2 = opener.open(req_post, timeout=20).read().decode("utf-8", "ignore")
tokens = re.findall(r'data-url="([A-Za-z0-9+/=_-]{40,})"', r2)
print("Post-download tokens:", [t[:30] for t in tokens])
if tokens:
    out_apk = f"{WORK}/TranssionFileManager.apk"
    req_dl = urllib.request.Request(
        "https://dw.uptodown.com/dwn/" + tokens[0],
        headers={"User-Agent": UA, "Referer": "https://com-transsion-filemanagerx.en.uptodown.com/android/post-download/1102137384"}
    )
    data = opener.open(req_dl, timeout=60).read()
    print("Downloaded bytes:", len(data))
    open(out_apk, "wb").write(data)
    apksigner_jar = subprocess.check_output("find /nvme0n1-disk/shunno_os -name apksigner.jar | head -n 1", shell=True).decode().strip()
    print("=== Cert Verification ===")
    print(subprocess.check_output(f"java -jar {apksigner_jar} verify --print-certs {out_apk}", shell=True).decode())
    print("=== Badging ===")
    print(subprocess.check_output(f"/usr/bin/aapt2 dump badging {out_apk} | head -n 15", shell=True).decode())
    print("FINAL_APK:", out_apk)
else:
    print("HTML snippet:", r2[:1500])
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
