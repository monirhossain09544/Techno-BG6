import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)

cmd = r"""
cd /nvme0n1-disk/infinity_x/smartcaller_v6_work
ls -la
echo "=== GREP ALL NON-AOSP CONTACT COLUMNS ACROSS ALL SMALI DIRS ==="
grep -rnE "indicate_phone_or_sim_contact|index_in_sim|is_sdn_contact|send_to_voicemail_vt|is_additional_number|anr|aas" smali* 2>/dev/null | head -n 120 || true
echo "=== GREP Loy1;->f()Z ACROSS ALL SMALI DIRS ==="
grep -rn "Loy1;->f()Z" smali* 2>/dev/null | head -n 80 || true
echo "=== GREP icc/adn OR SimContacts ACROSS ALL SMALI DIRS ==="
grep -rnE "content://icc|icc/adn|SimContact" smali* 2>/dev/null | head -n 60 || true
"""

stdin, stdout, stderr = ssh.exec_command(cmd, timeout=60)
print(stdout.read().decode("utf-8", errors="replace"))
ssh.close()
