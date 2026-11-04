import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS)

cmd = """
cd /nvme0n1-disk/shunno_os
echo "=== ScrimController.java alpha constants ==="
grep -n -C 15 "BUSY_SCRIM_ALPHA" frameworks/base/packages/SystemUI/src/com/android/systemui/statusbar/phone/ScrimController.java

echo "=== ScrimState.java prepare ==="
cat frameworks/base/packages/SystemUI/src/com/android/systemui/statusbar/phone/ScrimState.java | head -n 140
"""
stdin, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
