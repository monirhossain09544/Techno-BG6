import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
cd /nvme0n1-disk/hios14_rom
FSCK_EROFS=/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/fsck.erofs
$FSCK_EROFS --extract=kl6_root/system_ext kl6_parts/system_ext_a.img >/dev/null 2>&1
$FSCK_EROFS --extract=kl6_root/product kl6_parts/product_a.img >/dev/null 2>&1

echo "=== KL6 (HiOS 14.5) build.prop version ==="
grep -E "tranos|os.version" kl6_root/product/etc/build.prop kl6_root/system_ext/etc/build.prop

echo "=== KL6 (HiOS 14.5) system_ext/app & priv-app ==="
ls kl6_root/system_ext/app kl6_root/system_ext/priv-app

echo "=== KL6 (HiOS 14.5) product/app & priv-app ==="
ls kl6_root/product/app kl6_root/product/priv-app

echo "=== Checking PayJoy / lock references in KL4 ==="
find kl4_root -iname "*payjoy*" -o -iname "*teop*" -o -iname "*nephilim*"
grep -rnI -i "payjoy" kl4_root/system/system/etc/ kl4_root/system_ext/etc/ kl4_root/product/etc/ 2>/dev/null
"""
_, stdout, stderr = ssh.exec_command(cmd)
for line in iter(stdout.readline, ""):
    print(line, end="", flush=True)
ssh.close()
