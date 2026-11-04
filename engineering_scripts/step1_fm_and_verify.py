import paramiko
import subprocess
import os

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)

cmd = """
set -e
mkdir -p /nvme0n1-disk/infinity_x/filemanager_work
cd /nvme0n1-disk/infinity_x/filemanager_work
curl -L -A "Mozilla/5.0 (Linux; Android 14; TECNO BG6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36" \
  -e "https://appteka.store/app/7a4r261854" \
  -o TranssionFileManager.apk \
  "https://appteka.store/apps/7a4r261854/download"
ls -lh TranssionFileManager.apk
file TranssionFileManager.apk
AAPT2=$(find /nvme0n1-disk/shunno_os/prebuilts -name aapt2 -path "*linux*" | head -n 1)
APKSIGNER=$(find /nvme0n1-disk/shunno_os/prebuilts -name apksigner.jar | head -n 1)
echo "AAPT2=$AAPT2"
$AAPT2 dump badging TranssionFileManager.apk | head -n 25 || true
java -jar $APKSIGNER verify --print-certs TranssionFileManager.apk || true
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=120)
print("STDOUT:\n", stdout.read().decode("utf-8", errors="replace"))
print("STDERR:\n", stderr.read().decode("utf-8", errors="replace"))
ssh.close()
