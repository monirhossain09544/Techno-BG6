import subprocess, time, urllib.request

ADB = r"C:\Users\Monir\Android\Sdk\platform-tools\adb.exe"
SER = "1099738415003670"
ART = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f"

def run(cmd):
    p = subprocess.run(cmd, capture_output=True, text=True)
    return p.stdout + p.stderr

# Disable stock Infinity-X Contacts & Dialer immediately on live system too
print(run([ADB, "-s", SER, "shell", "pm disable-user --user 0 com.android.contacts"]))
print(run([ADB, "-s", SER, "shell", "pm disable-user --user 0 com.android.dialer"]))

run([ADB, "-s", SER, "logcat", "-c"])
# Dismiss chooser or open MainActivity fresh and tap (i)
run([ADB, "-s", SER, "shell", "am force-stop com.sh.smart.caller"])
run([ADB, "-s", SER, "shell", "am start -n com.sh.smart.caller/com.android.dialer.main.impl.MainActivity"])
time.sleep(2.5)
run([ADB, "-s", SER, "shell", "input tap 660 428"])
time.sleep(2.5)
run([ADB, "-s", SER, "shell", "screencap -p /sdcard/sc_v6_calldetail3.png"])
run([ADB, "-s", SER, "pull", "/sdcard/sc_v6_calldetail3.png", f"{ART}\\sc_v6_calldetail3.png"])

logs = run([ADB, "-s", SER, "logcat", "-d", "-s", "AndroidRuntime:E"])
print("Crashes:\n", logs[-2000:] if logs else "NONE")

# Also resolve the Uptodown/Appteka redirect URLs for com.transsion.filemanagerx
for idx, u in enumerate([
    "https://vertexaisearch.cloud.google.com/grounding-api-redirect/AUZIYQHLHfcUbkRq7xNwSZ5-p1ZPWoJtQjIUQtjqBy4invKLT_7fWENSXQ9qjoqkX37YC1sZlp1zwaZL-kFvGXiEwPEYJoJW4ASlw86hhCQSfGn1A9SWb_Ofog0M7_87W4xTAxVB-vxh_Sdg6TYPq1MEPFni",
    "https://vertexaisearch.cloud.google.com/grounding-api-redirect/AUZIYQFI1ssmjxl577ZvYf4T3XCWQD-3312LWeildxJtW-GwTFA8-yWK0o8A-5Y6Qv-E-qFN3BRIqD1nVb7ziBb9rVkCObsYDXfMzagpE-G_02SOMQBh4bPEu_90B4E=",
    "https://vertexaisearch.cloud.google.com/grounding-api-redirect/AUZIYQH_PLri4P5McSci8PCvElUOICAJz1O8eCguzBcb9i3oH_InjgOxxGpW5pGRHpf6zrqmbmkGbTlOSxZuYYq57lcVhxcDbMKrXpigWqR5isygLGAweUMLzq56vTvzAqVKThSAYWWHb9lDM5FgLIPEQSG1p4SwDDdSWnrFo_OXR1fbUWM9-0Nwywa79cpql5F9qdYhiY726S7FggE=",
]):
    try:
        req = urllib.request.Request(u, headers={"User-Agent": "Mozilla/5.0"})
        resp = urllib.request.urlopen(req, timeout=10)
        print(f"Resolved [{idx}]:", resp.geturl())
    except Exception as e:
        print(f"Resolve err [{idx}]:", e)
