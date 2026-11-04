import os
import sys
import paramiko

sys.stdout.reconfigure(encoding='utf-8', errors='replace')

HOST = '${BG6_SERVER_IP}'
PORT = 22
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'

files_to_upload = [
    (r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\HTMLViewer_patched.apk', '/nvme0n1-disk/bg6_device/HTMLViewer_patched.apk'),
    (r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\OSFileManager_patched.apk', '/nvme0n1-disk/bg6_device/OSFileManager_patched.apk'),
    (r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\dtbo_a.img', '/nvme0n1-disk/bg6_device/dtbo_a.img'),
    (r'C:\Users\Monir\.gemini\antigravity\scratch\tecno-bg6-root\backups\vbmeta_a.bin', '/nvme0n1-disk/bg6_device/vbmeta_a.bin'),
    (r'C:\Users\Monir\.gemini\antigravity\scratch\tecno-bg6-root\vendor_dlkm.img', '/nvme0n1-disk/bg6_device/vendor_dlkm.img'),
    (r'C:\Users\Monir\.gemini\antigravity\scratch\tecno-bg6-root\stock_chipone_icnl99xx.ko', '/nvme0n1-disk/bg6_device/stock_chipone_icnl99xx.ko'),
    (r'C:\Users\Monir\.gemini\antigravity\scratch\tecno-bg6-root\backups\boot_a.bin', '/nvme0n1-disk/bg6_device/boot_a_stock.img'),
]

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, port=PORT, username=USER, password=PASS, timeout=20)
sftp = ssh.open_sftp()

for local_p, remote_p in files_to_upload:
    if os.path.exists(local_p):
        sz = os.path.getsize(local_p)
        print(f"Uploading {os.path.basename(local_p)} ({sz/1024/1024:.2f} MB)...", flush=True)
        sftp.put(local_p, remote_p)
        print(f"  -> Done: {remote_p}", flush=True)

sftp.close()

stdin, stdout, stderr = ssh.exec_command("du -sh /nvme0n1-disk/shunno_os/.repo ; ls -lh /nvme0n1-disk/bg6_device")
print(stdout.read().decode('utf-8', errors='replace'))
ssh.close()
