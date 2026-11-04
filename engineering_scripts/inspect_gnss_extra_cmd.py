import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

cmd = """
cd /nvme0n1-disk/infinity_x/mock_work
echo "=== GnssLocationProvider handleReportLocation (lines 2062-2150) ==="
sed -n '2062,2150p' srv_classes2/com/android/server/location/gnss/GnssLocationProvider.smali

echo "=== GnssLocationProvider onExtraCommand ==="
grep -n -A 55 "\\.method.*onExtraCommand" srv_classes2/com/android/server/location/gnss/GnssLocationProvider.smali
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode())
ssh.close()
