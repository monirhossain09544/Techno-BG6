import paramiko
import zlib
import os
import time

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"
remote_img = "/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system.img"
local_img = r"C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\sunno_system.img"

t0 = time.time()
for old_f in [local_img, local_img + ".tmp", local_img + ".xz"]:
    if os.path.exists(old_f):
        os.remove(old_f)

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

stdin, stdout, stderr = ssh.exec_command(f"gzip -1 -c {remote_img}")
decomp = zlib.decompressobj(16 + zlib.MAX_WBITS)

total_in = 0
total_out = 0
with open(local_img, "wb") as f:
    while True:
        chunk = stdout.read(256 * 1024)
        if not chunk:
            break
        total_in += len(chunk)
        data = decomp.decompress(chunk)
        if data:
            f.write(data)
            total_out += len(data)
    tail = decomp.flush()
    if tail:
        f.write(tail)
        total_out += len(tail)

ssh.close()
print(f"Downloaded and decompressed {total_out} bytes (compressed {total_in} bytes) in {time.time() - t0:.1f}s -> {local_img}")
