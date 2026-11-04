.class public final Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enableConcurrentWearableConnections()Z
    .registers 2

    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableDataRequestObserverApi()Z
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableHotwordWearableSensingApi()Z
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableProvideReadOnlyPfd()Z
    .registers 2

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableProvideWearableConnectionApi()Z
    .registers 2

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableRestartWssProcess()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableUnsupportedOperationStatusCode()Z
    .registers 2

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableWearableSensingManagerServiceDump()Z
    .registers 2

    .line 58
    const/4 v0, 0x0

    return v0
.end method
