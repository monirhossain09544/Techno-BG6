import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
cd /nvme0n1-disk/hios14_rom
DUMP=/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/dump.erofs
echo "=== KL4 system_a.img EROFS superblock ==="
$DUMP kl4_parts/system_a.img 2>&1 | head -n 25
echo "=== Our hios14_5_system.img EROFS superblock ==="
$DUMP hios14_5_system.img 2>&1 | head -n 25
echo "=== SELinux directories ==="
ls -la merged_root/system/etc/selinux/ merged_root/system/system_ext/etc/selinux/ merged_root/system/product/etc/selinux/ bg6_vendor_selinux/ 2>&1
echo "=== Check mapping files vs bg6 plat_sepolicy_vers.txt ==="
cat bg6_vendor_selinux/plat_sepolicy_vers.txt 2>&1
ls -la merged_root/system/etc/selinux/mapping/ merged_root/system/system_ext/etc/selinux/mapping/ merged_root/system/product/etc/selinux/mapping/ 2>&1
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
