#!/bin/bash
set -e

cd /nvme0n1-disk/shunno_os
OUT="/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab"

# Restore base_system.mk cleanly
sudo -u administrator git -C build/make checkout -- target/product/base_system.mk

# Filter out su cleanly inside treble_arm64_bgN.mk
cat << 'EOF' > device/phh/treble/treble_arm64_bgN.mk
TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)
$(call inherit-product, device/phh/treble/gapps.mk)

PRODUCT_NAME := treble_arm64_bgN
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := Sunno
PRODUCT_SYSTEM_BRAND := Sunno
PRODUCT_MODEL := Sunno
PRODUCT_SYSTEM_MODEL := Sunno
PRODUCT_SYSTEM_NAME := Sunno
PRODUCT_MANUFACTURER := Sunno
PRODUCT_SYSTEM_MANUFACTURER := Sunno

PRODUCT_CHARACTERISTICS := device

PRODUCT_PACKAGES_DEBUG := $(filter-out su,$(PRODUCT_PACKAGES_DEBUG))
PRODUCT_PACKAGES := $(filter-out su,$(PRODUCT_PACKAGES))

PRODUCT_PACKAGES += \
    HTMLViewer \
    SunnoRiderTile \
    privapp_permissions_sunno_ridertile

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.display.id=Sunno-OS-1.0-Android14 \
    ro.sunno.version=Sunno-1.0-Android14
EOF
chown administrator:administrator device/phh/treble/treble_arm64_bgN.mk

# Run incremental build in background and monitor
sudo -u administrator bash -c '
nohup /nvme0n1-disk/shunno_os/run_build.sh > /nvme0n1-disk/shunno_os/build_sunno_inc.log 2>&1 < /dev/null &
BPID=$!
echo "INC_BUILD_PID=$BPID"
for i in {1..30}; do
    sleep 10
    if ! ps -p $BPID > /dev/null 2>&1; then
        echo "=== INCREMENTAL BUILD FINISHED ==="
        tail -n 35 /nvme0n1-disk/shunno_os/build_sunno_inc.log | tr "\r" "\n" | tail -n 35
        exit 0
    fi
    echo "=== [Tick $i] ==="
    tail -n 4 /nvme0n1-disk/shunno_os/build_sunno_inc.log | tr "\r" "\n" | tail -n 4
done
'
