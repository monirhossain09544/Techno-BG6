import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
cd /nvme0n1-disk/hios14_rom
ls -la mnt_kl4_sys/system/etc/selinux/ mnt_kl4_ext/etc/selinux/ mnt_kl4_prod/etc/selinux/ 2>/dev/null
SECILC=/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/secilc
$SECILC -m -M true -G -N -c 30 \
  mnt_kl4_sys/system/etc/selinux/plat_sepolicy.cil \
  mnt_kl4_sys/system/etc/selinux/mapping/33.0.cil \
  mnt_kl4_ext/etc/selinux/system_ext_sepolicy.cil \
  mnt_kl4_ext/etc/selinux/mapping/33.0.cil \
  bg6_vendor_selinux/plat_pub_versioned.cil \
  bg6_vendor_selinux/vendor_sepolicy.cil \
  -o /tmp/test_sepolicy -f /dev/null 2>&1 && echo "SECILC_100_PERCENT_SUCCESS!"
ls -lh /tmp/test_sepolicy
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
ssh.close()
