#!/bin/bash
set -e
rm -f /nvme0n1-disk/shunno_os/.repo/local_manifests/shunno_hw.xml
cp -f /tmp/tm/*.xml /nvme0n1-disk/shunno_os/.repo/local_manifests/
chown -R administrator:administrator /nvme0n1-disk/shunno_os/.repo/local_manifests

su - administrator -c '
    cd /nvme0n1-disk/shunno_os
    /usr/local/bin/repo sync -c -j8 --force-sync --no-clone-bundle --no-tags \
        system/core frameworks/native system/vold external/selinux bootable/recovery \
        frameworks/av frameworks/base system/extras frameworks/opt/telephony system/netd \
        system/nfc packages/apps/Settings packages/modules/Bluetooth system/bpf bionic \
        system/linkerconfig hardware/interfaces build/make packages/modules/Connectivity \
        frameworks/opt/net/ims packages/modules/vndk system/sepolicy \
        packages/modules/DeviceLock packages/modules/Wifi packages/services/Telephony \
        system/apex packages/modules/DnsResolver prebuilts/vndk/v28
    echo "=== TD HARDWARE BRIDGE REPOS SYNCED ==="
'
