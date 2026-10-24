#!/system/bin/sh
ui_print "- Installing BG6 Full HiOS 13 Pro Module..."
mkdir -p $MODPATH/system
ln -sf ../product $MODPATH/system/product
ln -sf ../system_ext $MODPATH/system/system_ext
rm -f $MODPATH/product/overlay/SysuiGoConfigOverlay.apk
mknod $MODPATH/product/overlay/SysuiGoConfigOverlay.apk c 0 0
set_perm_recursive $MODPATH 0 0 0755 0644
set_perm $MODPATH/post-fs-data.sh 0 0 0755
set_perm $MODPATH/service.sh 0 0 0755
ui_print "- Done!"
