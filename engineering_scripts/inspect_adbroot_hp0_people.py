import sys, paramiko

sys.stdout.reconfigure(encoding='utf-8', errors='replace')

REMOTE_PY = r"""import subprocess, os

# 1. Find exact adb root setting in shunno_os
out = subprocess.run("grep -rn 'ADB Root access is disabled' /nvme0n1-disk/shunno_os/system/ /nvme0n1-disk/shunno_os/packages/ 2>/dev/null | head -n 10", shell=True, capture_output=True, text=True).stdout
print("--- adb_root grep ---\n", out)
for line in out.splitlines():
    if ":" in line:
        f, ln, _ = line.split(":", 2)
        ln = int(ln)
        ls = open(f).readlines()
        print("".join(f"{i+1}: {ls[i]}" for i in range(max(0, ln-25), min(len(ls), ln+15))))

# 2. Read hp0.smali around 1350-1420 and 1645-1710
WORK = "/nvme0n1-disk/infinity_x/smartcaller_v6_work"
hp0 = open(f"{WORK}/smali_classes2.dex/hp0.smali").readlines()
print("=== hp0.smali 1350..1425 ===")
print("".join(f"{i+1}: {hp0[i]}" for i in range(1349, min(len(hp0), 1425))))
print("=== hp0.smali 1645..1710 ===")
print("".join(f"{i+1}: {hp0[i]}" for i in range(1644, min(len(hp0), 1710))))

# 3. Check PeopleActivity.smali onCreate
for d in ["smali_classes.dex", "smali_classes2.dex", "smali_classes3.dex"]:
    pa = f"{WORK}/{d}/com/android/contacts/activities/PeopleActivity.smali"
    if os.path.exists(pa):
        print(f"=== Found {pa} ===")
        ls = open(pa).readlines()
        for idx, l in enumerate(ls):
            if ".method public onCreate(" in l or ".method protected onCreate(" in l:
                print("".join(f"{i+1}: {ls[i]}" for i in range(idx, min(len(ls), idx+45))))
"""

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=60)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode("utf-8", errors="replace"))
err = stderr.read().decode("utf-8", errors="replace")
if err:
    print("STDERR:", err)
c.close()
