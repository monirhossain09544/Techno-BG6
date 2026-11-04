import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)

cmd = r"""
AAPT2=/nvme0n1-disk/shunno_os/prebuilts/sdk/tools/linux/bin/aapt2
echo "=== OSIcon appfilter.xml ==="
$AAPT2 dump xmltree /nvme0n1-disk/hios14_rom/kl4_root/product/app/OSIcon/OSIcon.apk --file res/xml/appfilter.xml

echo "=== HiLauncher KL6 xml files ==="
for x in $(unzip -l /nvme0n1-disk/hios14_rom/kl6_root/system_ext/app/HiLauncher/HiLauncher.apk | awk '/res\/xml/{print $4}'); do
    out=$($AAPT2 dump xmltree /nvme0n1-disk/hios14_rom/kl6_root/system_ext/app/HiLauncher/HiLauncher.apk --file "$x" 2>/dev/null | grep -iE "file|document|nbu|explorer|manager" -B 2 -A 3 || true)
    if [ -n "$out" ]; then
        echo "--- $x ---"
        echo "$out"
    fi
done

echo "=== CHECK gdrive_dl.py and *.sh in hios14_rom ==="
cat /nvme0n1-disk/hios14_rom/gdrive_dl.py 2>/dev/null || true
ls -la /nvme0n1-disk/hios14_rom/*.sh /nvme0n1-disk/hios14_rom/*.py 2>/dev/null || true
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=30)
print(stdout.read().decode("utf-8", errors="replace"))
ssh.close()
