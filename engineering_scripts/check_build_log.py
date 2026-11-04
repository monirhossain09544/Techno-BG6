import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=15)

stdin, stdout, stderr = ssh.exec_command("tail -n 40 /nvme0n1-disk/shunno_os/build_sunno_inc2.log")
print(stdout.read().decode('utf-8', 'ignore'))

ssh.close()
