import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect(HOST, username=USER, password=PASS, timeout=15)

cmd = """
echo "=== dimens.xml ==="
cat /nvme0n1-disk/bg6_device/rro_decoded/res/values/dimens.xml
echo "=== bools.xml ==="
cat /nvme0n1-disk/bg6_device/rro_decoded/res/values/bools.xml
echo "=== integers.xml ==="
cat /nvme0n1-disk/bg6_device/rro_decoded/res/values/integers.xml
echo "=== strings.xml ==="
cat /nvme0n1-disk/bg6_device/rro_decoded/res/values/strings.xml
echo "=== power_profile.xml ==="
cat /nvme0n1-disk/bg6_device/rro_decoded/res/xml/power_profile.xml
echo "=== arrays.xml ==="
cat /nvme0n1-disk/bg6_device/rro_decoded/res/values/arrays.xml | head -n 120
"""
stdin, stdout, stderr = client.exec_command(cmd)
print(stdout.read().decode("utf-8", errors="ignore"))
client.close()
