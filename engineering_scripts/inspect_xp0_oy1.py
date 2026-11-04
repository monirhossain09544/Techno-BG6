import paramiko

REMOTE_PY = r'''import subprocess

BASE1 = "/nvme0n1-disk/infinity_x/smartcaller_v6_work/smali_classes.dex"
BASE2 = "/nvme0n1-disk/infinity_x/smartcaller_v6_work/smali_classes2.dex"

def show(path, start=0, end=200):
    lines = open(path).readlines()
    print(f"=== {path} ({start}:{end}) ===")
    print("".join(f"{i+1}: {lines[i]}" for i in range(max(0, start), min(len(lines), end))))

show(f"{BASE1}/com/android/contacts/list/e$a.smali", 80, 190)
show(f"{BASE1}/com/android/dialer/dialpadview/a.smali", 13735, 13865)

# Find Loy1 and Lxp0 across smali_classes.dex and smali_classes2.dex
for cls in ["oy1.smali", "xp0.smali"]:
    for b in [BASE1, BASE2]:
        import os
        p = f"{b}/{cls}"
        if os.path.exists(p):
            show(p, 0, 350)
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=60)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
c.close()
