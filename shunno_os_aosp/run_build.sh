#!/bin/bash
cd /nvme0n1-disk/shunno_os
export USER=administrator
export LC_ALL=C
source build/envsetup.sh
lunch treble_arm64_bgN-ap2a-userdebug
m RELAX_USES_LIBRARY_CHECK=true BUILD_NUMBER=Sunno-OS-1.0 -j72 systemimage
