import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("${BG6_SERVER_IP}", username="administrator", password="${BG6_SERVER_PASS}", timeout=20)

cmd = """set -e
cat << 'EOF' > /nvme0n1-disk/shunno_os/vendor/hardware_overlay/Tecno/BG6/res/values/config.xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <integer name="config_defaultPeakRefreshRate">60</integer>
    <integer name="config_defaultRefreshRate">60</integer>
    <bool name="config_setColorTransformAccelerated">false</bool>
    <integer name="config_navBarInteractionMode">2</integer>
</resources>
EOF

cat << 'EOF' > /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/etc/init/sunno_net.rc
on property:sys.boot_completed=1
    write /proc/sys/net/ipv6/conf/seth_lte0/disable_ipv6 1
    write /proc/sys/net/ipv6/conf/seth_lte1/disable_ipv6 1
    write /proc/sys/net/ipv6/conf/seth_lte2/disable_ipv6 1
    write /proc/sys/net/ipv6/conf/seth_lte3/disable_ipv6 1
    write /proc/sys/net/ipv6/conf/seth_lte4/disable_ipv6 1
    write /proc/sys/net/ipv6/conf/seth_lte5/disable_ipv6 1
    write /proc/sys/net/ipv6/conf/seth_lte6/disable_ipv6 1
    write /proc/sys/net/ipv6/conf/seth_lte7/disable_ipv6 1
    exec - system system -- /system/bin/cmd overlay enable-exclusive --user 0 com.android.internal.systemui.navbar.gestural
    exec - system system -- /system/bin/cmd role add-role-holder android.app.role.BROWSER com.android.chrome
EOF
chmod 644 /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/etc/init/sunno_net.rc
cat /nvme0n1-disk/shunno_os/vendor/hardware_overlay/Tecno/BG6/res/values/config.xml
cat /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/etc/init/sunno_net.rc
"""
_, out, err = ssh.exec_command(cmd)
print(out.read().decode())
print(err.read().decode())
ssh.close()
