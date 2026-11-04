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
        dwSize = struct.unpack("<I", entry[0:4])[0]
        szFileID = entry[4:516].decode("utf-16le", errors="ignore").split("\\x00")[0]
        szFileName = entry[516:1028].decode("utf-16le", errors="ignore").split("\\x00")[0]
        # Correct offsets in 2580-byte BinFile:
        # 0..4: dwSize
        # 4..516: szFileID (256 WCHAR)
        # 516..1028: szFileName (256 WCHAR)
        # 1028..1536: szFileVersion (254 WCHAR = 508 bytes)
        # 1536..1560: dwHiFileSize, dwHiDataOffset, dwLoFileSize, nFileFlag, nCheckFlag, dwLoDataOffset
        dwHiFileSize, dwHiDataOffset, dwLoFileSize, nFileFlag, nCheckFlag, dwLoDataOffset = struct.unpack("<IIIIII", entry[1536:1560])
        file_size = (dwHiFileSize << 32) | dwLoFileSize
        data_offset = (dwHiDataOffset << 32) | dwLoDataOffset
        if file_size > 0 and szFileName:
            print(f"  [{i}] ID={szFileID} Name={szFileName} Size={file_size:,} Offset={data_offset}")
            if any(k in szFileName.lower() for k in ("super", "boot", "xml")):
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
                print(f"    -> Extracted {out_f} (magic={magic.hex()})")
"""

sftp = ssh.open_sftp()
with sftp.file("/nvme0n1-disk/hios14_rom/unpack_pac_fixed.py", "w") as f:
    f.write(remote_py)
sftp.close()
ssh.close()
print("Uploaded unpack_pac_fixed.py")
