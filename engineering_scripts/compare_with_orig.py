import paramiko

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=15)

cmd = """
ORIG="/nvme0n1-disk/infinity_x/infinity_x_3.12_gapps.img"
MNT_O="/nvme0n1-disk/infinity_x/mnt_orig_chk"
sudo mkdir -p "$MNT_O"
echo '${BG6_SERVER_PASS}' | sudo -S mount -o loop,ro "$ORIG" "$MNT_O" 2>/dev/null || true

echo "=== ORIG build.prop & framework ==="
sudo ls -laZ "$MNT_O/system/build.prop" "$MNT_O/system/framework/framework.jar"* "$MNT_O/system/framework/services.jar"*
sudo ls -laZ "$MNT_O/system/framework/oat/arm64/" 2>/dev/null || true

echo "=== Check zip alignment & compression of patched framework.jar and services.jar ==="
unzip -lv /nvme0n1-disk/infinity_x/mock_work/framework.jar | grep -E "classes|Stored|Defl"
unzip -lv /nvme0n1-disk/infinity_x/mock_work/services.jar | grep -E "classes|Stored|Defl"

echo "=== Check zipalign -c 4 ==="
zipalign -c -v 4 /nvme0n1-disk/infinity_x/mock_work/framework.jar | tail -n 15 || true
zipalign -c -v 4 /nvme0n1-disk/infinity_x/mock_work/services.jar | tail -n 15 || true

sudo umount "$MNT_O"
"""
stdin, stdout, stderr = c.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
c.close()
