import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)

cmd = r"""
echo "=== kl6_parts ==="
ls -lh /nvme0n1-disk/hios14_rom/kl6_parts/
echo "=== kl4_parts ==="
ls -lh /nvme0n1-disk/hios14_rom/kl4_parts/
echo "=== kl6_extracted & kl4_pac_files ==="
ls -lh /nvme0n1-disk/hios14_rom/kl6_extracted/ /nvme0n1-disk/hios14_rom/kl4_pac_files/ 2>/dev/null || true

mkdir -p /tmp/mnt_tr
for img in /nvme0n1-disk/hios14_rom/kl6_parts/tr_*.img /nvme0n1-disk/hios14_rom/kl4_parts/*.img; do
    [ -f "$img" ] || continue
    sz=$(stat -c%s "$img")
    if [ "$sz" -gt 100000 ]; then
        echo "--- Checking $img ($sz bytes) ---"
        file "$img"
        echo '${BG6_SERVER_PASS}' | sudo -S umount /tmp/mnt_tr 2>/dev/null || true
        if echo '${BG6_SERVER_PASS}' | sudo -S mount -o ro,loop "$img" /tmp/mnt_tr 2>/dev/null; then
            find /tmp/mnt_tr -name "*.apk" 2>/dev/null
            echo '${BG6_SERVER_PASS}' | sudo -S umount /tmp/mnt_tr
        else
            # try fsck.erofs --extract or 7z l
            7z l "$img" 2>/dev/null | grep -i "\.apk" || true
        fi
    fi
done
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=90)
print(stdout.read().decode("utf-8", errors="replace"))
print("STDERR:", stderr.read().decode("utf-8", errors="replace"))
ssh.close()
