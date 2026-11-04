import hashlib
import os
import shutil
import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

old_local = r"C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\sunno_system.img"
new_local = r"D:\sunno_v2_system.img"
remote_img = "/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system.img"

cur_size = os.path.getsize(new_local)
# Align back to 16KB boundary just in case
aligned_size = (cur_size // 16384) * 16384
print(f"Current D:\\sunno_v2_system.img size: {cur_size} bytes (aligned: {aligned_size})")

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

sftp = ssh.open_sftp()
remote_size = sftp.stat(remote_img).st_size
print(f"Remote system.img size: {remote_size} bytes (remaining to fetch: {remote_size - aligned_size} bytes)")

with sftp.open(remote_img, "rb") as rf, open(new_local, "r+b") as lf:
    lf.seek(aligned_size)
    rf.seek(aligned_size)
    rem = rf.read(remote_size - aligned_size)
    lf.write(rem)
    lf.truncate(remote_size)
sftp.close()

print("Computing remote and local SHA256 to verify 100% bit-for-bit integrity...")
_, stdout, _ = ssh.exec_command(f"sha256sum {remote_img}")
remote_sha = stdout.read().decode().split()[0].strip()
ssh.close()

h = hashlib.sha256()
with open(new_local, "rb") as f:
    while True:
        b = f.read(4 * 1024 * 1024)
        if not b:
            break
        h.update(b)
local_sha = h.hexdigest()

print("Remote SHA256:", remote_sha)
print("Local  SHA256:", local_sha)
assert remote_sha == local_sha, "SHA256 MISMATCH!"

shutil.copy2(new_local, old_local)
print(f"SUCCESS! 100% bit-for-bit verified Sunno OS 2.0 system.img ready at {new_local} and {old_local}!")
