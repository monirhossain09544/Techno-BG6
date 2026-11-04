import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)

remote_script = r"""#!/bin/bash
set -e

AAPT2=/nvme0n1-disk/shunno_os/prebuilts/sdk/tools/linux/bin/aapt2
ZIPALIGN=/nvme0n1-disk/shunno_os/prebuilts/sdk/tools/linux/bin/zipalign
APKSIGNER=$(find /nvme0n1-disk/shunno_os/prebuilts -name apksigner.jar | head -n 1)
APKTOOL=$(which apktool || find /nvme0n1-disk /usr /home -name "apktool*.jar" 2>/dev/null | head -n 1)
AVBTOOL=/nvme0n1-disk/shunno_os/external/avb/avbtool.py
PLAT_PK8=/nvme0n1-disk/shunno_os/build/make/target/product/security/platform.pk8
PLAT_PEM=/nvme0n1-disk/shunno_os/build/make/target/product/security/platform.x509.pem

IMG=/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img
MNT=/tmp/mnt_inf_bake

echo "=== Step 1: Backup original infinity_x_bg6_ready.img header/metadata & strip old AVB footer ==="
# Read original image size (filesystem size before AVB footer)
ORIG_FS_BYTES=$(python3 "$AVBTOOL" info_image --image "$IMG" | awk '/Original image size:/ {print $4}')
echo "Original FS bytes: $ORIG_FS_BYTES"
python3 "$AVBTOOL" erase_footer --image "$IMG" || true
e2fsck -fy "$IMG" || true

mkdir -p "$MNT"
umount "$MNT" 2>/dev/null || true
mount -o rw,loop "$IMG" "$MNT"

echo "=== Step 2: Check DocumentsUI certificate & remove LauncherActivity from DocumentsUI.apk ==="
DOCUI_APK="$MNT/system/priv-app/DocumentsUI/DocumentsUI.apk"
if [ -f "$DOCUI_APK" ]; then
    java -jar "$APKSIGNER" verify --print-certs "$DOCUI_APK" | head -n 4
    CERT_SHA=$(java -jar "$APKSIGNER" verify --print-certs "$DOCUI_APK" | awk '/SHA-256 digest:/ {print $5; exit}')
    echo "DocumentsUI cert SHA-256: $CERT_SHA"
    # c8a2e9bc... is standard AOSP platform key!
    if [ "$CERT_SHA" = "c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8" ]; then
        rm -rf /tmp/docui_patch
        mkdir -p /tmp/docui_patch
        if [[ "$APKTOOL" == *.jar ]]; then
            java -jar "$APKTOOL" d -f -s "$DOCUI_APK" -o /tmp/docui_patch/out
        else
            "$APKTOOL" d -f -s "$DOCUI_APK" -o /tmp/docui_patch/out
        fi
        # Remove the LauncherActivity activity-alias from AndroidManifest.xml so stock Files app does not exist in launcher!
        python3 - << 'PY'
import re
p = "/tmp/docui_patch/out/AndroidManifest.xml"
txt = open(p, "r", encoding="utf-8").read()
new_txt, n = re.subn(
    r'<activity-alias[^>]*android:name="com\.android\.documentsui\.LauncherActivity".*?</activity-alias>',
    '',
    txt,
    flags=re.S
)
print(f"Removed LauncherActivity activity-alias blocks from DocumentsUI AndroidManifest.xml: {n}")
open(p, "w", encoding="utf-8").write(new_txt)
PY
        if [[ "$APKTOOL" == *.jar ]]; then
            java -jar "$APKTOOL" b /tmp/docui_patch/out -o /tmp/docui_patch/unsigned.apk
        else
            "$APKTOOL" b /tmp/docui_patch/out -o /tmp/docui_patch/unsigned.apk
        fi
        "$ZIPALIGN" -f -p 4 /tmp/docui_patch/unsigned.apk /tmp/docui_patch/aligned.apk
        java -jar "$APKSIGNER" sign --key "$PLAT_PK8" --cert "$PLAT_PEM" --out /tmp/docui_patch/DocumentsUI_nolauncher.apk /tmp/docui_patch/aligned.apk
        cp -f /tmp/docui_patch/DocumentsUI_nolauncher.apk "$DOCUI_APK"
        rm -rf "$MNT/system/priv-app/DocumentsUI/oat"
        echo "Patched DocumentsUI.apk (LauncherActivity completely removed from manifest!)"
    fi
fi

# Also write sysconfig override for DocumentsUI launcher component
cat > "$MNT/system/product/etc/sysconfig/launcher_documentsui_icon_disable.xml" << 'XMLEOF'
<?xml version="1.0" encoding="utf-8"?>
<config>
  <component-override package="com.android.documentsui">
    <component class="com.android.documentsui.LauncherActivity" enabled="false" />
    <component class="com.android.documentsui.files.LauncherActivity" enabled="false" />
  </component-override>
  <component-override package="com.google.android.documentsui">
    <component class="com.android.documentsui.LauncherActivity" enabled="false" />
  </component-override>
</config>
XMLEOF

echo "=== Step 3: Completely DELETE stock Infinity-X Dialer & Contacts ==="
rm -rf "$MNT/system/product/priv-app/Dialer"
rm -f  "$MNT/system/product/overlay/Dialer__infinity_gsi__auto_generated_rro_product.apk"
rm -f  "$MNT/system/product/etc/permissions/com.android.dialer.xml"
rm -f  "$MNT/system/product/etc/permissions/privapp_whitelist_com.android.dialer-ext.xml"
rm -rf "$MNT/system/product/priv-app/Contacts"
rm -f  "$MNT/system/product/etc/permissions/com.android.contacts.xml"

# Clean com.android.dialer & com.android.contacts from preinstalled-packages XMLs so PackageManager doesn't expect them
python3 - << 'PY'
import glob, re
for path in glob.glob("/tmp/mnt_inf_bake/system/**/etc/sysconfig/*.xml", recursive=True):
    txt = open(path, "r", encoding="utf-8", errors="ignore").read()
    orig = txt
    txt = re.sub(r'\s*<install-in-user-type\s+package="com\.android\.(dialer|contacts)"[^>]*>.*?</install-in-user-type>', '', txt, flags=re.S)
    if txt != orig:
        print("Cleaned stock dialer/contacts from:", path)
        open(path, "w", encoding="utf-8").write(txt)
PY

echo "=== Step 4: Rebuild treble-overlay-tecno-bg6.apk with config_defaultDialer = com.sh.smart.caller ==="
OVERLAY_SRC=/nvme0n1-disk/infinity_x/bg6_overlay_src
if [ -d "$OVERLAY_SRC" ]; then
    python3 - << 'PY'
p = "/nvme0n1-disk/infinity_x/bg6_overlay_src/res/values/strings.xml"
txt = open(p, "r", encoding="utf-8").read()
if "config_defaultDialer" not in txt:
    txt = txt.replace("</resources>", '    <string name="config_defaultDialer" translatable="false">com.sh.smart.caller</string>\n</resources>')
    open(p, "w", encoding="utf-8").write(txt)
    print("Added config_defaultDialer=com.sh.smart.caller to strings.xml")
PY
    rm -rf /tmp/bg6_ov_build
    mkdir -p /tmp/bg6_ov_build
    if [[ "$APKTOOL" == *.jar ]]; then
        java -jar "$APKTOOL" b "$OVERLAY_SRC" -o /tmp/bg6_ov_build/unsigned.apk
    else
        "$APKTOOL" b "$OVERLAY_SRC" -o /tmp/bg6_ov_build/unsigned.apk
    fi
    "$ZIPALIGN" -f -p 4 /tmp/bg6_ov_build/unsigned.apk /tmp/bg6_ov_build/aligned.apk
    java -jar "$APKSIGNER" sign --key "$PLAT_PK8" --cert "$PLAT_PEM" --out /tmp/bg6_ov_build/treble-overlay-tecno-bg6.apk /tmp/bg6_ov_build/aligned.apk
    # Find where treble-overlay-tecno-bg6.apk is placed in $MNT
    OV_DEST=$(find "$MNT" -name "*tecno-bg6*.apk" -o -name "*bg6*overlay*.apk" 2>/dev/null | head -n 1)
    if [ -n "$OV_DEST" ]; then
        cp -f /tmp/bg6_ov_build/treble-overlay-tecno-bg6.apk "$OV_DEST"
        echo "Updated existing BG6 overlay at: $OV_DEST"
    else
        cp -f /tmp/bg6_ov_build/treble-overlay-tecno-bg6.apk "$MNT/system/product/overlay/treble-overlay-tecno-bg6.apk"
        echo "Installed BG6 overlay at product/overlay/treble-overlay-tecno-bg6.apk"
    fi
fi

echo "=== Step 5: Add TECNO SmartCaller (Phone + Contacts w/ WhatsApp), File Manager, Notes, and KernelGnssSettings ==="
# 5A. SmartCaller V6.0.1.123 (Android 16 Patched) -> system_ext/priv-app/SmartCaller
SC_DIR="$MNT/system/system_ext/priv-app/SmartCaller"
rm -rf "$SC_DIR"
mkdir -p "$SC_DIR/lib/arm64"
cp -f /nvme0n1-disk/infinity_x/smartcaller_v6_work/SmartCaller_V6_A16.apk "$SC_DIR/SmartCaller.apk"
unzip -o -j "$SC_DIR/SmartCaller.apk" "lib/arm64-v8a/*.so" -d "$SC_DIR/lib/arm64/"

# Complete privapp-permissions allowlist for com.sh.smart.caller (cross-checked against Android 16 framework-res.apk!)
python3 - << 'PY'
import subprocess, re

aapt2 = "/nvme0n1-disk/shunno_os/prebuilts/sdk/tools/linux/bin/aapt2"
fw_xml = subprocess.check_output([aapt2, "dump", "xmltree", "/tmp/mnt_inf_bake/system/framework/framework-res.apk", "--file", "AndroidManifest.xml"], text=True)

# Parse every <permission> element block accurately
priv_perms = set()
blocks = re.split(r'\n\s*E: permission \(', fw_xml)
for b in blocks[1:]:
    header = b.split("\n      E: ")[0]
    nm = re.search(r'android:name\([^)]+\)="([^"]+)"', header)
    pl = re.search(r'android:protectionLevel\([^)]+\)=\(type 0x11\)(0x[0-9a-fA-F]+)', header)
    if nm and pl and (int(pl.group(1), 16) & 0x10):
        priv_perms.add(nm.group(1))

sc_out = subprocess.check_output([aapt2, "dump", "permissions", "/tmp/mnt_inf_bake/system/system_ext/priv-app/SmartCaller/SmartCaller.apk"], text=True)
sc_req = set(re.findall(r"uses-permission: name='([^']+)'", sc_out))

# Union of KL6 official list + all framework privileged permissions requested by SmartCaller
kl6_base = {
    "android.permission.ALLOW_ANY_CODEC_FOR_PLAYBACK",
    "android.permission.CONTROL_INCALL_EXPERIENCE",
    "android.permission.GET_ACCOUNTS_PRIVILEGED",
    "android.permission.MODIFY_PHONE_STATE",
    "android.permission.STATUS_BAR",
    "android.permission.STOP_APP_SWITCHES",
    "com.android.voicemail.permission.READ_VOICEMAIL",
    "com.android.voicemail.permission.WRITE_VOICEMAIL",
    "android.permission.READ_PRIVILEGED_PHONE_STATE",
    "android.permission.PACKAGE_USAGE_STATS",
    "android.permission.USE_RESERVED_DISK",
    "android.permission.MOUNT_UNMOUNT_FILESYSTEMS",
    "android.permission.CAPTURE_AUDIO_OUTPUT",
    "android.permission.SET_DEFAULT_ACCOUNT_FOR_CONTACTS",
    "android.permission.READ_WALLPAPER_INTERNAL",
    "android.permission.QUERY_USERS",
}
all_allow = sorted(kl6_base | (sc_req & priv_perms))
print(f"Whitelisting {len(all_allow)} privileged permissions for com.sh.smart.caller:", all_allow)

xml_lines = [
    '<?xml version="1.0" encoding="utf-8"?>',
    '<permissions>',
    '    <privapp-permissions package="com.sh.smart.caller">',
]
for p in all_allow:
    xml_lines.append(f'        <permission name="{p}"/>')
xml_lines += [
    '    </privapp-permissions>',
    '</permissions>',
    ''
]
open("/tmp/mnt_inf_bake/system/system_ext/etc/permissions/com.sh.smart.caller.xml", "w").write("\n".join(xml_lines))
PY

# Add preinstalled-packages entry for com.sh.smart.caller
cat > "$MNT/system/system_ext/etc/sysconfig/preinstalled-packages-smartcaller.xml" << 'XMLEOF'
<?xml version="1.0" encoding="utf-8"?>
<config>
    <install-in-user-type package="com.sh.smart.caller">
        <install-in user-type="FULL" />
        <install-in user-type="PROFILE" />
    </install-in-user-type>
</config>
XMLEOF

# 5B. TECNO File Manager (17.0.0.104, Android 16 targetSdk 36) -> product/app/TranssionFileManager
FM_DIR="$MNT/system/product/app/TranssionFileManager"
rm -rf "$FM_DIR"
mkdir -p "$FM_DIR/lib/arm64"
cp -f /nvme0n1-disk/infinity_x/filemanager_work/TranssionFileManager.apk "$FM_DIR/TranssionFileManager.apk"
unzip -o -j "$FM_DIR/TranssionFileManager.apk" "lib/arm64-v8a/*.so" -d "$FM_DIR/lib/arm64/"

# 5C. TECNO Notes (2.5.1.718, BG6 Stock) -> product/app/TranssionNote
NOTE_DIR="$MNT/system/product/app/TranssionNote"
rm -rf "$NOTE_DIR"
mkdir -p "$NOTE_DIR"
cp -f /nvme0n1-disk/hios14_rom/bg6_extras/TranssionNote.apk "$NOTE_DIR/TranssionNote.apk"
if unzip -l "$NOTE_DIR/TranssionNote.apk" | grep -q "lib/arm64-v8a/"; then
    mkdir -p "$NOTE_DIR/lib/arm64"
    unzip -o -j "$NOTE_DIR/TranssionNote.apk" "lib/arm64-v8a/*.so" -d "$NOTE_DIR/lib/arm64/"
fi

# 5D. Native GNSS Studio (KernelGnssSettings.apk) -> system/priv-app/KernelGnssSettings
GNSS_DIR="$MNT/system/priv-app/KernelGnssSettings"
rm -rf "$GNSS_DIR"
mkdir -p "$GNSS_DIR"
cp -f /nvme0n1-disk/infinity_x/gnss_app_build/KernelGnssSettings.apk "$GNSS_DIR/KernelGnssSettings.apk"
cat > "$MNT/system/etc/permissions/privapp-permissions-gnss.xml" << 'XMLEOF'
<?xml version="1.0" encoding="utf-8"?>
<permissions>
    <privapp-permissions package="com.android.settings.gnss">
        <permission name="android.permission.WRITE_SECURE_SETTINGS"/>
        <permission name="android.permission.INTERACT_ACROSS_USERS"/>
    </privapp-permissions>
</permissions>
XMLEOF

echo "=== Step 6: Update bg6-perf-tune.sh & build.prop for default Dialer role, storage appops, zero bottom bar, and trust_warnings=0 ==="
if ! grep -q "ro.os.dialer_all_call_record" "$MNT/system/system_ext/etc/build.prop"; then
    cat >> "$MNT/system/system_ext/etc/build.prop" << 'PROPEOF'

# TECNO SmartCaller Call Recording & PrivApp Safety
ro.os.dialer_all_call_record=1
ro.os.all_call_record=1
PROPEOF
fi

cat > "$MNT/system/bin/bg6-perf-tune.sh" << 'SHEOF'
#!/system/bin/sh
resetprop_phh ro.config.low_ram false
resetprop_phh ro.com.google.acsa true
resetprop_phh ro.opa.eligible_device true
resetprop_phh persist.sys.phh.unisoc_color_transform_workaround 1
resetprop_phh persist.vendor.hwc.display.modeid 0
resetprop_phh ro.vendor.build.display.id BG6-F069-OP-V2387-250722

cmd overlay disable android.go_unisoc_framework_res.overlay 2>/dev/null || true
cmd overlay disable android.unisoc_framework_res.overlay 2>/dev/null || true
cmd overlay enable com.android.internal.systemui.navbar.transparent 2>/dev/null || true

# Permanently remove bottom gesture pill, IME bottom space & LineageOS Trust warning
settings put system navigation_bar_hint 0 2>/dev/null || true
settings put secure navigation_bar_hint 0 2>/dev/null || true
settings put system navbar_ime_space 0 2>/dev/null || true
settings put secure navbar_ime_space 0 2>/dev/null || true
settings put system gesture_navbar_length_mode 0 2>/dev/null || true
settings put secure trust_warnings 0 2>/dev/null || true

# Ensure TECNO SmartCaller is Default Dialer and TECNO File Manager + Notes have storage access
cur_dialer=$(cmd role get-role-holders android.app.role.DIALER 2>/dev/null)
if [ "$cur_dialer" != "com.sh.smart.caller" ]; then
    cmd role add-role-holder --user 0 android.app.role.DIALER com.sh.smart.caller 2>/dev/null || true
fi
appops set com.transsion.filemanagerx MANAGE_EXTERNAL_STORAGE allow 2>/dev/null || true
appops set com.transsion.notebook MANAGE_EXTERNAL_STORAGE allow 2>/dev/null || true

# Resize zram0 to full 4GB (4294967296 bytes) LZ4 if smaller
if [ -e /sys/block/zram0 ]; then
    cur_zram=$(cat /sys/block/zram0/disksize 2>/dev/null)
    if [ "$cur_zram" != "4294967296" ]; then
        swapoff /dev/block/zram0 2>/dev/null || true
        echo 1 > /sys/block/zram0/reset 2>/dev/null || true
        echo lz4 > /sys/block/zram0/comp_algorithm 2>/dev/null || true
        echo 4294967296 > /sys/block/zram0/disksize 2>/dev/null || true
        mkswap /dev/block/zram0 >/dev/null 2>&1 || true
        swapon /dev/block/zram0 2>/dev/null || true
    fi
fi
SHEOF

echo "=== Step 7: Set ownership, permissions, and SELinux contexts ==="
chown 0:0 "$MNT/system/bin/bg6-perf-tune.sh"
chmod 0755 "$MNT/system/bin/bg6-perf-tune.sh"

for target in \
    "$DOCUI_APK" \
    "$MNT/system/product/etc/sysconfig/launcher_documentsui_icon_disable.xml" \
    "$SC_DIR" \
    "$MNT/system/system_ext/etc/permissions/com.sh.smart.caller.xml" \
    "$MNT/system/system_ext/etc/sysconfig/preinstalled-packages-smartcaller.xml" \
    "$MNT/system/system_ext/etc/build.prop" \
    "$FM_DIR" \
    "$NOTE_DIR" \
    "$GNSS_DIR" \
    "$MNT/system/etc/permissions/privapp-permissions-gnss.xml"; do
    chown -R 0:0 "$target"
    if [ -d "$target" ]; then
        find "$target" -type d -exec chmod 0755 {} +
        find "$target" -type f -exec chmod 0644 {} +
    else
        chmod 0644 "$target"
    fi
done

if [ -n "$OV_DEST" ] && [ -f "$OV_DEST" ]; then
    chown 0:0 "$OV_DEST"
    chmod 0644 "$OV_DEST"
fi

python3 - << 'PY'
import os

def set_ctx_recursive(path, ctx):
    val = ctx.encode("ascii") + b"\x00"
    os.setxattr(path, "security.selinux", val, follow_symlinks=False)
    if os.path.isdir(path) and not os.path.islink(path):
        for root, dirs, files in os.walk(path):
            for name in dirs + files:
                p = os.path.join(root, name)
                os.setxattr(p, "security.selinux", val, follow_symlinks=False)

mnt = "/tmp/mnt_inf_bake"
for rel in [
    "system/priv-app/DocumentsUI/DocumentsUI.apk",
    "system/product/etc/sysconfig/launcher_documentsui_icon_disable.xml",
    "system/system_ext/priv-app/SmartCaller",
    "system/system_ext/etc/permissions/com.sh.smart.caller.xml",
    "system/system_ext/etc/sysconfig/preinstalled-packages-smartcaller.xml",
    "system/system_ext/etc/build.prop",
    "system/product/app/TranssionFileManager",
    "system/product/app/TranssionNote",
    "system/priv-app/KernelGnssSettings",
    "system/etc/permissions/privapp-permissions-gnss.xml",
]:
    p = os.path.join(mnt, rel)
    if os.path.exists(p):
        set_ctx_recursive(p, "u:object_r:system_file:s0")

set_ctx_recursive(os.path.join(mnt, "system/bin/bg6-perf-tune.sh"), "u:object_r:phhsu_exec:s0")
PY

echo "=== Check final free space inside mounted Infinity-X image ==="
df -BM "$MNT"

echo "=== Verify stock Dialer & Contacts are 100% GONE and TECNO apps are PRESENT ==="
ls -ld "$MNT/system/product/priv-app/Dialer" 2>/dev/null && echo "ERROR: Dialer still exists!" || echo "OK: Stock Dialer DELETED"
ls -ld "$MNT/system/product/priv-app/Contacts" 2>/dev/null && echo "ERROR: Contacts still exists!" || echo "OK: Stock Contacts DELETED"
ls -lh "$SC_DIR/SmartCaller.apk" "$FM_DIR/TranssionFileManager.apk" "$NOTE_DIR/TranssionNote.apk" "$GNSS_DIR/KernelGnssSettings.apk"

sync
umount "$MNT"

echo "=== Step 8: Run e2fsck & Regenerate AVB dm-verity SHA256 Hashtree Footer ==="
BLOCKS=$(dumpe2fs -h "$IMG" 2>/dev/null | awk -F: '/Block count:/ {gsub(/ /,"",$2); print $2}')
FS_BYTES=$(( BLOCKS * 4096 ))
PART_BYTES=$(( FS_BYTES + 67108864 ))
truncate -s "$FS_BYTES" "$IMG"
e2fsck -fy "$IMG" || true

python3 "$AVBTOOL" add_hashtree_footer \
    --image "$IMG" \
    --partition_name system \
    --partition_size "$PART_BYTES" \
    --hash_algorithm sha256 \
    --key /nvme0n1-disk/shunno_os/external/avb/test/data/testkey_rsa2048.pem \
    --algorithm SHA256_RSA2048

chown administrator:administrator "$IMG"
python3 "$AVBTOOL" info_image --image "$IMG"

echo "=== Step 9: Integrate into AOSP / ROM Source Tree (/nvme0n1-disk/shunno_os/vendor/transsion/bg6_suite) ==="
SRC_MOD=/nvme0n1-disk/shunno_os/vendor/transsion/bg6_suite
mkdir -p "$SRC_MOD/prebuilt"
cp -f /nvme0n1-disk/infinity_x/smartcaller_v6_work/SmartCaller_V6_A16.apk "$SRC_MOD/prebuilt/SmartCaller.apk"
cp -f /nvme0n1-disk/infinity_x/filemanager_work/TranssionFileManager.apk "$SRC_MOD/prebuilt/TranssionFileManager.apk"
cp -f /nvme0n1-disk/hios14_rom/bg6_extras/TranssionNote.apk "$SRC_MOD/prebuilt/TranssionNote.apk"
cp -f /nvme0n1-disk/infinity_x/gnss_app_build/KernelGnssSettings.apk "$SRC_MOD/prebuilt/KernelGnssSettings.apk"

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
    privileged: true,
    certificate: "platform",
    dex_preopt: { enabled: false },
}
BPEOF

cat > "$SRC_MOD/bg6_suite.mk" << 'MKEOF'
# TECNO BG6 Official App Suite Integration (Replaces Stock Dialer, Contacts & Files Launcher)
PRODUCT_PACKAGES += \
    SmartCaller \
    TranssionFileManager \
    TranssionNote \
    KernelGnssSettings

# Remove stock AOSP/Infinity-X Dialer and Contacts from build
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system_ext/priv-app/SmartCaller/SmartCaller.apk \
    product/app/TranssionFileManager/TranssionFileManager.apk \
    product/app/TranssionNote/TranssionNote.apk \
    system/priv-app/KernelGnssSettings/KernelGnssSettings.apk
MKEOF
chown -R administrator:administrator /nvme0n1-disk/shunno_os/vendor/transsion
echo "ALL_BAKE_COMPLETE_SUCCESSFULLY"
"""

sftp = ssh.open_sftp()
with sftp.open("/tmp/bake_tecno_suite.sh", "w") as f:
    f.write(remote_script)
sftp.close()

cmd = "chmod +x /tmp/bake_tecno_suite.sh && echo '${BG6_SERVER_PASS}' | sudo -S /tmp/bake_tecno_suite.sh"
stdin, stdout, stderr = ssh.exec_command(cmd, timeout=300)
print("STDOUT:\n", stdout.read().decode("utf-8", errors="replace"))
print("STDERR:\n", stderr.read().decode("utf-8", errors="replace"))
ssh.close()
