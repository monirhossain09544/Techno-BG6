import subprocess

ADB = r"C:\Users\Monir\Android\Sdk\platform-tools\adb.exe"

cmd = """
echo "=== 1. BUILD & INFINITY X VERSION ==="
getprop ro.infinity.version
getprop ro.build.version.release
getprop ro.build.display.id
getprop persist.vendor.hwc.display.modeid

echo "=== 2. SILICON & KERNEL OPTIMIZATION NODES ==="
echo "bg6_perf_engine PID: $(pgrep -a bg6_perf_engine)"
echo "top-app boost: $(cat /proc/sys/unisched/group_ctl/top-app/boost 2>/dev/null)"
echo "foreground boost: $(cat /proc/sys/unisched/group_ctl/foreground/boost 2>/dev/null)"
echo "background boost: $(cat /proc/sys/unisched/group_ctl/background/boost 2>/dev/null)"
echo "top-app shares: $(cat /dev/cpuctl/top-app/cpu.shares 2>/dev/null)"
echo "top-app uclamp.min: $(cat /dev/cpuctl/top-app/cpu.uclamp.min 2>/dev/null)"
echo "cpuset background cpus: $(cat /dev/cpuset/background/cpus 2>/dev/null)"
echo "cpuset system-background cpus: $(cat /dev/cpuset/system-background/cpus 2>/dev/null)"
echo "cpuset top-app cpus: $(cat /dev/cpuset/top-app/cpus 2>/dev/null)"
echo "MGLRU enabled: $(cat /sys/kernel/mm/lru_gen/enabled 2>/dev/null)"
echo "vm.page-cluster: $(cat /proc/sys/vm/page-cluster 2>/dev/null)"
echo "vm.swappiness: $(cat /proc/sys/vm/swappiness 2>/dev/null)"
echo "GPU polling_interval: $(cat /sys/class/devfreq/23100000.gpu/polling_interval 2>/dev/null)"
echo "seth_lte0 accept_ra: $(cat /proc/sys/net/ipv6/conf/seth_lte0/accept_ra 2>/dev/null)"

echo "=== 3. HARDWARE RRO OVERLAY STATUS ==="
cmd overlay list android | grep -E "bg6|treble"

echo "=== 4. CURRENT FOREGROUND ACTIVITY ==="
dumpsys window | grep -E "mCurrentFocus|mFocusedApp"
"""

res = subprocess.run([ADB, "shell", cmd], text=True, capture_output=True)
print(res.stdout)
if res.stderr:
    print("STDERR:", res.stderr)

subprocess.run([ADB, "shell", "input keyevent KEYCODE_WAKEUP"], check=False)
subprocess.run([ADB, "shell", "screencap -p /sdcard/infinity_x_live.png"], check=False)
subprocess.run([ADB, "pull", "/sdcard/infinity_x_live.png", r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\infinity_x_live.png"], check=False)
