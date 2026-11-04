P=/data/adb/modules/bg6_hios_pro/system.prop
grep -q '^ro.tran_wfc_qs.support=' $P || printf '\n# Wi-Fi Calling Quick Settings tile\nro.tran_wfc_qs.support=1\n' >> $P
RP=resetprop; command -v resetprop >/dev/null || RP="/data/adb/ksud debug resetprop"
$RP -n ro.tran_wfc_qs.support 1
echo "prop: $(getprop ro.tran_wfc_qs.support)"
T=$(settings get secure sysui_qs_tiles)
echo "$T" > /data/adb/modules/bg6_hios_pro/qs_tiles.before.txt
case ",$T," in *,vowifi,*) ;; *) settings put secure sysui_qs_tiles "$T,vowifi";; esac
pkill -f com.android.systemui
sleep 6
echo "tiles: $(settings get secure sysui_qs_tiles)"
dumpsys activity service com.android.systemui/.SystemUIService 2>/dev/null | grep -i -E 'vowifi|TrWifiCalling' | head -5
