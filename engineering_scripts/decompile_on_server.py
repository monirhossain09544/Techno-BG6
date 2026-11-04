import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

cmd = """
set -e
mkdir -p /nvme0n1-disk/infinity_x/mock_work
cd /nvme0n1-disk/infinity_x/mock_work

echo "${BG6_SERVER_PASS}" | sudo -S mkdir -p /nvme0n1-disk/infinity_x/mnt_work
if ! mountpoint -q /nvme0n1-disk/infinity_x/mnt_work; then
    echo "${BG6_SERVER_PASS}" | sudo -S mount -o loop,ro /nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img /nvme0n1-disk/infinity_x/mnt_work
fi

cp /nvme0n1-disk/infinity_x/mnt_work/system/framework/framework.jar .
cp /nvme0n1-disk/infinity_x/mnt_work/system/framework/services.jar .
echo "${BG6_SERVER_PASS}" | sudo -S umount /nvme0n1-disk/infinity_x/mnt_work

unzip -o framework.jar classes2.dex classes3.dex classes5.dex
unzip -o services.jar classes2.dex -d srv_dex

baksmali d classes2.dex -o fw_classes2
baksmali d classes5.dex -o fw_classes5
baksmali d srv_dex/classes2.dex -o srv_classes2

echo "=== Location.smali mock methods ==="
grep -n -A 35 "\\.method.*Mock" fw_classes2/android/location/Location.smali

echo "=== HideDeveloperStatusUtils.smali ==="
cat fw_classes5/com/android/internal/util/infinity/HideDeveloperStatusUtils.smali

echo "=== MockLocationProvider.smali ==="
cat srv_classes2/com/android/server/location/provider/MockLocationProvider.smali

echo "=== MockableLocationProvider.smali isMock ==="
grep -n -A 40 "\\.method.*isMock" srv_classes2/com/android/server/location/provider/MockableLocationProvider.smali
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=180)
out = stdout.read().decode()
err = stderr.read().decode()
print(out)
if err:
    print("STDERR:", err)
ssh.close()
