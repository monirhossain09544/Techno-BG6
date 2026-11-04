import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
cd /nvme0n1-disk/hios14_rom
FSCK_EROFS=/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/fsck.erofs
MKFS_EROFS=/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/mkfs.erofs
ls -lh $FSCK_EROFS $MKFS_EROFS

mkdir -p kl4_root/system kl4_root/system_ext kl4_root/product
mkdir -p kl6_root/system_ext kl6_root/product

$FSCK_EROFS --extract=kl4_root/system kl4_parts/system_a.img >/dev/null
$FSCK_EROFS --extract=kl4_root/system_ext kl4_parts/system_ext_a.img >/dev/null
$FSCK_EROFS --extract=kl4_root/product kl4_parts/product_a.img >/dev/null

echo "=== KL4 build.prop summary ==="
grep -E "ro.build.version|ro.tranos|ro.os.version|ro.product" kl4_root/system/system/build.prop kl4_root/product/etc/build.prop | head -n 40

echo "=== KL4 system_ext/app & priv-app ==="
ls kl4_root/system_ext/app kl4_root/system_ext/priv-app

echo "=== KL4 product/app & priv-app ==="
ls kl4_root/product/app kl4_root/product/priv-app
"""
_, stdout, stderr = ssh.exec_command(cmd)
for line in iter(stdout.readline, ""):
    print(line, end="", flush=True)
print(stderr.read().decode())
ssh.close()
