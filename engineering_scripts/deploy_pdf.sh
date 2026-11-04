#!/system/bin/sh
MODDIR=/data/adb/modules/bg6_hios_pro
am force-stop com.transsion.filemanagerx 2>/dev/null
am force-stop com.android.htmlviewer 2>/dev/null

# 1. Deploy OSFileManager.apk
cp /data/local/tmp/OSFileManager.apk "$MODDIR/system/system_ext/app/OSFileManager/OSFileManager.apk"
chmod 644 "$MODDIR/system/system_ext/app/OSFileManager/OSFileManager.apk"
chown root:root "$MODDIR/system/system_ext/app/OSFileManager/OSFileManager.apk"
chcon u:object_r:system_file:s0 "$MODDIR/system/system_ext/app/OSFileManager/OSFileManager.apk"
cp /data/local/tmp/OSFileManager.apk /system_ext/app/OSFileManager/OSFileManager.apk
rm -rf /data/dalvik-cache/arm64/*OSFileManager*
cmd package compile -m verify -f com.transsion.filemanagerx

# 2. Deploy HTMLViewer.apk + compile odex/vdex
mkdir -p "$MODDIR/system/app/HTMLViewer/oat/arm64"
cp /data/local/tmp/HTMLViewer.apk "$MODDIR/system/app/HTMLViewer/HTMLViewer.apk"
chmod 644 "$MODDIR/system/app/HTMLViewer/HTMLViewer.apk"
chown root:root "$MODDIR/system/app/HTMLViewer/HTMLViewer.apk"
chcon u:object_r:system_file:s0 "$MODDIR/system/app/HTMLViewer/HTMLViewer.apk"

HV_APK_SRC="$MODDIR/system/app/HTMLViewer/HTMLViewer.apk"
HV_ODEX_SRC="$MODDIR/system/app/HTMLViewer/oat/arm64/HTMLViewer.odex"
HV_VDEX_SRC="$MODDIR/system/app/HTMLViewer/oat/arm64/HTMLViewer.vdex"

HV_APK_DST=/system/app/HTMLViewer/HTMLViewer.apk
HV_ODEX_DST=/system/app/HTMLViewer/oat/arm64/HTMLViewer.odex
HV_VDEX_DST=/system/app/HTMLViewer/oat/arm64/HTMLViewer.vdex

while umount -l "$HV_APK_DST" 2>/dev/null; do :; done
while umount -l "$HV_ODEX_DST" 2>/dev/null; do :; done
while umount -l "$HV_VDEX_DST" 2>/dev/null; do :; done

mount -o bind "$HV_APK_SRC" "$HV_APK_DST"
rm -f "$HV_ODEX_SRC" "$HV_VDEX_SRC"
/apex/com.android.art/bin/dex2oat64 \
    --dex-file="$HV_APK_DST" \
    --dex-location="$HV_APK_DST" \
    --oat-file="$HV_ODEX_SRC" \
    --output-vdex="$HV_VDEX_SRC" \
    --instruction-set=arm64 \
    --compiler-filter=speed

chmod 644 "$HV_ODEX_SRC" "$HV_VDEX_SRC"
chown root:root "$HV_ODEX_SRC" "$HV_VDEX_SRC"
chcon u:object_r:system_file:s0 "$HV_ODEX_SRC" "$HV_VDEX_SRC"
rm -rf /data/dalvik-cache/arm64/*HTMLViewer*

for p in 1 $(pidof zygote64) $(pidof zygote) $(pidof system_server); do
    [ -z "$p" ] && continue
    nsenter -t "$p" -m -- /system/bin/sh -c "
        while umount -l '$HV_APK_DST' 2>/dev/null; do :; done
        while umount -l '$HV_ODEX_DST' 2>/dev/null; do :; done
        while umount -l '$HV_VDEX_DST' 2>/dev/null; do :; done
        mount -o bind '$HV_APK_SRC' '$HV_APK_DST' 2>/dev/null
        mount -o bind '$HV_ODEX_SRC' '$HV_ODEX_DST' 2>/dev/null
        mount -o bind '$HV_VDEX_SRC' '$HV_VDEX_DST' 2>/dev/null
    "
done

# 3. Persist HTMLViewer bind-mount in service.sh if not already present
if ! grep -q "HV_APK_SRC" "$MODDIR/service.sh"; then
    cat >> "$MODDIR/service.sh" << 'EOF'

# 15. Mount Patched HTMLViewer.apk (Native PDF + Text/HTML Viewer)
HV_APK_SRC="$MODDIR/system/app/HTMLViewer/HTMLViewer.apk"
HV_ODEX_SRC="$MODDIR/system/app/HTMLViewer/oat/arm64/HTMLViewer.odex"
HV_VDEX_SRC="$MODDIR/system/app/HTMLViewer/oat/arm64/HTMLViewer.vdex"
HV_APK_DST="/system/app/HTMLViewer/HTMLViewer.apk"
HV_ODEX_DST="/system/app/HTMLViewer/oat/arm64/HTMLViewer.odex"
HV_VDEX_DST="/system/app/HTMLViewer/oat/arm64/HTMLViewer.vdex"
if [ -f "$HV_APK_SRC" ] && [ -f "$HV_ODEX_SRC" ]; then
    chmod 0644 "$HV_APK_SRC" "$HV_ODEX_SRC" "$HV_VDEX_SRC" 2>/dev/null
    chown root:root "$HV_APK_SRC" "$HV_ODEX_SRC" "$HV_VDEX_SRC" 2>/dev/null
    chcon u:object_r:system_file:s0 "$HV_APK_SRC" "$HV_ODEX_SRC" "$HV_VDEX_SRC" 2>/dev/null
    rm -rf /data/dalvik-cache/arm64/*HTMLViewer* 2>/dev/null
    for p in 1 $(pidof zygote64) $(pidof zygote) $(pidof system_server); do
        [ -z "$p" ] && continue
        nsenter -t "$p" -m -- /system/bin/sh -c "
            while umount -l '$HV_APK_DST' 2>/dev/null; do :; done
            while umount -l '$HV_ODEX_DST' 2>/dev/null; do :; done
            while umount -l '$HV_VDEX_DST' 2>/dev/null; do :; done
            mount -o bind '$HV_APK_SRC' '$HV_APK_DST' 2>/dev/null
            mount -o bind '$HV_ODEX_SRC' '$HV_ODEX_DST' 2>/dev/null
            mount -o bind '$HV_VDEX_SRC' '$HV_VDEX_DST' 2>/dev/null
        "
    done
    am force-stop com.android.htmlviewer 2>/dev/null
fi
EOF
fi

ls -lh "$MODDIR/system/app/HTMLViewer/oat/arm64/"
rm -f /data/local/tmp/OSFileManager.apk /data/local/tmp/HTMLViewer.apk /data/local/tmp/deploy_pdf.sh
