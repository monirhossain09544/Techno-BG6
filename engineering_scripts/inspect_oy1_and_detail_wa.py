import paramiko

REMOTE_PY = r'''import subprocess

BASE1 = "/nvme0n1-disk/infinity_x/smartcaller_v6_work/smali_classes.dex"
BASE2 = "/nvme0n1-disk/infinity_x/smartcaller_v6_work/smali_classes2.dex"

print("=== oy1.smali 110..260 ===")
lines_oy = open(f"{BASE2}/oy1.smali").readlines()
print("".join(f"{i+1}: {lines_oy[i]}" for i in range(110, min(len(lines_oy), 260))))

print("=== xp0.smali 4995..5055 ===")
lines_xp = open(f"{BASE2}/xp0.smali").readlines()
print("".join(f"{i+1}: {lines_xp[i]}" for i in range(4994, len(lines_xp))))

print("=== DetailViewBinder / isSupportWhatsApp search ===")
out = subprocess.check_output(f"grep -rn 'isSupportWhatsApp\\|DetailViewBinder.onWhatsAppClick' {BASE1} {BASE2} || true", shell=True).decode()
print(out)
for line in out.splitlines():
    fp = line.split(":")[0]
    ln = int(line.split(":")[1])
    ls = open(fp).readlines()
    print(f"--- {fp}:{ln} ---")
    print("".join(f"{k+1}: {ls[k]}" for k in range(max(0, ln-35), min(len(ls), ln+35))))
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=60)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
c.close()
