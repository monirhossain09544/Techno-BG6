import hashlib
import lzma
import os
import shutil
import struct
import time
import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

old_local = r"C:\Users\Monir\.gemini\antigravity\scratch\sunno_os\sunno_system.img"
new_local = r"D:\sunno_system_clean.img"
BLK = 16384

t0 = time.time()
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

print("1. Streaming compressed delta from server (72-core xz -T72) -> D:\\sunno_system_clean.img...")
stdin, stdout, stderr = ssh.exec_command("python3 /tmp/gen_delta.py | xz -T72 -3 -c")
decomp = lzma.LZMADecompressor()

buf = bytearray()
EOF_BUF = False

def read_exact(n):
    global buf, EOF_BUF
    while len(buf) < n and not EOF_BUF:
        chunk = stdout.read(262144)
        if not chunk:
            EOF_BUF = True
            tail = decomp.flush()
            if tail:
                buf.extend(tail)
            break
        d = decomp.decompress(chunk)
        if d:
            buf.extend(d)
    res = bytes(buf[:n])
    del buf[:n]
    return res

reused = 0
downloaded = 0
local_sha = hashlib.sha256()
last_p = time.time()

with open(old_local, "rb") as old_f, open(new_local, "wb") as new_f:
    while True:
        tag_b = read_exact(4)
        if len(tag_b) < 4:
            raise RuntimeError("Unexpected EOF in delta stream")
        tag, = struct.unpack("<I", tag_b)
        if tag == 0xFFFFFFFE:
            expected_sha = read_exact(32)
            break
        elif tag == 0xFFFFFFFF:
            blk = read_exact(BLK)
            new_f.write(blk)
            local_sha.update(blk)
            downloaded += 1
        else:
            old_f.seek(tag * BLK)
            blk = old_f.read(BLK)
            new_f.write(blk)
            local_sha.update(blk)
            reused += 1
        total_blks = reused + downloaded
        if time.time() - last_p >= 5.0:
            mb_done = total_blks * BLK / 1048576
            print(f"[{time.time()-t0:.1f}s] Reconstructed {mb_done:.1f} / 2385.9 MB (reused={reused}, new={downloaded})")
            last_p = time.time()

ssh.close()
actual_sha = local_sha.hexdigest()
exp_sha_hex = expected_sha.hex()
print(f"2. Done in {time.time()-t0:.1f}s! Reused 16KB blocks: {reused}, Downloaded new 16KB blocks: {downloaded}")
print(f"   Server SHA256: {exp_sha_hex}")
print(f"   Local  SHA256: {actual_sha}")
assert actual_sha == exp_sha_hex, "SHA256 MISMATCH!"
os.remove(old_local)
shutil.move(new_local, old_local)
print(f"3. Verified 100% bit-for-bit identical SHA256 and saved to {old_local} ({os.path.getsize(old_local)} bytes)!")
