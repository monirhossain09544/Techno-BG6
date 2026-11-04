import subprocess, sys, paramiko

sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
_, so, se = ssh.exec_command(
    "echo '${BG6_SERVER_PASS}' | sudo -S bash -c '"
    "chown administrator:administrator /nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img && "
    "cp -f /nvme0n1-disk/infinity_x/smartcaller_v6_work/SmartCaller_V6_A16.apk /nvme0n1-disk/shunno_os/vendor/transsion/bg6_suite/prebuilt/SmartCaller.apk && "
    "chown administrator:administrator /nvme0n1-disk/shunno_os/vendor/transsion/bg6_suite/prebuilt/SmartCaller.apk && "
    "python3 /nvme0n1-disk/shunno_os/external/avb/avbtool.py info_image --image /nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img | head -n 20'",
    timeout=60
)
print(so.read().decode("utf-8", errors="replace"))
ssh.close()

subprocess.check_call([sys.executable, r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\turbo_sync_and_super.py"])
