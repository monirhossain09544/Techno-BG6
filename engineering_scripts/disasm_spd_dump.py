import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

sftp = ssh.open_sftp()
sftp.put(r"D:\Tecno_BG6_Full_ROM_Backup\spd_dump.exe", "/tmp/spd_dump.exe")
sftp.close()

cmd = """
OBJDUMP=/nvme0n1-disk/shunno_os/prebuilts/clang/host/linux-x86/clang-r510928/bin/llvm-objdump
$OBJDUMP -d /tmp/spd_dump.exe | grep -B 25 -A 25 "105c0"
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
ssh.close()
