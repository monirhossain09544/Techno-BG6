import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """echo '${BG6_SERVER_PASS}' | sudo -S python3 -c '
import os, subprocess

cd = "/nvme0n1-disk/hios14_rom"
os.chdir(cd)

def dedup_against_vendor(target_file, vendor_file):
    vend_keys = set()
    for line in open(vendor_file):
        s = line.strip()
        if not s or s.startswith("#"): continue
        vend_keys.add(s.split()[0])
    out_lines = []
    removed = []
    for line in open(target_file):
        s = line.strip()
        if s and not s.startswith("#"):
            k = s.split()[0]
            if k in vend_keys:
                removed.append(k)
                continue
        out_lines.append(line)
    with open(target_file, "w") as f:
        f.writelines(out_lines)
    os.setxattr(target_file, "security.selinux", b"u:object_r:system_file:s0", follow_symlinks=False)
    print(f"Cleaned {len(removed)} duplicates from {target_file}: {removed}")

dedup_against_vendor("merged_root/system/system_ext/etc/selinux/system_ext_file_contexts", "bg6_vendor_selinux/vendor_file_contexts")
dedup_against_vendor("merged_root/system/etc/selinux/plat_file_contexts", "bg6_vendor_selinux/vendor_file_contexts")
dedup_against_vendor("merged_root/system/system_ext/etc/selinux/system_ext_property_contexts", "bg6_vendor_selinux/vendor_property_contexts")
dedup_against_vendor("merged_root/system/etc/selinux/plat_property_contexts", "bg6_vendor_selinux/vendor_property_contexts")
dedup_against_vendor("merged_root/system/system_ext/etc/selinux/system_ext_service_contexts", "bg6_vendor_selinux/vendor_service_contexts")
dedup_against_vendor("merged_root/system/etc/selinux/plat_hwservice_contexts", "bg6_vendor_selinux/vendor_hwservice_contexts")
'
cd /nvme0n1-disk/hios14_rom
BIN=/nvme0n1-disk/shunno_os/out/host/linux-x86/bin
cat merged_root/system/etc/selinux/plat_file_contexts \
    merged_root/system/system_ext/etc/selinux/system_ext_file_contexts \
    merged_root/system/product/etc/selinux/product_file_contexts \
    bg6_vendor_selinux/vendor_file_contexts > /tmp/all_file_contexts
$BIN/checkfc /tmp/test_sepolicy /tmp/all_file_contexts 2>&1 && echo "FILE_CONTEXTS_100_PERCENT_PASS!"

cat merged_root/system/etc/selinux/plat_service_contexts \
    merged_root/system/system_ext/etc/selinux/system_ext_service_contexts \
    bg6_vendor_selinux/vendor_service_contexts > /tmp/all_service_contexts
$BIN/checkfc -s /tmp/test_sepolicy /tmp/all_service_contexts 2>&1 && echo "SERVICE_CONTEXTS_100_PERCENT_PASS!"

cat merged_root/system/etc/selinux/plat_hwservice_contexts \
    merged_root/system/system_ext/etc/selinux/system_ext_hwservice_contexts \
    bg6_vendor_selinux/vendor_hwservice_contexts > /tmp/all_hwservice_contexts
$BIN/checkfc -l /tmp/test_sepolicy /tmp/all_hwservice_contexts 2>&1 && echo "HWSERVICE_CONTEXTS_100_PERCENT_PASS!"

$BIN/property_info_checker /tmp/test_sepolicy \
    merged_root/system/etc/selinux/plat_property_contexts \
    merged_root/system/system_ext/etc/selinux/system_ext_property_contexts \
    bg6_vendor_selinux/vendor_property_contexts 2>&1 && echo "PROPERTY_CONTEXTS_100_PERCENT_PASS!"
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
