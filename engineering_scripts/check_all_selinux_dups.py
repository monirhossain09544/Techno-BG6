import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
cd /nvme0n1-disk/hios14_rom
python3 -c '
def find_dups(name, plat_files, vend_file):
    vend_map = {}
    for line in open(vend_file):
        s = line.strip()
        if not s or s.startswith("#"): continue
        parts = s.split()
        vend_map[parts[0]] = parts[-1]
    print(f"=== {name} ===")
    for pf in plat_files:
        for line in open(pf):
            s = line.strip()
            if not s or s.startswith("#"): continue
            parts = s.split()
            k, v = parts[0], parts[-1]
            if k in vend_map:
                print(f"  DUP in {pf}: {k} -> plat={v} vs vend={vend_map[k]}")

find_dups("file_contexts", ["merged_root/system/etc/selinux/plat_file_contexts", "merged_root/system/system_ext/etc/selinux/system_ext_file_contexts"], "bg6_vendor_selinux/vendor_file_contexts")
find_dups("property_contexts", ["merged_root/system/etc/selinux/plat_property_contexts", "merged_root/system/system_ext/etc/selinux/system_ext_property_contexts"], "bg6_vendor_selinux/vendor_property_contexts")
find_dups("service_contexts", ["merged_root/system/etc/selinux/plat_service_contexts", "merged_root/system/system_ext/etc/selinux/system_ext_service_contexts"], "bg6_vendor_selinux/vendor_service_contexts")
find_dups("hwservice_contexts", ["merged_root/system/etc/selinux/plat_hwservice_contexts", "merged_root/system/system_ext/etc/selinux/system_ext_hwservice_contexts"], "bg6_vendor_selinux/vendor_hwservice_contexts")
'
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
