import paramiko

REMOTE_PY = r'''import subprocess

WORK = "/nvme0n1-disk/infinity_x/smartcaller_v6_work"
BASE1 = f"{WORK}/smali_classes.dex"
BASE2 = f"{WORK}/smali_classes2.dex"
BASE3 = f"{WORK}/smali_classes3.dex"

print("=== Lsz;->a:Z references ===")
g1 = subprocess.check_output(f"grep -rn 'Lsz;->a:Z' {BASE1} {BASE2} {BASE3} || true", shell=True).decode()
print(g1)
for line in g1.splitlines():
    fp, ln = line.split(":")[0], int(line.split(":")[1])
    ls = open(fp).readlines()
    print(f"--- {fp}:{ln} ---")
    print("".join(f"{k+1}: {ls[k]}" for k in range(max(0, ln-5), min(len(ls), ln+45))))

print("=== Loy1;->f()Z references ===")
g2 = subprocess.check_output(f"grep -rn 'Loy1;->f()Z' {BASE1} {BASE2} {BASE3} || true", shell=True).decode()
print(g2)

print("=== mt.smali 435..480 ===")
ls = open(f"{BASE3}/mt.smali").readlines()
print("".join(f"{i+1}: {ls[i]}" for i in range(434, min(len(ls), 480))))

print("=== mc0.smali WhatsApp layout visibility ===")
g3 = subprocess.check_output(f"grep -rn 'whatsapp\\|WhatsApp' {BASE2}/mc0.smali || true", shell=True).decode()
print(g3)
for line in g3.splitlines()[:8]:
    ln = int(line.split(":")[0])
    ls = open(f"{BASE2}/mc0.smali").readlines()
    print(f"--- mc0.smali:{ln} ---")
    print("".join(f"{k+1}: {ls[k]}" for k in range(max(0, ln-25), min(len(ls), ln+25))))
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=60)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
c.close()
