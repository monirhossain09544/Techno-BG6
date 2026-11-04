.class public Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v1, Ljava/util/HashSet;

    const-string v16, "com.android.server.power.feature.flags.wakelock_attribution_via_workchain"

    const-string v17, ""

    const-string v2, "com.android.server.power.feature.flags.disable_frozen_process_wakelocks"

    const-string v3, "com.android.server.power.feature.flags.enable_app_wakelock_data_source"

    const-string v4, "com.android.server.power.feature.flags.enable_early_screen_timeout_detector"

    const-string v5, "com.android.server.power.feature.flags.extra_logging_separate_timeout"

    const-string v6, "com.android.server.power.feature.flags.force_disable_wakelocks"

    const-string v7, "com.android.server.power.feature.flags.improve_wakelock_latency"

    const-string v8, "com.android.server.power.feature.flags.lock_on_unplug"

    const-string v9, "com.android.server.power.feature.flags.move_wsc_logging_to_notifier"

    const-string v10, "com.android.server.power.feature.flags.partial_sleep_wakelocks"

    const-string v11, "com.android.server.power.feature.flags.per_display_wake_by_touch"

    const-string v12, "com.android.server.power.feature.flags.policy_reason_in_display_power_request"

    const-string v13, "com.android.server.power.feature.flags.separate_timeouts_flicker"

    const-string v14, "com.android.server.power.feature.flags.shutdown_system_api"

    const-string v15, "com.android.server.power.feature.flags.wake_adjacent_displays_on_wakeup_call"

    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 17
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 133
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist disableFrozenProcessWakelocks()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.disable_frozen_process_wakelocks"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAppWakelockDataSource()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.enable_app_wakelock_data_source"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableEarlyScreenTimeoutDetector()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.enable_early_screen_timeout_detector"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist extraLoggingSeparateTimeout()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.extra_logging_separate_timeout"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist forceDisableWakelocks()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.force_disable_wakelocks"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    const-string v13, "com.android.server.power.feature.flags.wake_adjacent_displays_on_wakeup_call"

    const-string v14, "com.android.server.power.feature.flags.wakelock_attribution_via_workchain"

    const-string v0, "com.android.server.power.feature.flags.disable_frozen_process_wakelocks"

    const-string v1, "com.android.server.power.feature.flags.enable_app_wakelock_data_source"

    const-string v2, "com.android.server.power.feature.flags.enable_early_screen_timeout_detector"

    const-string v3, "com.android.server.power.feature.flags.extra_logging_separate_timeout"

    const-string v4, "com.android.server.power.feature.flags.force_disable_wakelocks"

    const-string v5, "com.android.server.power.feature.flags.improve_wakelock_latency"

    const-string v6, "com.android.server.power.feature.flags.lock_on_unplug"

    const-string v7, "com.android.server.power.feature.flags.move_wsc_logging_to_notifier"

    const-string v8, "com.android.server.power.feature.flags.partial_sleep_wakelocks"

    const-string v9, "com.android.server.power.feature.flags.per_display_wake_by_touch"

    const-string v10, "com.android.server.power.feature.flags.policy_reason_in_display_power_request"

    const-string v11, "com.android.server.power.feature.flags.separate_timeouts_flicker"

    const-string v12, "com.android.server.power.feature.flags.shutdown_system_api"

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist improveWakelockLatency()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.improve_wakelock_latency"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 125
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 126
    const/4 p1, 0x1

    return p1

    .line 128
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist lockOnUnplug()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.lock_on_unplug"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist moveWscLoggingToNotifier()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.move_wsc_logging_to_notifier"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist partialSleepWakelocks()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.partial_sleep_wakelocks"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist perDisplayWakeByTouch()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.per_display_wake_by_touch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist policyReasonInDisplayPowerRequest()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.policy_reason_in_display_power_request"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist separateTimeoutsFlicker()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.separate_timeouts_flicker"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist shutdownSystemApi()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.shutdown_system_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist wakeAdjacentDisplaysOnWakeupCall()Z
    .registers 3

    .line 112
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.wake_adjacent_displays_on_wakeup_call"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist wakelockAttributionViaWorkchain()Z
    .registers 3

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.wakelock_attribution_via_workchain"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
