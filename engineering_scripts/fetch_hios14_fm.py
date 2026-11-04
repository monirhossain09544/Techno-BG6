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
import re
import subprocess

UA = "Mozilla/5.0 (Linux; Android 14; TECNO BG6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36"

def fetch_html(url, ref=None):
    req = urllib.request.Request(url, headers={"User-Agent": UA})
    if ref:
        req.add_header("Referer", ref)
    with urllib.request.urlopen(req, timeout=25) as r:
        return r.read().decode("utf-8", errors="ignore"), r.geturl()

# 1. Check Uptodown versions page for Transsion File Manager
for slug in [
    "https://file-manager-transsion-holdings.en.uptodown.com/android/versions",
    "https://transsion-file-manager.en.uptodown.com/android/versions",
    "https://file-manager-shalltry-group.en.uptodown.com/android/versions",
]:
    try:
        html, final_url = fetch_html(slug)
        print("OK:", slug, "->", final_url, "len=", len(html))
        vers = re.findall(r'data-url="([^"]+)"[^>]*>.*?class="version">([^<]+)<', html, re.S)
        if not vers:
            vers = re.findall(r'href="(https://[^"]+/download/\d+)"[^>]*>.*?<span class="version">([^<]+)</span>', html, re.S)
        print("Versions sample:", vers[:8])
        # Also print any /download/\d+ links and nearby version text
        links = re.findall(r'https://[a-z0-9.-]+\.uptodown\.com/android/download/\d+', html)
        vnames = re.findall(r'class="version">([^<]+)<', html)
        print("Links:", links[:6])
        print("Vnames:", vnames[:6])
        if links:
            dl_page = links[0]
            dhtml, _ = fetch_html(dl_page, final_url)
            m = re.search(r'id="detail-download-button"[^>]*data-url="([^"]+)"', dhtml)
            if not m:
                m = re.search(r'data-url="([^"]{40,})"', dhtml)
            print("Download token match:", bool(m))
            if m:
                token = m.group(1)
                dl_url = f"https://dw.uptodown.com/dwn/{token}"
                print("Downloading from:", dl_url[:80] + "...")
                subprocess.run([
                    "curl", "-L", "-A", UA, "-e", dl_page,
                    "-o", "/nvme0n1-disk/infinity_x/filemanager_work/HiOS_FileManager.apk",
                    dl_url
                ], check=True)
                break
    except Exception as e:
        print("ERR:", slug, e)

PYEOF
ls -lh /nvme0n1-disk/infinity_x/filemanager_work/HiOS_FileManager.apk 2>/dev/null || true
file /nvme0n1-disk/infinity_x/filemanager_work/HiOS_FileManager.apk 2>/dev/null || true
if [ -f /nvme0n1-disk/infinity_x/filemanager_work/HiOS_FileManager.apk ]; then
    /nvme0n1-disk/shunno_os/prebuilts/sdk/tools/linux/bin/aapt2 dump badging /nvme0n1-disk/infinity_x/filemanager_work/HiOS_FileManager.apk | head -n 25 || true
    APKSIGNER=$(find /nvme0n1-disk/shunno_os/prebuilts -name apksigner.jar | head -n 1)
    java -jar "$APKSIGNER" verify --print-certs /nvme0n1-disk/infinity_x/filemanager_work/HiOS_FileManager.apk || true
fi
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=90)
print("STDOUT:\n", stdout.read().decode("utf-8", errors="replace"))
print("STDERR:\n", stderr.read().decode("utf-8", errors="replace"))
ssh.close()
