.class public final Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist changeGetAdasAllowlistFromHiddenToSystem()Z
    .registers 2

    .line 9
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist densityBasedCoarseLocations()Z
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deprecateProviderRequestApis()Z
    .registers 2

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableHardwareAr()Z
    .registers 2

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableStationaryThrottling()Z
    .registers 2

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableLocationBypass()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableNiSuplMessageInjectionByCarrierConfigBugfix()Z
    .registers 2

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist fixGlonassAlmanacFrequencyChannelRange()Z
    .registers 2

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist fixServiceWatcher()Z
    .registers 2

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist geoidHeightsViaAltitudeHal()Z
    .registers 2

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist gnssApiMeasurementRequestWorkSource()Z
    .registers 2

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist gnssApiNavicL1()Z
    .registers 2

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist gnssAssistanceInterface()Z
    .registers 2

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist gnssAssistanceInterfaceJni()Z
    .registers 2

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist gnssLocationProviderOverlay2025Devices()Z
    .registers 2

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist keepGnssStationaryThrottling()Z
    .registers 2

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist locationBypass()Z
    .registers 2

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist locationIndicatorsEnabled()Z
    .registers 2

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist newGeocoder()Z
    .registers 2

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist populationDensityProvider()Z
    .registers 2

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist serviceWatcherUnstableFallback()Z
    .registers 2

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist supportIonexAssistance()Z
    .registers 2

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportToaInGnssSatelliteAlmanac()Z
    .registers 2

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateMinLocationRequestInterval()Z
    .registers 2

    .line 170
    const/4 v0, 0x1

    return v0
.end method
