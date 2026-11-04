import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password=r"${BG6_SERVER_PASS}", timeout=15)

cmd = """
cd /nvme0n1-disk/hios14_rom
echo "=== 1. Compare root dirs: shunno_os vs merged_root ==="
ls -la /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/root/
echo "=== 2. Check /system/product and /system/system_ext in shunno_os/system vs merged_root/system ==="
ls -la /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/
ls -la merged_root/system/
echo "=== 3. Check bootstrap-apex / apex in merged_root/system/apex vs merged_root/system/system_ext/apex ==="
ls -la merged_root/system/apex/
ls -la merged_root/system/system_ext/apex/
echo "=== 4. Check full secilc compilation with ALL cil files that init loads ==="
"""
_, stdout, stderr = ssh.exec_command(cmd)
print(stdout.read().decode())
print(stderr.read().decode())
ssh.close()
