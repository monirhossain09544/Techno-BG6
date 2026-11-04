.class public final Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist assistantVolumeControl()Z
    .registers 2

    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist audioFocusDesktop()Z
    .registers 2

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist audioFocusIsolation()Z
    .registers 2

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist autoPublicVolumeApiHardening()Z
    .registers 2

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist bleHearingAidDevice()Z
    .registers 2

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist concurrentAudioRecordBypassPermission()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dapInjectionStarveManagement()Z
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist deprecateStreamBtSco()Z
    .registers 2

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deviceVolumeApis()Z
    .registers 2

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dolbyAc4Level4EncodingApi()Z
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableMultichannelGroupDevice()Z
    .registers 2

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enablePlatformPcType()Z
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableRingtoneHapticsCustomization()Z
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist featureSpatialAudioHeadtrackingLowLatency()Z
    .registers 2

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist focusExclusiveWithRecording()Z
    .registers 2

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist focusFreezeTestApi()Z
    .registers 2

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist foregroundAudioControl()Z
    .registers 2

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist guardStreamVolumeApis()Z
    .registers 2

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hardeningPermissionApi()Z
    .registers 2

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hardeningPermissionSpa()Z
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist iamfDefinitionsApi()Z
    .registers 2

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist leaudioSwOffload()Z
    .registers 2

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist loudnessConfiguratorApi()Z
    .registers 2

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist muteBackgroundAudio()Z
    .registers 2

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist mutedByPortVolumeApi()Z
    .registers 2

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist registerVolumeCallbackApiHardening()Z
    .registers 2

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist ringtoneUserUriCheck()Z
    .registers 2

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist ringtoneVibrationUtilsApi()Z
    .registers 2

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist roForegroundAudioControl()Z
    .registers 2

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist roVolumeRingerApiHardening()Z
    .registers 2

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist routedDeviceIds()Z
    .registers 2

    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist scoManagedByAudio()Z
    .registers 2

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sony360raMpegh3dFormat()Z
    .registers 2

    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist spatialAudioSettingsVersioning()Z
    .registers 2

    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist spatializerCapabilities()Z
    .registers 2

    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist speakerCleanupUsage()Z
    .registers 2

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist speakerLayoutApi()Z
    .registers 2

    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist supportedDeviceTypesApi()Z
    .registers 2

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist unifyAbsoluteVolumeManagement()Z
    .registers 2

    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist volumeRingerApiHardening()Z
    .registers 2

    .line 282
    const/4 v0, 0x0

    return v0
.end method
