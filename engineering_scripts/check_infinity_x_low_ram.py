import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect(HOST, username=USER, password=PASS, timeout=15)

cmd = r"""
echo '${BG6_SERVER_PASS}' | sudo -S bash -c '
mkdir -p /nvme0n1-disk/infinity_x/mnt_ro
umount /nvme0n1-disk/infinity_x/mnt_ro 2>/dev/null || true
mount -o loop,ro /nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img /nvme0n1-disk/infinity_x/mnt_ro
grep -rn "low_ram\|ram\.low\|ram\.normal" /nvme0n1-disk/infinity_x/mnt_ro/system/build.prop \
    /nvme0n1-disk/infinity_x/mnt_ro/system/product/etc/build.prop \
    /nvme0n1-disk/infinity_x/mnt_ro/system/system_ext/etc/build.prop \
    /nvme0n1-disk/infinity_x/mnt_ro/system/etc/permissions/ \
    /nvme0n1-disk/infinity_x/mnt_ro/system/product/etc/permissions/ \
    /nvme0n1-disk/infinity_x/mnt_ro/system/bin/rw-system.sh 2>/dev/null || true
umount /nvme0n1-disk/infinity_x/mnt_ro
'
"""
stdin, stdout, stderr = client.exec_command(cmd)
print(stdout.read().decode("utf-8", errors="ignore"))
client.close()
