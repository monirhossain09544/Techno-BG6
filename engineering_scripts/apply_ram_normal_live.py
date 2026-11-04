import subprocess
import time

def sh(cmd):
    return subprocess.check_output(['adb', 'shell', cmd], text=True).strip()

print("Before zygote restart:")
print("ro.config.low_ram:", sh("getprop ro.config.low_ram"))
print("ram features:", sh("pm list features | grep ram"))

print("Restarting zygote so SystemConfig re-evaluates ro.config.low_ram=false...")
sh("setprop ctl.restart zygote")

for i in range(30):
    time.sleep(1)
    try:
        out = sh("pm list features | grep ram")
        if "ram.normal" in out or "ram.low" in out:
            print(f"After {i+1}s, ram features:\n{out}")
            break
    except Exception:
        pass

# Re-ensure gesture nav and IPv6 disable after soft restart
sh("cmd overlay enable-exclusive --user current com.android.internal.systemui.navbar.gestural")
sh("pm clear com.android.vending")
print("Cleared Play Store data so it registers android.hardware.ram.normal!")
