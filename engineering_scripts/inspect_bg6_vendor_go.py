import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect(HOST, username=USER, password=PASS, timeout=15)

cmd = """
echo "=== CHECK bg6_vendor_build.prop FOR GO / LOW_RAM ==="
grep -iE "low_ram|tgo|go|ram|fingerprint|model|name|brand|device|gms" /nvme0n1-disk/bg6_device/bg6_vendor_build.prop
echo "=== CHECK bg6_lpdump.txt ==="
cat /nvme0n1-disk/bg6_device/bg6_lpdump.txt | head -n 90
"""
stdin, stdout, stderr = client.exec_command(cmd)
print(stdout.read().decode("utf-8", errors="ignore"))
client.close()
