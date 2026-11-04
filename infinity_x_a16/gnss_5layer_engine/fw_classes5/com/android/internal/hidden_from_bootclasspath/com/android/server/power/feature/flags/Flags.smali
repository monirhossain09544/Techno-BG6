.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags; = null

.field public static final blacklist FLAG_DISABLE_FROZEN_PROCESS_WAKELOCKS:Ljava/lang/String; = "com.android.server.power.feature.flags.disable_frozen_process_wakelocks"

.field public static final blacklist FLAG_ENABLE_APP_WAKELOCK_DATA_SOURCE:Ljava/lang/String; = "com.android.server.power.feature.flags.enable_app_wakelock_data_source"

.field public static final blacklist FLAG_ENABLE_EARLY_SCREEN_TIMEOUT_DETECTOR:Ljava/lang/String; = "com.android.server.power.feature.flags.enable_early_screen_timeout_detector"

.field public static final blacklist FLAG_EXTRA_LOGGING_SEPARATE_TIMEOUT:Ljava/lang/String; = "com.android.server.power.feature.flags.extra_logging_separate_timeout"

.field public static final blacklist FLAG_FORCE_DISABLE_WAKELOCKS:Ljava/lang/String; = "com.android.server.power.feature.flags.force_disable_wakelocks"

.field public static final blacklist FLAG_IMPROVE_WAKELOCK_LATENCY:Ljava/lang/String; = "com.android.server.power.feature.flags.improve_wakelock_latency"

.field public static final blacklist FLAG_LOCK_ON_UNPLUG:Ljava/lang/String; = "com.android.server.power.feature.flags.lock_on_unplug"

.field public static final blacklist FLAG_MOVE_WSC_LOGGING_TO_NOTIFIER:Ljava/lang/String; = "com.android.server.power.feature.flags.move_wsc_logging_to_notifier"

.field public static final blacklist FLAG_PARTIAL_SLEEP_WAKELOCKS:Ljava/lang/String; = "com.android.server.power.feature.flags.partial_sleep_wakelocks"

.field public static final blacklist FLAG_PER_DISPLAY_WAKE_BY_TOUCH:Ljava/lang/String; = "com.android.server.power.feature.flags.per_display_wake_by_touch"

.field public static final blacklist FLAG_POLICY_REASON_IN_DISPLAY_POWER_REQUEST:Ljava/lang/String; = "com.android.server.power.feature.flags.policy_reason_in_display_power_request"

.field public static final blacklist FLAG_SEPARATE_TIMEOUTS_FLICKER:Ljava/lang/String; = "com.android.server.power.feature.flags.separate_timeouts_flicker"

.field public static final blacklist FLAG_SHUTDOWN_SYSTEM_API:Ljava/lang/String; = "com.android.server.power.feature.flags.shutdown_system_api"

.field public static final blacklist FLAG_WAKELOCK_ATTRIBUTION_VIA_WORKCHAIN:Ljava/lang/String; = "com.android.server.power.feature.flags.wakelock_attribution_via_workchain"

.field public static final blacklist FLAG_WAKE_ADJACENT_DISPLAYS_ON_WAKEUP_CALL:Ljava/lang/String; = "com.android.server.power.feature.flags.wake_adjacent_displays_on_wakeup_call"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 127
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist disableFrozenProcessWakelocks()Z
    .registers 1

    .line 40
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;->disableFrozenProcessWakelocks()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableAppWakelockDataSource()Z
    .registers 1

    .line 46
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;->enableAppWakelockDataSource()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableEarlyScreenTimeoutDetector()Z
    .registers 1

    .line 52
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;->enableEarlyScreenTimeoutDetector()Z

    move-result v0

    return v0
.end method

.method public static blacklist extraLoggingSeparateTimeout()Z
    .registers 1

    .line 58
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;->extraLoggingSeparateTimeout()Z

    move-result v0

    return v0
.end method

.method public static blacklist forceDisableWakelocks()Z
    .registers 1

    .line 64
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;->forceDisableWakelocks()Z

    move-result v0

    return v0
.end method

.method public static blacklist improveWakelockLatency()Z
    .registers 1

    .line 70
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;->improveWakelockLatency()Z

    move-result v0

    return v0
.end method

.method public static blacklist lockOnUnplug()Z
    .registers 1

    .line 76
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;->lockOnUnplug()Z

    move-result v0

    return v0
.end method

.method public static blacklist moveWscLoggingToNotifier()Z
    .registers 1

    .line 82
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;->moveWscLoggingToNotifier()Z

    move-result v0

    return v0
.end method

.method public static blacklist partialSleepWakelocks()Z
    .registers 1

    .line 88
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;->partialSleepWakelocks()Z

    move-result v0

    return v0
.end method

.method public static blacklist perDisplayWakeByTouch()Z
    .registers 1

    .line 94
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;->perDisplayWakeByTouch()Z

    move-result v0

    return v0
.end method

.method public static blacklist policyReasonInDisplayPowerRequest()Z
    .registers 1

    .line 100
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;->policyReasonInDisplayPowerRequest()Z

    move-result v0

    return v0
.end method

.method public static blacklist separateTimeoutsFlicker()Z
    .registers 1

    .line 106
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;->separateTimeoutsFlicker()Z

    move-result v0

    return v0
.end method

.method public static blacklist shutdownSystemApi()Z
    .registers 1

    .line 112
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;->shutdownSystemApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist wakeAdjacentDisplaysOnWakeupCall()Z
    .registers 1

    .line 118
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;->wakeAdjacentDisplaysOnWakeupCall()Z

    move-result v0

    return v0
.end method

.method public static blacklist wakelockAttributionViaWorkchain()Z
    .registers 1

    .line 124
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;->wakelockAttributionViaWorkchain()Z

    move-result v0

    return v0
.end method
