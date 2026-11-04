import subprocess
import paramiko

HOST = '${BG6_SERVER_IP}'
USER = 'administrator'
PASS = '${BG6_SERVER_PASS}'

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect(HOST, username=USER, password=PASS)

cmd = """
find /nvme0n1-disk/shunno_os/out -name "Browser2.apk" -o -name "*Browser*.apk" -o -name "*Jelly*.apk" 2>/dev/null
"""
_, out, _ = c.exec_command(cmd)
res = [x for x in out.read().decode().strip().splitlines() if not ' intermediate' in x]
print("Existing Browser APKs:", res)

apk_path = None
for p in res:
    if p.endswith('Browser2.apk'):
        apk_path = p
        break

if not apk_path:
    print("Building Browser2 on 72-core server...")
    build_cmd = """
    cd /nvme0n1-disk/shunno_os
    source build/envsetup.sh
    lunch treble_arm64_bgN-ap2a-userdebug
    m -j72 Browser2
    """
    _, out, err = c.exec_command(build_cmd)
    for line in out:
        print(line, end='')
    _, out2, _ = c.exec_command('find /nvme0n1-disk/shunno_os/out -name "Browser2.apk" 2>/dev/null')
    apk_path = out2.read().decode().strip().splitlines()[0]

print("Downloading:", apk_path)
sftp = c.open_sftp()
local_apk = r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\Browser2.apk'
sftp.get(apk_path, local_apk)
sftp.close()
c.close()

print("Installing Browser2.apk to phone...")
subprocess.run(['adb', '-s', '1099738415003670', 'install', '-r', local_apk], check=True)
subprocess.run(['adb', '-s', '1099738415003670', 'shell', 'cmd role add-role-holder android.app.role.BROWSER org.chromium.webview_shell'], check=False)
subprocess.run(['adb', '-s', '1099738415003670', 'shell', 'cmd role get-role-holders android.app.role.BROWSER'], check=False)
print("Done!")
