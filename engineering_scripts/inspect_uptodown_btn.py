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

# Find exact blocks in #versions-items-list
for m in re.finditer(r'data-url="(https://com-transsion-filemanagerx\.en\.uptodown\.com/android/download/\d+)"[^>]*>(.*?)</div>\s*</div>', vhtml, re.S):
    u = m.group(1)
    ver_m = re.search(r'class="version">([^<]+)<', m.group(2))
    print("VER:", ver_m.group(1) if ver_m else "?", "->", u)

# Also dump all /download/\d+ URLs
dl_urls = re.findall(r'https://com-transsion-filemanagerx\.en\.uptodown\.com/android/download/\d+', vhtml)
print("All dl_urls:", dl_urls)

# Inspect the download page HTML around detail-download-button
target_dl = dl_urls[1] if len(dl_urls) > 1 else "https://com-transsion-filemanagerx.en.uptodown.com/android/download"
print("Inspecting:", target_dl)
req = urllib.request.Request(target_dl, headers={"User-Agent": UA, "Referer": vurl})
dhtml = opener.open(req, timeout=20).read().decode("utf-8", errors="ignore")
for m in re.finditer(r'<button[^>]*detail-download-button[^>]*>', dhtml):
    print("BUTTON TAG:", m.group(0))
for m in re.finditer(r'data-file-id="([^"]+)"', dhtml):
    print("data-file-id:", m.group(1))
PYEOF
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode("utf-8", errors="replace"))
ssh.close()
