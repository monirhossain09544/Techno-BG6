import paramiko

REMOTE_PY = r'''
WORK = "/nvme0n1-disk/infinity_x/smartcaller_v6_work"
BASE1 = f"{WORK}/smali_classes.dex"
BASE2 = f"{WORK}/smali_classes2.dex"

ls = open(f"{BASE1}/com/android/contacts/list/e$a.smali").readlines()
print(f"=== e$a.smali 180..{len(ls)} ===")
print("".join(f"{i+1}: {ls[i]}" for i in range(179, len(ls))))

ls_xp = open(f"{BASE2}/xp0.smali").readlines()
for i, l in enumerate(ls_xp):
    if ".method public static A()Z" in l:
        print(f"=== xp0.smali A()Z at {i+1} ===")
        print("".join(f"{k+1}: {ls_xp[k]}" for k in range(i, i+45)))
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=30)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
c.close()
