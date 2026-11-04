echo "=== SIM / WFC state ==="
content query --uri content://telephony/siminfo --projection _id:display_name:carrier_name:sim_id:wfc_ims_enabled:wfc_ims_mode:volte_vt_enabled:ims_rcs_uce_enabled 2>/dev/null | grep -v 'sim_id=-1'
echo "=== IMS registration ==="
dumpsys telephony_ims 2>/dev/null | grep -i -E 'registered|wfc|wifi|regist' | head -15
dumpsys phone 2>/dev/null | grep -i -E 'mImsRegistered|isWifiCallingAvailable|imsRegistered|VoWifi|WFC' | head -15
echo "=== carrier config wfc ==="
dumpsys carrier_config 2>/dev/null | grep -i -E 'carrier_wfc_ims_available_bool|carrier_volte_available_bool|editable_wfc' | head -10
echo "=== settings wfc ==="
settings list global | grep -i -E 'wfc|wifi_call'
getprop | grep -i -E 'wfc|vowifi'
echo "=== scribe ==="
pm list packages | grep -i -E 'scribe|hearing'
