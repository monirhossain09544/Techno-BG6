import paramiko

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=15)

cmd = """
set -e
cd /nvme0n1-disk/infinity_x/mock_work
rm -f zi* new_classes*.dex test5.dex

echo "1. Assembling fw_classes5 with -a 34..."
time smali a -a 34 -j 16 fw_classes5 -o new_classes5.dex
ls -lh new_classes5.dex

echo "2. Assembling fw_classes2 with -a 34..."
time smali a -a 34 -j 16 fw_classes2 -o new_classes2.dex
ls -lh new_classes2.dex

echo "3. Assembling fw_classes1 with -a 34..."
time smali a -a 34 -j 16 fw_classes1 -o new_classes1.dex
ls -lh new_classes1.dex

mv -f new_classes5.dex classes5.dex
mv -f new_classes2.dex classes2.dex
mv -f new_classes1.dex classes.dex

zip -j -0 framework.jar classes.dex classes2.dex classes5.dex
ls -lh framework.jar

echo "4. Re-verifying services.jar with -a 34..."
time smali a -a 34 -j 16 srv_classes2 -o srv_dex/classes2.dex
zip -j -0 services.jar srv_dex/classes2.dex
ls -lh services.jar

echo "ALL_JARS_ASSEMBLED_SUCCESSFULLY"
"""
stdin, stdout, stderr = c.exec_command(cmd, timeout=180)
print(stdout.read().decode())
print(stderr.read().decode())
c.close()
