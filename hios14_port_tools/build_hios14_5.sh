#!/bin/bash
set -e
cd /nvme0n1-disk/hios14_rom

set_selinux() {
    local ctx="$1"
    shift
    python3 - "$ctx" "$@" << 'PYEOF'
import sys, os
ctx = sys.argv[1].encode()
for target in sys.argv[2:]:
    os.setxattr(target, "security.selinux", ctx, follow_symlinks=False)
    if os.path.isdir(target) and not os.path.islink(target):
        for root, dirs, files in os.walk(target):
            for name in dirs + files:
                p = os.path.join(root, name)
                os.setxattr(p, "security.selinux", ctx, follow_symlinks=False)
PYEOF
}

set_selinux_single() {
    local ctx="$1"
    shift
    python3 - "$ctx" "$@" << 'PYEOF'
import sys, os
ctx = sys.argv[1].encode()
for target in sys.argv[2:]:
    os.setxattr(target, "security.selinux", ctx, follow_symlinks=False)
PYEOF
}

echo "=== 1. Preparing merged_root from KL4 (Unisoc qogirl6 Android 14 HiOS) ==="
if [ ! -f merged_root/system/bin/init ]; then
    rm -rf merged_root
    mkdir -p merged_root
    cp -a mnt_kl4_sys/. merged_root/
fi

# Convert /product and /system_ext at root to GSI-compatible symlinks -> /system/product and /system/system_ext
rm -rf merged_root/product merged_root/system_ext merged_root/system/product merged_root/system/system_ext
ln -s /system/product merged_root/product
ln -s /system/system_ext merged_root/system_ext
set_selinux_single "u:object_r:system_file:s0" merged_root/product merged_root/system_ext

mkdir -p merged_root/system/product merged_root/system/system_ext
cp -a mnt_kl4_ext/. merged_root/system/system_ext/
cp -a mnt_kl4_prod/. merged_root/system/product/
set_selinux_single "u:object_r:system_file:s0" merged_root/system/product merged_root/system/system_ext

echo "=== 2. Removing PayJoy Lock, Carrier Bloatware & App Killers ==="
rm -rf merged_root/system/product/operator
rm -rf merged_root/system/product/ManualPdf
rm -rf merged_root/system/product/priv-app/PayJoyAccess
rm -rf merged_root/system/product/priv-app/Nephilim
rm -rf merged_root/system/product/priv-app/TEOP
rm -f merged_root/system/product/etc/permissions/com.payjoy.access.xml
rm -rf merged_root/system/product/priv-app/PalmStore
rm -rf merged_root/system/product/priv-app/Carlcare
rm -rf merged_root/system/product/app/HolaBrowser
rm -rf merged_root/system/product/app/Phoenix
rm -rf merged_root/system/product/app/YouTube
rm -rf merged_root/system/product/app/YTMusic
rm -rf merged_root/system/product/app/Videos
rm -rf merged_root/system/product/app/MeetGo
rm -rf merged_root/system/product/app/Maps
rm -rf merged_root/system/product/app/Gmail2
rm -rf merged_root/system/product/app/Drive
rm -rf merged_root/system/product/app/GalleryGo
rm -rf merged_root/system/product/priv-app/AssistantGo
rm -rf merged_root/system/product/priv-app/GoogleSearchGo
rm -rf merged_root/system/system_ext/app/PhoneMaster
rm -rf merged_root/system/system_ext/app/HiManager
rm -rf merged_root/system/system_ext/app/OS_questionnaire
rm -rf merged_root/system/system_ext/app/Ewarrantycard
rm -rf merged_root/system/system_ext/app/PalmId

# Disable PayJoy finance component in thub_features_config.xml
sed -i '/ITranFinancePJComponent/d' merged_root/system/etc/thub_features_config.xml || true

echo "=== 3. Upgrading to Official HiOS 14.5 (KL6) Launcher, DynamicBar 2.0, AI Gallery, Keyguard & Screenshot ==="
for app in HiLauncher TranDynamicBar AiGallery KeyguardClock KeyguardTheme TranScreenshot FontManager; do
    if [ -d "mnt_kl6_ext/app/$app" ]; then
        rm -rf "merged_root/system/system_ext/app/$app"
        mkdir -p "merged_root/system/system_ext/app/$app"
        cp -a "mnt_kl6_ext/app/$app/$app.apk" "merged_root/system/system_ext/app/$app/"
        if [ -d "mnt_kl6_ext/app/$app/lib" ]; then
            cp -a "mnt_kl6_ext/app/$app/lib" "merged_root/system/system_ext/app/$app/"
        fi
    fi
done

for papp in MagicTouch; do
    if [ -d "mnt_kl6_prod/priv-app/$papp" ]; then
        rm -rf "merged_root/system/product/priv-app/$papp"
        mkdir -p "merged_root/system/product/priv-app/$papp"
        cp -a "mnt_kl6_prod/priv-app/$papp/$papp.apk" "merged_root/system/product/priv-app/$papp/"
    fi
done

for app in SpaceSaver AirTransfer; do
    if [ -d "mnt_kl6_prod/app/$app" ]; then
        rm -rf "merged_root/system/product/app/$app"
        mkdir -p "merged_root/system/product/app/$app"
        cp -a "mnt_kl6_prod/app/$app/$app.apk" "merged_root/system/product/app/$app/"
    fi
done

# Add BG6 HiOS Weather, Calculator, Note, SoundRecorder & PartyTheme_BG6
for app in Weather TranssionCalculator TranssionNote TranssionSoundRecorder; do
    mkdir -p "merged_root/system/system_ext/app/$app"
    cp "bg6_extras/$app.apk" "merged_root/system/system_ext/app/$app/$app.apk"
done
mkdir -p "merged_root/system/product/theme/PartyTheme_BG6"
cp "bg6_extras/PartyTheme_BG6.apk" "merged_root/system/product/theme/PartyTheme_BG6/PartyTheme_BG6.apk"

# Set proper ownership, perms, and SELinux context on newly added apps
for d in Weather TranssionCalculator TranssionNote TranssionSoundRecorder HiLauncher TranDynamicBar AiGallery KeyguardClock KeyguardTheme TranScreenshot FontManager; do
    if [ -d "merged_root/system/system_ext/app/$d" ]; then
        chown -R root:root "merged_root/system/system_ext/app/$d"
        find "merged_root/system/system_ext/app/$d" -type d -exec chmod 0755 {} +
        find "merged_root/system/system_ext/app/$d" -type f -exec chmod 0644 {} +
        set_selinux "u:object_r:system_file:s0" "merged_root/system/system_ext/app/$d"
    fi
done
for d in "merged_root/system/product/priv-app/MagicTouch" "merged_root/system/product/app/SpaceSaver" "merged_root/system/product/app/AirTransfer" "merged_root/system/product/theme/PartyTheme_BG6"; do
    if [ -d "$d" ]; then
        chown -R root:root "$d"
        find "$d" -type d -exec chmod 0755 {} +
        find "$d" -type f -exec chmod 0644 {} +
        set_selinux "u:object_r:system_file:s0" "$d"
    fi
done

echo "=== 4. Removing Android Go Restrictions & Enabling Normal RAM (Google + Gemini support) ==="
grep -rlE "android.hardware.ram.low|ANDROID_GO_EXPERIENCE" merged_root/system/etc/ merged_root/system/product/etc/ merged_root/system/system_ext/etc/ 2>/dev/null | while read -r xmlf; do
    echo "  Cleaning Go/low_ram feature from $xmlf"
    sed -i 's/android.hardware.ram.low/android.hardware.ram.normal/g' "$xmlf"
    sed -i '/ANDROID_GO_EXPERIENCE/d' "$xmlf"
    set_selinux_single "u:object_r:system_file:s0" "$xmlf"
done

cat > merged_root/system/etc/permissions/android.hardware.ram.normal.xml << 'EOF'
<?xml version="1.0" encoding="utf-8"?>
<permissions>
    <feature name="android.hardware.ram.normal" />
</permissions>
EOF
chmod 0644 merged_root/system/etc/permissions/android.hardware.ram.normal.xml
chown root:root merged_root/system/etc/permissions/android.hardware.ram.normal.xml
set_selinux_single "u:object_r:system_file:s0" merged_root/system/etc/permissions/android.hardware.ram.normal.xml
cp -a merged_root/system/etc/permissions/android.hardware.ram.normal.xml merged_root/system/product/etc/permissions/
set_selinux_single "u:object_r:system_file:s0" merged_root/system/product/etc/permissions/android.hardware.ram.normal.xml

echo "=== 5. Whitelisting Panda Rider in Griffin Memory Manager ==="
for jf in merged_root/system/product/etc/performance/griffin/*.json; do
    if [ -f "$jf" ]; then
        sed -i 's/"com.payjoy.access"/"com.logistics.rider.foodpanda"/g' "$jf"
        set_selinux_single "u:object_r:system_file:s0" "$jf"
    fi
done

echo "=== 6. Configuring build.prop for TECNO-BG6 HiOS 14.5 + 60Hz Display Protection ==="
for bp in merged_root/system/build.prop merged_root/system/system_ext/etc/build.prop merged_root/system/product/etc/build.prop; do
    sed -i 's/ro.os_2g_go.support=1/ro.os_2g_go.support=0/g' "$bp"
    sed -i 's/ro.config.low_ram=true/ro.config.low_ram=false/g' "$bp"
    sed -i 's/ro.transsion.tran_refresh_rate.support=1/ro.transsion.tran_refresh_rate.support=0/g' "$bp"
    sed -i 's/ro.tran_90hz_refresh_rate.not_support=0/ro.tran_90hz_refresh_rate.not_support=1/g' "$bp"
    sed -i 's/ro.tran_default_auto_refresh.support=1/ro.tran_default_auto_refresh.support=0/g' "$bp"
    sed -i 's/ro.tranos.version=hios14.0.1/ro.tranos.version=hios14.5.0/g' "$bp"
    sed -i 's/ro.os.version.release=.*/ro.os.version.release=HiOS-14.5.0-BG6-U/g' "$bp"
    sed -i 's/TECNO KL4/TECNO BG6/g' "$bp"
    sed -i 's/TECNO-KL4/TECNO-BG6/g' "$bp"
    sed -i 's/TECNO SPARK Go 1/TECNO SPARK Go 2024/g' "$bp"
    cat >> "$bp" << 'EOF'

# TECNO-BG6 Official HiOS 14.5 Customizations & Hardware Fixes
ro.config.low_ram=false
ro.os_2g_go.support=0
ro.tranos.type=hios
ro.tranos.version=hios14.5.0
ro.transsion.tran_refresh_rate.support=0
ro.tran_90hz_refresh_rate.not_support=1
ro.tran_default_auto_refresh.support=0
persist.vendor.hwc.display.modeid=0
ro.surface_flinger.use_content_detection_for_refresh_rate=false
ro.os.recent.blur=1
ro.os_dynamicbar_support=1
ro.os_customized_split_screen_support=1
ro.control_privapp_permissions=log
ro.tran_pt_remote_lock_support=0
ro.product.trantabe.support=0
ro.product.trantabe.install.support=0
persist.sys.usb.config=mtp,adb
ro.adb.secure=0
ro.debuggable=1
EOF
    set_selinux_single "u:object_r:system_file:s0" "$bp"
done

echo "=== 7. Installing resetprop_phh, Bangladesh IPv4 APNs, and hios14_bg6.rc ==="
cp /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/bin/resetprop_phh merged_root/system/bin/resetprop_phh
cp /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/bin/phh-su merged_root/system/bin/phh-su
chown root:2000 merged_root/system/bin/resetprop_phh merged_root/system/bin/phh-su
chmod 0755 merged_root/system/bin/resetprop_phh merged_root/system/bin/phh-su
set_selinux_single "u:object_r:toolbox_exec:s0" merged_root/system/bin/resetprop_phh merged_root/system/bin/phh-su

# Copy IPv4-enforced Bangladesh 4G LTE apns-conf.xml
cp /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/etc/apns-conf.xml merged_root/system/etc/apns-conf.xml
cp /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/etc/apns-conf.xml merged_root/system/product/etc/apns-conf.xml
chown root:root merged_root/system/etc/apns-conf.xml merged_root/system/product/etc/apns-conf.xml
chmod 0644 merged_root/system/etc/apns-conf.xml merged_root/system/product/etc/apns-conf.xml
set_selinux_single "u:object_r:system_file:s0" merged_root/system/etc/apns-conf.xml merged_root/system/product/etc/apns-conf.xml

cat > merged_root/system/etc/init/hios14_bg6.rc << 'EOF'
on post-fs
    exec - root root -- /system/bin/resetprop_phh ro.config.low_ram false
    exec - root root -- /system/bin/resetprop_phh ro.os_2g_go.support 0
    exec - root root -- /system/bin/resetprop_phh ro.tranos.version hios14.5.0
    exec - root root -- /system/bin/resetprop_phh ro.product.vendor.model "TECNO BG6"
    exec - root root -- /system/bin/resetprop_phh ro.product.vendor.device "TECNO-BG6"
    exec - root root -- /system/bin/mount -o bind /system/etc/permissions/android.hardware.ram.normal.xml /vendor/etc/permissions/android.hardware.ram.low.xml
    setprop persist.vendor.hwc.display.modeid 0

on property:sys.boot_completed=1
    setprop persist.vendor.hwc.display.modeid 0
    write /proc/sys/net/ipv6/conf/seth_lte0/accept_ra 0
    write /proc/sys/net/ipv6/conf/seth_lte1/accept_ra 0
    write /proc/sys/net/ipv6/conf/seth_lte2/accept_ra 0
    write /proc/sys/net/ipv6/conf/seth_lte3/accept_ra 0
EOF
chown root:root merged_root/system/etc/init/hios14_bg6.rc
chmod 0644 merged_root/system/etc/init/hios14_bg6.rc
set_selinux_single "u:object_r:system_file:s0" merged_root/system/etc/init/hios14_bg6.rc

echo "=== 8. Checking merged_root size and building EROFS hios14_5_system.img ==="
du -sh merged_root
MKFS_EROFS=/nvme0n1-disk/shunno_os/out/host/linux-x86/bin/mkfs.erofs
rm -f hios14_5_system.img
$MKFS_EROFS -z lz4hc,9 -T 1723613285 hios14_5_system.img merged_root >/dev/null
ls -lh hios14_5_system.img
echo "=== Verifying EROFS image mount & SELinux labels ==="
mkdir -p mnt_verify
mount -o loop,ro -t erofs hios14_5_system.img mnt_verify
python3 -c '
import os
for p in [
    "mnt_verify",
    "mnt_verify/product",
    "mnt_verify/system_ext",
    "mnt_verify/system/product",
    "mnt_verify/system/system_ext",
    "mnt_verify/system/bin/init",
    "mnt_verify/system/bin/resetprop_phh",
    "mnt_verify/system/etc/init/hios14_bg6.rc",
    "mnt_verify/system/system_ext/app/HiLauncher/HiLauncher.apk",
]:
    print(p, "->", os.getxattr(p, "security.selinux", follow_symlinks=False))
'
umount mnt_verify
echo "BUILD_HIOS14_5_SUCCESS!"
