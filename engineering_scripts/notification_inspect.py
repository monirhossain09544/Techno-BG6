from notification_baseline import ROOT, save_remote, shell
import hashlib
from pathlib import Path

save_remote('/data/adb/modules/bg6_hios_pro/system.prop', 'system.before.prop')
save_remote('/data/adb/modules/bg6_hios_pro/transettings_oat/ts.oat', 'settings.module.before.oat')
save_remote('/data/adb/modules/bg6_hios_pro/transettings_oat/ts.vdex', 'settings.module.before.vdex')
save_remote('/data/dalvik-cache/arm64/system_ext@app@OSSettingsExt@OSSettingsExt.apk@classes.vdex', 'ossettingsext.before.vdex')
save_remote('/data/dalvik-cache/arm64/system_ext@app@OSSettingsExt@OSSettingsExt.apk@classes.dex', 'ossettingsext.before.oat')
print('FILE METADATA', shell('stat -c "%n %s %u %g %a" /data/adb/modules/bg6_hios_pro/service.sh /data/dalvik-cache/arm64/system_ext@priv-app@TranSettings@TranSettings.apk@classes.* /data/dalvik-cache/arm64/system_ext@app@OSSettingsExt@OSSettingsExt.apk@classes.*', root=True))
print('ATTRIBUTES', shell('lsattr /data/dalvik-cache/arm64/system_ext@priv-app@TranSettings@TranSettings.apk@classes.* /data/dalvik-cache/arm64/system_ext@app@OSSettingsExt@OSSettingsExt.apk@classes.*', root=True))
for file in ('service.before.sh', 'system.before.prop'):
    print('PERSISTENCE', file)
    text = (ROOT / file).read_text(encoding='utf-8')
    for i, line in enumerate(text.splitlines(), 1):
        if any(word in line for word in ('os_u_ossettings', 'notification_filter', 'sms_filter', 'lockscreen_notify', 'msg_split_screen', 'ossettingsext_oat', 'tran_wfc_qs', 'livetranscribe', 'changing_light', 'led_support')):
            print(i, line)
for name in ('ts.vdex', 'ts_patched.vdex'):
    p = Path(r'C:\Users\Monir\AppData\Local\Temp') / name
    print('PC SHA256', name, hashlib.sha256(p.read_bytes()).hexdigest())
print('BLUR LOG', shell('logcat -d -t 180 -s StaticBlurController:V TsImageBlurrer:V'))
print('NOTIFICATION SETTINGS', shell('am start -W -n com.transsion.ossettingsext/.noticenter.activity.NotificationDisplaySettingsActivity', root=True))
