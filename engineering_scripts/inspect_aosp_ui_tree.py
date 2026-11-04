import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS)

cmd = """
cd /nvme0n1-disk/shunno_os
ls -d packages/apps/Launcher3 packages/apps/Settings frameworks/base/packages/SystemUI vendor/hardware_overlay/Tecno/BG6
grep -rn "ro.config.low_ram" device/phh/treble/ vendor/ 2>/dev/null | head -n 20
"""
stdin, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
