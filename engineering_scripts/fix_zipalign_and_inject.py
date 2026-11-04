import paramiko

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=15)

cmd = """
set -e
ZIPALIGN="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/zipalign"
WORK="/nvme0n1-disk/infinity_x/mock_work"
ORIG="/nvme0n1-disk/infinity_x/infinity_x_3.12_gapps.img"
IMG="/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img"
MNT_O="/nvme0n1-disk/infinity_x/mnt_orig_chk"
MNT="/nvme0n1-disk/infinity_x/mnt_mock"

echo "1. Checking original image framework directories..."
echo '${BG6_SERVER_PASS}' | sudo -S mount -o loop,ro "$ORIG" "$MNT_O" 2>/dev/null || true
ls -la "$MNT_O/system/framework/oat/arm64/" 2>/dev/null || echo "No oat/arm64"
ls -la "$MNT_O/system/framework/arm64/" 2>/dev/null || echo "No framework/arm64"
"$ZIPALIGN" -c -v 4 "$MNT_O/system/framework/framework.jar" | grep -E "classes|Verification"
"$ZIPALIGN" -c -v 4 "$MNT_O/system/framework/services.jar" | grep -E "classes|Verification"
sudo umount "$MNT_O"

echo "2. Running zipalign -f -p 4 on patched framework.jar and services.jar..."
cd "$WORK"
"$ZIPALIGN" -f -p 4 framework.jar framework_aligned.jar
mv -f framework_aligned.jar framework.jar
"$ZIPALIGN" -c -v 4 framework.jar | grep -E "classes|Verification"

"$ZIPALIGN" -f -p 4 services.jar services_aligned.jar
mv -f services_aligned.jar services.jar
"$ZIPALIGN" -c -v 4 services.jar | grep -E "classes|Verification"

echo "3. Injecting aligned framework.jar and services.jar into master image..."
sudo umount "$MNT" 2>/dev/null || true
sudo mount -o loop,rw "$IMG" "$MNT"

sudo cp "$WORK/framework.jar" "$MNT/system/framework/framework.jar"
sudo cp "$WORK/services.jar" "$MNT/system/framework/services.jar"
sudo chown 0:0 "$MNT/system/framework/framework.jar" "$MNT/system/framework/services.jar"
sudo chmod 0644 "$MNT/system/framework/framework.jar" "$MNT/system/framework/services.jar"

sudo python3 - << 'PYEOF'
import os
MNT = "/nvme0n1-disk/infinity_x/mnt_mock"
for p in [f"{MNT}/system/framework/framework.jar", f"{MNT}/system/framework/services.jar"]:
    os.setxattr(p, "security.selinux", b"u:object_r:system_file:s0\x00")
    print(p, "->", os.getxattr(p, "security.selinux"))
PYEOF

sync
sudo umount "$MNT"
sudo e2fsck -fy "$IMG" || true
echo "ZIPALIGN_AND_INJECT_SUCCESS"
"""
stdin, stdout, stderr = c.exec_command(cmd, timeout=120)
print(stdout.read().decode())
print(stderr.read().decode())
c.close()
