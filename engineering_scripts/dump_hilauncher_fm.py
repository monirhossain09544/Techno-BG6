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
$AAPT2 dump xmltree /nvme0n1-disk/hios14_rom/kl4_root/product/app/OSIcon/OSIcon.apk --file res/xml/appfilter.xml | grep -iE "file|document|folder|explorer|storage" -B 1 -A 2 || true

echo "=== HiLauncher KL6 xml files ==="
unzip -l /nvme0n1-disk/hios14_rom/kl6_root/system_ext/app/HiLauncher/HiLauncher.apk | grep "res/xml"
for x in $(unzip -l /nvme0n1-disk/hios14_rom/kl6_root/system_ext/app/HiLauncher/HiLauncher.apk | awk '/res\/xml/{print $4}'); do
    out=$($AAPT2 dump xmltree /nvme0n1-disk/hios14_rom/kl6_root/system_ext/app/HiLauncher/HiLauncher.apk --file "$x" 2>/dev/null | grep -iE "file|document" -B 2 -A 3 || true)
    if [ -n "$out" ]; then
        echo "--- $x ---"
        echo "$out"
    fi
done

echo "=== CHECK WHERE bg6_extras CAME FROM IN BASH HISTORY OR SCRIPTS ==="
grep -rn "bg6_extras\|TranssionNote" /nvme0n1-disk/hios14_rom/ /home/administrator/ /root/ 2>/dev/null | head -n 40 || true
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode("utf-8", errors="replace"))
ssh.close()
