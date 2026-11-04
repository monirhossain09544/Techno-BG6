import paramiko
import os

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"
SCRATCH = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)

sftp = ssh.open_sftp()
local_fm = os.path.join(SCRATCH, "file-manager-17-0-0-104-release.apk")
remote_fm = "/nvme0n1-disk/infinity_x/filemanager_work/TranssionFileManager.apk"
print("Uploading TranssionFileManager.apk (21.3 MB)...")
sftp.put(local_fm, remote_fm)
sftp.close()

cmd = r"""
set -e
AAPT2=/nvme0n1-disk/shunno_os/prebuilts/sdk/tools/linux/bin/aapt2
ZIPALIGN=/nvme0n1-disk/shunno_os/prebuilts/sdk/tools/linux/bin/zipalign
APKSIGNER=$(find /nvme0n1-disk/shunno_os/prebuilts -name apksigner.jar | head -n 1)

echo "=== 1. KL6 com.sh.smart.caller.xml ==="
cat /nvme0n1-disk/hios14_rom/kl6_root/system_ext/etc/permissions/com.sh.smart.caller.xml

echo "=== 2. Check native libs & zipalign of all 4 APKs ==="
for apk in \
    /nvme0n1-disk/infinity_x/smartcaller_v6_work/SmartCaller_V6_A16.apk \
    /nvme0n1-disk/hios14_rom/bg6_extras/TranssionNote.apk \
    /nvme0n1-disk/infinity_x/filemanager_work/TranssionFileManager.apk \
    /nvme0n1-disk/infinity_x/gnss_app_build/KernelGnssSettings.apk; do
    echo "--- $apk ---"
    ls -lh "$apk"
    $AAPT2 dump badging "$apk" | head -n 5
    unzip -l "$apk" | grep "lib/" | head -n 20 || true
    $ZIPALIGN -c -p 4 "$apk" && echo "ZIPALIGN_4_P: OK" || echo "ZIPALIGN_4_P: NEEDS_ALIGN"
    java -jar "$APKSIGNER" verify --print-certs "$apk" | head -n 3
done

echo "=== 3. Check exact activity-alias name in DocumentsUI.apk ==="
mkdir -p /tmp/mnt_inf_ro
echo '${BG6_SERVER_PASS}' | sudo -S umount /tmp/mnt_inf_ro 2>/dev/null || true
echo '${BG6_SERVER_PASS}' | sudo -S mount -o ro,loop /nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img /tmp/mnt_inf_ro
$AAPT2 dump xmltree /tmp/mnt_inf_ro/system/priv-app/DocumentsUI/DocumentsUI.apk --file AndroidManifest.xml | grep -B 12 -A 8 "android.intent.category.LAUNCHER" || true

echo "=== 4. Cross-check ALL privileged permissions in framework-res vs SmartCaller ==="
python3 - << 'PY'
import subprocess, re

aapt2 = "/nvme0n1-disk/shunno_os/prebuilts/sdk/tools/linux/bin/aapt2"
fw_xml = subprocess.check_output([aapt2, "dump", "xmltree", "/tmp/mnt_inf_ro/system/framework/framework-res.apk", "--file", "AndroidManifest.xml"], text=True)

priv_perms = set()
cur_perm = None
for line in fw_xml.splitlines():
    if "E: permission " in line:
        cur_perm = None
    elif 'android:name(' in line and cur_perm is None:
        m = re.search(r'"([^"]+)"', line)
        if m:
            cur_perm = m.group(1)
    elif 'android:protectionLevel(' in line and cur_perm:
        # 0x10 = privileged, 0x12 = signature|privileged
        m = re.search(r'=\(type 0x11\)(0x[0-9a-fA-F]+)', line)
        if m and (int(m.group(1), 16) & 0x10):
            priv_perms.add(cur_perm)

sc_perms_out = subprocess.check_output([aapt2, "dump", "permissions", "/nvme0n1-disk/infinity_x/smartcaller_v6_work/SmartCaller_V6_A16.apk"], text=True)
sc_req = set(re.findall(r"uses-permission: name='([^']+)'", sc_perms_out))

needed = sorted(sc_req & priv_perms)
print("EXACT PRIVILEGED PERMS NEEDED BY SMARTCALLER ON THIS ANDROID 16 FRAMEWORK:")
for p in needed:
    print(" ", p)
PY

echo "=== 5. Check bg6-perf-tune.sh & bg6_overlay_src ==="
cat /tmp/mnt_inf_ro/system/bin/bg6-perf-tune.sh 2>/dev/null || true
ls -la /nvme0n1-disk/infinity_x/bg6_overlay_src/res/values/ 2>/dev/null || true
cat /nvme0n1-disk/infinity_x/bg6_overlay_src/res/values/config.xml 2>/dev/null || true

echo '${BG6_SERVER_PASS}' | sudo -S umount /tmp/mnt_inf_ro
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=90)
print("STDOUT:\n", stdout.read().decode("utf-8", errors="replace"))
print("STDERR:\n", stderr.read().decode("utf-8", errors="replace"))
ssh.close()
