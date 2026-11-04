import subprocess, sys
sys.stdout.reconfigure(encoding='utf-8')
res = subprocess.check_output(['adb', 'shell', "su -c 'f=$(ls -t /data/anr/ | head -n 1); sed -n \"451,750p\" /data/anr/$f'"]).decode('utf-8', 'ignore')
print(res)
