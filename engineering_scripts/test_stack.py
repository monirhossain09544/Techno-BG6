import subprocess, sys
sys.stdout.reconfigure(encoding='utf-8')
log = subprocess.check_output(['adb', 'shell', "su -c 'pid=$(pidof com.android.settings); echo PID=$pid; [ -n \"$pid\" ] && debuggerd -b $pid | head -n 60; logcat -d -t 100'"]).decode('utf-8', 'ignore')
print(log)
