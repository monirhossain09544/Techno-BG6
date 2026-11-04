import paramiko, os

REMOTE_PY = r'''import subprocess, os, re, urllib.request

WORK = "/nvme0n1-disk/infinity_x/filemanager_work"
os.makedirs(WORK, exist_ok=True)
UA = "Mozilla/5.0 (Linux; Android 14; TECNO BG6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36"

# Check Appteka's API or HTML download button for 7a4r261854, or BG6's FilesGoogle.apk
req = urllib.request.Request("https://appteka.store/app/7a4r261854", headers={"User-Agent": UA})
html = urllib.request.urlopen(req, timeout=20).read().decode("utf-8", "ignore")
for m in re.finditer(r'(?:7a4r261854|Download|download|\.apk|api/)', html):
    s = max(0, m.start() - 100)
    e = min(len(html), m.end() + 200)
    snip = html[s:e]
    if "href=" in snip or "fetch" in snip or "url" in snip or "button" in snip.lower():
        print("SNIP:", snip)
        print("-" * 30)

# Also check BG6 stock FilesGoogle.apk badging
bg6_files = "/nvme0n1-disk/hios14_rom/kl4_root/product/priv-app/FilesGoogle/FilesGoogle.apk"
print("=== BG6 Stock FilesGoogle.apk ===")
print(subprocess.check_output(f"/usr/bin/aapt2 dump badging {bg6_files} | head -n 10", shell=True).decode())
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=40)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
c.close()
