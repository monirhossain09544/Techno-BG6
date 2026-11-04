import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=15)

cmds = [
    "ls -la /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/etc/init/ | grep -i sunno || true",
    "grep -E 'sunno|surface_flinger|sprd|sr\\.displaysize|hwc' /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/build.prop || true",
    "grep -E 'sunno|surface_flinger|sprd|sr\\.displaysize|hwc' /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/product/etc/build.prop || true",
]

for c in cmds:
    print(f"=== CMD: {c} ===")
    stdin, stdout, stderr = ssh.exec_command(c)
    print(stdout.read().decode('utf-8', 'ignore'))
    err = stderr.read().decode('utf-8', 'ignore')
    if err:
        print("ERR:", err)

ssh.close()
