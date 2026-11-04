import paramiko

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=15)

cmd = """
IMG="/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img"
MNT="/nvme0n1-disk/infinity_x/mnt_mock"
echo '${BG6_SERVER_PASS}' | sudo -S mount -o loop,ro "$IMG" "$MNT" 2>/dev/null || true

echo "=== init.bg6.rc ==="
cat "$MNT/system/etc/init/init.bg6.rc"

echo "=== tail of build.prop ==="
tail -n 25 "$MNT/system/build.prop"
ls -la "$MNT/system/build.prop"

echo "=== /system/framework/arm64 ==="
ls -la "$MNT/system/framework/arm64/" | head -n 30

echo "=== SELinux labels of /system/bin/init and /system ==="
python3 - << 'PY'
import os
MNT = "/nvme0n1-disk/infinity_x/mnt_mock"
for p in [MNT, f"{MNT}/system", f"{MNT}/system/bin/init", f"{MNT}/system/etc/init/init.bg6.rc", f"{MNT}/system/build.prop", f"{MNT}/system/bin/gnss_kernel_engine"]:
    try:
        print(p, oct(os.stat(p).st_mode), os.getxattr(p, "security.selinux"))
    except Exception as e:
        print(p, e)
PY

sudo umount "$MNT"
"""
stdin, stdout, stderr = c.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
c.close()
