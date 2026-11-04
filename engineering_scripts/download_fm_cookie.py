import paramiko, os

REMOTE_PY = r'''import subprocess, os, re, urllib.request, http.cookiejar, zipfile

WORK = "/nvme0n1-disk/infinity_x/filemanager_work"
os.makedirs(WORK, exist_ok=True)
UA = "Mozilla/5.0 (Linux; Android 14; TECNO BG6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36"

cj = http.cookiejar.CookieJar()
opener = urllib.request.build_opener(urllib.request.HTTPCookieProcessor(cj))
opener.addheaders = [
    ("User-Agent", UA),
    ("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"),
]

# Step 1: visit main page, then download page, keeping cookies
r1 = opener.open("https://com-transsion-filemanagerx.en.uptodown.com/android", timeout=20).read().decode("utf-8", "ignore")
r2 = opener.open("https://com-transsion-filemanagerx.en.uptodown.com/android/download", timeout=20).read().decode("utf-8", "ignore")
m = re.search(r'data-url="([^"]+)"', r2)
print("Uptodown token:", m.group(1)[:40] if m else None)
out_bin = f"{WORK}/FileManager_dl.apk"

downloaded = False
if m:
    req_dl = urllib.request.Request(
        "https://dw.uptodown.com/dwn/" + m.group(1),
        headers={"User-Agent": UA, "Referer": "https://com-transsion-filemanagerx.en.uptodown.com/android/download"}
    )
    resp = opener.open(req_dl, timeout=60)
    data = resp.read()
    print("Uptodown dl bytes:", len(data), data[:60])
    if len(data) > 1000000:
        open(out_bin, "wb").write(data)
        downloaded = True

if not downloaded:
    print("Trying appteka...")
    r_app = opener.open("https://appteka.store/app/7a4r261854", timeout=20).read().decode("utf-8", "ignore")
    links = re.findall(r'href="([^"]*(?:download|apk)[^"]*)"', r_app)
    print("Appteka links:", links[:10])

if os.path.exists(out_bin) and os.path.getsize(out_bin) > 1000000:
    with zipfile.ZipFile(out_bin) as zf:
        names = zf.namelist()
        if "AndroidManifest.xml" in names:
            apk_path = f"{WORK}/TranssionFileManager.apk"
            subprocess.check_call(["cp", out_bin, apk_path])
        else:
            zf.extractall(f"{WORK}/xapk")
            print("XAPK contents:", os.listdir(f"{WORK}/xapk"))
            apk_path = f"{WORK}/xapk/com.transsion.filemanagerx.apk"
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
c.close()
