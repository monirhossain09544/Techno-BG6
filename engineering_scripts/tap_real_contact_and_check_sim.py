import subprocess
import time

# 1. Press back, tap actual contact row at (360, 820) in PeopleActivity, dump exact ContactLoader error in logcat!
subprocess.run(["adb", "shell", "am", "start", "-n", "com.sh.smart.caller/com.android.contacts.activities.PeopleActivity"], capture_output=True)
time.sleep(1.5)
subprocess.run(["adb", "logcat", "-c"])
subprocess.run(["adb", "shell", "input", "tap", "360", "820"])
time.sleep(2.0)

log = subprocess.run(["adb", "logcat", "-d"], capture_output=True, text=True, errors="replace").stdout
print("=== LOGCAT AFTER TAPPING ACTUAL CONTACT ===")
for line in log.splitlines():
    if any(k in line.lower() for k in ["sqlite", "invalid column", "contactloader", "quickcontact", "ra0", "error", "exception", "doesn't exist", "not exist", "contactsprovider"]):
        print(line)

# 2. Grant WRITE_SETTINGS appop to com.sh.smart.caller too (we saw SecurityException WRITE_SETTINGS in logcat!)
subprocess.run(["adb", "shell", "appops", "set", "com.sh.smart.caller", "WRITE_SETTINGS", "allow"])

# 3. Check dumpsys isub for exact active SIM subIds, and check raw_contacts accounts & icc URIs!
isub = subprocess.run(["adb", "shell", "dumpsys", "isub"], capture_output=True, text=True, errors="replace").stdout
print("\n=== ACTIVE SUBSCRIPTIONS (dumpsys isub) ===")
for line in isub.splitlines():
    if "SubInfoRecord" in line or "Active subId" in line or "slotIndex=" in line:
        print(line[:200])

raw = subprocess.run(["adb", "shell", "content", "query", "--uri", "content://com.android.contacts/raw_contacts", "--projection", "_id:display_name:account_type:account_name:deleted"], capture_output=True, text=True, errors="replace").stdout
print(f"\n=== RAW CONTACTS IN CONTACTSPROVIDER ({len(raw.splitlines())} rows) ===")
for l in raw.splitlines()[:25]:
    print(" ", l)
