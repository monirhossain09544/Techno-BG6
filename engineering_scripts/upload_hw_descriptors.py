import os
import sys
import paramiko

sys.stdout.reconfigure(encoding='utf-8', errors='replace')

HOST = '${BG6_SERVER_IP}'
PORT = 22
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'

files_to_upload = [
    (r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\bg6_lpdump.txt', '/nvme0n1-disk/bg6_device/bg6_lpdump.txt'),
    (r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\bg6_vendor_build.prop', '/nvme0n1-disk/bg6_device/bg6_vendor_build.prop'),
    (r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\bg6_vendor_manifest.xml', '/nvme0n1-disk/bg6_device/bg6_vendor_manifest.xml'),
    (r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\bg6_fstab.txt', '/nvme0n1-disk/bg6_device/bg6_fstab.txt'),
    (r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\bg6_product_rro.apk', '/nvme0n1-disk/bg6_device/bg6_product_rro.apk'),
]

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, port=PORT, username=USER, password=PASS, timeout=20)
sftp = ssh.open_sftp()

for local_p, remote_p in files_to_upload:
    if os.path.exists(local_p):
        sz = os.path.getsize(local_p)
        print(f"Uploading {os.path.basename(local_p)} ({sz/1024:.1f} KB)...", flush=True)
        sftp.put(local_p, remote_p)

sftp.close()

stdin, stdout, stderr = ssh.exec_command("du -sh /nvme0n1-disk/shunno_os/.repo ; ls -lh /nvme0n1-disk/bg6_device")
print(stdout.read().decode('utf-8', errors='replace'))
ssh.close()
