import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)

cmd = """set -e
python3 - << 'PY'
for path in [
    "/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/bin/rw-system.sh",
    "/nvme0n1-disk/shunno_os/device/phh/treble/rw-system.sh"
]:
    with open(path, "r") as f:
        txt = f.read()
    inject = '''resetprop_phh ro.config.low_ram false
sed 's/ro.config.low_ram=true/ro.config.low_ram=false/g' /vendor/build.prop > /dev/vendor_build.prop && chmod 644 /dev/vendor_build.prop && mount -o bind /dev/vendor_build.prop /vendor/build.prop
'''
    if "ro.config.low_ram false" not in txt:
        txt = txt.replace("#!/system/bin/sh\\n", "#!/system/bin/sh\\n" + inject, 1)
        with open(path, "w") as f:
            f.write(txt)
PY
head -n 20 /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/bin/rw-system.sh
ls -lh /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/bin/resetprop_phh
"""
_, out, err = ssh.exec_command(cmd)
print(out.read().decode())
print(err.read().decode())
ssh.close()
