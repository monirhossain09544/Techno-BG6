.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags; = null

.field public static final blacklist FLAG_BATTERY_STATS_SCREEN_STATE_EVENT:Ljava/lang/String; = "com.android.server.power.optimization.battery_stats_screen_state_event"

.field public static final blacklist FLAG_CHECKIN_HISTORY_START_TIME:Ljava/lang/String; = "com.android.server.power.optimization.checkin_history_start_time"

.field public static final blacklist FLAG_CONCURRENT_QUEUE_FOR_PENDING_REMOVED_UIDS:Ljava/lang/String; = "com.android.server.power.optimization.concurrent_queue_for_pending_removed_uids"

.field public static final blacklist FLAG_CONFIGURE_POWER_STATS_LOG_FREQUENCY:Ljava/lang/String; = "com.android.server.power.optimization.configure_power_stats_log_frequency"

.field public static final blacklist FLAG_DISABLE_COMPOSITE_BATTERY_USAGE_STATS_ATOMS:Ljava/lang/String; = "com.android.server.power.optimization.disable_composite_battery_usage_stats_atoms"

.field public static final blacklist FLAG_POWER_MONITOR_API:Ljava/lang/String; = "com.android.server.power.optimization.power_monitor_api"

.field public static final blacklist FLAG_REAL_CHECKIN_HISTORY_START_TIME:Ljava/lang/String; = "com.android.server.power.optimization.real_checkin_history_start_time"

.field public static final blacklist FLAG_REPORT_OUT_OF_ORDER_BATTERY_HISTORY_EVENTS:Ljava/lang/String; = "com.android.server.power.optimization.report_out_of_order_battery_history_events"

.field public static final blacklist FLAG_STREAMLINED_CONNECTIVITY_BATTERY_STATS:Ljava/lang/String; = "com.android.server.power.optimization.streamlined_connectivity_battery_stats"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist batteryStatsScreenStateEvent()Z
    .registers 1

    .line 28
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->batteryStatsScreenStateEvent()Z

    move-result v0

    return v0
.end method

.method public static blacklist checkinHistoryStartTime()Z
    .registers 1

    .line 34
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->checkinHistoryStartTime()Z

    move-result v0

    return v0
.end method

.method public static blacklist concurrentQueueForPendingRemovedUids()Z
    .registers 1

    .line 40
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->concurrentQueueForPendingRemovedUids()Z

    move-result v0

    return v0
.end method

.method public static blacklist configurePowerStatsLogFrequency()Z
    .registers 1

    .line 46
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->configurePowerStatsLogFrequency()Z

    move-result v0

    return v0
.end method

.method public static blacklist disableCompositeBatteryUsageStatsAtoms()Z
    .registers 1

    .line 52
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->disableCompositeBatteryUsageStatsAtoms()Z

    move-result v0

    return v0
.end method

.method public static blacklist powerMonitorApi()Z
    .registers 1

    .line 58
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->powerMonitorApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist realCheckinHistoryStartTime()Z
    .registers 1

    .line 64
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->realCheckinHistoryStartTime()Z

    move-result v0

    return v0
.end method

.method public static blacklist reportOutOfOrderBatteryHistoryEvents()Z
    .registers 1

    .line 70
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->reportOutOfOrderBatteryHistoryEvents()Z

    move-result v0

    return v0
.end method

.method public static blacklist streamlinedConnectivityBatteryStats()Z
    .registers 1

    .line 76
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->streamlinedConnectivityBatteryStats()Z

    move-result v0

    return v0
.end method
