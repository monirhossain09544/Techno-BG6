import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS)

cmd = """
cd /nvme0n1-disk/shunno_os
echo "=== qsb_default_view.xml ==="
cat packages/apps/Launcher3/res/layout/qsb_default_view.xml

echo "=== QsbContainerView.java ==="
grep -n -C 25 "qsb_default_view" packages/apps/Launcher3/src/com/android/launcher3/qsb/QsbContainerView.java

echo "=== ActivityManager.java isLowRamDeviceStatic & isHighEndGfx ==="
grep -n -C 15 "isHighEndGfx" frameworks/base/core/java/android/app/ActivityManager.java

echo "=== BlurUtils.kt ==="
cat frameworks/base/packages/SystemUI/src/com/android/systemui/statusbar/BlurUtils.kt | head -n 90
"""
stdin, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
