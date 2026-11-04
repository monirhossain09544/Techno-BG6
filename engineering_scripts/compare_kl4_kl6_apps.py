import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
cd /nvme0n1-disk/hios14_rom
AAPT2=/nvme0n1-disk/shunno_os/prebuilts/sdk/tools/linux/bin/aapt2
if [ ! -f "$AAPT2" ]; then
    AAPT2=$(find /nvme0n1-disk/shunno_os/prebuilts -name aapt2 | head -n 1)
fi

for app in HiLauncher/HiLauncher.apk TranDynamicBar/TranDynamicBar.apk AiGallery/AiGallery.apk TranssionCamera/TranssionCamera.apk; do
    echo "=== $app ==="
    echo -n "  KL4: "
    $AAPT2 dump badging mnt_kl4_ext/app/$app 2>/dev/null | grep "package:" || true
    echo -n "  KL6: "
    $AAPT2 dump badging mnt_kl6_ext/app/$app 2>/dev/null | grep "package:" || true
done

for app in TranSystemUI/TranSystemUI.apk TranSettingsApk/TranSettingsApk.apk SmartCaller/SmartCaller.apk; do
    echo "=== $app ==="
    echo -n "  KL4: "
    $AAPT2 dump badging mnt_kl4_ext/priv-app/$app 2>/dev/null | grep "package:" || true
    echo -n "  KL6: "
    $AAPT2 dump badging mnt_kl6_ext/priv-app/$app 2>/dev/null | grep "package:" || true
done
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
ssh.close()
