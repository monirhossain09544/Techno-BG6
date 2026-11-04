import paramiko

REMOTE_PY = r'''
BASE1 = "/nvme0n1-disk/infinity_x/smartcaller_v6_work/smali_classes.dex"
BASE2 = "/nvme0n1-disk/infinity_x/smartcaller_v6_work/smali_classes2.dex"

lines_a = open(f"{BASE1}/com/android/dialer/dialpadview/a.smali").readlines()
print("=== dialpadview/a.smali 13845..13925 ===")
print("".join(f"{i+1}: {lines_a[i]}" for i in range(13844, min(len(lines_a), 13925))))

import os
xp_path = f"{BASE1}/xp0.smali" if os.path.exists(f"{BASE1}/xp0.smali") else f"{BASE2}/xp0.smali"
lines_xp = open(xp_path).readlines()
print(f"=== {xp_path} total lines: {len(lines_xp)} ===")
for i, l in enumerate(lines_xp):
    if l.startswith(".method ") or "const-string" in l:
        print(f"{i+1}: {l.rstrip()}")
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=60)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
c.close()
