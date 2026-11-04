import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)

cmd = r"""
set -e
ls -lh /nvme0n1-disk/infinity_x/
AVBTOOL=$(find /nvme0n1-disk/shunno_os -name avbtool.py -o -name avbtool | grep -E "avbtool(\.py)?$" | head -n 1)
echo "AVBTOOL=$AVBTOOL"
python3 "$AVBTOOL" info_image --image /nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img || true

echo "=== CHECK MOUNT & DF ==="
mkdir -p /tmp/mnt_inf_inspect
echo '${BG6_SERVER_PASS}' | sudo -S umount /tmp/mnt_inf_inspect 2>/dev/null || true
echo '${BG6_SERVER_PASS}' | sudo -S mount -o ro,loop /nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img /tmp/mnt_inf_inspect
df -BM /tmp/mnt_inf_inspect

echo "=== STOCK DIALER / CONTACTS / DOCUMENTSUI / FILES ==="
find /tmp/mnt_inf_inspect -iname "*dialer*" -o -iname "*contacts*" -o -iname "*documentsui*" -o -iname "*files*" -o -iname "*gnss*" 2>/dev/null | grep -v "/res/" | head -n 80

echo "=== CHECK ro.control_privapp_permissions ==="
grep -rn "control_privapp_permissions" /tmp/mnt_inf_inspect/system/build.prop /tmp/mnt_inf_inspect/system/product/etc/build.prop /tmp/mnt_inf_inspect/system/system_ext/etc/build.prop 2>/dev/null || true

echo "=== CHECK config_defaultDialer OVERLAYS ==="
grep -rn "SmartCaller\|com.android.dialer" /tmp/mnt_inf_inspect/system/product/etc/ /tmp/mnt_inf_inspect/system/system_ext/etc/ /tmp/mnt_inf_inspect/system/etc/ 2>/dev/null | head -n 40 || true

echo "=== DUMP DOCUMENTSUI MANIFEST LAUNCHER ACTIVITY ==="
AAPT2=/nvme0n1-disk/shunno_os/prebuilts/sdk/tools/linux/bin/aapt2
DOCUI=$(find /tmp/mnt_inf_inspect -name "DocumentsUI*.apk" | head -n 1)
echo "DOCUI=$DOCUI"
if [ -n "$DOCUI" ]; then
    $AAPT2 dump badging "$DOCUI" | grep -E "package:|launchable-activity" || true
    $AAPT2 dump xmltree "$DOCUI" AndroidManifest.xml | grep -B 4 -A 8 "LAUNCHER" || true
fi

echo "=== SMARTCALLER PERMISSIONS ==="
$AAPT2 dump permissions /nvme0n1-disk/infinity_x/smartcaller_v6_work/SmartCaller_V6_A16.apk

echo '${BG6_SERVER_PASS}' | sudo -S umount /tmp/mnt_inf_inspect
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=90)
print("STDOUT:\n", stdout.read().decode("utf-8", errors="replace"))
print("STDERR:\n", stderr.read().decode("utf-8", errors="replace"))
ssh.close()
