import paramiko

REMOTE_PY = r'''import subprocess

AAPT2 = "/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/aapt2"
apks = [
    "/nvme0n1-disk/hios14_rom/kl4_root/system_ext/priv-app/SmartCaller/SmartCaller.apk",
    "/nvme0n1-disk/hios14_rom/kl6_root/system_ext/priv-app/SmartCaller/SmartCaller.apk",
    "/nvme0n1-disk/hios14_rom/bg6_extras/TranssionNote.apk",
    "/nvme0n1-disk/hios14_rom/kl4_root/product/priv-app/FilesGoogle/FilesGoogle.apk",
]

for apk in apks:
    print("========================================")
    print("APK:", apk)
    out = subprocess.check_output(f"{AAPT2} dump badging {apk} 2>/dev/null || true", shell=True).decode(errors="ignore")
    for line in out.splitlines():
        if any(line.startswith(p) for p in ["package:", "sdkVersion:", "targetSdkVersion:", "uses-library", "launchable-activity:", "native-code:", "shared-user-id"]):
            print(" ", line)
'''

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
stdin, stdout, stderr = c.exec_command("python3 -", timeout=60)
stdin.write(REMOTE_PY)
stdin.channel.shutdown_write()
print(stdout.read().decode())
c.close()
