import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=15)

cmds = [
    "ls -la /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/*.img",
    "ls -la /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/etc/init/ | tail -n 25",
    "find /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system -name '*fix*' -o -name '*sunno*' -o -name '*sprd*' 2>/dev/null || true",
]

for c in cmds:
    print(f"=== CMD: {c} ===")
    stdin, stdout, stderr = ssh.exec_command(c)
    print(stdout.read().decode('utf-8', 'ignore'))

ssh.close()
