import paramiko

REMOTE_PY = r'''
WORK = "/nvme0n1-disk/infinity_x/smartcaller_v6_work"
BASE2 = f"{WORK}/smali_classes2.dex"

ls = open(f"{BASE2}/mc0.smali").readlines()
print("=== mc0.smali 260..390 ===")
print("".join(f"{i+1}: {ls[i]}" for i in range(259, 390)))
print("=== mc0.smali 17690..17785 ===")
print("".join(f"{i+1}: {ls[i]}" for i in range(17689, 17785)))

ls_oy = open(f"{BASE2}/oy1.smali").readlines()
import subprocess
print("=== Loy1;->f()Z contexts ===")
for fp, ln in [("ra0$a.smali", 459), ("ra0$a.smali", 614), ("gt2.smali", 166), ("gt2.smali", 1087), ("m22.smali", 679)]:
    ls2 = open(f"{BASE2}/{fp}").readlines()
    print(f"--- {fp}:{ln} ---")
    print("".join(f"{k+1}: {ls2[k]}" for k in range(max(0, ln-10), min(len(ls2), ln+30))))
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=30)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
c.close()
