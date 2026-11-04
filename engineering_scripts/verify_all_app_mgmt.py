import subprocess
import sys
import time
import re

sys.stdout.reconfigure(encoding="utf-8")

def adb(cmd):
    return subprocess.run(cmd, capture_output=True, text=True, encoding="utf-8", errors="ignore")

def dump_texts(tag):
    adb(["adb", "shell", f"uiautomator dump /data/local/tmp/ui_{tag}.xml"])
    res = adb(["adb", "shell", f"cat /data/local/tmp/ui_{tag}.xml"]).stdout
    return re.findall(r'text="([^"]+)"', res)

adb(["adb", "shell", "logcat -b crash -c"])

# 1. Test Default Gallery, Music & Calendar
adb(["adb", "shell", "am start --activity-clear-task -n com.android.settings/.SubSettings -e :settings:show_fragment com.transsion.settings.applications.defaultapps.DefaultAppSettings"])
time.sleep(1.5)
print("1. Default Gallery, Music & Calendar:", dump_texts("def_apps"))

# 2. Test Special app access
adb(["adb", "shell", "am start --activity-clear-task -n com.android.settings/.SubSettings -e :settings:show_fragment com.android.settings.applications.specialaccess.SpecialAccessSettings"])
time.sleep(1.5)
print("2. Special app access (top):", dump_texts("spec_top"))
adb(["adb", "shell", "input swipe 500 1300 500 300 300"])
time.sleep(1.0)
print("2b. Special app access (bottom):", dump_texts("spec_bot"))

# 3. Test App Info on DeskClock / Calendar / WhatsApp (has SCHEDULE_EXACT_ALARM)
adb(["adb", "shell", "am start --activity-clear-task -a android.settings.APPLICATION_DETAILS_SETTINGS -d package:com.whatsapp"])
time.sleep(1.8)
print("3. App Info (WhatsApp top):", dump_texts("wa_top"))
adb(["adb", "shell", "input swipe 500 1350 500 250 300"])
time.sleep(1.0)
wa_bot = dump_texts("wa_bot")
print("3b. App Info (WhatsApp bottom):", wa_bot)

# Tap Alarms & reminders inside WhatsApp App Info
res = adb(["adb", "shell", "cat /data/local/tmp/ui_wa_bot.xml"]).stdout
m_bounds = re.search(r'text="Alarms &amp; reminders"[^>]*bounds="\[(\d+),(\d+)\]\[(\d+),(\d+)\]"', res)
if m_bounds:
    cx = (int(m_bounds.group(1)) + int(m_bounds.group(3))) // 2
    cy = (int(m_bounds.group(2)) + int(m_bounds.group(4))) // 2
    adb(["adb", "shell", f"input tap {cx} {cy}"])
    time.sleep(1.5)
    print("4. Tapped Alarms & reminders inside WhatsApp:", dump_texts("wa_alarm_detail"))

# 5. Return to App Management screen for the user
adb(["adb", "shell", "am start --activity-clear-task -n com.android.settings/.SubSettings -e :settings:show_fragment com.transsion.settings.applications.AppManagementDashboardFragment"])
time.sleep(1.2)
print("5. Final App Management Screen:", dump_texts("final_app_mgmt"))

# 6. Check crash logcat
crashes = adb(["adb", "shell", "logcat -b crash -d"]).stdout.strip()
print("6. Crashes:", "NONE" if not crashes else crashes)
