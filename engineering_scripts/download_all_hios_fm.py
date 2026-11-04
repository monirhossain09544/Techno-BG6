import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)

cmd = r"""
python3 - << 'PYEOF'
import urllib.request
import http.cookiejar
import re
import subprocess

UA = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36"
cj = http.cookiejar.CookieJar()
opener = urllib.request.build_opener(urllib.request.HTTPCookieProcessor(cj))
opener.addheaders = [("User-Agent", UA)]

vurl = "https://com-transsion-filemanagerx.en.uptodown.com/android/versions"
vhtml = opener.open(vurl, timeout=20).read().decode("utf-8", errors="ignore")

# Print data-file-id + version pairs from versions page
rows = re.findall(r'data-file-id="(\d+)".*?class="version">([^<]+)<', vhtml, re.S)
print("Version rows:", rows[:8])

for fid, ver in rows[:4]:
    # Prefer 17.0.0.104 (HiOS 14) and 9.2.0.014 (HiOS 13.5/14 BG6) and 30.2.0.063
    dl_page = f"https://com-transsion-filemanagerx.en.uptodown.com/android/download/{fid}"
    post_page = f"https://com-transsion-filemanagerx.en.uptodown.com/android/post-download/{fid}"
    # Visit dl_page first for cookies, then post_page
    opener.open(urllib.request.Request(dl_page, headers={"User-Agent": UA, "Referer": vurl}), timeout=20).read()
    phtml = opener.open(urllib.request.Request(post_page, headers={"User-Agent": UA, "Referer": dl_page}), timeout=20).read().decode("utf-8", errors="ignore")
    m = re.search(r'class="post-download"[^>]*data-url="([^"]+)"', phtml)
    if not m:
        m = re.search(r'data-url="([^"]{40,})"', phtml)
    print(f"ver={ver} fid={fid} token_found={bool(m)}")
    if m:
        token = m.group(1)
        out_apk = f"/nvme0n1-disk/infinity_x/filemanager_work/FM_{ver}.apk"
        # Use same cookie jar via urllib to download so session cookies match!
        dreq = urllib.request.Request(f"https://dw.uptodown.com/dwn/{token}", headers={"User-Agent": UA, "Referer": post_page})
        with opener.open(dreq, timeout=60) as resp, open(out_apk, "wb") as f:
            while True:
                chunk = resp.read(1024 * 1024)
                if not chunk:
                    break
                f.write(chunk)
        print("Saved:", out_apk)
PYEOF

ls -lh /nvme0n1-disk/infinity_x/filemanager_work/FM_*.apk
AAPT2=/nvme0n1-disk/shunno_os/prebuilts/sdk/tools/linux/bin/aapt2
APKSIGNER=$(find /nvme0n1-disk/shunno_os/prebuilts -name apksigner.jar | head -n 1)
for f in /nvme0n1-disk/infinity_x/filemanager_work/FM_*.apk; do
    echo "=== $f ==="
    file "$f"
    $AAPT2 dump badging "$f" | head -n 15 || true
    java -jar "$APKSIGNER" verify --print-certs "$f" | head -n 5 || true
done
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=120)
print("STDOUT:\n", stdout.read().decode("utf-8", errors="replace"))
print("STDERR:\n", stderr.read().decode("utf-8", errors="replace"))
ssh.close()
