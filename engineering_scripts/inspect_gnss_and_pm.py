import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

cmd = """
cd /nvme0n1-disk/infinity_x/mock_work
echo "=== ApplicationPackageManager getPackageInfoAsUser & getInstalledPackagesAsUser ==="
grep -n -A 45 "\\.method.*\\(getPackageInfoAsUser\\|getInstalledPackagesAsUser\\)" fw_classes1/android/app/ApplicationPackageManager.smali

echo "=== GnssLocationProvider reportLocation ==="
find srv_classes2 -name "*GnssLocationProvider*.smali"
grep -n -A 45 "\\.method.*reportLocation" srv_classes2/com/android/server/location/gnss/GnssLocationProvider.smali
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode())
err = stderr.read().decode()
if err:
    print("STDERR:", err)
ssh.close()
