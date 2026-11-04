import paramiko

REMOTE_PY = r'''import subprocess, os, shutil

WORK = "/nvme0n1-disk/infinity_x/smartcaller_fix"
shutil.rmtree(WORK, ignore_errors=True)
os.makedirs(WORK + "/dex", exist_ok=True)

APK = "/nvme0n1-disk/hios14_rom/kl4_root/system_ext/priv-app/SmartCaller/SmartCaller.apk"
subprocess.check_call(f"unzip -q {APK} 'classes*.dex' -d {WORK}/dex", shell=True)

for d in sorted(os.listdir(WORK + "/dex")):
    dp = f"{WORK}/dex/{d}"
    s = subprocess.check_output(f"strings {dp} | grep -c '^sync1$' || true", shell=True).decode().strip()
    print(d, "sync1 count:", s)
    if int(s) > 0:
        out_dir = f"{WORK}/smali_{d}"
        subprocess.check_call(f"java -jar /usr/local/bin/baksmali.jar d {dp} -o {out_dir}", shell=True)
        grep_out = subprocess.check_output(f"grep -rn '\"sync1\"' {out_dir} || true", shell=True).decode()
        print("MATCHES:\n", grep_out)
        for line in grep_out.splitlines():
            f_path = line.split(":")[0]
            ln = int(line.split(":")[1])
            with open(f_path) as fp:
                all_lines = fp.readlines()
            print(f"--- {f_path} around {ln} ---")
            print("".join(all_lines[max(0, ln-25):min(len(all_lines), ln+35)]))
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
