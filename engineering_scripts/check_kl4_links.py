import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """echo '${BG6_SERVER_PASS}' | sudo -S python3 -c '
import os
for p in [
    "/nvme0n1-disk/hios14_rom/mnt_kl4_sys",
    "/nvme0n1-disk/hios14_rom/mnt_kl4_sys/bin",
    "/nvme0n1-disk/hios14_rom/mnt_kl4_sys/product",
    "/nvme0n1-disk/hios14_rom/mnt_kl4_sys/system_ext",
    "/nvme0n1-disk/hios14_rom/mnt_kl4_sys/system/product",
    "/nvme0n1-disk/hios14_rom/mnt_kl4_sys/system/system_ext",
    "/nvme0n1-disk/hios14_rom/mnt_kl4_ext",
    "/nvme0n1-disk/hios14_rom/mnt_kl4_prod",
]:
    try:
        is_lnk = os.path.islink(p)
        target = os.readlink(p) if is_lnk else "DIR"
        val = os.getxattr(p, "security.selinux", follow_symlinks=False)
        print(f"{p} ({target}) -> {val}")
    except Exception as e:
        print(p, "ERROR:", e)
'"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
ssh.close()
