.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist clearDeviceRestrictions:Z

.field private static blacklist deviceIdTypeSerial:Z

.field private static blacklist extraDeviceLockVersion:Z

.field private static blacklist getEnrollmentType:Z

.field private static volatile blacklist isCached:Z

.field private static blacklist notifyKioskSetupFinished:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->clearDeviceRestrictions:Z

    .line 12
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->deviceIdTypeSerial:Z

    .line 13
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->extraDeviceLockVersion:Z

    .line 14
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->getEnrollmentType:Z

    .line 15
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->notifyKioskSetupFinished:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 7

    .line 18
    const-string v0, "FeatureFlagsImplExport"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "com.android.devicelock.flags"

    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v2

    .line 19
    sget v3, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v4, 0x36ee81

    const/4 v5, 0x0

    if-lt v3, v4, :cond_13

    move v3, v1

    goto :goto_19

    :cond_13
    const-string v3, "clear_device_restrictions"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_19
    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->clearDeviceRestrictions:Z

    .line 20
    sget v3, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    if-lt v3, v4, :cond_21

    move v3, v1

    goto :goto_27

    :cond_21
    const-string v3, "device_id_type_serial"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_27
    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->deviceIdTypeSerial:Z

    .line 21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    if-lt v3, v4, :cond_2f

    move v3, v1

    goto :goto_35

    :cond_2f
    const-string v3, "extra_device_lock_version"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_35
    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->extraDeviceLockVersion:Z

    .line 22
    sget v3, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    if-lt v3, v4, :cond_3d

    move v3, v1

    goto :goto_43

    :cond_3d
    const-string v3, "get_enrollment_type"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_43
    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->getEnrollmentType:Z

    .line 23
    sget v3, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    if-lt v3, v4, :cond_4b

    move v2, v1

    goto :goto_51

    :cond_4b
    const-string v3, "notify_kiosk_setup_finished"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    :goto_51
    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->notifyKioskSetupFinished:Z
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_53} :catch_5d
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_53} :catch_54

    goto :goto_65

    .line 27
    :catch_54
    move-exception v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 24
    :catch_5d
    move-exception v2

    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :goto_65
    nop

    .line 32
    :goto_66
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->isCached:Z

    .line 33
    return-void
.end method


# virtual methods
.method public blacklist clearDeviceRestrictions()Z
    .registers 2

    .line 36
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 37
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->init()V

    .line 39
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->clearDeviceRestrictions:Z

    return v0
.end method

.method public blacklist deviceIdTypeSerial()Z
    .registers 2

    .line 44
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 45
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->init()V

    .line 47
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->deviceIdTypeSerial:Z

    return v0
.end method

.method public blacklist extraDeviceLockVersion()Z
    .registers 2

    .line 52
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 53
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->init()V

    .line 55
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->extraDeviceLockVersion:Z

    return v0
.end method

.method public blacklist getEnrollmentType()Z
    .registers 2

    .line 60
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 61
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->init()V

    .line 63
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->getEnrollmentType:Z

    return v0
.end method

.method public blacklist notifyKioskSetupFinished()Z
    .registers 2

    .line 68
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 69
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->init()V

    .line 71
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;->notifyKioskSetupFinished:Z

    return v0
.end method
