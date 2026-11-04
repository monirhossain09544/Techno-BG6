import paramiko
import time

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
cd /nvme0n1-disk/hios14_rom
rm -f KL4_Unisoc_HiOS14.zip KL5_Full_HiOS14_5.zip dl_kl4.log dl_kl5.log
nohup python3 gdrive_dl.py 1S2Saavl-5XXhrxlgwXvUCNuEIWBjKVaR KL4_Unisoc_HiOS14.zip > dl_kl4.log 2>&1 &
nohup python3 gdrive_dl.py 1TpSt4ckP9Uxq7vrZyBBRvTkNBV_HUB9J KL6_Full_HiOS14_5.zip > dl_kl6.log 2>&1 &
sleep 8
tail -n 20 dl_kl4.log dl_kl6.log
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
ssh.close()
