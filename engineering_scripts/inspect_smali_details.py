import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

cmd = """
cd /nvme0n1-disk/infinity_x/mock_work
echo "=== Location.smali writeToParcel, toString, setExtras, getExtras ==="
grep -n -A 45 "\\.method.*\\(toString\\|setExtras\\|getExtras\\)" fw_classes2/android/location/Location.smali

echo "=== Location$1.smali (CREATOR) ==="
cat fw_classes2/android/location/Location\\$1.smali

echo "=== LocationProviderManager.smali processReportedLocation & getPermittedLocation ==="
grep -n -A 55 "\\.method.*\\(processReportedLocation\\|getPermittedLocation\\)" srv_classes2/com/android/server/location/provider/LocationProviderManager.smali
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode())
err = stderr.read().decode()
if err:
    print("STDERR:", err)
ssh.close()
