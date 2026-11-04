import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)
_, out, err = ssh.exec_command("cat /tmp/prepare_clean_sunno_source.py; echo '=== bgN.mk ==='; cat /nvme0n1-disk/shunno_os/device/phh/treble/treble_arm64_bgN.mk")
print(out.read().decode())
ssh.close()
