import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)

cmd = """set -e
cd /nvme0n1-disk/shunno_os
grep -q "ro.config.low_ram=false" out/target/product/tdgsi_arm64_ab/system/product/etc/build.prop || echo "ro.config.low_ram=false" >> out/target/product/tdgsi_arm64_ab/system/product/etc/build.prop
grep -q "ro.config.low_ram=false" out/target/product/tdgsi_arm64_ab/system/build.prop || echo "ro.config.low_ram=false" >> out/target/product/tdgsi_arm64_ab/system/build.prop
tail -n 10 out/target/product/tdgsi_arm64_ab/system/product/etc/build.prop
"""
_, out, err = ssh.exec_command(cmd)
print(out.read().decode())
print(err.read().decode())
ssh.close()
