import paramiko, os

REMOTE_PY = r'''import subprocess, os, re, urllib.request, zipfile

WORK = "/nvme0n1-disk/infinity_x/filemanager_work"
UA = "Mozilla/5.0 (Linux; Android 14; TECNO BG6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36"

# Check detail-download-button on uptodown and download link on appteka
for url in [
    "https://com-transsion-filemanagerx.en.uptodown.com/android/download",
    "https://appteka.store/app/7a4r261854"
]:
    req = urllib.request.Request(url, headers={"User-Agent": UA})
    html = urllib.request.urlopen(req, timeout=20).read().decode("utf-8", "ignore")
    print("===", url, "===")
    for m in re.finditer(r'(?:detail-download-button|data-url|download_btn|href="[^"]*file[^"]*")', html, re.I):
        s = max(0, m.start() - 120)
        e = min(len(html), m.end() + 250)
        print("MATCH:", html[s:e])
        print("-" * 40)
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=30)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
c.close()
