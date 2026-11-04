import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
cd /nvme0n1-disk/hios14_rom
grep -rn "anti_crack" merged_root/system/ merged_root/system/system_ext/ merged_root/system/product/ mnt_kl4_vendor/ 2>/dev/null
python3 -c '
data = open("merged_root/system/bin/init", "rb").read()
for kw in [b"anti_crack", b"payjoy", b"PayJoy", b"Nephilim", b"TEOP", b"trantabe"]:
    idx = 0
    while True:
        idx = data.find(kw, idx)
        if idx == -1: break
        print(kw, "at", hex(idx), data[max(0,idx-80):idx+120])
        idx += len(kw)
'
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
