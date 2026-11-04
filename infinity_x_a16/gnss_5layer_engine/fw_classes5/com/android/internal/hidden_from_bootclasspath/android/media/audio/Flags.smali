.class public final Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags; = null

.field public static final blacklist FLAG_ASSISTANT_VOLUME_CONTROL:Ljava/lang/String; = "android.media.audio.assistant_volume_control"

.field public static final blacklist FLAG_AUDIO_FOCUS_DESKTOP:Ljava/lang/String; = "android.media.audio.audio_focus_desktop"

.field public static final blacklist FLAG_AUDIO_FOCUS_ISOLATION:Ljava/lang/String; = "android.media.audio.audio_focus_isolation"

.field public static final blacklist FLAG_AUTO_PUBLIC_VOLUME_API_HARDENING:Ljava/lang/String; = "android.media.audio.auto_public_volume_api_hardening"

.field public static final blacklist FLAG_BLE_HEARING_AID_DEVICE:Ljava/lang/String; = "android.media.audio.ble_hearing_aid_device"

.field public static final blacklist FLAG_CONCURRENT_AUDIO_RECORD_BYPASS_PERMISSION:Ljava/lang/String; = "android.media.audio.concurrent_audio_record_bypass_permission"

.field public static final blacklist FLAG_DAP_INJECTION_STARVE_MANAGEMENT:Ljava/lang/String; = "android.media.audio.dap_injection_starve_management"

.field public static final blacklist FLAG_DEPRECATE_STREAM_BT_SCO:Ljava/lang/String; = "android.media.audio.deprecate_stream_bt_sco"

.field public static final blacklist FLAG_DEVICE_VOLUME_APIS:Ljava/lang/String; = "android.media.audio.device_volume_apis"

.field public static final blacklist FLAG_DOLBY_AC4_LEVEL4_ENCODING_API:Ljava/lang/String; = "android.media.audio.dolby_ac4_level4_encoding_api"

.field public static final blacklist FLAG_ENABLE_MULTICHANNEL_GROUP_DEVICE:Ljava/lang/String; = "android.media.audio.enable_multichannel_group_device"

.field public static final blacklist FLAG_ENABLE_PLATFORM_PC_TYPE:Ljava/lang/String; = "android.media.audio.enable_platform_pc_type"

.field public static final blacklist FLAG_ENABLE_RINGTONE_HAPTICS_CUSTOMIZATION:Ljava/lang/String; = "android.media.audio.enable_ringtone_haptics_customization"

.field public static final blacklist FLAG_FEATURE_SPATIAL_AUDIO_HEADTRACKING_LOW_LATENCY:Ljava/lang/String; = "android.media.audio.feature_spatial_audio_headtracking_low_latency"

.field public static final blacklist FLAG_FOCUS_EXCLUSIVE_WITH_RECORDING:Ljava/lang/String; = "android.media.audio.focus_exclusive_with_recording"

.field public static final blacklist FLAG_FOCUS_FREEZE_TEST_API:Ljava/lang/String; = "android.media.audio.focus_freeze_test_api"

.field public static final blacklist FLAG_FOREGROUND_AUDIO_CONTROL:Ljava/lang/String; = "android.media.audio.foreground_audio_control"

.field public static final blacklist FLAG_GUARD_STREAM_VOLUME_APIS:Ljava/lang/String; = "android.media.audio.guard_stream_volume_apis"

.field public static final blacklist FLAG_HARDENING_PERMISSION_API:Ljava/lang/String; = "android.media.audio.hardening_permission_api"

.field public static final blacklist FLAG_HARDENING_PERMISSION_SPA:Ljava/lang/String; = "android.media.audio.hardening_permission_spa"

.field public static final blacklist FLAG_IAMF_DEFINITIONS_API:Ljava/lang/String; = "android.media.audio.iamf_definitions_api"

.field public static final blacklist FLAG_LEAUDIO_SW_OFFLOAD:Ljava/lang/String; = "android.media.audio.leaudio_sw_offload"

.field public static final blacklist FLAG_LOUDNESS_CONFIGURATOR_API:Ljava/lang/String; = "android.media.audio.loudness_configurator_api"

.field public static final blacklist FLAG_MUTED_BY_PORT_VOLUME_API:Ljava/lang/String; = "android.media.audio.muted_by_port_volume_api"

.field public static final blacklist FLAG_MUTE_BACKGROUND_AUDIO:Ljava/lang/String; = "android.media.audio.mute_background_audio"

.field public static final blacklist FLAG_REGISTER_VOLUME_CALLBACK_API_HARDENING:Ljava/lang/String; = "android.media.audio.register_volume_callback_api_hardening"

.field public static final blacklist FLAG_RINGTONE_USER_URI_CHECK:Ljava/lang/String; = "android.media.audio.ringtone_user_uri_check"

.field public static final blacklist FLAG_RINGTONE_VIBRATION_UTILS_API:Ljava/lang/String; = "android.media.audio.ringtone_vibration_utils_api"

.field public static final blacklist FLAG_ROUTED_DEVICE_IDS:Ljava/lang/String; = "android.media.audio.routed_device_ids"

.field public static final blacklist FLAG_RO_FOREGROUND_AUDIO_CONTROL:Ljava/lang/String; = "android.media.audio.ro_foreground_audio_control"

.field public static final blacklist FLAG_RO_VOLUME_RINGER_API_HARDENING:Ljava/lang/String; = "android.media.audio.ro_volume_ringer_api_hardening"

.field public static final blacklist FLAG_SCO_MANAGED_BY_AUDIO:Ljava/lang/String; = "android.media.audio.sco_managed_by_audio"

.field public static final blacklist FLAG_SONY_360RA_MPEGH_3D_FORMAT:Ljava/lang/String; = "android.media.audio.sony_360ra_mpegh_3d_format"

.field public static final blacklist FLAG_SPATIALIZER_CAPABILITIES:Ljava/lang/String; = "android.media.audio.spatializer_capabilities"

.field public static final blacklist FLAG_SPATIAL_AUDIO_SETTINGS_VERSIONING:Ljava/lang/String; = "android.media.audio.spatial_audio_settings_versioning"

.field public static final blacklist FLAG_SPEAKER_CLEANUP_USAGE:Ljava/lang/String; = "android.media.audio.speaker_cleanup_usage"

.field public static final blacklist FLAG_SPEAKER_LAYOUT_API:Ljava/lang/String; = "android.media.audio.speaker_layout_api"

.field public static final blacklist FLAG_SUPPORTED_DEVICE_TYPES_API:Ljava/lang/String; = "android.media.audio.supported_device_types_api"

.field public static final blacklist FLAG_UNIFY_ABSOLUTE_VOLUME_MANAGEMENT:Ljava/lang/String; = "android.media.audio.unify_absolute_volume_management"

.field public static final blacklist FLAG_VOLUME_RINGER_API_HARDENING:Ljava/lang/String; = "android.media.audio.volume_ringer_api_hardening"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 327
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist assistantVolumeControl()Z
    .registers 1

    .line 90
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->assistantVolumeControl()Z

    move-result v0

    return v0
.end method

.method public static blacklist audioFocusDesktop()Z
    .registers 1

    .line 96
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->audioFocusDesktop()Z

    move-result v0

    return v0
.end method

.method public static blacklist audioFocusIsolation()Z
    .registers 1

    .line 102
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->audioFocusIsolation()Z

    move-result v0

    return v0
.end method

.method public static blacklist autoPublicVolumeApiHardening()Z
    .registers 1

    .line 108
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->autoPublicVolumeApiHardening()Z

    move-result v0

    return v0
.end method

.method public static blacklist bleHearingAidDevice()Z
    .registers 1

    .line 114
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->bleHearingAidDevice()Z

    move-result v0

    return v0
.end method

.method public static blacklist concurrentAudioRecordBypassPermission()Z
    .registers 1

    .line 120
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->concurrentAudioRecordBypassPermission()Z

    move-result v0

    return v0
.end method

.method public static blacklist dapInjectionStarveManagement()Z
    .registers 1

    .line 126
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->dapInjectionStarveManagement()Z

    move-result v0

    return v0
.end method

.method public static blacklist deprecateStreamBtSco()Z
    .registers 1

    .line 132
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->deprecateStreamBtSco()Z

    move-result v0

    return v0
.end method

.method public static blacklist deviceVolumeApis()Z
    .registers 1

    .line 138
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->deviceVolumeApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist dolbyAc4Level4EncodingApi()Z
    .registers 1

    .line 144
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->dolbyAc4Level4EncodingApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableMultichannelGroupDevice()Z
    .registers 1

    .line 150
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->enableMultichannelGroupDevice()Z

    move-result v0

    return v0
.end method

.method public static blacklist enablePlatformPcType()Z
    .registers 1

    .line 156
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->enablePlatformPcType()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableRingtoneHapticsCustomization()Z
    .registers 1

    .line 162
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->enableRingtoneHapticsCustomization()Z

    move-result v0

    return v0
.end method

.method public static blacklist featureSpatialAudioHeadtrackingLowLatency()Z
    .registers 1

    .line 168
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->featureSpatialAudioHeadtrackingLowLatency()Z

    move-result v0

    return v0
.end method

.method public static blacklist focusExclusiveWithRecording()Z
    .registers 1

    .line 174
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->focusExclusiveWithRecording()Z

    move-result v0

    return v0
.end method

.method public static blacklist focusFreezeTestApi()Z
    .registers 1

    .line 180
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->focusFreezeTestApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist foregroundAudioControl()Z
    .registers 1

    .line 186
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->foregroundAudioControl()Z

    move-result v0

    return v0
.end method

.method public static blacklist guardStreamVolumeApis()Z
    .registers 1

    .line 192
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->guardStreamVolumeApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist hardeningPermissionApi()Z
    .registers 1

    .line 198
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->hardeningPermissionApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist hardeningPermissionSpa()Z
    .registers 1

    .line 204
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->hardeningPermissionSpa()Z

    move-result v0

    return v0
.end method

.method public static blacklist iamfDefinitionsApi()Z
    .registers 1

    .line 210
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->iamfDefinitionsApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist leaudioSwOffload()Z
    .registers 1

    .line 216
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->leaudioSwOffload()Z

    move-result v0

    return v0
.end method

.method public static blacklist loudnessConfiguratorApi()Z
    .registers 1

    .line 222
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->loudnessConfiguratorApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist muteBackgroundAudio()Z
    .registers 1

    .line 228
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->muteBackgroundAudio()Z

    move-result v0

    return v0
.end method

.method public static blacklist mutedByPortVolumeApi()Z
    .registers 1

    .line 234
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->mutedByPortVolumeApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist registerVolumeCallbackApiHardening()Z
    .registers 1

    .line 240
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->registerVolumeCallbackApiHardening()Z

    move-result v0

    return v0
.end method

.method public static blacklist ringtoneUserUriCheck()Z
    .registers 1

    .line 246
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->ringtoneUserUriCheck()Z

    move-result v0

    return v0
.end method

.method public static blacklist ringtoneVibrationUtilsApi()Z
    .registers 1

    .line 252
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->ringtoneVibrationUtilsApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist roForegroundAudioControl()Z
    .registers 1

    .line 258
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->roForegroundAudioControl()Z

    move-result v0

    return v0
.end method

.method public static blacklist roVolumeRingerApiHardening()Z
    .registers 1

    .line 264
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->roVolumeRingerApiHardening()Z

    move-result v0

    return v0
.end method

.method public static blacklist routedDeviceIds()Z
    .registers 1

    .line 270
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->routedDeviceIds()Z

    move-result v0

    return v0
.end method

.method public static blacklist scoManagedByAudio()Z
    .registers 1

    .line 276
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->scoManagedByAudio()Z

    move-result v0

    return v0
.end method

.method public static blacklist sony360raMpegh3dFormat()Z
    .registers 1

    .line 282
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->sony360raMpegh3dFormat()Z

    move-result v0

    return v0
.end method

.method public static blacklist spatialAudioSettingsVersioning()Z
    .registers 1

    .line 288
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->spatialAudioSettingsVersioning()Z

    move-result v0

    return v0
.end method

.method public static blacklist spatializerCapabilities()Z
    .registers 1

    .line 294
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->spatializerCapabilities()Z

    move-result v0

    return v0
.end method

.method public static blacklist speakerCleanupUsage()Z
    .registers 1

    .line 300
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->speakerCleanupUsage()Z

    move-result v0

    return v0
.end method

.method public static blacklist speakerLayoutApi()Z
    .registers 1

    .line 306
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->speakerLayoutApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist supportedDeviceTypesApi()Z
    .registers 1

    .line 312
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->supportedDeviceTypesApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist unifyAbsoluteVolumeManagement()Z
    .registers 1

    .line 318
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->unifyAbsoluteVolumeManagement()Z

    move-result v0

    return v0
.end method

.method public static blacklist volumeRingerApiHardening()Z
    .registers 1

    .line 324
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;->volumeRingerApiHardening()Z

    move-result v0

    return v0
.end method
