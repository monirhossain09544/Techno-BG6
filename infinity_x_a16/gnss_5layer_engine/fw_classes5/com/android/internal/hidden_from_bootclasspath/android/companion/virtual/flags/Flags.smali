.class public final Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/FeatureFlags; = null

.field public static final blacklist FLAG_CROSS_DEVICE_CLIPBOARD:Ljava/lang/String; = "android.companion.virtual.flags.cross_device_clipboard"

.field public static final blacklist FLAG_DYNAMIC_POLICY:Ljava/lang/String; = "android.companion.virtual.flags.dynamic_policy"

.field public static final blacklist FLAG_PERSISTENT_DEVICE_ID_API:Ljava/lang/String; = "android.companion.virtual.flags.persistent_device_id_api"

.field public static final blacklist FLAG_VDM_CUSTOM_HOME:Ljava/lang/String; = "android.companion.virtual.flags.vdm_custom_home"

.field public static final blacklist FLAG_VDM_CUSTOM_IME:Ljava/lang/String; = "android.companion.virtual.flags.vdm_custom_ime"

.field public static final blacklist FLAG_VDM_PUBLIC_APIS:Ljava/lang/String; = "android.companion.virtual.flags.vdm_public_apis"

.field public static final blacklist FLAG_VIRTUAL_CAMERA:Ljava/lang/String; = "android.companion.virtual.flags.virtual_camera"

.field public static final blacklist FLAG_VIRTUAL_STYLUS:Ljava/lang/String; = "android.companion.virtual.flags.virtual_stylus"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist crossDeviceClipboard()Z
    .registers 1

    .line 26
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/FeatureFlags;->crossDeviceClipboard()Z

    move-result v0

    return v0
.end method

.method public static blacklist dynamicPolicy()Z
    .registers 1

    .line 32
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/FeatureFlags;->dynamicPolicy()Z

    move-result v0

    return v0
.end method

.method public static blacklist persistentDeviceIdApi()Z
    .registers 1

    .line 38
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/FeatureFlags;->persistentDeviceIdApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist vdmCustomHome()Z
    .registers 1

    .line 44
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/FeatureFlags;->vdmCustomHome()Z

    move-result v0

    return v0
.end method

.method public static blacklist vdmCustomIme()Z
    .registers 1

    .line 50
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/FeatureFlags;->vdmCustomIme()Z

    move-result v0

    return v0
.end method

.method public static blacklist vdmPublicApis()Z
    .registers 1

    .line 56
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/FeatureFlags;->vdmPublicApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist virtualCamera()Z
    .registers 1

    .line 62
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/FeatureFlags;->virtualCamera()Z

    move-result v0

    return v0
.end method

.method public static blacklist virtualStylus()Z
    .registers 1

    .line 68
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtual/flags/FeatureFlags;->virtualStylus()Z

    move-result v0

    return v0
.end method
