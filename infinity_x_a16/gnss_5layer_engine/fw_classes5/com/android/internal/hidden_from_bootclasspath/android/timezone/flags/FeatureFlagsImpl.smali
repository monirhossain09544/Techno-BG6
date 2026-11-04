.class public final Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enableAutomaticTimeZoneRejectionLogging()Z
    .registers 2

    .line 9
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableFusedTimeZoneDetector()Z
    .registers 2

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enablePermanentTimeZoneCorrectnessTelemetryLogging()Z
    .registers 2

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableTimeZoneTransitionTelemetryLogging()Z
    .registers 2

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist exposeTimeZoneSystemApi()Z
    .registers 2

    .line 37
    const/4 v0, 0x0

    return v0
.end method
