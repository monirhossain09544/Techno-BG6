import paramiko

REMOTE_PY = r'''import subprocess

print("=== kl6_parts ===")
print(subprocess.check_output("ls -lh /nvme0n1-disk/hios14_rom/kl6_parts /nvme0n1-disk/hios14_rom/kl6_extracted 2>/dev/null || true", shell=True).decode())
print("=== kl4_parts ===")
print(subprocess.check_output("ls -lh /nvme0n1-disk/hios14_rom/kl4_parts /nvme0n1-disk/hios14_rom/kl4_pac_files 2>/dev/null || true", shell=True).decode())

AAPT2 = "/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/aapt2"
xml = subprocess.check_output(f"{AAPT2} dump xmltree /nvme0n1-disk/hios14_rom/kl4_root/system_ext/priv-app/SmartCaller/SmartCaller.apk --file AndroidManifest.xml", shell=True).decode(errors="ignore")
print("=== SmartCaller LAUNCHER activities ===")
lines = xml.splitlines()
for i, l in enumerate(lines):
    if "android.intent.category.LAUNCHER" in l:
        start = max(0, i - 25)
        for k in range(start, min(len(lines), i + 5)):
            if any(w in lines[k] for w in ["E: activity", "android:name", "android:label", "LAUNCHER", "MAIN"]):
                print(" ", lines[k].strip())
        print("  ---")
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=60)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
c.close()
