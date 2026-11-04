#!/bin/bash
set -e
cd /nvme0n1-disk/shunno_os
sha1sum build/make/target/product/gsi/*.avbpubkey 2>/dev/null || find build/ -name "*.avbpubkey" -exec sha1sum {} +
grep -n -C 25 "avb_keys" system/core/fs_mgr/fs_mgr_verity.cpp | head -n 75
