import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS)

cmd = """
cd /nvme0n1-disk/shunno_os
find out/target/product/tdgsi_arm64_ab/system -name "*Launcher*.apk"
cat packages/apps/Launcher3/quickstep/AndroidManifest-launcher.xml
"""
stdin, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
ssh.close()
