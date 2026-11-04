#!/bin/bash
set -e

cd /nvme0n1-disk/shunno_os
OUT="/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab"

# 1. Create privapp-permissions-sunno.xml for com.sunno.ridertile
mkdir -p packages/apps/SunnoRiderTile/permissions
cat << 'EOF' > packages/apps/SunnoRiderTile/permissions/privapp-permissions-sunno.xml
<?xml version="1.0" encoding="utf-8"?>
<permissions>
    <privapp-permissions package="com.sunno.ridertile">
        <permission name="android.permission.WRITE_SECURE_SETTINGS"/>
        <permission name="android.permission.MODIFY_DAY_NIGHT_MODE"/>
        <permission name="android.permission.DEVICE_POWER"/>
    </privapp-permissions>
</permissions>
EOF

cat << 'EOF' > packages/apps/SunnoRiderTile/Android.bp
prebuilt_etc {
    name: "privapp_permissions_sunno_ridertile",
    sub_dir: "permissions",
    src: "permissions/privapp-permissions-sunno.xml",
    filename_from_src: true,
}

android_app {
    name: "SunnoRiderTile",
    srcs: ["src/**/*.java"],
    resource_dirs: ["res"],
    platform_apis: true,
    certificate: "platform",
    privileged: true,
    required: ["privapp_permissions_sunno_ridertile"],
    dex_preopt: {
        enabled: true,
    },
}
EOF
chown -R administrator:administrator packages/apps/SunnoRiderTile

# 2. Remove existing /system/xbin/su and build.prop from OUT so they are regenerated cleanly
rm -f "$OUT/system/xbin/su"
rm -f "$OUT/system/build.prop" "$OUT/system/product/etc/build.prop" "$OUT/system.img"

# 3. Also filter-out su in build/make/target/product/base_system.mk so ninja never installs /system/xbin/su
sed -i 's/PRODUCT_PACKAGES_DEBUG := \\/PRODUCT_PACKAGES_DEBUG := /g' build/make/target/product/base_system.mk || true
sed -i '/^[[:space:]]*su \\/d' build/make/target/product/base_system.mk || true

# 4. Run incremental build of systemimage
sudo -u administrator bash -c '
cd /nvme0n1-disk/shunno_os
export USER=administrator
export LC_ALL=C
source build/envsetup.sh
lunch treble_arm64_bgN-ap2a-userdebug
m RELAX_USES_LIBRARY_CHECK=true BUILD_NUMBER=Sunno-OS-1.0 -j72 systemimage
'

echo "=== VERIFYING NEW SYSTEM.IMG ==="
ls -lh "$OUT/system.img"
find "$OUT/system" -name "*su" 2>/dev/null || true
ls -lh "$OUT/system/priv-app/SunnoRiderTile/SunnoRiderTile.apk" "$OUT/system/etc/permissions/privapp-permissions-sunno.xml" "$OUT/system/app/HTMLViewer/HTMLViewer.apk" "$OUT/system/product/app/HTMLViewer/HTMLViewer.apk" 2>/dev/null || true
grep -E "ro.product.system.(brand|model|name)|ro.build.display.id|ro.sunno" "$OUT/system/build.prop" "$OUT/system/product/etc/build.prop" 2>/dev/null || true
