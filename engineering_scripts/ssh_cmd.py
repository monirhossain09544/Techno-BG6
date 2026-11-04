import sys
import os
import paramiko

sys.stdout.reconfigure(encoding='utf-8', errors='replace')
sys.stderr.reconfigure(encoding='utf-8', errors='replace')

HOST = '${BG6_SERVER_IP}'
PORT = 22
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, port=PORT, username=USER, password=PASS, timeout=20)

if len(sys.argv) >= 3 and sys.argv[1] == '--script':
    local_path = sys.argv[2]
    data = open(local_path, 'rb').read().replace(b'\r\n', b'\n')
    sftp = ssh.open_sftp()
    remote_path = '/tmp/remote_run.sh'
    with sftp.file(remote_path, 'wb') as f:
        f.write(data)
    sftp.chmod(remote_path, 0o755)
    sftp.close()
    cmd = '/bin/bash /tmp/remote_run.sh'
else:
    cmd = ' '.join(sys.argv[1:]) if len(sys.argv) > 1 else 'lsblk; df -h'

full_cmd = f"echo '{PASS}' | sudo -S -p '' bash -c { repr(cmd) }"
stdin, stdout, stderr = ssh.exec_command(full_cmd, get_pty=False)

while True:
    chunk = stdout.channel.recv(4096)
    if not chunk:
        break
    print(chunk.decode('utf-8', errors='replace'), end="", flush=True)

err = stderr.read().decode('utf-8', errors='replace')
if err.strip():
    print(err, file=sys.stderr, end="", flush=True)

exit_status = stdout.channel.recv_exit_status()
ssh.close()
sys.exit(exit_status)
