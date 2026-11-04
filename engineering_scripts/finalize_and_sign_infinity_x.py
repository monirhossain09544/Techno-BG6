import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect(HOST, username=USER, password=PASS, timeout=15)

cmd = """
echo '${BG6_SERVER_PASS}' | sudo -S bash -c '
set -e
export PATH="/nvme0n1-disk/shunno_os/out/host/linux-x86/bin:$PATH"
IMG="/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img"
chown administrator:administrator $IMG

BLOCKS=$(dumpe2fs -h $IMG 2>/dev/null | awk -F: "/Block count:/ {gsub(/ /,\\\"\\\",\\$2); print \\$2}")
FS_BYTES=$(( BLOCKS * 4096 ))
PART_BYTES=$(( FS_BYTES + 67108864 ))
echo "Ext4 blocks: $BLOCKS ($FS_BYTES bytes), Target AVB partition size: $PART_BYTES bytes"

truncate -s $FS_BYTES $IMG
e2fsck -fy $IMG || true

avbtool add_hashtree_footer \
    --image $IMG \
    --partition_name system \
    --partition_size $PART_BYTES \
    --hash_algorithm sha256 \
    --key /nvme0n1-disk/shunno_os/external/avb/test/data/testkey_rsa2048.pem \
    --algorithm SHA256_RSA2048

avbtool verify_image \
    --image $IMG \
    --key /nvme0n1-disk/shunno_os/external/avb/test/data/testkey_rsa2048.pem

avbtool info_image --image $IMG | head -n 25
chown administrator:administrator $IMG
ls -lh $IMG
md5sum $IMG > /nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img.md5
cat /nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img.md5
'
"""
stdin, stdout, stderr = client.exec_command(cmd)
print(stdout.read().decode("utf-8", errors="ignore"))
err = stderr.read().decode("utf-8", errors="ignore")
if err:
    print("STDERR:", err)
client.close()
