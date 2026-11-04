import paramiko
s = paramiko.SSHClient()
s.set_missing_host_key_policy(paramiko.AutoAddPolicy())
s.connect('${BG6_SERVER_IP}', username='administrator', password='${BG6_SERVER_PASS}')
_, o, _ = s.exec_command('cat /nvme0n1-disk/shunno_os/external/erofs-utils/include/erofs_fs.h /nvme0n1-disk/shunno_os/external/erofs-utils/lib/decompress.c')
with open(r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\erofs_decompress.txt', 'wb') as f:
    f.write(o.read())
s.close()
print("Saved erofs_decompress.txt")
