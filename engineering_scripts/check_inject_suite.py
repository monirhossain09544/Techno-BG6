import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)

cmd = r"""
cat /nvme0n1-disk/infinity_x/inject_suite.sh
echo "=== DocumentsUI Manifest Header ==="
/nvme0n1-disk/shunno_os/prebuilts/sdk/tools/linux/bin/aapt2 dump xmltree /tmp/mnt_inf_bake/system/priv-app/DocumentsUI/DocumentsUI.apk --file AndroidManifest.xml | head -n 25
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=30)
print(stdout.read().decode("utf-8", errors="replace"))
ssh.close()
