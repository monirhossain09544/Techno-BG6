#!/system/bin/sh
echo "=== CHECK UBOOT_A STRINGS ==="
strings /dev/block/by-name/uboot_a | grep -iE "icnl|9916|chipone|boe|firmware" | head -n 40
echo "=== CHECK VENDOR_BOOT_A ==="
ls -lh /dev/block/by-name/uboot_a /dev/block/by-name/vendor_boot_a /dev/block/by-name/boot_a /dev/block/by-name/dtb_a /dev/block/by-name/dtbo_a
