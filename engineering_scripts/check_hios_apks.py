import paramiko
import subprocess
import re

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)

cmd = """
echo "=== CHECK HIOS14_ROM APKS ==="
find /nvme0n1-disk/hios14_rom /nvme0n1-disk/tecno* /nvme0n1-disk/bg6* -iname "*file*" -o -iname "*manager*" -o -iname "*note*" 2>/dev/null | grep -iE "\.apk$" || true
echo "=== CHECK ALL APKS IN HIOS14_ROM ==="
find /nvme0n1-disk/hios14_rom -name "*.apk" 2>/dev/null || true
echo "=== PARSE APPTEKA HTML ==="
grep -oE 'https?://[^"'\'' <>]+' /nvme0n1-disk/infinity_x/filemanager_work/TranssionFileManager.apk | grep -iE 'download|apk|cdn|file|7a4r' | head -n 30 || true
grep -oE 'href="[^"]+"' /nvme0n1-disk/infinity_x/filemanager_work/TranssionFileManager.apk | grep -iE 'download|apk|7a4r' | head -n 30 || true
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode("utf-8", errors="replace"))
ssh.close()
