import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect(HOST, username=USER, password=PASS, timeout=15)

cmd = """
echo '${BG6_SERVER_PASS}' | sudo -S bash -c '
set -e
mkdir -p /nvme0n1-disk/infinity_x/mnt_check
mount -o loop,ro /nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img /nvme0n1-disk/infinity_x/mnt_check
ls -la /nvme0n1-disk/infinity_x/mnt_check/system/product/overlay/ | head -n 40
cp /nvme0n1-disk/infinity_x/mnt_check/system/framework/framework-res.apk /nvme0n1-disk/infinity_x/framework-res.apk
chown administrator:administrator /nvme0n1-disk/infinity_x/framework-res.apk
umount /nvme0n1-disk/infinity_x/mnt_check
'
"""
stdin, stdout, stderr = client.exec_command(cmd)
print(stdout.read().decode("utf-8", errors="ignore"))
err = stderr.read().decode("utf-8", errors="ignore")
if err:
    print("STDERR:", err)
client.close()
