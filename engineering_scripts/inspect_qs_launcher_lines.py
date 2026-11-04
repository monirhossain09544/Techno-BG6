import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS)

cmd = """
cd /nvme0n1-disk/shunno_os
sed -n '250,295p' packages/apps/Launcher3/quickstep/src/com/android/launcher3/uioverrides/QuickstepLauncher.java
echo "---"
sed -n '550,600p' packages/apps/Launcher3/quickstep/src/com/android/launcher3/uioverrides/QuickstepLauncher.java
"""
stdin, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
ssh.close()
