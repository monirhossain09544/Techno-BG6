.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist batteryStatsScreenStateEvent()Z
    .registers 2

    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist checkinHistoryStartTime()Z
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist concurrentQueueForPendingRemovedUids()Z
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist configurePowerStatsLogFrequency()Z
    .registers 2

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableCompositeBatteryUsageStatsAtoms()Z
    .registers 2

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist powerMonitorApi()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist realCheckinHistoryStartTime()Z
    .registers 2

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist reportOutOfOrderBatteryHistoryEvents()Z
    .registers 2

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist streamlinedConnectivityBatteryStats()Z
    .registers 2

    .line 65
    const/4 v0, 0x1

    return v0
.end method
