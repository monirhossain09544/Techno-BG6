import urllib.request
import re
import paramiko

headers = {'User-Agent': 'Mozilla/5.0'}
for url in [
    "https://sourceforge.net/projects/mystic-gsi-updates/files/Tecno/",
    "https://sourceforge.net/projects/nippon-gsi-updates/files/",
]:
    try:
        html = urllib.request.urlopen(urllib.request.Request(url, headers=headers), timeout=15).read().decode('utf-8', errors='ignore')
        print(f"=== {url} ===")
        for m in re.findall(r'title="([^"]+\.(?:zip|xz|gz|img|7z))"', html):
            print(" ", m)
        for m in re.findall(r'"name":\s*"([^"]+)"', html):
            if any(k in m.lower() for k in ("hios", "tecno", "14", "13", "xos")):
                print("  json:", m)
    except Exception as e:
        print(url, e)

try:
    ssh = paramiko.SSHClient()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=10)
    _, stdout, _ = ssh.exec_command("df -h /nvme0n1-disk")
    print("=== Build Server Online ===")
    print(stdout.read().decode())
    ssh.close()
except Exception as e:
    print("Build server check:", e)
