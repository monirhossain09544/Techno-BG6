import subprocess
import time
import paramiko

# 1. Temporarily enable 4G on phone for the 5-second SSH control command
subprocess.run(["adb", "shell", "su -c 'svc data enable; svc wifi disable; sleep 3'"], check=True)
subprocess.run(["adb", "forward", "tcp:2222", "tcp:2222"], check=True)
proc = subprocess.Popen(["adb", "shell", "su -c 'toybox nc -s 127.0.0.1 -p 2222 -l toybox nc ${BG6_SERVER_IP} 22'"])
time.sleep(1.5)

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("127.0.0.1", port=2222, username="administrator", password="${BG6_SERVER_PASS}", timeout=20)

cmd = """
set -e
if [ ! -f /usr/local/bin/cloudflared ]; then
    curl -sL https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 -o /usr/local/bin/cloudflared
    chmod +x /usr/local/bin/cloudflared
fi
pkill -f "cloudflared tunnel" 2>/dev/null || true
nohup /usr/local/bin/cloudflared tunnel --url http://127.0.0.1:8080 > /tmp/cf_tunnel.log 2>&1 < /dev/null &
for i in {1..15}; do
    sleep 1
    if grep -q "trycloudflare.com" /tmp/cf_tunnel.log; then
        grep -o "https://[a-zA-Z0-9.-]*\\.trycloudflare\\.com" /tmp/cf_tunnel.log | head -n 1
        break
    fi
done
"""

_, stdout, stderr = ssh.exec_command(f"echo '${BG6_SERVER_PASS}' | sudo -S bash -c '{cmd}'")
print("STDOUT:", stdout.read().decode("utf-8", "replace"))
print("STDERR:", stderr.read().decode("utf-8", "replace"))
ssh.close()
proc.terminate()

# Re-enable phone Wi-Fi immediately
subprocess.run(["adb", "shell", "su -c 'svc wifi enable'"], check=True)
