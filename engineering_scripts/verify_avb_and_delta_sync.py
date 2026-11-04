import os
import hashlib
import paramiko
import struct
import time

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

REMOTE_IMG = "/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img"
LOCAL_IMG = r"D:\infinity_x_bg6_ready.img"
CHUNK_SIZE = 4 * 1024 * 1024  # 4MB

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)

# 1. Finish Step 9 (source tree module) + full avbtool verify_image via system.img symlink
finish_cmd = r"""
set -e
AVBTOOL=/nvme0n1-disk/shunno_os/external/avb/avbtool.py
IMG=/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img
echo '${BG6_SERVER_PASS}' | sudo -S chown administrator:administrator "$IMG"
ln -sf "$IMG" /nvme0n1-disk/infinity_x/system.img
python3 "$AVBTOOL" verify_image \
    --image /nvme0n1-disk/infinity_x/system.img \
    --key /nvme0n1-disk/shunno_os/external/avb/test/data/testkey_rsa2048.pem
rm -f /nvme0n1-disk/infinity_x/system.img

# Step 9: Integrate into AOSP / ROM Source Tree (/nvme0n1-disk/shunno_os/vendor/transsion/bg6_suite)
SRC_MOD=/nvme0n1-disk/shunno_os/vendor/transsion/bg6_suite
echo '${BG6_SERVER_PASS}' | sudo -S mkdir -p "$SRC_MOD/prebuilt"
echo '${BG6_SERVER_PASS}' | sudo -S chown -R administrator:administrator /nvme0n1-disk/shunno_os/vendor/transsion
cp -f /nvme0n1-disk/infinity_x/smartcaller_v6_work/SmartCaller_V6_A16.apk "$SRC_MOD/prebuilt/SmartCaller.apk"
cp -f /nvme0n1-disk/infinity_x/filemanager_work/TranssionFileManager.apk "$SRC_MOD/prebuilt/TranssionFileManager.apk"
cp -f /nvme0n1-disk/hios14_rom/bg6_extras/TranssionNote.apk "$SRC_MOD/prebuilt/TranssionNote.apk"
cp -f /nvme0n1-disk/infinity_x/gnss_app_build/KernelGnssSettings.apk "$SRC_MOD/prebuilt/KernelGnssSettings.apk"
cp -f /nvme0n1-disk/hios14_rom/kl6_root/system_ext/etc/permissions/com.sh.smart.caller.xml "$SRC_MOD/com.sh.smart.caller.xml"

cat > "$SRC_MOD/launcher_documentsui_icon_disable.xml" << 'XMLEOF'
<?xml version="1.0" encoding="utf-8"?>
<config>
  <component-override package="com.android.documentsui">
    <component class="com.android.documentsui.LauncherActivity" enabled="false" />
  </component-override>
</config>
XMLEOF

cat > "$SRC_MOD/Android.bp" << 'BPEOF'
android_app_import {
    name: "SmartCaller",
    apk: "prebuilt/SmartCaller.apk",
    privileged: true,
    system_ext_specific: true,
    presigned: true,
    dex_preopt: { enabled: false },
    overrides: ["Dialer", "Contacts"],
}

android_app_import {
    name: "TranssionFileManager",
    apk: "prebuilt/TranssionFileManager.apk",
    product_specific: true,
    presigned: true,
    dex_preopt: { enabled: false },
}

android_app_import {
    name: "TranssionNote",
    apk: "prebuilt/TranssionNote.apk",
    product_specific: true,
    presigned: true,
    dex_preopt: { enabled: false },
}

android_app_import {
    name: "KernelGnssSettings",
    apk: "prebuilt/KernelGnssSettings.apk",
    presigned: true,
    dex_preopt: { enabled: false },
}
BPEOF

cat > "$SRC_MOD/bg6_suite.mk" << 'MKEOF'
# TECNO BG6 Official App Suite Integration (Deletes Stock Dialer & Contacts, Disables Stock Files Launcher)
PRODUCT_PACKAGES += \
    SmartCaller \
    TranssionFileManager \
    TranssionNote \
    KernelGnssSettings

PRODUCT_COPY_FILES += \
    vendor/transsion/bg6_suite/launcher_documentsui_icon_disable.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/launcher_documentsui_icon_disable.xml \
    vendor/transsion/bg6_suite/com.sh.smart.caller.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.sh.smart.caller.xml
MKEOF
ls -lh "$SRC_MOD/prebuilt/"
echo "AVB_AND_SOURCE_TREE_OK"
"""

stdin, stdout, stderr = ssh.exec_command(finish_cmd, timeout=90)
print(stdout.read().decode("utf-8", errors="replace"))
err_txt = stderr.read().decode("utf-8", errors="replace")
if err_txt.strip():
    print("STDERR:", err_txt)

# 2. Delta-sync changed 4MB chunks to D:\infinity_x_bg6_ready.img
print("Computing remote 4MB chunk hashes...")
stdin, stdout, stderr = ssh.exec_command("python3 /nvme0n1-disk/infinity_x/mock_work/hash_chunks.py", timeout=60)
remote_lines = stdout.read().decode().strip().splitlines()

remote_hashes = {}
for line in remote_lines:
    idx_s, h, length_s = line.split(":")
    remote_hashes[int(idx_s)] = (h, int(length_s))

diff_chunks = []
with open(LOCAL_IMG, "rb") as lf:
    for idx, (rh, rlen) in remote_hashes.items():
        lf.seek(idx * CHUNK_SIZE)
        lbuf = lf.read(CHUNK_SIZE)
        lh = hashlib.md5(lbuf).hexdigest() if lbuf else ""
        if lh != rh:
            diff_chunks.append(idx)

print(f"Changed 4MB chunks to sync: {len(diff_chunks)} ({len(diff_chunks) * 4} MB)")

sftp = ssh.open_sftp()
if diff_chunks:
    with sftp.file(REMOTE_IMG, "rb") as rf, open(LOCAL_IMG, "r+b") as lf:
        # Enable prefetch for high-speed SFTP streaming!
        for i, idx in enumerate(diff_chunks, 1):
            offset = idx * CHUNK_SIZE
            rlen = remote_hashes[idx][1]
            rf.seek(offset)
            data = rf.read(rlen)
            lf.seek(offset)
            lf.write(data)
            if i % 5 == 0 or i == len(diff_chunks):
                print(f"  Synced {i}/{len(diff_chunks)} chunks...", flush=True)
        lf.flush()
sftp.close()

stdin, stdout, stderr = ssh.exec_command(f"md5sum {REMOTE_IMG}", timeout=60)
remote_md5 = stdout.read().decode().split()[0]
ssh.close()

local_md5_hash = hashlib.md5()
with open(LOCAL_IMG, "rb") as lf:
    while True:
        b = lf.read(16 * 1024 * 1024)
        if not b:
            break
        local_md5_hash.update(b)
local_md5 = local_md5_hash.hexdigest()

print(f"Remote MD5: {remote_md5}")
print(f"Local  MD5: {local_md5}")
assert remote_md5 == local_md5, "MD5 MISMATCH!"
print("DELTA_SYNC_100_PERCENT_MATCH!")
