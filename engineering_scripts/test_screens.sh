#!/system/bin/sh
echo "=== 1. Test ManageApplications (AppLocaleDetails) ==="
am start -n com.android.settings/.SubSettings -e :settings:show_fragment com.android.settings.applications.manageapplications.ManageApplications -e classname com.android.settings.applications.appinfo.AppLocaleDetails
sleep 2
uiautomator dump /data/local/tmp/ui1.xml
grep -o 'text="[^"]*"' /data/local/tmp/ui1.xml | head -n 30

echo "=== 2. Test App Info (Chrome) ==="
am start -a android.settings.APPLICATION_DETAILS_SETTINGS -d package:com.android.chrome
sleep 2
uiautomator dump /data/local/tmp/ui2.xml
grep -o 'text="[^"]*"' /data/local/tmp/ui2.xml | head -n 40
