import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

cmd = """set -e
cd /nvme0n1-disk/shunno_os
source build/envsetup.sh
lunch treble_arm64_bgN-ap2a-userdebug
m webview treble-overlay-tecno-bg6 Provision SunnoRiderTile -j72
# Force rebuild of system.img so webview.apk + odex/vdex are packed inside system.img
rm -f out/target/product/tdgsi_arm64_ab/system.img out/target/product/tdgsi_arm64_ab/obj/PACKAGING/systemimage_intermediates/system.img
m systemimage -j72
echo "=== VERIFY INSTALLED WEBVIEW & PROVISION & OVERLAY ==="
ls -lh out/target/product/tdgsi_arm64_ab/system/product/app/webview/webview.apk
ls -lh out/target/product/tdgsi_arm64_ab/system/system_ext/priv-app/Provision/Provision.apk
ls -lh out/target/product/tdgsi_arm64_ab/system/product/overlay/treble-overlay-tecno-bg6.apk
ls -lh out/target/product/tdgsi_arm64_ab/system/etc/sunno_cm_identity.bin
ls -lh out/target/product/tdgsi_arm64_ab/system.img
stat -c "%s" out/target/product/tdgsi_arm64_ab/system.img
"""

stdin, stdout, stderr = ssh.exec_command(f"bash -c '{cmd}'")
while True:
    line = stdout.readline()
    if not line:
        break
    print(line, end="", flush=True)
err = stderr.read().decode("utf-8", errors="replace")
if err:
    print("STDERR:", err)
ssh.close()
