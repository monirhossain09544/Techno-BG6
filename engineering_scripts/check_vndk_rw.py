import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=15)

cmds = [
    "cat /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/etc/init/vndk.rc",
    "cat /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/etc/init/surfaceflinger.rc",
    "grep -n -C 15 -i 'sprd\\|unisoc\\|display\\|dispc\\|backlight\\|brightness' /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/bin/rw-system.sh || true",
]

for c in cmds:
    print(f"=== CMD: {c} ===")
    stdin, stdout, stderr = ssh.exec_command(c)
    print(stdout.read().decode('utf-8', 'ignore'))

ssh.close()
