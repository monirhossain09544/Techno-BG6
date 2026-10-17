#!/usr/bin/env bash
set -uo pipefail
WORKDIR="$HOME/tecno_bg6_kernel"
KDIR="$WORKDIR/kernel_ums9230"
MAGISKBOOT="$WORKDIR/toolchains/magiskboot"

echo "=== [1/4] Repacking boot_a.img with new Image ==="
cd "$WORKDIR/extracted/boot"
cp "$WORKDIR/backups/boot_a.img" ./boot.img
"$MAGISKBOOT" unpack -h boot.img 2>&1 | tail -15
cp "$KDIR/out/arch/arm64/boot/Image" ./kernel
"$MAGISKBOOT" repack boot.img "$WORKDIR/bg6_test_boot_a.img" 2>&1 | tail -10

echo ""
echo "=== [2/4] Check 1: Size + Header v4 ==="
ORIG_SIZE=$(stat -c%s "$WORKDIR/backups/boot_a.img")
NEW_SIZE=$(stat -c%s "$WORKDIR/bg6_test_boot_a.img")
echo "Original boot_a.img : $ORIG_SIZE bytes"
echo "Repacked test boot   : $NEW_SIZE bytes"
if [ "$NEW_SIZE" -gt "$ORIG_SIZE" ]; then echo "ERROR: exceeds partition!"; else echo "SIZE OK (new <= orig)"; fi
mkdir -p /tmp/bg6_verify_repack && cd /tmp/bg6_verify_repack && rm -rf ./*
"$MAGISKBOOT" unpack -h "$WORKDIR/bg6_test_boot_a.img" 2>&1 | tee repack_verify.log

echo ""
echo "=== [3/4] Check 2: vbmeta flags + AVB tail ==="
python3 - << 'PYEOF'
import os, struct
workdir = os.path.expanduser("~/tecno_bg6_kernel")
vbmeta_path = os.path.join(workdir, "backups", "vbmeta_a.img")
boot_orig = os.path.join(workdir, "backups", "boot_a.img")
boot_new = os.path.join(workdir, "bg6_test_boot_a.img")
with open(vbmeta_path, "rb") as f:
    data = f.read(256)
magic = data[:4]
flags = struct.unpack(">I", data[120:124])[0] if magic == b"AVB0" else None
print("vbmeta_a magic:", magic, "flags:", hex(flags) if flags is not None else "N/A")
if flags is not None:
    print("  hashtree_disabled (bit0):", bool(flags & 1))
    print("  verification_disabled (bit1):", bool(flags & 2))
for label, path in [("Stock boot_a.img", boot_orig), ("Repacked boot_a.img", boot_new)]:
    with open(path, "rb") as f:
        head = f.read(16)
        f.seek(max(0, os.path.getsize(path) - 65536))
        tail = f.read()
    print(label, "DHTB_header=%s" % (b"DHTB" in head), "AVBf_footer_last64K=%s" % (b"AVBf" in tail))
PYEOF

echo ""
echo "=== [4/4] Check 3 prep: extract vendor_boot ramdisk, find .ko ==="
mkdir -p /tmp/bg6_vendor_ramdisk && cd /tmp/bg6_vendor_ramdisk && rm -rf ./*
CPIO="$WORKDIR/extracted/vendor_boot/vendor_ramdisk/ramdisk.cpio"
if [ -f "$CPIO" ]; then
  cpio -idm < "$CPIO" 2>/dev/null || echo "cpio extract partial"
fi
echo "vendor ramdisk .ko count: $(find /tmp/bg6_vendor_ramdisk -name '*.ko' | wc -l)"
find /tmp/bg6_vendor_ramdisk -name '*.ko' | head -40
echo "PHASE5A_DONE"
