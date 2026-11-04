import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS)

cmd = """
cd /nvme0n1-disk/shunno_os
echo "=== Launcher3 search_container_workspace.xml ==="
cat packages/apps/Launcher3/res/layout/search_container_workspace.xml

echo "=== Launcher3 default_workspace_4x4.xml ==="
cat packages/apps/Launcher3/res/xml/default_workspace_4x4.xml

echo "=== SystemUI quick_settings_tiles_default ==="
grep -n -C 15 "quick_settings_tiles_default" frameworks/base/packages/SystemUI/res/values/config.xml

echo "=== SystemUI blur config ==="
grep -n -C 5 -i "blur" frameworks/base/packages/SystemUI/res/values/config.xml
"""
stdin, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
