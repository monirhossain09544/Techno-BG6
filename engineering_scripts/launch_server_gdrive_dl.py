import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

dl_script = """import urllib.request
import http.cookiejar
import re
import sys

fid = sys.argv[1]
out_path = sys.argv[2]

cj = http.cookiejar.CookieJar()
opener = urllib.request.build_opener(urllib.request.HTTPCookieProcessor(cj))
opener.addheaders = [('User-Agent', 'Mozilla/5.0 (X11; Linux x86_64) Chrome/124.0.0.0 Safari/537.36')]

url1 = f"https://drive.usercontent.google.com/download?id={fid}&export=download"
resp = opener.open(url1, timeout=30)
ctype = resp.headers.get('Content-Type', '')

if 'text/html' in ctype:
    html = resp.read().decode('utf-8', errors='ignore')
    uuid_m = re.search(r'name="uuid" value="([^"]+)"', html)
    confirm_m = re.search(r'name="confirm" value="([^"]+)"', html)
    uuid = uuid_m.group(1) if uuid_m else ''
    confirm = confirm_m.group(1) if confirm_m else 't'
    url2 = f"https://drive.usercontent.google.com/download?id={fid}&export=download&confirm={confirm}&uuid={uuid}"
    print(f"Downloading from {url2} ...")
    resp = opener.open(url2, timeout=60)

total = int(resp.headers.get('Content-Length', 0))
print(f"Content-Length: {total:,} bytes ({total/1024/1024:.1f} MB)")
downloaded = 0
with open(out_path, 'wb') as f:
    while True:
        chunk = resp.read(4 * 1024 * 1024)
        if not chunk:
            break
        f.write(chunk)
        downloaded += len(chunk)
        if downloaded % (64 * 1024 * 1024) < 4 * 1024 * 1024:
            print(f"  {out_path}: {downloaded/1024/1024:.1f} / {total/1024/1024:.1f} MB", flush=True)
print(f"DONE: {out_path} ({downloaded:,} bytes)", flush=True)
"""

sftp = ssh.open_sftp()
try:
    sftp.mkdir("/nvme0n1-disk/hios14_rom")
except:
    pass
with sftp.file("/nvme0n1-disk/hios14_rom/gdrive_dl.py", "w") as f:
    f.write(dl_script)
sftp.close()

cmd = """
cd /nvme0n1-disk/hios14_rom
nohup python3 gdrive_dl.py 1YYVcAiRckrcUsaI35BrYy1yccIVHKdG3 KL4_Unisoc_HiOS14.zip > dl_kl4.log 2>&1 &
nohup python3 gdrive_dl.py 1cWhaK8H2rY6vyBnpPSjYg1z5R-meGIPP KL5_Full_HiOS14_5.zip > dl_kl5.log 2>&1 &
sleep 5
head -n 20 dl_kl4.log dl_kl5.log
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
ssh.close()
