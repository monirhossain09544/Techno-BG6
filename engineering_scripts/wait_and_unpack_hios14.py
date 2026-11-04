import paramiko
import time

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

while True:
    _, stdout, _ = ssh.exec_command("tail -n 3 /nvme0n1-disk/hios14_rom/dl_kl4.log /nvme0n1-disk/hios14_rom/dl_kl6.log")
    out = stdout.read().decode()
    print(out.strip(), flush=True)
    if "DONE: KL4_Unisoc_HiOS14.zip" in out and "DONE: KL6_Full_HiOS14_5.zip" in out:
        break
    time.sleep(10)

print("=== Both official ROMs downloaded! Listing zip contents... ===", flush=True)
cmd = """
cd /nvme0n1-disk/hios14_rom
unzip -l KL4_Unisoc_HiOS14.zip
unzip -l KL6_Full_HiOS14_5.zip | head -n 40
mkdir -p kl4_extracted kl6_extracted
unzip -o KL4_Unisoc_HiOS14.zip -d kl4_extracted/
ls -lh kl4_extracted/
"""
_, stdout, stderr = ssh.exec_command(cmd)
for line in iter(stdout.readline, ""):
    print(line, end="", flush=True)
ssh.close()
