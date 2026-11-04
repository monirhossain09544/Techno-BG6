import paramiko
import os

OUT_DIR = r"D:\HiOS_UI_Suite"
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}")
sftp = ssh.open_sftp()
for fn in ["platform.pk8", "platform.x509.pem", "shared.pk8", "shared.x509.pem", "testkey.pk8", "testkey.x509.pem"]:
    remote = f"/nvme0n1-disk/shunno_os/build/make/target/product/security/{fn}"
    local = os.path.join(OUT_DIR, fn)
    sftp.get(remote, local)
    print(f"Downloaded {fn} ({os.path.getsize(local)} bytes)")
sftp.close()
ssh.close()
