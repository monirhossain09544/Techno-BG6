import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

cmd = """
cd /nvme0n1-disk/infinity_x/mock_work
find fw_classes1 fw_classes2 fw_classes3 fw_classes5 -name "PackageInfo.smali"
grep -n -A 55 "requestedPermissions" $(find fw_classes1 fw_classes2 fw_classes3 fw_classes5 -name "PackageInfo.smali")
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode())
ssh.close()
