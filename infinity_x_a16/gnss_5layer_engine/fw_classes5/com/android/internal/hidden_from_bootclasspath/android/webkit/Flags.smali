.class public final Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/webkit/FeatureFlags; = null

.field public static final blacklist FLAG_ALWAYS_ENFORCE_THREAD_CHECKING:Ljava/lang/String; = "android.webkit.always_enforce_thread_checking"

.field public static final blacklist FLAG_DEPRECATE_START_SAFE_BROWSING:Ljava/lang/String; = "android.webkit.deprecate_start_safe_browsing"

.field public static final blacklist FLAG_FILE_SYSTEM_ACCESS:Ljava/lang/String; = "android.webkit.file_system_access"

.field public static final blacklist FLAG_MAINLINE_APIS:Ljava/lang/String; = "android.webkit.mainline_apis"

.field public static final blacklist FLAG_UPDATE_SERVICE_IPC_WRAPPER:Ljava/lang/String; = "android.webkit.update_service_ipc_wrapper"

.field public static final blacklist FLAG_UPDATE_SERVICE_V2:Ljava/lang/String; = "android.webkit.update_service_v2"

.field public static final blacklist FLAG_USER_AGENT_REDUCTION:Ljava/lang/String; = "android.webkit.user_agent_reduction"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/webkit/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist alwaysEnforceThreadChecking()Z
    .registers 1

    .line 24
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/webkit/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/FeatureFlags;->alwaysEnforceThreadChecking()Z

    move-result v0

    return v0
.end method

.method public static blacklist deprecateStartSafeBrowsing()Z
    .registers 1

    .line 30
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/webkit/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/FeatureFlags;->deprecateStartSafeBrowsing()Z

    move-result v0

    return v0
.end method

.method public static blacklist fileSystemAccess()Z
    .registers 1

    .line 36
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/webkit/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/FeatureFlags;->fileSystemAccess()Z

    move-result v0

    return v0
.end method

.method public static blacklist mainlineApis()Z
    .registers 1

    .line 42
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/webkit/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/FeatureFlags;->mainlineApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist updateServiceIpcWrapper()Z
    .registers 1

    .line 48
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/webkit/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/FeatureFlags;->updateServiceIpcWrapper()Z

    move-result v0

    return v0
.end method

.method public static blacklist updateServiceV2()Z
    .registers 1

    .line 54
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/webkit/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/FeatureFlags;->updateServiceV2()Z

    move-result v0

    return v0
.end method

.method public static blacklist userAgentReduction()Z
    .registers 1

    .line 60
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/webkit/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/FeatureFlags;->userAgentReduction()Z

    move-result v0

    return v0
.end method
