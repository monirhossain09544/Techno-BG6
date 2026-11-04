.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist autoBrightnessModeBedtimeWear()Z
    .registers 2

    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist autoBrightnessModes()Z
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist backUpSmoothDisplayAndForcePeakRefreshRate()Z
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist baseDensityForExternalDisplays()Z
    .registers 2

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist blockAutobrightnessChangesOnStylusUsage()Z
    .registers 2

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist brightnessWearBedtimeModeClamper()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist changeDefaultDisplayLidClosed()Z
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist committedStateSeparateEvent()Z
    .registers 2

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist configurableDefaultDozeValues()Z
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist delayImplicitRrRegistrationUntilRrAccessed()Z
    .registers 2

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist displayCategoryBuiltIn()Z
    .registers 2

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist displayListenerPerformanceImprovements()Z
    .registers 2

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist displayTopology()Z
    .registers 2

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist displayTopologyApi()Z
    .registers 2

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dozeBrightnessStrategy()Z
    .registers 2

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableAnisotropyCorrectedModes()Z
    .registers 2

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableAppResolutionChange()Z
    .registers 2

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableBatteryStatsForAllDisplays()Z
    .registers 2

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableConnectedDisplayErrorHandling()Z
    .registers 2

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableDefaultDisplayInTopologySwitch()Z
    .registers 2

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableDisplayContentModeManagement()Z
    .registers 2

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableDisplayMirrorInLockTaskMode()Z
    .registers 2

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableDisplayOffload()Z
    .registers 2

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableGetSuggestedFrameRate()Z
    .registers 2

    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableGetSupportedRefreshRates()Z
    .registers 2

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableHasArrSupport()Z
    .registers 2

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableHdrOverridePluginType()Z
    .registers 2

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableLoggingForDisplayEvents()Z
    .registers 2

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableOnDisplayAddedInObserver()Z
    .registers 2

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enablePeakRefreshRatePhysicalLimit()Z
    .registers 2

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enablePowerThrottlingClamper()Z
    .registers 2

    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableSingleAppEventForModeAndFrameRateOverride()Z
    .registers 2

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableSizeOverrideForExternalDisplays()Z
    .registers 2

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableSynthetic60hzModes()Z
    .registers 2

    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableSyntheticModesV2()Z
    .registers 2

    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist ensureColorFadeWhenTurningOn()Z
    .registers 2

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist evenDimmer()Z
    .registers 2

    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist fastHdrTransitions()Z
    .registers 2

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist framerateOverrideTriggersRrCallbacks()Z
    .registers 2

    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist hdrBrightnessSetting()Z
    .registers 2

    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist highestHdrSdrRatioApi()Z
    .registers 2

    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist ignoreAppPreferredRefreshRateRequest()Z
    .registers 2

    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isAlwaysOnAvailableApi()Z
    .registers 2

    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist minmodeCapBrightnessEnabled()Z
    .registers 2

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist modeSwitchWithoutSaving()Z
    .registers 2

    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist normalBrightnessForDozeParameter()Z
    .registers 2

    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist offloadSessionCancelBlockScreenOn()Z
    .registers 2

    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist refactorDisplayPowerController()Z
    .registers 2

    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist refreshRateEventForForegroundApps()Z
    .registers 2

    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist resolutionBackupRestore()Z
    .registers 2

    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sensorBasedBrightnessThrottling()Z
    .registers 2

    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist separateTimeouts()Z
    .registers 2

    .line 366
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setBrightnessByUnit()Z
    .registers 2

    .line 373
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist subscribeGranularDisplayEvents()Z
    .registers 2

    .line 380
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist useFusionProxSensor()Z
    .registers 2

    .line 387
    const/4 v0, 0x1

    return v0
.end method
