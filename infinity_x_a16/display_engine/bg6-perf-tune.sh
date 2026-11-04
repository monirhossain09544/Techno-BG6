#!/system/bin/sh
resetprop_phh ro.config.low_ram false
resetprop_phh ro.com.google.acsa true
resetprop_phh ro.opa.eligible_device true
resetprop_phh persist.sys.phh.unisoc_color_transform_workaround 1
resetprop_phh persist.sys.sf.disable_blurs 0
resetprop_phh ro.vendor.build.display.id BG6-F069-OP-V2387-250722

# Protect ICNL9916 01f1 flashless SRAM-BOOT touch firmware from gesture_function reset trap
if [ -e /proc/gesture_function ]; then
    umount /proc/gesture_function 2>/dev/null || true
    echo -n "cc0" > /dev/dt2w_state
    chmod 0666 /dev/dt2w_state
    mount -o bind /dev/dt2w_state /proc/gesture_function 2>/dev/null || true
fi

cmd overlay disable android.go_unisoc_framework_res.overlay 2>/dev/null || true
cmd overlay disable android.unisoc_framework_res.overlay 2>/dev/null || true
cmd overlay enable com.android.internal.systemui.navbar.transparent 2>/dev/null || true
cmd overlay enable android.overlay.tecno.bg6 2>/dev/null || true

settings put system navigation_bar_hint 0 2>/dev/null || true
settings put secure navigation_bar_hint 0 2>/dev/null || true
settings put system navbar_ime_space 0 2>/dev/null || true
settings put secure navbar_ime_space 0 2>/dev/null || true
settings put system gesture_navbar_length_mode 0 2>/dev/null || true
settings put secure trust_warnings 0 2>/dev/null || true

if [ "$(getprop persist.sys.bg6.display_v2)" != "1" ]; then
    settings put system screen_auto_brightness_adj 0.0 2>/dev/null || true
    cmd display reset-brightness-configuration 2>/dev/null || true
    settings put system peak_refresh_rate 90.0 2>/dev/null || true
    settings put system min_refresh_rate 60.0 2>/dev/null || true
    settings put secure double_tap_to_wake 1 2>/dev/null || true
    settings put global disable_window_blurs 0 2>/dev/null || true
    if [ "$(getprop persist.sys.sf.color_saturation)" = "0.0" ] || [ "$(getprop persist.sys.sf.color_saturation)" = "0" ]; then
        setprop persist.sys.sf.color_saturation 1.0
        service call SurfaceFlinger 1022 f 1.0 >/dev/null 2>&1 || true
    fi
    setprop persist.sys.bg6.display_v2 1
fi

cur_dialer=$(cmd role get-role-holders android.app.role.DIALER 2>/dev/null)
if [ "$cur_dialer" != "com.sh.smart.caller" ]; then
    cmd role add-role-holder --user 0 android.app.role.DIALER com.sh.smart.caller 2>/dev/null || true
fi
appops set com.transsion.filemanagerx MANAGE_EXTERNAL_STORAGE allow 2>/dev/null || true
appops set com.transsion.notebook MANAGE_EXTERNAL_STORAGE allow 2>/dev/null || true

if [ -e /sys/block/zram0 ]; then
    cur_zram=$(cat /sys/block/zram0/disksize 2>/dev/null)
    if [ "$cur_zram" != "4294967296" ]; then
        swapoff /dev/block/zram0 2>/dev/null || true
        echo 1 > /sys/block/zram0/reset 2>/dev/null || true
        echo lz4 > /sys/block/zram0/comp_algorithm 2>/dev/null || true
        echo 4294967296 > /sys/block/zram0/disksize 2>/dev/null || true
        mkswap /dev/block/zram0 >/dev/null 2>&1 || true
        swapon /dev/block/zram0 2>/dev/null || true
    fi
fi
