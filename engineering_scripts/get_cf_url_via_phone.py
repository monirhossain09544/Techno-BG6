import subprocess
import time
import paramiko

subprocess.run(["adb", "shell", "su -c 'svc data enable; svc wifi disable; sleep 3'"], check=True)
subprocess.run(["adb", "forward", "tcp:2222", "tcp:2222"], check=True)
proc = subprocess.Popen(["adb", "shell", "su -c 'toybox nc -s 127.0.0.1 -p 2222 -l toybox nc ${BG6_SERVER_IP} 22'"])
time.sleep(1.5)

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("127.0.0.1", port=2222, username="administrator", password="${BG6_SERVER_PASS}", timeout=20)

with open(r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\run_cf.sh", "rb") as f:
    data = f.read().replace(b"\r\n", b"\n")
sftp = ssh.open_sftp()
with sftp.open("/tmp/run_cf.sh", "wb") as rf:
    rf.write(data)
sftp.close()

_, stdout, stderr = ssh.exec_command("echo '${BG6_SERVER_PASS}' | sudo -S /bin/bash /tmp/run_cf.sh")
print(stdout.read().decode("utf-8", "replace"))
print(stderr.read().decode("utf-8", "replace"))
ssh.close()
proc.terminate()

subprocess.run(["adb", "shell", "su -c 'svc wifi enable'"], check=True)
