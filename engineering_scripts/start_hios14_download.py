import paramiko
import urllib.request
import re

# 1. Search tecnofirmware & gsmmafia via WP REST API for KL5 / KL6 / KL4 / Spark 30 / Spark 20
headers = {'User-Agent': 'Mozilla/5.0'}
for site in ["https://gsmmafia.com", "https://tecnofirmware.com"]:
    for q in ["KL5", "KL6", "Spark+30", "Spark+Go+1"]:
        url = f"{site}/wp-json/wp/v2/posts?search={q}&per_page=5"
        try:
            data = urllib.request.urlopen(urllib.request.Request(url, headers=headers), timeout=10).read().decode('utf-8', errors='ignore')
            links = re.findall(r'"link":"([^"]+)"', data)
            for l in links:
                print(site, q, "->", l.replace("\\/", "/"))
        except Exception as e:
            print(site, q, e)

# 2. Start downloading KL4 official HiOS 14 ROM on build server ${BG6_SERVER_IP}
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
mkdir -p /nvme0n1-disk/hios14_rom
cd /nvme0n1-disk/hios14_rom
python3 -m pip install --user -q gdown
nohup ~/.local/bin/gdown 1YYVcAiRckrcUsaI35BrYy1yccIVHKdG3 -O KL4_HiOS14_official.zip > dl_kl4.log 2>&1 &
sleep 3
cat dl_kl4.log
"""
_, stdout, stderr = ssh.exec_command(cmd)
print("=== Build Server Download Started ===")
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
