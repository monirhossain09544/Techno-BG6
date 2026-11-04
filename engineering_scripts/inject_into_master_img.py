import paramiko

INJECT_SH = r'''#!/bin/bash
set -e
IMG="/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img"
MNT="/nvme0n1-disk/infinity_x/mnt_mock"
WORK="/nvme0n1-disk/infinity_x/mock_work"

sudo umount "$MNT" 2>/dev/null || true
mkdir -p "$MNT"
sudo mount -o loop,rw "$IMG" "$MNT"

echo "1. Checking free space in system image..."
df -h "$MNT"

echo "2. Removing fs-verity metadata and stale boot profiles for framework.jar & services.jar..."
sudo rm -f "$MNT/system/framework/framework.jar.fsv_meta"
sudo rm -f "$MNT/system/framework/services.jar.fsv_meta"
sudo rm -f "$MNT/system/framework/services.jar.prof"
sudo rm -f "$MNT/system/framework/services.jar.bprof"
sudo rm -rf "$MNT/system/framework/oat/arm64/services."*
sudo rm -rf "$MNT/system/framework/arm64/boot-framework."*

echo "3. Installing patched framework.jar and services.jar..."
sudo cp "$WORK/framework.jar" "$MNT/system/framework/framework.jar"
sudo cp "$WORK/services.jar" "$MNT/system/framework/services.jar"
sudo chown 0:0 "$MNT/system/framework/framework.jar" "$MNT/system/framework/services.jar"
sudo chmod 0644 "$MNT/system/framework/framework.jar" "$MNT/system/framework/services.jar"

echo "4. Installing native C gnss_kernel_engine and kernel-gps CLI..."
sudo cp "$WORK/gnss_kernel_engine" "$MNT/system/bin/gnss_kernel_engine"
sudo cp "$WORK/kernel-gps" "$MNT/system/bin/kernel-gps"
sudo chown 0:2000 "$MNT/system/bin/gnss_kernel_engine" "$MNT/system/bin/kernel-gps"
sudo chmod 0755 "$MNT/system/bin/gnss_kernel_engine" "$MNT/system/bin/kernel-gps"

echo "5. Ensuring init.bg6.rc starts gnss_kernel_engine..."
RC="$MNT/system/etc/init/init.bg6.rc"
if ! grep -q "service gnss_kernel_engine" "$RC"; then
    cat << 'EOF' | sudo tee -a "$RC" >/dev/null

service gnss_kernel_engine /system/bin/gnss_kernel_engine
    class late_start
    user root
    group root system shell
    seclabel u:r:phhsu_daemon:s0

on property:sys.boot_completed=1
    setprop persist.sys.override_mock_location true
    start gnss_kernel_engine
EOF
fi
sudo chown 0:0 "$RC"
sudo chmod 0644 "$RC"

echo "6. Updating /system/build.prop..."
BP="$MNT/system/build.prop"
if ! grep -q "persist.sys.override_mock_location=" "$BP"; then
    echo "persist.sys.override_mock_location=true" | sudo tee -a "$BP" >/dev/null
fi
sudo chown 0:0 "$BP"
sudo chmod 0600 "$BP"

echo "7. Setting and verifying SELinux xattrs via python3..."
sudo python3 - << 'PYEOF'
import os

MNT = "/nvme0n1-disk/infinity_x/mnt_mock"
system_files = [
    f"{MNT}/system/framework/framework.jar",
    f"{MNT}/system/framework/services.jar",
    f"{MNT}/system/bin/kernel-gps",
    f"{MNT}/system/etc/init/init.bg6.rc",
    f"{MNT}/system/build.prop",
]
phh_files = [
    f"{MNT}/system/bin/rw-system.sh",
    f"{MNT}/system/bin/phh-on-boot.sh",
    f"{MNT}/system/bin/bg6-perf-tune.sh",
    f"{MNT}/system/bin/gnss_kernel_engine",
]

for p in system_files:
    if os.path.exists(p):
        os.setxattr(p, "security.selinux", b"u:object_r:system_file:s0\x00")
        print(p, "->", os.getxattr(p, "security.selinux"))

for p in phh_files:
    if os.path.exists(p):
        os.setxattr(p, "security.selinux", b"u:object_r:phhsu_exec:s0\x00")
        print(p, "->", os.getxattr(p, "security.selinux"))
PYEOF

sync
sudo umount "$MNT"
sudo e2fsck -fy "$IMG" || true
echo "INJECT_COMPLETE_SUCCESSFULLY"
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=15)

sftp = c.open_sftp()
with sftp.file("/nvme0n1-disk/infinity_x/mock_work/inject_img.sh", "w") as f:
    f.write(INJECT_SH)
sftp.close()

cmd = "echo '${BG6_SERVER_PASS}' | sudo -S bash /nvme0n1-disk/infinity_x/mock_work/inject_img.sh"
stdin, stdout, stderr = c.exec_command(cmd, timeout=180)
print(stdout.read().decode())
print(stderr.read().decode())
c.close()
