.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlags; = null

.field public static final blacklist FLAG_CLEAR_DEVICE_RESTRICTIONS:Ljava/lang/String; = "com.android.devicelock.flags.clear_device_restrictions"

.field public static final blacklist FLAG_DEVICE_ID_TYPE_SERIAL:Ljava/lang/String; = "com.android.devicelock.flags.device_id_type_serial"

.field public static final blacklist FLAG_EXTRA_DEVICE_LOCK_VERSION:Ljava/lang/String; = "com.android.devicelock.flags.extra_device_lock_version"

.field public static final blacklist FLAG_GET_ENROLLMENT_TYPE:Ljava/lang/String; = "com.android.devicelock.flags.get_enrollment_type"

.field public static final blacklist FLAG_NOTIFY_KIOSK_SETUP_FINISHED:Ljava/lang/String; = "com.android.devicelock.flags.notify_kiosk_setup_finished"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist clearDeviceRestrictions()Z
    .registers 2

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v1, 0x36ee81

    if-lt v0, v1, :cond_9

    .line 19
    const/4 v0, 0x1

    return v0

    .line 21
    :cond_9
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlags;->clearDeviceRestrictions()Z

    move-result v0

    return v0
.end method

.method public static blacklist deviceIdTypeSerial()Z
    .registers 2

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v1, 0x36ee81

    if-lt v0, v1, :cond_9

    .line 26
    const/4 v0, 0x1

    return v0

    .line 28
    :cond_9
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlags;->deviceIdTypeSerial()Z

    move-result v0

    return v0
.end method

.method public static blacklist extraDeviceLockVersion()Z
    .registers 2

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v1, 0x36ee81

    if-lt v0, v1, :cond_9

    .line 33
    const/4 v0, 0x1

    return v0

    .line 35
    :cond_9
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlags;->extraDeviceLockVersion()Z

    move-result v0

    return v0
.end method

.method public static blacklist getEnrollmentType()Z
    .registers 2

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v1, 0x36ee81

    if-lt v0, v1, :cond_9

    .line 40
    const/4 v0, 0x1

    return v0

    .line 42
    :cond_9
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlags;->getEnrollmentType()Z

    move-result v0

    return v0
.end method

.method public static blacklist notifyKioskSetupFinished()Z
    .registers 2

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v1, 0x36ee81

    if-lt v0, v1, :cond_9

    .line 47
    const/4 v0, 0x1

    return v0

    .line 49
    :cond_9
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/devicelock/flags/FeatureFlags;->notifyKioskSetupFinished()Z

    move-result v0

    return v0
.end method
