import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

cmd = """
cd /nvme0n1-disk/infinity_x/mock_work
echo "=== ApplicationPackageManager getPackageInfoAsUserCached & getInstalledPackagesAsUser ==="
grep -n -A 45 "\\.method.*getPackageInfoAsUserCached" fw_classes1/android/app/ApplicationPackageManager.smali
sed -n '5720,5755p' fw_classes1/android/app/ApplicationPackageManager.smali

echo "=== GnssLocationProvider methods ==="
grep -n "\\.method.*Location" srv_classes2/com/android/server/location/gnss/GnssLocationProvider.smali
grep -n -A 45 "\\.method.*handleReportLocation" srv_classes2/com/android/server/location/gnss/GnssLocationProvider.smali
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode())
err = stderr.read().decode()
if err:
    print("STDERR:", err)
ssh.close()
