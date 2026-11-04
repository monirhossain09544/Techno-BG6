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
import json

UA = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36"
cj = http.cookiejar.CookieJar()
opener = urllib.request.build_opener(urllib.request.HTTPCookieProcessor(cj))
opener.addheaders = [("User-Agent", UA)]

# Check external JS on download/1231404263 to see exact AJAX endpoint!
dl_url = "https://com-transsion-filemanagerx.en.uptodown.com/android/download/1231404263"
dhtml = opener.open(dl_url, timeout=20).read().decode("utf-8", errors="ignore")
print("1231404263 page len:", len(dhtml))
srcs = re.findall(r'<script[^>]+src="([^"]+)"', dhtml)
print("Script srcs:", srcs)
for s in srcs:
    if "utdstc.com" in s:
        js = opener.open(s, timeout=20).read().decode("utf-8", errors="ignore")
        for m in re.finditer(r'dw\.uptodown\.com[^"\']*|post-download[^"\']*|detail-download-button.{0,400}|data-file-id.{0,400}', js):
            print("JS MATCH:", m.group(0)[:300])
PYEOF
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode("utf-8", errors="replace"))
ssh.close()
