import os, paramiko

print("=== LOCAL D:\\Tecno_BG6_Full_ROM_Backup FILES ===")
for root, dirs, files in os.walk(r"D:\Tecno_BG6_Full_ROM_Backup"):
    for fn in files:
        fp = os.path.join(root, fn)
        print(f"  {fp} ({os.path.getsize(fp):,} bytes)")

HOST = '${BG6_SERVER_IP}'
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

cmd = r'''
find /nvme0n1-disk -maxdepth 3 -name "*bg6*" -o -name "*ums9230*" -o -name "*sprd*" 2>/dev/null
ls -la /nvme0n1-disk/infinity_x/mnt_rw/system/product/overlay/ | grep -iE "sprd|unisoc|tecno|transsion|ims|treble" | head -n 60 || true
'''
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=30)
print("=== REMOTE FILES ===")
print(stdout.read().decode('utf-8', errors='replace'))
ssh.close()
