import paramiko

HOST = "${BG6_SERVER_IP}"
USER = "administrator"
PASS = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(HOST, username=USER, password=PASS, timeout=20)
sftp = ssh.open_sftp()

print("Creating directories on build server...")
cmd_mkdir = """set -e
mkdir -p /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/product/app/Chrome
mkdir -p /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/product/app/TrichromeLibrary
rm -rf /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/product/app/Browser2
"""
_, out, err = ssh.exec_command(cmd_mkdir)
out.read()

print("Uploading stock_apns-conf.xml to /system/etc/apns-conf.xml and /system/product/etc/apns-conf.xml...")
sftp.put(
    r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\stock_apns-conf.xml",
    "/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/etc/apns-conf.xml",
)
sftp.put(
    r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\stock_apns-conf.xml",
    "/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/product/etc/apns-conf.xml",
)
sftp.put(
    r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\stock_apns-conf.xml",
    "/nvme0n1-disk/shunno_os/device/sample/etc/apns-full-conf.xml",
)

print("Uploading Chrome.apk and TrichromeLibrary.apk to build server...")
sftp.put(
    r"D:\Chrome.apk",
    "/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/product/app/Chrome/Chrome.apk",
)
sftp.put(
    r"D:\TrichromeLibrary.apk",
    "/nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/product/app/TrichromeLibrary/TrichromeLibrary.apk",
)

sftp.close()

verify_cmd = """
chmod 644 /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/product/app/Chrome/Chrome.apk
chmod 644 /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/product/app/TrichromeLibrary/TrichromeLibrary.apk
chmod 644 /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/etc/apns-conf.xml
ls -lh /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/product/app/Chrome/Chrome.apk \
       /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/product/app/TrichromeLibrary/TrichromeLibrary.apk \
       /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/etc/apns-conf.xml
grep -c 'mcc="470"' /nvme0n1-disk/shunno_os/out/target/product/tdgsi_arm64_ab/system/etc/apns-conf.xml
"""
_, out, _ = ssh.exec_command(verify_cmd)
print(out.read().decode())
ssh.close()
