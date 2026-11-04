import os
import struct
import sys
import paramiko

sys.path.insert(0, r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch")
from extract_from_erofs_product import ErofsReader
from extract_stock_chrome_now import extract_compressed_file

OUT_DIR = r"D:\HiOS_UI_Suite\bg6_vendor_selinux"
os.makedirs(OUT_DIR, exist_ok=True)

def read_erofs_file(reader, ino):
    if ino["datalayout"] in (0, 2):
        return reader.read_uncompressed_data(ino)
    else:
        return extract_compressed_file(reader, ino)

with open(r"D:\Tecno_BG6_Full_ROM_Backup\super.img", "rb") as f:
    f.seek(0x3000)
    hdr = f.read(256)
    magic, maj, min_v, hdr_sz, hdr_sha, tables_sz, tables_sha = struct.unpack("<IHHI32sI32s", hdr[:80])
    p_off, p_num, p_esz = struct.unpack("<III", hdr[80:92])
    e_off, e_num, e_esz = struct.unpack("<III", hdr[92:104])
    tables = f.read(tables_sz)

    for i in range(p_num):
        p = tables[p_off + i*p_esz : p_off + (i+1)*p_esz]
        name, attr, first_ext, num_ext, grp_idx = struct.unpack("<36sIIII", p[:52])
        pname = name.rstrip(b"\x00").decode()
        if pname == "vendor_a":
            exts = []
            for ei in range(first_ext, first_ext + num_ext):
                ex = tables[e_off + ei*e_esz : e_off + (ei+1)*e_esz]
                num_sec, t_type, t_data, t_src = struct.unpack("<QIQI", ex[:24])
                exts.append((t_data * 512 if t_type == 0 else 0, num_sec * 512))
            reader = ErofsReader(f, exts)
            ino = reader.lookup_path("/etc/selinux")
            for name, d_nid, d_type in reader.list_dir(ino["nid"]):
                if d_type == 1:
                    c_ino = reader.get_inode(d_nid)
                    data = read_erofs_file(reader, c_ino)
                    with open(os.path.join(OUT_DIR, name), "wb") as wf:
                        wf.write(data)
                    print(f"Extracted vendor_a/etc/selinux/{name} ({len(data)} bytes)")

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)
sftp = ssh.open_sftp()
try:
    sftp.mkdir("/nvme0n1-disk/hios14_rom/bg6_vendor_selinux")
except:
    pass
for fn in os.listdir(OUT_DIR):
    sftp.put(os.path.join(OUT_DIR, fn), f"/nvme0n1-disk/hios14_rom/bg6_vendor_selinux/{fn}")
sftp.close()

cmd = """
cd /nvme0n1-disk/hios14_rom
SECILC=/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/secilc
echo "=== Testing secilc with KL4 (HiOS 14) + BG6 vendor_sepolicy ==="
$SECILC -m -M true -G -N -c 30 \
  mnt_kl4_sys/system/etc/selinux/plat_sepolicy.cil \
  mnt_kl4_sys/system/etc/selinux/mapping/33.0.cil \
  mnt_kl4_ext/etc/selinux/system_ext_sepolicy.cil \
  mnt_kl4_ext/etc/selinux/mapping/33.0.cil \
  mnt_kl4_prod/etc/selinux/product_sepolicy.cil \
  mnt_kl4_prod/etc/selinux/mapping/33.0.cil \
  bg6_vendor_selinux/plat_pub_versioned.cil \
  bg6_vendor_selinux/vendor_sepolicy.cil \
  -o /tmp/test_sepolicy -f /dev/null 2>&1 && echo "SECILC_SUCCESS!"
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
