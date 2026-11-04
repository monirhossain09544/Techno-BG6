import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS)

cmd = """
cd /nvme0n1-disk/shunno_os
echo "=== BatteryMeterView.java SHOW_BATTERY_PERCENT ==="
grep -n -C 10 "SHOW_BATTERY_PERCENT" frameworks/base/packages/SystemUI/src/com/android/systemui/battery/BatteryMeterViewController.java frameworks/base/packages/SystemUI/src/com/android/systemui/battery/BatteryMeterView.java 2>/dev/null

echo "=== Launcher3 IconProvider ==="
find packages/apps/Launcher3 -name "*IconProvider*.java" -o -name "*IconProvider*.kt"
cat packages/apps/Launcher3/src/com/android/launcher3/icons/LauncherIconProvider.java 2>/dev/null || true

echo "=== SettingsProvider defaults.xml ==="
grep -n -E "refresh_rate|battery|navigation" frameworks/base/packages/SettingsProvider/res/values/defaults.xml 2>/dev/null || true
"""
stdin, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
