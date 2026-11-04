import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect(HOST, username=USER, password=PASS, timeout=15)

cmd = r"""
python3 - << 'PY'
with open("/nvme0n1-disk/bg6_device/bg6_vendor_build.prop", "rb") as f:
    raw = f.read()
txt = raw.decode("utf-16", errors="ignore") if 0 in raw[:20] else raw.decode("utf-8", errors="ignore")
for line in txt.splitlines():
    if any(k in line.lower() for k in ["low_ram", "tgo", "go", "ram", "fingerprint", "model", "name", "brand", "device", "gms"]):
        print(line)
PY
echo "=== bg6_extras ==="
ls -la /nvme0n1-disk/hios14_rom/bg6_extras/
"""
stdin, stdout, stderr = client.exec_command(cmd)
print(stdout.read().decode("utf-8", errors="ignore"))
client.close()
