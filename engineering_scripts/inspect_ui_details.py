import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS)

cmd = """
cd /nvme0n1-disk/shunno_os
echo "=== RoSystemProperties.java ==="
grep -n -C 5 "CONFIG_LOW_RAM" frameworks/base/core/java/com/android/internal/os/RoSystemProperties.java

echo "=== framework-res config.xml corner radius & refresh rate & browser ==="
grep -n -E "config_defaultRefreshRate|config_defaultPeakRefreshRate|config_navBarInteractionMode|config_defaultBrowser|config_dialogCornerRadius|config_buttonCornerRadius|status_bar_height_portrait" frameworks/base/core/res/res/values/config.xml frameworks/base/core/res/res/values/dimens.xml

echo "=== SystemUI QS dimens & colors ==="
grep -n -E "qs_tile_margin|qs_tile_height|qs_tile_text_size|qs_corner_radius|notification_corner_radius|blur" frameworks/base/packages/SystemUI/res/values/dimens.xml frameworks/base/packages/SystemUI/res/values/config.xml | head -n 40

echo "=== Launcher3 device_profiles & qsb ==="
ls packages/apps/Launcher3/res/xml/
grep -n "qsb" packages/apps/Launcher3/res/layout/search_container_workspace.xml 2>/dev/null | head -n 20
"""
stdin, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
