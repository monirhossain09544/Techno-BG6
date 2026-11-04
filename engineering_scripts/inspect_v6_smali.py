import paramiko

REMOTE_PY = r'''import subprocess, os, shutil

WORK = "/nvme0n1-disk/infinity_x/smartcaller_v6_work"
shutil.rmtree(WORK, ignore_errors=True)
os.makedirs(WORK + "/dex", exist_ok=True)

APK = "/nvme0n1-disk/hios14_rom/kl6_root/system_ext/priv-app/SmartCaller/SmartCaller.apk"
subprocess.check_call(f"unzip -q {APK} 'classes*.dex' -d {WORK}/dex", shell=True)

for d in sorted(os.listdir(WORK + "/dex")):
    dp = f"{WORK}/dex/{d}"
    s_sync = int(subprocess.check_output(f"strings {dp} | grep -c '^sync1$' || true", shell=True).decode().strip())
    s_wa = int(subprocess.check_output(f"strings {dp} | grep -c 'WhatsAppSupport' || true", shell=True).decode().strip())
    print(f"{d}: sync1={s_sync}, WhatsAppSupport={s_wa}")
    if s_sync > 0 or s_wa > 0:
        out_dir = f"{WORK}/smali_{d}"
        subprocess.check_call(f"/usr/bin/baksmali d {dp} -o {out_dir}", shell=True)
        if s_sync > 0:
            print("=== SYNC1 MATCHES ===")
            g = subprocess.check_output(f"grep -rn '\"sync1\"' {out_dir} || true", shell=True).decode()
            print(g)
            for line in g.splitlines():
                fp = line.split(":")[0]
                ln = int(line.split(":")[1])
                lines = open(fp).readlines()
                print(f"--- {fp}:{ln} ---")
                print("".join(lines[max(0, ln-25):min(len(lines), ln+35)]))
        if s_wa > 0:
            print("=== WHATSAPP SUPPORT MATCHES ===")
            g = subprocess.check_output(f"grep -rn 'WhatsAppSupport\\|whatsAppEnabled' {out_dir} || true", shell=True).decode()
            print(g)
            for line in g.splitlines():
                fp = line.split(":")[0]
                ln = int(line.split(":")[1])
                lines = open(fp).readlines()
                print(f"--- {fp}:{ln} ---")
                print("".join(lines[max(0, ln-35):min(len(lines), ln+35)]))
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=120)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
print(stderr.read().decode())
c.close()
