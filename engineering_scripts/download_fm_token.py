import paramiko, os

REMOTE_PY = r'''import subprocess, os, re, urllib.request, http.cookiejar, zipfile

WORK = "/nvme0n1-disk/infinity_x/filemanager_work"
os.makedirs(WORK, exist_ok=True)
UA = "Mozilla/5.0 (Linux; Android 14; TECNO BG6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36"

cj = http.cookiejar.CookieJar()
opener = urllib.request.build_opener(urllib.request.HTTPCookieProcessor(cj))
opener.addheaders = [("User-Agent", UA)]

out_bin = f"{WORK}/FileManager_dl.bin"
downloaded = False

try:
    opener.open("https://com-transsion-filemanagerx.en.uptodown.com/android", timeout=20).read()
    r2 = opener.open("https://com-transsion-filemanagerx.en.uptodown.com/android/download", timeout=20).read().decode("utf-8", "ignore")
    tokens = re.findall(r'data-url="([A-Za-z0-9+/=_-]{40,})"', r2)
    print("Long tokens found:", [t[:30] for t in tokens])
    if tokens:
        req_dl = urllib.request.Request(
            "https://dw.uptodown.com/dwn/" + tokens[0],
            headers={"User-Agent", UA} if False else {"User-Agent": UA, "Referer": "https://com-transsion-filemanagerx.en.uptodown.com/android/download"}
        )
        data = opener.open(req_dl, timeout=60).read()
        print("Uptodown dl size:", len(data))
        if len(data) > 1000000:
            open(out_bin, "wb").write(data)
            downloaded = True
except Exception as e:
    print("Uptodown err:", e)

if not downloaded:
    try:
        r_app = opener.open("https://appteka.store/app/7a4r261854", timeout=20).read().decode("utf-8", "ignore")
        print("Appteka len:", len(r_app))
        links = re.findall(r'https?://[^\s"\'<>]+|/[a-z0-9/_-]*download[^\s"\'<>]*', r_app)
        print("Appteka links:", links[:20])
    except Exception as e:
        print("Appteka err:", e)

if downloaded:
    with zipfile.ZipFile(out_bin) as zf:
        names = zf.namelist()
        print("Zip sample:", names[:10])
        if "AndroidManifest.xml" in names:
            apk_path = f"{WORK}/TranssionFileManager.apk"
            subprocess.check_call(["cp", out_bin, apk_path])
        else:
            zf.extractall(f"{WORK}/xapk")
            print("XAPK files:", os.listdir(f"{WORK}/xapk"))
            apk_path = None
            for f in os.listdir(f"{WORK}/xapk"):
                if f.endswith(".apk"):
                    print(" ->", f, os.path.getsize(f"{WORK}/xapk/{f}"))
                    if "transsion" in f or apk_path is None:
                        apk_path = f"{WORK}/xapk/{f}"
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
