import paramiko, os

REMOTE_PY = r'''import subprocess, os, re, urllib.request

WORK = "/nvme0n1-disk/infinity_x/filemanager_work"
os.makedirs(WORK, exist_ok=True)

# Search Uptodown for com.transsion.filemanagerx
req = urllib.request.Request(
    "https://file-manager-transsion-holdings.en.uptodown.com/android/download",
    headers={"User-Agent": "Mozilla/5.0 (Linux; Android 14; TECNO BG6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36"}
)
try:
    html = urllib.request.urlopen(req, timeout=20).read().decode("utf-8", "ignore")
    print("Uptodown page len:", len(html))
    m = re.search(r'data-url="([^"]+)"', html)
    print("data-url:", m.group(1) if m else None)
    if m:
        dl_url = "https://dw.uptodown.com/dwn/" + m.group(1)
        print("Downloading from:", dl_url[:80])
        subprocess.check_call([
            "curl", "-sL", "-A", "Mozilla/5.0 (Linux; Android 14; TECNO BG6) AppleWebKit/537.36",
            "-H", "Referer: https://file-manager-transsion-holdings.en.uptodown.com/android/download",
            "-o", f"{WORK}/FileManager_raw.bin", dl_url
        ])
        print("Downloaded size:", os.path.getsize(f"{WORK}/FileManager_raw.bin"))
        print("File type:", subprocess.check_output(["file", f"{WORK}/FileManager_raw.bin"]).decode().strip())
except Exception as e:
    print("Uptodown err:", e)
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=60)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
err = stderr.read().decode()
if err:
    print("ERR:", err)
c.close()
