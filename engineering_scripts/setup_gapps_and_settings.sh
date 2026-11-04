#!/bin/bash
set -e

cd /nvme0n1-disk/shunno_os/vendor/gapps
sudo -u administrator git lfs install
sudo -u administrator git lfs pull
ls -lh arm64/proprietary/product/priv-app/GmsCore/GmsCore.apk
file arm64/proprietary/product/priv-app/GmsCore/GmsCore.apk

cat << 'EOF' > /nvme0n1-disk/shunno_os/vendor/gapps/config.mk
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)
EOF
chown administrator:administrator /nvme0n1-disk/shunno_os/vendor/gapps/config.mk

# Fix device/phh/treble/gapps.mk so it doesn't require com.simplemobiletools.gallery.pro
sed -i 's/com.simplemobiletools.gallery.pro//g' /nvme0n1-disk/shunno_os/device/phh/treble/gapps.mk

# Test lunch for both bgN (with Google Play Services/Play Store) and bvN (Vanilla)
sudo -u administrator bash -c '
cd /nvme0n1-disk/shunno_os
export USER=administrator
export LC_ALL=C
source build/envsetup.sh
lunch treble_arm64_bgN-ap2a-userdebug
'
