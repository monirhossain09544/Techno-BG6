import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

cmd = """
cd /nvme0n1-disk/infinity_x/mock_work
sed -n '330,365p' fw_classes1/android/content/pm/PackageInfo.smali
echo "=== LocationProviderManager dump (around line 315) ==="
grep -n -C 15 " \\[mock\\]" srv_classes2/com/android/server/location/provider/LocationProviderManager.smali
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode())
ssh.close()
