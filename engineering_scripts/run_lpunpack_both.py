import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

remote_py = """import struct
import os
import subprocess

pac_path = "/nvme0n1-disk/hios14_rom/kl4_extracted/Tecno_Spark_Go_1_KL4_PJ_V175_SPD_by_TecnoFirmware.Com/Firmware/KL4-F201JKLW-UGo-OPPJ-PJ-240814V175.pac"
out_dir = "/nvme0n1-disk/hios14_rom/kl4_pac_files"
os.makedirs(out_dir, exist_ok=True)

with open(pac_path, "rb") as f:
    hdr = f.read(2124)
    nFileCount, dwFileOffset = struct.unpack("<II", hdr[1076:1084])
    print(f"PAC FileCount={nFileCount}, FileTableOffset={dwFileOffset}")
    f.seek(dwFileOffset)
    for i in range(nFileCount):
        entry = f.read(2580)
        if len(entry) < 2580:
            break
        szFileID = entry[4:516].decode("utf-16le", errors="ignore").split("\\x00")[0]
        szFileName = entry[516:1028].decode("utf-16le", errors="ignore").split("\\x00")[0]
        u32s = struct.unpack("<12I", entry[1528:1576])
        dwHiFileSize, dwHiDataOffset, dwLoFileSize, nFileFlag, nCheckFlag, dwLoDataOffset = u32s[1:7]
        file_size = (dwHiFileSize << 32) | dwLoFileSize
        data_offset = (dwHiDataOffset << 32) | dwLoDataOffset
        if file_size > 0 and szFileName:
            print(f"  [{i}] ID={szFileID} Name={szFileName} Size={file_size:,} Offset={data_offset:,}")
            if szFileID in ("Super", "BOOT", "VENDOR_BOOT", "DTBO", "") or "xml" in szFileName.lower():
                out_f = os.path.join(out_dir, szFileName)
                cur = f.tell()
                f.seek(data_offset)
                with open(out_f, "wb") as wf:
                    rem = file_size
                    while rem > 0:
                        chunk = f.read(min(32*1024*1024, rem))
                        if not chunk:
                            break
                        wf.write(chunk)
                        rem -= len(chunk)
                f.seek(cur)
                with open(out_f, "rb") as rf:
                    magic = rf.read(8)
                print(f"    -> Extracted {out_f} (magic={magic.hex()})", flush=True)

simg2img = "/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/simg2img"
for label, spath, pdir in [
    ("KL4", "/nvme0n1-disk/hios14_rom/kl4_pac_files/super.img", "/nvme0n1-disk/hios14_rom/kl4_parts"),
    ("KL6", "/nvme0n1-disk/hios14_rom/kl6_extracted/super.img", "/nvme0n1-disk/hios14_rom/kl6_parts"),
]:
    os.makedirs(pdir, exist_ok=True)
    raw_path = spath + ".raw"
    with open(spath, "rb") as sf:
        magic = struct.unpack("<I", sf.read(4))[0]
    if magic == 0xED26FF3A:
        print(f"[{label}] Converting sparse {spath} -> {raw_path} ...", flush=True)
        subprocess.run([simg2img, spath, raw_path], check=True)
    else:
        raw_path = spath
    with open(raw_path, "rb") as rf:
        rf.seek(0x3000)
        hdr = rf.read(256)
        magic, maj, min_v, hdr_sz, hdr_sha, tables_sz, tables_sha = struct.unpack("<IHHI32sI32s", hdr[:80])
        p_off, p_num, p_esz = struct.unpack("<III", hdr[80:92])
        e_off, e_num, e_esz = struct.unpack("<III", hdr[92:104])
        tables = rf.read(tables_sz)
        print(f"[{label}] LP Metadata: magic=0x{magic:08x}, partitions={p_num}")
        for i in range(p_num):
            p = tables[p_off + i*p_esz : p_off + (i+1)*p_esz]
            name, attr, first_ext, num_ext, grp_idx = struct.unpack("<36sIIII", p[:52])
            pname = name.rstrip(b"\\x00").decode()
            total_bytes = 0
            out_p = os.path.join(pdir, f"{pname}.img")
            if num_ext > 0:
                with open(out_p, "wb") as pwf:
                    for ei in range(first_ext, first_ext + num_ext):
                        ex = tables[e_off + ei*e_esz : e_off + (ei+1)*e_esz]
                        num_sec, t_type, t_data, t_src = struct.unpack("<QIQI", ex[:24])
                        if t_type == 0:
                            rf.seek(t_data * 512)
                            rem = num_sec * 512
                            total_bytes += rem
                            while rem > 0:
                                chunk = rf.read(min(32*1024*1024, rem))
                                pwf.write(chunk)
                                rem -= len(chunk)
                with open(out_p, "rb") as prf:
                    pr_magic = prf.read(4096)
                    erofs_m = struct.unpack("<I", pr_magic[1024:1028])[0] if len(pr_magic) >= 1028 else 0
                    ext4_m = struct.unpack("<H", pr_magic[1080:1082])[0] if len(pr_magic) >= 1082 else 0
                print(f"  [{label}] Unpacked {pname}.img: {total_bytes:,} bytes (erofs=0x{erofs_m:08x}, ext4=0x{ext4_m:04x})", flush=True)
"""

sftp = ssh.open_sftp()
with sftp.file("/nvme0n1-disk/hios14_rom/unpack_pac_fixed.py", "w") as f:
    f.write(remote_py)
sftp.close()

_, stdout, stderr = ssh.exec_command("python3 /nvme0n1-disk/hios14_rom/unpack_pac_fixed.py")
for line in iter(stdout.readline, ""):
    print(line, end="", flush=True)
print(stderr.read().decode())
ssh.close()
