import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS)

cmd = """
cd /nvme0n1-disk/shunno_os
echo "=== BlurUtils.kt lines 90-180 ==="
sed -n '90,180p' frameworks/base/packages/SystemUI/src/com/android/systemui/statusbar/BlurUtils.kt

echo "=== CrossWindowBlurListeners.java ==="
cat frameworks/base/core/java/android/view/CrossWindowBlurListeners.java | head -n 90

echo "=== ScrimState.java / ScrimController.java ==="
grep -n -C 10 "mClipQsScrim" frameworks/base/packages/SystemUI/src/com/android/systemui/statusbar/phone/ScrimController.java | head -n 40
"""
stdin, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
