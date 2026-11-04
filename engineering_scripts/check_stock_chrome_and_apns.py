import os
import paramiko

print("=== Checking local D: and C: for Chrome / super.img ===")
for root_dir in [r"D:\\", r"C:\Users\Monir\.gemini\antigravity\scratch"]:
    if os.path.exists(root_dir):
        for root, dirs, files in os.walk(root_dir):
            for f in files:
                if any(k in f.lower() for k in ["chrome", "trichrome", "apns-conf", "product_a", "system_a", "super.img"]):
                    p = os.path.join(root, f)
                    try:
                        print(f"{p} ({os.path.getsize(p)} bytes)")
                    except Exception:
                        pass

print("=== Checking ${BG6_SERVER_IP} for Chrome / gapps ===")
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
_, out, _ = ssh.exec_command("find /nvme0n1-disk -iname '*chrome*' -o -iname '*trichrome*' -o -iname '*apns-conf*' 2>/dev/null | grep -v '/out/soong/' | head -n 60")
print(out.read().decode())
ssh.close()
