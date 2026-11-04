.class public final Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags; = null

.field public static final blacklist FLAG_ASSOCIATION_DEVICE_ICON:Ljava/lang/String; = "android.companion.association_device_icon"

.field public static final blacklist FLAG_ASSOCIATION_FAILURE_CODE:Ljava/lang/String; = "android.companion.association_failure_code"

.field public static final blacklist FLAG_ASSOCIATION_TAG:Ljava/lang/String; = "android.companion.association_tag"

.field public static final blacklist FLAG_ASSOCIATION_VERIFICATION:Ljava/lang/String; = "android.companion.association_verification"

.field public static final blacklist FLAG_BAND_DEVICE_PROFILE:Ljava/lang/String; = "android.companion.band_device_profile"

.field public static final blacklist FLAG_DEVICE_PRESENCE:Ljava/lang/String; = "android.companion.device_presence"

.field public static final blacklist FLAG_ENABLE_DATA_SYNC:Ljava/lang/String; = "android.companion.enable_data_sync"

.field public static final blacklist FLAG_ENABLE_MEDICAL_PROFILE:Ljava/lang/String; = "android.companion.enable_medical_profile"

.field public static final blacklist FLAG_ENABLE_REMOTE_APP_ACCESS:Ljava/lang/String; = "android.companion.enable_remote_app_access"

.field public static final blacklist FLAG_ENABLE_TASK_CONTINUITY:Ljava/lang/String; = "android.companion.enable_task_continuity"

.field public static final blacklist FLAG_ENABLE_UNIVERSAL_CLIPBOARD:Ljava/lang/String; = "android.companion.enable_universal_clipboard"

.field public static final blacklist FLAG_NEW_ASSOCIATION_BUILDER:Ljava/lang/String; = "android.companion.new_association_builder"

.field public static final blacklist FLAG_NOTIFY_ASSOCIATION_REMOVED:Ljava/lang/String; = "android.companion.notify_association_removed"

.field public static final blacklist FLAG_ONGOING_PERM_SYNC:Ljava/lang/String; = "android.companion.ongoing_perm_sync"

.field public static final blacklist FLAG_PERM_SYNC_USER_CONSENT:Ljava/lang/String; = "android.companion.perm_sync_user_consent"

.field public static final blacklist FLAG_UNPAIR_ASSOCIATED_DEVICE:Ljava/lang/String; = "android.companion.unpair_associated_device"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 135
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist associationDeviceIcon()Z
    .registers 1

    .line 42
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->associationDeviceIcon()Z

    move-result v0

    return v0
.end method

.method public static blacklist associationFailureCode()Z
    .registers 1

    .line 48
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->associationFailureCode()Z

    move-result v0

    return v0
.end method

.method public static blacklist associationTag()Z
    .registers 1

    .line 54
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->associationTag()Z

    move-result v0

    return v0
.end method

.method public static blacklist associationVerification()Z
    .registers 1

    .line 60
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->associationVerification()Z

    move-result v0

    return v0
.end method

.method public static blacklist bandDeviceProfile()Z
    .registers 1

    .line 66
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->bandDeviceProfile()Z

    move-result v0

    return v0
.end method

.method public static blacklist devicePresence()Z
    .registers 1

    .line 72
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->devicePresence()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableDataSync()Z
    .registers 1

    .line 78
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->enableDataSync()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableMedicalProfile()Z
    .registers 1

    .line 84
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->enableMedicalProfile()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableRemoteAppAccess()Z
    .registers 1

    .line 90
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->enableRemoteAppAccess()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableTaskContinuity()Z
    .registers 1

    .line 96
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->enableTaskContinuity()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableUniversalClipboard()Z
    .registers 1

    .line 102
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->enableUniversalClipboard()Z

    move-result v0

    return v0
.end method

.method public static blacklist newAssociationBuilder()Z
    .registers 1

    .line 108
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->newAssociationBuilder()Z

    move-result v0

    return v0
.end method

.method public static blacklist notifyAssociationRemoved()Z
    .registers 1

    .line 114
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->notifyAssociationRemoved()Z

    move-result v0

    return v0
.end method

.method public static blacklist ongoingPermSync()Z
    .registers 1

    .line 120
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->ongoingPermSync()Z

    move-result v0

    return v0
.end method

.method public static blacklist permSyncUserConsent()Z
    .registers 1

    .line 126
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->permSyncUserConsent()Z

    move-result v0

    return v0
.end method

.method public static blacklist unpairAssociatedDevice()Z
    .registers 1

    .line 132
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->unpairAssociatedDevice()Z

    move-result v0

    return v0
.end method
