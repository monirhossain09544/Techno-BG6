import paramiko

HOST = '${BG6_SERVER_IP}'
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

script = r'''#!/bin/bash
set -e
cd /nvme0n1-disk/infinity_x

AVBTOOL="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/avbtool"
KEY="/nvme0n1-disk/shunno_os/build/make/target/product/gsi/testkey_rsa2048.pem"

set_selinux() {
    local ctx="$1"
    shift
    python3 - "$ctx" "$@" << 'PYEOF'
import sys, os
ctx = sys.argv[1].encode('utf-8') + b'\x00'
for target in sys.argv[2:]:
    os.setxattr(target, "security.selinux", ctx, follow_symlinks=False)
PYEOF
}

mountpoint -q mnt_rw || mount -o rw,loop infinity_x_bg6_ready.img mnt_rw

echo "=== CHECK EXISTING SELINUX XATTR FORMAT ==="
python3 -c 'import os; print(repr(os.getxattr("mnt_rw/system/bin/sh", "security.selinux")))'

echo "=== 3. PATCH init_fixed AND INSTALL TO /system/bin/init ==="
cp init_fixed /tmp/init_bg6_patched
python3 - << 'PYEOF'
with open('/tmp/init_bg6_patched', 'r+b') as f:
    data = f.read()
    target = bytes.fromhex('35008052')
    replacement = bytes.fromhex('f5031f2a') # mov w21, wzr (permissive)
    actual = data[0x116bc0:0x116bc4]
    print(f"Bytes at 0x116bc0: {actual.hex()}")
    assert actual == target, f"Unexpected bytes at 0x116bc0: {actual.hex()}"
    f.seek(0x116bc0)
    f.write(replacement)
print("Successfully patched init_fixed at 0x116bc0 to permissive!")
PYEOF

cp /tmp/init_bg6_patched mnt_rw/system/bin/init
chown 0:2000 mnt_rw/system/bin/init
chmod 0755 mnt_rw/system/bin/init
set_selinux "u:object_r:init_exec:s0" mnt_rw/system/bin/init

echo "=== 4. FIX SELINUX CIL & CONTEXTS FOR KERNEL 5.15.149 & TECNO-BG6 VENDOR ==="
grep -v "(nlmsg " mnt_rw/system/etc/selinux/plat_sepolicy.cil | grep -v "functionfs_seclabel" | grep -v "tranphone_service" | grep -v "keystore_diagnostics_prop (property_service" | grep -v "keystore_crash_prop (property_service" > /tmp/plat_sepolicy.cil.new
cat >> /tmp/plat_sepolicy.cil.new << 'CILEOF'
(type tranphone_service)
(roletype object_r tranphone_service)
(typeattributeset service_manager_type (tranphone_service))
(allow init keystore_diagnostics_prop (property_service (set)))
(allow keystore keystore_crash_prop (property_service (set)))
CILEOF
cp /tmp/plat_sepolicy.cil.new mnt_rw/system/etc/selinux/plat_sepolicy.cil
chown 0:0 mnt_rw/system/etc/selinux/plat_sepolicy.cil
chmod 0644 mnt_rw/system/etc/selinux/plat_sepolicy.cil
set_selinux "u:object_r:sepolicy_file:s0" mnt_rw/system/etc/selinux/plat_sepolicy.cil

if ! grep -q "tranphone_service_33_0" mnt_rw/system/etc/selinux/mapping/33.0.cil; then
    cat >> mnt_rw/system/etc/selinux/mapping/33.0.cil << 'MAPEOF'
(expandtypeattribute (tranphone_service_33_0) true)
(typeattributeset tranphone_service_33_0 (tranphone_service))
MAPEOF
    chown 0:0 mnt_rw/system/etc/selinux/mapping/33.0.cil
    chmod 0644 mnt_rw/system/etc/selinux/mapping/33.0.cil
    set_selinux "u:object_r:sepolicy_file:s0" mnt_rw/system/etc/selinux/mapping/33.0.cil
fi

python3 - << 'PYEOF'
VND = "/nvme0n1-disk/hios14_rom/bg6_vendor_selinux"

def get_keys(path):
    keys = set()
    with open(path, 'r', encoding='utf-8', errors='ignore') as f:
        for line in f:
            s = line.strip()
            if not s or s.startswith('#'): continue
            keys.add(s.split()[0])
    return keys

vnd_props = get_keys(f"{VND}/vendor_property_contexts")
vnd_hw = get_keys(f"{VND}/vendor_hwservice_contexts")

seen_props = set(vnd_props)
for p in [
    "mnt_rw/system/etc/selinux/plat_property_contexts",
    "mnt_rw/system/system_ext/etc/selinux/system_ext_property_contexts",
    "mnt_rw/system/product/etc/selinux/product_property_contexts"
]:
    out = []
    with open(p, 'r', encoding='utf-8', errors='ignore') as f:
        for line in f:
            s = line.strip()
            if not s or s.startswith('#'):
                out.append(line)
                continue
            k = s.split()[0]
            if k in seen_props:
                print(f"Removing duplicate prop '{k}' from {p}")
                continue
            seen_props.add(k)
            out.append(line)
    with open(p, 'w', encoding='utf-8') as f:
        f.writelines(out)

seen_hw = set(vnd_hw)
for p in [
    "mnt_rw/system/etc/selinux/plat_hwservice_contexts",
    "mnt_rw/system/system_ext/etc/selinux/system_ext_hwservice_contexts",
    "mnt_rw/system/product/etc/selinux/product_hwservice_contexts"
]:
    out = []
    with open(p, 'r', encoding='utf-8', errors='ignore') as f:
        for line in f:
            s = line.strip()
            if not s or s.startswith('#'):
                out.append(line)
                continue
            k = s.split()[0]
            if k in seen_hw:
                print(f"Removing duplicate hwservice '{k}' from {p}")
                continue
            seen_hw.add(k)
            out.append(line)
    with open(p, 'w', encoding='utf-8') as f:
        f.writelines(out)
PYEOF

for f in mnt_rw/system/etc/selinux/*_contexts mnt_rw/system/system_ext/etc/selinux/*_contexts mnt_rw/system/product/etc/selinux/*_contexts; do
    if [ -f "$f" ]; then
        chown 0:0 "$f"
        chmod 0644 "$f"
    fi
done
set_selinux "u:object_r:property_contexts_file:s0" \
    mnt_rw/system/etc/selinux/plat_property_contexts \
    mnt_rw/system/system_ext/etc/selinux/system_ext_property_contexts \
    mnt_rw/system/product/etc/selinux/product_property_contexts
set_selinux "u:object_r:hwservice_contexts_file:s0" \
    mnt_rw/system/etc/selinux/plat_hwservice_contexts \
    mnt_rw/system/system_ext/etc/selinux/system_ext_hwservice_contexts \
    mnt_rw/system/product/etc/selinux/product_hwservice_contexts

cat mnt_rw/system/etc/selinux/plat_sepolicy.cil mnt_rw/system/etc/selinux/mapping/*.cil | sha256sum | awk '{print $1}' > mnt_rw/system/etc/selinux/plat_sepolicy_and_mapping.sha256
chown 0:0 mnt_rw/system/etc/selinux/plat_sepolicy_and_mapping.sha256
chmod 0644 mnt_rw/system/etc/selinux/plat_sepolicy_and_mapping.sha256
set_selinux "u:object_r:system_file:s0" mnt_rw/system/etc/selinux/plat_sepolicy_and_mapping.sha256

echo "=== 5. TEST SECILC AND ALL 4 CHECKFC CHECKS ==="
SECILC="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/secilc"
CHECKFC="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/checkfc"
VND="/nvme0n1-disk/hios14_rom/bg6_vendor_selinux"

$SECILC \
  mnt_rw/system/etc/selinux/plat_sepolicy.cil \
  mnt_rw/system/etc/selinux/mapping/33.0.cil \
  mnt_rw/system/etc/selinux/mapping/33.0.compat.cil \
  mnt_rw/system/system_ext/etc/selinux/system_ext_sepolicy.cil \
  mnt_rw/system/system_ext/etc/selinux/mapping/33.0.cil \
  mnt_rw/system/product/etc/selinux/product_sepolicy.cil \
  mnt_rw/system/product/etc/selinux/mapping/33.0.cil \
  $VND/plat_pub_versioned.cil \
  $VND/vendor_sepolicy.cil \
  -m -M true -G -N -c 30 -o /tmp/verified_infinity_sepolicy -f /dev/null
echo "SECILC_100_PERCENT_PASS"

cat mnt_rw/system/etc/selinux/plat_file_contexts \
    mnt_rw/system/system_ext/etc/selinux/system_ext_file_contexts \
    mnt_rw/system/product/etc/selinux/product_file_contexts \
    $VND/vendor_file_contexts > /tmp/v_fc
$CHECKFC /tmp/verified_infinity_sepolicy /tmp/v_fc
echo "CHECKFC_FILE_100_PERCENT_PASS"

cat mnt_rw/system/etc/selinux/plat_service_contexts \
    mnt_rw/system/system_ext/etc/selinux/system_ext_service_contexts \
    mnt_rw/system/product/etc/selinux/product_service_contexts \
    $VND/vendor_service_contexts > /tmp/v_sc
$CHECKFC -s /tmp/verified_infinity_sepolicy /tmp/v_sc
echo "CHECKFC_SERVICE_100_PERCENT_PASS"

cat mnt_rw/system/etc/selinux/plat_hwservice_contexts \
    mnt_rw/system/system_ext/etc/selinux/system_ext_hwservice_contexts \
    mnt_rw/system/product/etc/selinux/product_hwservice_contexts \
    $VND/vendor_hwservice_contexts > /tmp/v_hwsc
$CHECKFC -l /tmp/verified_infinity_sepolicy /tmp/v_hwsc
echo "CHECKFC_HWSERVICE_100_PERCENT_PASS"

cat mnt_rw/system/etc/selinux/plat_property_contexts \
    mnt_rw/system/system_ext/etc/selinux/system_ext_property_contexts \
    mnt_rw/system/product/etc/selinux/product_property_contexts \
    $VND/vendor_property_contexts > /tmp/v_pc
$CHECKFC -p /tmp/verified_infinity_sepolicy /tmp/v_pc
echo "CHECKFC_PROPERTY_100_PERCENT_PASS"

echo "=== 6. ADD TECNO-BG6 HARDWARE CONFIGS (60Hz LOCK, IPV4 APNS, FUSE BPF OVERRIDE, KEYSTORE UNBLOCK) ==="
if ! grep -q "setprop keystore.module_hash.sent true" mnt_rw/system/etc/init/hw/init.rc; then
    sed -i 's/wait_for_prop keystore.module_hash.sent true/setprop keystore.module_hash.sent true\n    wait_for_prop keystore.module_hash.sent true/' mnt_rw/system/etc/init/hw/init.rc
    chown 0:0 mnt_rw/system/etc/init/hw/init.rc
    chmod 0644 mnt_rw/system/etc/init/hw/init.rc
    set_selinux "u:object_r:system_file:s0" mnt_rw/system/etc/init/hw/init.rc
fi

cat > mnt_rw/system/etc/init/init.bg6.rc << 'RCEOF'
on early-init
    setprop persist.vendor.hwc.display.modeid 0

on init
    setprop persist.vendor.hwc.display.modeid 0

on post-fs
    setprop persist.vendor.hwc.display.modeid 0
    setprop persist.sys.fuse.bpf.override false

on boot
    setprop persist.vendor.hwc.display.modeid 0

on property:sys.boot_completed=1
    setprop persist.vendor.hwc.display.modeid 0
    write /proc/sys/net/ipv6/conf/seth_lte0/accept_ra 0
    write /proc/sys/net/ipv6/conf/seth_lte1/accept_ra 0
    write /proc/sys/net/ipv6/conf/seth_lte2/accept_ra 0
    write /proc/sys/net/ipv6/conf/seth_lte3/accept_ra 0
RCEOF
chown 0:0 mnt_rw/system/etc/init/init.bg6.rc
chmod 0644 mnt_rw/system/etc/init/init.bg6.rc
set_selinux "u:object_r:system_file:s0" mnt_rw/system/etc/init/init.bg6.rc

if ! grep -q "persist.vendor.hwc.display.modeid" mnt_rw/system/build.prop; then
    cat >> mnt_rw/system/build.prop << 'PROPEOF'

# TECNO-BG6 Hardware & Display Optimizations
persist.vendor.hwc.display.modeid=0
persist.sys.fuse.bpf.override=false
ro.surface_flinger.use_content_detection_for_refresh_rate=false
PROPEOF
    chown 0:0 mnt_rw/system/build.prop
    chmod 0600 mnt_rw/system/build.prop
    set_selinux "u:object_r:system_file:s0" mnt_rw/system/build.prop
fi

cp /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/etc/apns-conf.xml mnt_rw/system/product/etc/apns-conf.xml
chown 0:0 mnt_rw/system/product/etc/apns-conf.xml
chmod 0644 mnt_rw/system/product/etc/apns-conf.xml
set_selinux "u:object_r:system_file:s0" mnt_rw/system/product/etc/apns-conf.xml

sync
df -h mnt_rw
umount mnt_rw

echo "=== 7. SHRINK EXT4 AND SIGN WITH AVBTOOL (q-gsi.avbpubkey) ==="
e2fsck -fy infinity_x_bg6_ready.img >/dev/null 2>&1 || true
resize2fs -f infinity_x_bg6_ready.img 2950M
e2fsck -fy infinity_x_bg6_ready.img >/dev/null 2>&1 || true
truncate -s 3020M infinity_x_bg6_ready.img

$AVBTOOL add_hashtree_footer \
    --image infinity_x_bg6_ready.img \
    --partition_name system \
    --hash_algorithm sha256 \
    --key $KEY \
    --algorithm SHA256_RSA2048

$AVBTOOL verify_image --image infinity_x_bg6_ready.img --key $KEY
$AVBTOOL info_image --image infinity_x_bg6_ready.img
ls -lh infinity_x_bg6_ready.img
echo "=== ALL_INFINITY_X_BUILD_STEPS_COMPLETE ==="
'''

sftp = ssh.open_sftp()
with sftp.file('/tmp/build_infinity_x_bg6_part2.sh', 'w') as f:
    f.write(script)
sftp.close()

cmd = f"echo '{PASS}' | sudo -S bash /tmp/build_infinity_x_bg6_part2.sh"
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=600)
print(stdout.read().decode('utf-8', errors='replace'))
print("ERR:", stderr.read().decode('utf-8', errors='replace'))
ssh.close()
