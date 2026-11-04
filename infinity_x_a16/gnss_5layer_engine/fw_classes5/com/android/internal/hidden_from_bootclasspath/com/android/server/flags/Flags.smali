.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlags; = null

.field public static final blacklist FLAG_CERTPININSTALLER_REMOVAL:Ljava/lang/String; = "com.android.server.flags.certpininstaller_removal"

.field public static final blacklist FLAG_DATETIME_NOTIFICATIONS:Ljava/lang/String; = "com.android.server.flags.datetime_notifications"

.field public static final blacklist FLAG_DISABLE_SYSTEM_COMPACTION:Ljava/lang/String; = "com.android.server.flags.disable_system_compaction"

.field public static final blacklist FLAG_DYNAMIC_CODE_LOGGING_SERVICE_REMOVAL:Ljava/lang/String; = "com.android.server.flags.dynamic_code_logging_service_removal"

.field public static final blacklist FLAG_EARLY_DATA_MANAGER_INIT:Ljava/lang/String; = "com.android.server.flags.early_data_manager_init"

.field public static final blacklist FLAG_KEYSTORE_IN_MEMORY_CLEANUP:Ljava/lang/String; = "com.android.server.flags.keystore_in_memory_cleanup"

.field public static final blacklist FLAG_PIN_GLOBAL_QUOTA:Ljava/lang/String; = "com.android.server.flags.pin_global_quota"

.field public static final blacklist FLAG_PIN_WEBVIEW:Ljava/lang/String; = "com.android.server.flags.pin_webview"

.field public static final blacklist FLAG_RATE_LIMIT_BATTERY_CHANGED_BROADCAST:Ljava/lang/String; = "com.android.server.flags.rate_limit_battery_changed_broadcast"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist certpininstallerRemoval()Z
    .registers 1

    .line 28
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlags;->certpininstallerRemoval()Z

    move-result v0

    return v0
.end method

.method public static blacklist datetimeNotifications()Z
    .registers 1

    .line 34
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlags;->datetimeNotifications()Z

    move-result v0

    return v0
.end method

.method public static blacklist disableSystemCompaction()Z
    .registers 1

    .line 40
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlags;->disableSystemCompaction()Z

    move-result v0

    return v0
.end method

.method public static blacklist dynamicCodeLoggingServiceRemoval()Z
    .registers 1

    .line 46
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlags;->dynamicCodeLoggingServiceRemoval()Z

    move-result v0

    return v0
.end method

.method public static blacklist earlyDataManagerInit()Z
    .registers 1

    .line 52
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlags;->earlyDataManagerInit()Z

    move-result v0

    return v0
.end method

.method public static blacklist keystoreInMemoryCleanup()Z
    .registers 1

    .line 58
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlags;->keystoreInMemoryCleanup()Z

    move-result v0

    return v0
.end method

.method public static blacklist pinGlobalQuota()Z
    .registers 1

    .line 64
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlags;->pinGlobalQuota()Z

    move-result v0

    return v0
.end method

.method public static blacklist pinWebview()Z
    .registers 1

    .line 70
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlags;->pinWebview()Z

    move-result v0

    return v0
.end method

.method public static blacklist rateLimitBatteryChangedBroadcast()Z
    .registers 1

    .line 76
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/flags/FeatureFlags;->rateLimitBatteryChangedBroadcast()Z

    move-result v0

    return v0
.end method
