import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """python3 -c '
import struct

def dump_erofs_sb(path):
    with open(path, "rb") as f:
        f.seek(1024)
        sb = f.read(84)
    magic, chksum, feat_compat, blkszbits, ext_slots, root_nid, inos, build_time, build_time_ns, blocks, meta_blkaddr, xattr_blkaddr, uuid, vol_name, feat_incompat = struct.unpack("<IIIBBHQQIIII16s16sI", sb)
    print(f"{path}: magic={hex(magic)} blkszbits={blkszbits} feat_compat={hex(feat_compat)} feat_incompat={hex(feat_incompat)} blocks={blocks}")

dump_erofs_sb("/nvme0n1-disk/hios14_rom/kl4_parts/system_a.img")
dump_erofs_sb("/nvme0n1-disk/hios14_rom/kl4_parts/vendor_a.img")
dump_erofs_sb("/nvme0n1-disk/hios14_rom/hios14_5_system.img")
'"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
