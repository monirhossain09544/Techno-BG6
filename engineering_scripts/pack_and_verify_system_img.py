import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

cmd = """set -e
cd /nvme0n1-disk/shunno_os
grep -rn -i "webview" device/phh/treble/base.mk || true

export PATH="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin:/nvme0n1-disk/shunno_os/system/extras/ext4_utils:$PATH"
out/host/linux-x86/bin/build_image \
    out/target/product/tdgsi_arm64_ab/system \
    out/target/product/tdgsi_arm64_ab/obj/PACKAGING/systemimage_intermediates/system_image_info.txt \
    out/target/product/tdgsi_arm64_ab/obj/PACKAGING/systemimage_intermediates/system.img \
    out/target/product/tdgsi_arm64_ab/system

cp -f out/target/product/tdgsi_arm64_ab/obj/PACKAGING/systemimage_intermediates/system.img out/target/product/tdgsi_arm64_ab/system.img

echo "=== VERIFY INSIDE EXT4 SYSTEM.IMG WITH DEBUGFS ==="
/sbin/debugfs -R "ls -l /system/product/app/webview" out/target/product/tdgsi_arm64_ab/system.img
/sbin/debugfs -R "ls -l /system/system_ext/priv-app/Provision" out/target/product/tdgsi_arm64_ab/system.img
/sbin/debugfs -R "ls -l /system/product/overlay" out/target/product/tdgsi_arm64_ab/system.img | grep bg6
/sbin/debugfs -R "ls -l /system/etc" out/target/product/tdgsi_arm64_ab/system.img | grep sunno
ls -lh out/target/product/tdgsi_arm64_ab/system.img
stat -c "%s" out/target/product/tdgsi_arm64_ab/system.img
"""

stdin, stdout, stderr = ssh.exec_command(f"bash -c '{cmd}'")
print(stdout.read().decode("utf-8", errors="replace"))
err = stderr.read().decode("utf-8", errors="replace")
if err:
    print("STDERR:", err)
ssh.close()
