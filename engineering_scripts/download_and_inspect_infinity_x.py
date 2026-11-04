import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
set -e
mkdir -p /nvme0n1-disk/infinity_x
cd /nvme0n1-disk/infinity_x
curl -L -o init_fixed "https://github.com/Doze-off/ProjectInfinity-X_gsi/releases/download/2026-09-20/init"
curl -L -o infinity_x_3.12_gapps.img.xz "https://github.com/Doze-off/ProjectInfinity-X_gsi/releases/download/2026-09-20/Infinity-X-3.12-GSI_treble_arm64-ab-GAPPS-Official-20260920.img.xz"
ls -lh /nvme0n1-disk/infinity_x
xz -d -T72 -k -f infinity_x_3.12_gapps.img.xz
ls -lh /nvme0n1-disk/infinity_x/infinity_x_3.12_gapps.img
file /nvme0n1-disk/infinity_x/infinity_x_3.12_gapps.img
"""
_, stdout, stderr = ssh.exec_command(cmd)
for line in stdout:
    print(line, end="", flush=True)
print(stderr.read().decode(), flush=True)
ssh.close()
