import paramiko

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=15)

cmd = """
ls -lh /nvme0n1-disk/infinity_x/*.img
IMG="/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img"
MNT="/nvme0n1-disk/infinity_x/mnt_mock"
echo '${BG6_SERVER_PASS}' | sudo -S mount -o loop,ro "$IMG" "$MNT" 2>/dev/null || true

sudo tune2fs -l "$IMG" | grep -E "Filesystem features|Filesystem state|Mount count"
sudo ls -laZ "$MNT/system/bin/init" "$MNT/system/bin/rw-system.sh" "$MNT/system/bin/gnss_kernel_engine" "$MNT/system/etc/init/init.bg6.rc" "$MNT/system/build.prop" "$MNT/system/framework/framework.jar" "$MNT/system/framework/services.jar"
sudo ls -laZ "$MNT/system/framework/" | head -n 40
sudo umount "$MNT"
"""
stdin, stdout, stderr = c.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
c.close()
