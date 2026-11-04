import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

cmd = """
cd /nvme0n1-disk/infinity_x/mock_work
unzip -o framework.jar classes.dex
baksmali d classes.dex -o fw_classes1
baksmali d classes3.dex -o fw_classes3

echo "=== Where is HideDeveloperStatusUtils? ==="
find fw_classes1 fw_classes2 fw_classes3 fw_classes5 -name "HideDeveloperStatusUtils.smali"

echo "=== Where is ApplicationPackageManager? ==="
find fw_classes1 fw_classes2 fw_classes3 fw_classes5 -name "ApplicationPackageManager.smali"

echo "=== Check getPackageInfo in ApplicationPackageManager ==="
grep -n -A 35 "\\.method public whitelist getPackageInfo(Ljava/lang/String;I)" $(find fw_classes1 fw_classes2 fw_classes3 fw_classes5 -name "ApplicationPackageManager.smali")
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=120)
print(stdout.read().decode())
err = stderr.read().decode()
if err:
    print("STDERR:", err)
ssh.close()
