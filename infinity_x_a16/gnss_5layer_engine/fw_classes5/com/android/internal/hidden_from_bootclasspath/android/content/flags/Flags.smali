.class public final Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_BIND_PACKAGE_ISOLATED_PROCESS:Ljava/lang/String; = "android.content.flags.enable_bind_package_isolated_process"

.field public static final blacklist FLAG_ENABLE_SYSTEM_CONTACTS_PICKER:Ljava/lang/String; = "android.content.flags.enable_system_contacts_picker"

.field public static final blacklist FLAG_ENABLE_UPDATE_SERVICE_BINDINGS:Ljava/lang/String; = "android.content.flags.enable_update_service_bindings"

.field public static final blacklist FLAG_STOP_VOICE_COMMAND:Ljava/lang/String; = "android.content.flags.stop_voice_command"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist enableBindPackageIsolatedProcess()Z
    .registers 1

    .line 18
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlags;->enableBindPackageIsolatedProcess()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableSystemContactsPicker()Z
    .registers 1

    .line 24
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlags;->enableSystemContactsPicker()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableUpdateServiceBindings()Z
    .registers 1

    .line 30
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlags;->enableUpdateServiceBindings()Z

    move-result v0

    return v0
.end method

.method public static blacklist stopVoiceCommand()Z
    .registers 1

    .line 36
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlags;->stopVoiceCommand()Z

    move-result v0

    return v0
.end method
