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

UA = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36"
cj = http.cookiejar.CookieJar()
opener = urllib.request.build_opener(urllib.request.HTTPCookieProcessor(cj))
opener.addheaders = [("User-Agent", UA)]

vurl = "https://com-transsion-filemanagerx.en.uptodown.com/android/versions"
vhtml = opener.open(vurl, timeout=20).read().decode("utf-8", errors="ignore")
idx = vhtml.find("versions-items-list")
print("=== VERSIONS HTML ===")
print(vhtml[idx:idx+3500])

dl_page = "https://com-transsion-filemanagerx.en.uptodown.com/android/download"
dhtml = opener.open(dl_page, timeout=20).read().decode("utf-8", errors="ignore")
print("=== JS SCRIPTS ON DL PAGE ===")
for m in re.finditer(r'<script[^>]*>(.*?)</script>', dhtml, re.S):
    s = m.group(1).strip()
    if s and ("download" in s.lower() or "dwn" in s.lower() or "post-download" in s.lower()):
        print("SCRIPT:", s[:800])

# Try /android/post-download
try:
    phtml = opener.open(urllib.request.Request("https://com-transsion-filemanagerx.en.uptodown.com/android/post-download", headers={"User-Agent": UA, "Referer": dl_page}), timeout=20).read().decode("utf-8", errors="ignore")
    print("POST-DOWNLOAD LEN:", len(phtml))
    for m in re.finditer(r'data-url="([^"]+)"', phtml):
        print("POST DATA-URL:", m.group(1)[:120])
except Exception as e:
    print("POST ERR:", e)
PYEOF
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode("utf-8", errors="replace"))
ssh.close()
