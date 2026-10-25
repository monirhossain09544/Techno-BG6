#!/system/bin/sh
CFG="/data/data/com.transsion.magicfont/shared_prefs/config.xml"
[ -f "$CFG" ] || exit 0
USER_FONT=$(sed -n 's/.*<string name="user_font_p">\([^<]*\)<\/string>.*/\1/p' "$CFG" 2>/dev/null)
[ -n "$USER_FONT" ] || exit 0

mkdir -p /data/typeface/default 2>/dev/null

if [ "$USER_FONT" = "Roboto-Regular.ttf" ]; then
    TARGET_HASH=""
elif [ "$USER_FONT" = "TOS_1104VF.ttf" ]; then
    if [ ! -s /data/typeface/default/TransSansVF.ttf ]; then
        HL_APK=$(pm path com.transsion.hilauncher 2>/dev/null | head -n 1 | cut -d: -f2)
        [ -n "$HL_APK" ] && unzip -p "$HL_APK" assets/card/TransSansVF.ttf > /data/typeface/default/TransSansVF.ttf 2>/dev/null
        chown system:system /data/typeface/default/TransSansVF.ttf 2>/dev/null
        chmod 0644 /data/typeface/default/TransSansVF.ttf 2>/dev/null
        restorecon /data/typeface/default/TransSansVF.ttf 2>/dev/null
    fi
    TARGET_HASH="TransSansVF.ttf"
else
    FNAME=$(basename "$USER_FONT")
    if [ -f "$USER_FONT" ]; then
        cp -f "$USER_FONT" "/data/typeface/default/$FNAME" 2>/dev/null
        chown system:system "/data/typeface/default/$FNAME" 2>/dev/null
        chmod 0644 "/data/typeface/default/$FNAME" 2>/dev/null
        restorecon "/data/typeface/default/$FNAME" 2>/dev/null
    fi
    TARGET_HASH="$FNAME"
fi

CUR_HASH=$(getprop persist.vendor.sys.os.typeface.defaultfont.hash)
if [ "$CUR_HASH" != "$TARGET_HASH" ]; then
    setprop persist.vendor.sys.os.typeface.defaultfont.hash "$TARGET_HASH"
    FS=$(settings get system font_scale 2>/dev/null)
    case "$FS" in
        *00001) NEW_FS="${FS%00001}" ;;
        *.*) NEW_FS="${FS}00001" ;;
        *) NEW_FS="1.00001" ;;
    esac
    settings put system font_scale "$NEW_FS"
fi
