import paramiko

c = paramiko.SSHClient()
c.set_missing_host_key_policy(paramiko.AutoAddPolicy())
c.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=15)

cmd = """
ZIPALIGN=$(find /nvme0n1-disk/shunno_os/out/host/linux-x86/bin /nvme0n1-disk/shunno_os/prebuilts -name "zipalign" 2>/dev/null | head -n 1)
echo "ZIPALIGN=$ZIPALIGN"
"$ZIPALIGN" -c -v 4 /nvme0n1-disk/infinity_x/mock_work/framework.jar | grep -E "classes|Verification"
"$ZIPALIGN" -c -v 4 /nvme0n1-disk/infinity_x/mock_work/services.jar | grep -E "classes|Verification"
"""
stdin, stdout, stderr = c.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
c.close()
