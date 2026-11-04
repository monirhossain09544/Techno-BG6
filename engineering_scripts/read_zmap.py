import paramiko
s = paramiko.SSHClient()
s.set_missing_host_key_policy(paramiko.AutoAddPolicy())
s.connect('${BG6_SERVER_IP}', username='administrator', password='${BG6_SERVER_PASS}')
_, o, _ = s.exec_command('cat /nvme0n1-disk/shunno_os/external/erofs-utils/lib/zmap.c')
with open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\zmap.c', 'wb') as f:
    f.write(o.read())
_, o2, _ = s.exec_command('cat /nvme0n1-disk/shunno_os/external/erofs-utils/lib/data.c')
with open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\data.c', 'wb') as f:
    f.write(o2.read())
print("Downloaded zmap.c and data.c")
s.close()
