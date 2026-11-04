import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

finish_sh = r"""#!/bin/bash
set -e
cd /nvme0n1-disk/hios14_rom

set_selinux_single() {
    local ctx="$1"
    shift
    python3 - "$ctx" "$@" << 'PYEOF'
import sys, os
ctx = sys.argv[1].encode()
for target in sys.argv[2:]:
    os.setxattr(target, "security.selinux", ctx, follow_symlinks=False)
PYEOF
}

echo "=== 7. Installing resetprop_phh, Bangladesh IPv4 APNs, and hios14_bg6.rc ==="
cp /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/bin/resetprop_phh merged_root/system/bin/resetprop_phh
chown root:2000 merged_root/system/bin/resetprop_phh
chmod 0755 merged_root/system/bin/resetprop_phh
set_selinux_single "u:object_r:toolbox_exec:s0" merged_root/system/bin/resetprop_phh

# Copy IPv4-enforced Bangladesh 4G LTE apns-conf.xml
cp /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/etc/apns-conf.xml merged_root/system/etc/apns-conf.xml
cp /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/etc/apns-conf.xml merged_root/system/product/etc/apns-conf.xml
chown root:root merged_root/system/etc/apns-conf.xml merged_root/system/product/etc/apns-conf.xml
chmod 0644 merged_root/system/etc/apns-conf.xml merged_root/system/product/etc/apns-conf.xml
set_selinux_single "u:object_r:system_file:s0" merged_root/system/etc/apns-conf.xml merged_root/system/product/etc/apns-conf.xml

cat > merged_root/system/etc/init/hios14_bg6.rc << 'EOF'
on post-fs
    exec - root root -- /system/bin/resetprop_phh ro.config.low_ram false
    exec - root root -- /system/bin/resetprop_phh ro.os_2g_go.support 0
    exec - root root -- /system/bin/resetprop_phh ro.tranos.version hios14.5.0
    exec - root root -- /system/bin/resetprop_phh ro.product.vendor.model "TECNO BG6"
    exec - root root -- /system/bin/resetprop_phh ro.product.vendor.device "TECNO-BG6"
    exec - root root -- /system/bin/mount -o bind /system/etc/permissions/android.hardware.ram.normal.xml /vendor/etc/permissions/android.hardware.ram.low.xml
    setprop persist.vendor.hwc.display.modeid 0

on property:sys.boot_completed=1
    setprop persist.vendor.hwc.display.modeid 0
    write /proc/sys/net/ipv6/conf/seth_lte0/accept_ra 0
    write /proc/sys/net/ipv6/conf/seth_lte1/accept_ra 0
    write /proc/sys/net/ipv6/conf/seth_lte2/accept_ra 0
    write /proc/sys/net/ipv6/conf/seth_lte3/accept_ra 0
EOF
chown root:root merged_root/system/etc/init/hios14_bg6.rc
chmod 0644 merged_root/system/etc/init/hios14_bg6.rc
set_selinux_single "u:object_r:system_file:s0" merged_root/system/etc/init/hios14_bg6.rc

echo "=== 8. Checking merged_root size and building EROFS hios14_5_system.img ==="
du -sh merged_root
MKFS_EROFS=/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/mkfs.erofs
rm -f hios14_5_system.img
$MKFS_EROFS -z lz4hc,9 -T 1723613285 hios14_5_system.img merged_root >/dev/null
ls -lh hios14_5_system.img
echo "=== Verifying EROFS image mount & SELinux labels ==="
mkdir -p mnt_verify
mount -o loop,ro -t erofs hios14_5_system.img mnt_verify
python3 -c '
import os
for p in [
    "mnt_verify",
    "mnt_verify/product",
    "mnt_verify/system_ext",
    "mnt_verify/system/product",
    "mnt_verify/system/system_ext",
    "mnt_verify/system/bin/init",
    "mnt_verify/system/bin/resetprop_phh",
    "mnt_verify/system/etc/init/hios14_bg6.rc",
    "mnt_verify/system/system_ext/app/HiLauncher/HiLauncher.apk",
]:
    print(p, "->", os.getxattr(p, "security.selinux", follow_symlinks=False))
'
umount mnt_verify
echo "BUILD_HIOS14_5_SUCCESS!"
"""

sftp = ssh.open_sftp()
with sftp.file("/nvme0n1-disk/hios14_rom/finish_hios14_5.sh", "w") as f:
    f.write(finish_sh)
sftp.close()

cmd = "echo '${BG6_SERVER_PASS}' | sudo -S bash /nvme0n1-disk/hios14_rom/finish_hios14_5.sh"
_, stdout, stderr = ssh.exec_command(cmd)
for line in iter(stdout.readline, ""):
    print(line, end="", flush=True)
print(stderr.read().decode(), flush=True)
ssh.close()
