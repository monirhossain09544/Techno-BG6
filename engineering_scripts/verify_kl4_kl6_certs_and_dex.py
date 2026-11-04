import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
cd /nvme0n1-disk/hios14_rom
APKSIGNER=$(find /nvme0n1-disk/shunno_os/out/host/linux-x86/bin /nvme0n1-disk/shunno_os/prebuilts -name apksigner | head -n 1)

for f in \
  mnt_kl4_ext/priv-app/TranSystemUI/TranSystemUI.apk \
  mnt_kl4_ext/app/HiLauncher/HiLauncher.apk \
  mnt_kl6_ext/app/HiLauncher/HiLauncher.apk \
  mnt_kl6_ext/app/TranDynamicBar/TranDynamicBar.apk \
  mnt_kl6_ext/app/AiGallery/AiGallery.apk \
  mnt_kl6_ext/priv-app/SmartCaller/SmartCaller.apk \
  mnt_kl6_ext/priv-app/ThemePicker/ThemePicker.apk \
  mnt_kl6_ext/app/KeyguardClock/KeyguardClock.apk \
  mnt_kl6_ext/app/KeyguardTheme/KeyguardTheme.apk \
  mnt_kl6_ext/app/TranScreenshot/TranScreenshot.apk; do
    echo "=== $f ==="
    unzip -l "$f" | grep "classes" | head -n 3
    $APKSIGNER verify --print-certs "$f" 2>/dev/null | grep "SHA-256" | head -n 1
done
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
ssh.close()
