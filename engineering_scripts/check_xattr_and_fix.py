import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """echo '${BG6_SERVER_PASS}' | sudo -S python3 -c '
import os
for p in ["/nvme0n1-disk/hios14_rom/mnt_kl4_sys/system/bin/init", "/nvme0n1-disk/hios14_rom/merged_root/system/bin/init"]:
    try:
        val = os.getxattr(p, "security.selinux", follow_symlinks=False)
        print(p, "->", val)
    except Exception as e:
        print(p, "ERROR:", e)
'"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
