import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=30)

cmd = r'''set -e
cd /nvme0n1-disk/shunno_os
source build/envsetup.sh
lunch treble_arm64_bvN-ap2a-userdebug
m -j$(nproc) framework-res SystemUI Launcher3QuickStep treble-overlay-tecno-bg6

ls -lh out/target/product/tdgsi_arm64_ab/system/framework/framework-res.apk
ls -lh out/target/product/tdgsi_arm64_ab/system/system_ext/priv-app/SystemUI/SystemUI.apk
ls -lh out/target/product/tdgsi_arm64_ab/system/system_ext/priv-app/Launcher3QuickStep/Launcher3QuickStep.apk
ls -lh out/target/product/tdgsi_arm64_ab/system/product/overlay/treble-overlay-tecno-bg6.apk
'''

stdin, stdout, stderr = ssh.exec_command(cmd)
while True:
    line = stdout.readline()
    if not line:
        break
    print(line, end="", flush=True)

err = stderr.read().decode()
if err:
    print("STDERR:\n", err)
exit_status = stdout.channel.recv_exit_status()
ssh.close()
raise SystemExit(exit_status)
