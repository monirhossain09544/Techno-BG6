import os, subprocess

work = "/nvme0n1-disk/infinity_x/mock_work"
os.chdir(work)

# 1. Patch fw_classes2: Location.smali and Location$1.smali
loc_path = work + "/fw_classes2/android/location/Location.smali"
with open(loc_path, "r") as f:
    s = f.read()

old_is_mock = """.method public whitelist isMock()Z
    .registers 3

    .line 810
    const-string v0, "persist.sys.override_mock_location"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 813
    if-eqz v0, :cond_a

    .line 814
    return v1

    .line 816
    :cond_a
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method"""

new_is_mock = """.method public whitelist isMock()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method"""

assert old_is_mock in s, "old_is_mock not found"
s = s.replace(old_is_mock, new_is_mock, 1)

old_set_mock = """.method public whitelist setMock(Z)V
    .registers 2

    .line 823
    if-eqz p1, :cond_9

    .line 824
    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    goto :goto_f

    .line 826
    :cond_9
    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    .line 828
    :goto_f
    return-void
.end method"""

new_set_mock = """.method public whitelist setMock(Z)V
    .registers 2

    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method"""

assert old_set_mock in s, "old_set_mock not found"
s = s.replace(old_set_mock, new_set_mock, 1)

old_set_extras = """    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0"""

new_set_extras = """    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string p1, "mockLocation"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move-object p1, v0"""

assert old_set_extras in s, "old_set_extras not found"
s = s.replace(old_set_extras, new_set_extras, 1)

with open(loc_path, "w") as f:
    f.write(s)

loc1_path = work + "/fw_classes2/android/location/Location$1.smali"
with open(loc1_path, "r") as f:
    s1 = f.read()

old_parcel = """    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Location;->-$$Nest$fputmFieldsMask(Landroid/location/Location;I)V"""

new_parcel = """    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    invoke-static {v0, v1}, Landroid/location/Location;->-$$Nest$fputmFieldsMask(Landroid/location/Location;I)V"""

assert old_parcel in s1, "old_parcel not found"
s1 = s1.replace(old_parcel, new_parcel, 1)
with open(loc1_path, "w") as f:
    f.write(s1)

print("Assembling classes2.dex for framework.jar...")
subprocess.check_call(["smali", "a", work + "/fw_classes2", "-o", work + "/classes2.dex"])

# 2. Patch fw_classes5: HideDeveloperStatusUtils.smali
hide_path = work + "/fw_classes5/com/android/internal/util/infinity/HideDeveloperStatusUtils.smali"
with open(hide_path, "r") as f:
    hs = f.read()

old_clinit = """.method static constructor blacklist <clinit>()V
    .registers 4

    .line 14
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "adb_wifi_enabled"

    const-string v2, "development_settings_enabled"

    const-string v3, "adb_enabled"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;"""

new_clinit = """.method static constructor blacklist <clinit>()V
    .registers 6

    .line 14
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "adb_wifi_enabled"

    const-string v2, "development_settings_enabled"

    const-string v3, "adb_enabled"

    const-string v4, "mock_location"

    const-string v5, "allow_mock_location"

    filled-new-array {v3, v1, v2, v4, v5}, [Ljava/lang/String;"""

assert old_clinit in hs, "old_clinit not found"
hs = hs.replace(old_clinit, new_clinit, 1)

old_should_hide = """.method public static blacklist shouldHideDevStatus(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 30
    const/4 v0, 0x0

    if-eqz p0, :cond_21

    if-eqz p1, :cond_21

    if-nez p2, :cond_8

    goto :goto_21

    .line 34
    :cond_8
    sget-object v1, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils;->settingsToHide:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    return v0

    .line 36
    :cond_11
    invoke-static {p0}, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils;->getApps(Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object p0

    .line 37
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 38
    return v0

    .line 41
    :cond_1c
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 31
    :cond_21
    :goto_21
    return v0
.end method"""

new_should_hide = """.method public static blacklist shouldHideDevStatus(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    if-nez p2, :cond_6

    goto :goto_30

    :cond_6
    sget-object v1, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils;->settingsToHide:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    return v0

    :cond_f
    const-string p2, "com.android.settings"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_30

    const-string p2, "com.android.systemui"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_30

    const-string p2, "com.android.shell"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_30

    const-string p2, "android"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_30

    const/4 v0, 0x1

    return v0

    :cond_30
    :goto_30
    return v0
.end method"""

assert old_should_hide in hs, "old_should_hide not found"
hs = hs.replace(old_should_hide, new_should_hide, 1)

with open(hide_path, "w") as f:
    f.write(hs)

print("Assembling classes5.dex for framework.jar...")
subprocess.check_call(["smali", "a", work + "/fw_classes5", "-o", work + "/classes5.dex"])

# 3. Patch fw_classes1: PackageInfo.smali (strip ACCESS_MOCK_LOCATION for appId >= 10000)
pkg_path = work + "/fw_classes1/android/content/pm/PackageInfo.smali"
with open(pkg_path, "r") as f:
    ps = f.read()

old_req_perms = """    .line 701
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;"""

new_req_perms = """    .line 701
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/PackageInfo;->sanitizeMockPerms([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;"""

helper_method = """
.method public static blacklist sanitizeMockPerms([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_3

    return-object p0

    :cond_3
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const v1, 0x186a0

    rem-int/2addr v0, v1

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_f

    return-object p0

    :cond_f
    array-length v0, p0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_24

    aget-object v2, p0, v1

    const-string v3, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, p0, v1

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_24
    return-object p0
.end method
"""

assert old_req_perms in ps, "old_req_perms not found"
ps = ps.replace(old_req_perms, new_req_perms, 1) + "\n" + helper_method

with open(pkg_path, "w") as f:
    f.write(ps)

print("Assembling classes.dex for framework.jar...")
subprocess.check_call(["smali", "a", work + "/fw_classes1", "-o", work + "/classes.dex"])

subprocess.check_call(["zip", "-j", "-0", work + "/framework.jar", work + "/classes.dex", work + "/classes2.dex", work + "/classes5.dex"])
print("Updated framework.jar successfully!")
