#!/bin/bash
set -e
cd /nvme0n1-disk/shunno_os/vendor/gapps
find . -maxdepth 4 -name "*.apk" -exec ls -lh {} +
cat common/common-vendor.mk
cat arm64/Android.bp
