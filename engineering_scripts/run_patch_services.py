import paramiko

host = "${BG6_SERVER_IP}"
user = "administrator"
pw = "${BG6_SERVER_PASS}"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=user, password=pw, timeout=20)

remote_py = r'''import os, subprocess

work = "/nvme0n1-disk/infinity_x/mock_work"
os.chdir(work)

# 1. Patch MockLocationProvider.smali
mlp_path = work + "/srv_classes2/com/android/server/location/provider/MockLocationProvider.smali"
with open(mlp_path, "r") as f:
    s = f.read()

target = "invoke-virtual {v0, p1}, Landroid/location/Location;->setIsFromMockProvider(Z)V"
replacement = "invoke-static {v0}, Lcom/android/server/location/provider/KernelLocationHook;->sanitizeAndOverrideLocation(Landroid/location/Location;)V"
assert target in s, "MockLocationProvider target not found"
s = s.replace(target, replacement, 1)
with open(mlp_path, "w") as f:
    f.write(s)

# 2. Patch LocationProviderManager.smali
lpm_path = work + "/srv_classes2/com/android/server/location/provider/LocationProviderManager.smali"
with open(lpm_path, "r") as f:
    s = f.read()

t1 = """.method public final processReportedLocation(Landroid/location/LocationResult;)Landroid/location/LocationResult;
    .registers 5

    .line 2696
    :try_start_0"""
r1 = """.method public final processReportedLocation(Landroid/location/LocationResult;)Landroid/location/LocationResult;
    .registers 5

    invoke-static {p1}, Lcom/android/server/location/provider/KernelLocationHook;->sanitizeAndOverrideResult(Landroid/location/LocationResult;)Landroid/location/LocationResult;
    move-result-object p1

    .line 2696
    :try_start_0"""
assert t1 in s, "LPM t1 not found"
s = s.replace(t1, r1, 1)

t2 = """.method public getPermittedLocation(Landroid/location/Location;I)Landroid/location/Location;
    .registers 4"""
r2 = """.method public getPermittedLocation(Landroid/location/Location;I)Landroid/location/Location;
    .registers 4

    invoke-static {p1}, Lcom/android/server/location/provider/KernelLocationHook;->sanitizeAndOverrideLocation(Landroid/location/Location;)V"""
assert t2 in s, "LPM t2 not found"
s = s.replace(t2, r2, 1)

t3 = """.method public getPermittedLocationResult(Landroid/location/LocationResult;I)Landroid/location/LocationResult;
    .registers 4"""
r3 = """.method public getPermittedLocationResult(Landroid/location/LocationResult;I)Landroid/location/LocationResult;
    .registers 4

    invoke-static {p1}, Lcom/android/server/location/provider/KernelLocationHook;->sanitizeAndOverrideResult(Landroid/location/LocationResult;)Landroid/location/LocationResult;
    move-result-object p1"""
assert t3 in s, "LPM t3 not found"
s = s.replace(t3, r3, 1)

s = s.replace('const-string v0, " [mock]"', 'const-string v0, ""')

with open(lpm_path, "w") as f:
    f.write(s)

# 3. Patch GnssLocationProvider.smali
gnss_path = work + "/srv_classes2/com/android/server/location/gnss/GnssLocationProvider.smali"
with open(gnss_path, "r") as f:
    s = f.read()

gt1 = "invoke-virtual {p2, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V"
gr1 = """invoke-virtual {p2, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V
    invoke-static {p2}, Lcom/android/server/location/provider/KernelLocationHook;->sanitizeAndOverrideLocation(Landroid/location/Location;)V"""
assert gt1 in s, "Gnss gt1 not found"
s = s.replace(gt1, gr1, 1)

gt2 = """.method public onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 5"""
gr2 = """.method public onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    const-string p1, "kernel_inject"
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :cond_not_kernel_inject
    invoke-static {}, Lcom/android/server/location/provider/KernelLocationHook;->createHardwareGnssFix()Landroid/location/Location;
    move-result-object p1
    if-eqz p1, :cond_ret_kernel_inject
    const/4 p2, 0x1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleReportLocation(ZLandroid/location/Location;)V
    :cond_ret_kernel_inject
    return-void
    :cond_not_kernel_inject"""
assert gt2 in s, "Gnss gt2 not found"
s = s.replace(gt2, gr2, 1)

with open(gnss_path, "w") as f:
    f.write(s)

print("Patched srv_classes2 smali files! Assembling classes2.dex for services.jar...")
subprocess.check_call(["smali", "a", work + "/srv_classes2", "-o", work + "/srv_dex/classes2.dex"])
subprocess.check_call(["zip", "-j", "-0", work + "/services.jar", work + "/srv_dex/classes2.dex"])
print("Updated services.jar successfully!")
'''

sftp = ssh.open_sftp()
with sftp.file("/nvme0n1-disk/infinity_x/mock_work/patch_services.py", "w") as f:
    f.write(remote_py)
sftp.close()

stdin, stdout, stderr = ssh.exec_command("python3 /nvme0n1-disk/infinity_x/mock_work/patch_services.py", timeout=120)
print(stdout.read().decode())
err = stderr.read().decode()
if err:
    print("STDERR:", err)
ssh.close()
