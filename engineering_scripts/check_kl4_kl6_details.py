import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
cd /nvme0n1-disk/hios14_rom
echo "=== Disk usage of KL4 unpacked roots ==="
du -sh kl4_root/system kl4_root/system_ext kl4_root/product

echo "=== Checking KL6 tr_mi_a / tr_preload_a / tr_theme_a ==="
mkdir -p kl6_root/tr_mi kl6_root/tr_preload kl6_root/tr_theme kl6_root/tr_product
/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/fsck.erofs --extract=kl6_root/tr_product kl6_parts/tr_product_a.img 2>/dev/null || true
/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/fsck.erofs --extract=kl6_root/tr_preload kl6_parts/tr_preload_a.img 2>/dev/null || true
ls -la kl6_root/tr_product kl6_root/tr_preload

echo "=== Checking KL6 HiOS 14.5 apps for classes.dex ==="
for apk in kl6_root/system_ext/app/HiLauncher/HiLauncher.apk kl6_root/system_ext/priv-app/ThemePicker/ThemePicker.apk kl6_root/system_ext/app/KeyguardClock/KeyguardClock.apk kl6_root/system_ext/app/KeyguardTheme/KeyguardTheme.apk kl6_root/system_ext/app/TranScreenshot/TranScreenshot.apk kl6_root/product/priv-app/MagicTouch/MagicTouch.apk; do
    if [ -f "$apk" ]; then
        echo -n "$apk: "
        unzip -l "$apk" | grep "\.dex" | tr '\n' ' '
        echo ""
    fi
done
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
ssh.close()
