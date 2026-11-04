.class public Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;",
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
    .registers 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 360
    new-instance v1, Ljava/util/HashSet;

    const-string v41, "android.media.audio.volume_ringer_api_hardening"

    const-string v42, ""

    const-string v2, "android.media.audio.assistant_volume_control"

    const-string v3, "android.media.audio.audio_focus_desktop"

    const-string v4, "android.media.audio.audio_focus_isolation"

    const-string v5, "android.media.audio.auto_public_volume_api_hardening"

    const-string v6, "android.media.audio.ble_hearing_aid_device"

    const-string v7, "android.media.audio.concurrent_audio_record_bypass_permission"

    const-string v8, "android.media.audio.dap_injection_starve_management"

    const-string v9, "android.media.audio.deprecate_stream_bt_sco"

    const-string v10, "android.media.audio.device_volume_apis"

    const-string v11, "android.media.audio.dolby_ac4_level4_encoding_api"

    const-string v12, "android.media.audio.enable_multichannel_group_device"

    const-string v13, "android.media.audio.enable_platform_pc_type"

    const-string v14, "android.media.audio.enable_ringtone_haptics_customization"

    const-string v15, "android.media.audio.feature_spatial_audio_headtracking_low_latency"

    const-string v16, "android.media.audio.focus_exclusive_with_recording"

    const-string v17, "android.media.audio.focus_freeze_test_api"

    const-string v18, "android.media.audio.foreground_audio_control"

    const-string v19, "android.media.audio.guard_stream_volume_apis"

    const-string v20, "android.media.audio.hardening_permission_api"

    const-string v21, "android.media.audio.hardening_permission_spa"

    const-string v22, "android.media.audio.iamf_definitions_api"

    const-string v23, "android.media.audio.leaudio_sw_offload"

    const-string v24, "android.media.audio.loudness_configurator_api"

    const-string v25, "android.media.audio.mute_background_audio"

    const-string v26, "android.media.audio.muted_by_port_volume_api"

    const-string v27, "android.media.audio.register_volume_callback_api_hardening"

    const-string v28, "android.media.audio.ringtone_user_uri_check"

    const-string v29, "android.media.audio.ringtone_vibration_utils_api"

    const-string v30, "android.media.audio.ro_foreground_audio_control"

    const-string v31, "android.media.audio.ro_volume_ringer_api_hardening"

    const-string v32, "android.media.audio.routed_device_ids"

    const-string v33, "android.media.audio.sco_managed_by_audio"

    const-string v34, "android.media.audio.sony_360ra_mpegh_3d_format"

    const-string v35, "android.media.audio.spatial_audio_settings_versioning"

    const-string v36, "android.media.audio.spatializer_capabilities"

    const-string v37, "android.media.audio.speaker_cleanup_usage"

    const-string v38, "android.media.audio.speaker_layout_api"

    const-string v39, "android.media.audio.supported_device_types_api"

    const-string v40, "android.media.audio.unify_absolute_volume_management"

    filled-new-array/range {v2 .. v42}, [Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 17
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 308
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist assistantVolumeControl()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.media.audio.assistant_volume_control"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist audioFocusDesktop()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.media.audio.audio_focus_desktop"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist audioFocusIsolation()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.media.audio.audio_focus_isolation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist autoPublicVolumeApiHardening()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.media.audio.auto_public_volume_api_hardening"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist bleHearingAidDevice()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.media.audio.ble_hearing_aid_device"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist concurrentAudioRecordBypassPermission()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.media.audio.concurrent_audio_record_bypass_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dapInjectionStarveManagement()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.media.audio.dap_injection_starve_management"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deprecateStreamBtSco()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "android.media.audio.deprecate_stream_bt_sco"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceVolumeApis()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.media.audio.device_volume_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dolbyAc4Level4EncodingApi()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.media.audio.dolby_ac4_level4_encoding_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableMultichannelGroupDevice()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.media.audio.enable_multichannel_group_device"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePlatformPcType()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.media.audio.enable_platform_pc_type"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableRingtoneHapticsCustomization()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.media.audio.enable_ringtone_haptics_customization"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist featureSpatialAudioHeadtrackingLowLatency()Z
    .registers 3

    .line 112
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.media.audio.feature_spatial_audio_headtracking_low_latency"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist focusExclusiveWithRecording()Z
    .registers 3

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.media.audio.focus_exclusive_with_recording"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist focusFreezeTestApi()Z
    .registers 3

    .line 126
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.media.audio.focus_freeze_test_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist foregroundAudioControl()Z
    .registers 3

    .line 133
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.media.audio.foreground_audio_control"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 316
    const-string v39, "android.media.audio.unify_absolute_volume_management"

    const-string v40, "android.media.audio.volume_ringer_api_hardening"

    const-string v1, "android.media.audio.assistant_volume_control"

    const-string v2, "android.media.audio.audio_focus_desktop"

    const-string v3, "android.media.audio.audio_focus_isolation"

    const-string v4, "android.media.audio.auto_public_volume_api_hardening"

    const-string v5, "android.media.audio.ble_hearing_aid_device"

    const-string v6, "android.media.audio.concurrent_audio_record_bypass_permission"

    const-string v7, "android.media.audio.dap_injection_starve_management"

    const-string v8, "android.media.audio.deprecate_stream_bt_sco"

    const-string v9, "android.media.audio.device_volume_apis"

    const-string v10, "android.media.audio.dolby_ac4_level4_encoding_api"

    const-string v11, "android.media.audio.enable_multichannel_group_device"

    const-string v12, "android.media.audio.enable_platform_pc_type"

    const-string v13, "android.media.audio.enable_ringtone_haptics_customization"

    const-string v14, "android.media.audio.feature_spatial_audio_headtracking_low_latency"

    const-string v15, "android.media.audio.focus_exclusive_with_recording"

    const-string v16, "android.media.audio.focus_freeze_test_api"

    const-string v17, "android.media.audio.foreground_audio_control"

    const-string v18, "android.media.audio.guard_stream_volume_apis"

    const-string v19, "android.media.audio.hardening_permission_api"

    const-string v20, "android.media.audio.hardening_permission_spa"

    const-string v21, "android.media.audio.iamf_definitions_api"

    const-string v22, "android.media.audio.leaudio_sw_offload"

    const-string v23, "android.media.audio.loudness_configurator_api"

    const-string v24, "android.media.audio.mute_background_audio"

    const-string v25, "android.media.audio.muted_by_port_volume_api"

    const-string v26, "android.media.audio.register_volume_callback_api_hardening"

    const-string v27, "android.media.audio.ringtone_user_uri_check"

    const-string v28, "android.media.audio.ringtone_vibration_utils_api"

    const-string v29, "android.media.audio.ro_foreground_audio_control"

    const-string v30, "android.media.audio.ro_volume_ringer_api_hardening"

    const-string v31, "android.media.audio.routed_device_ids"

    const-string v32, "android.media.audio.sco_managed_by_audio"

    const-string v33, "android.media.audio.sony_360ra_mpegh_3d_format"

    const-string v34, "android.media.audio.spatial_audio_settings_versioning"

    const-string v35, "android.media.audio.spatializer_capabilities"

    const-string v36, "android.media.audio.speaker_cleanup_usage"

    const-string v37, "android.media.audio.speaker_layout_api"

    const-string v38, "android.media.audio.supported_device_types_api"

    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

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
            "Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist guardStreamVolumeApis()Z
    .registers 3

    .line 140
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.media.audio.guard_stream_volume_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hardeningPermissionApi()Z
    .registers 3

    .line 147
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.media.audio.hardening_permission_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hardeningPermissionSpa()Z
    .registers 3

    .line 154
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.media.audio.hardening_permission_spa"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist iamfDefinitionsApi()Z
    .registers 3

    .line 161
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.media.audio.iamf_definitions_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 300
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 301
    const/4 p1, 0x1

    return p1

    .line 303
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist leaudioSwOffload()Z
    .registers 3

    .line 168
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.media.audio.leaudio_sw_offload"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist loudnessConfiguratorApi()Z
    .registers 3

    .line 175
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.media.audio.loudness_configurator_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist muteBackgroundAudio()Z
    .registers 3

    .line 182
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.media.audio.mute_background_audio"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist mutedByPortVolumeApi()Z
    .registers 3

    .line 189
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.media.audio.muted_by_port_volume_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist registerVolumeCallbackApiHardening()Z
    .registers 3

    .line 196
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.media.audio.register_volume_callback_api_hardening"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ringtoneUserUriCheck()Z
    .registers 3

    .line 203
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.media.audio.ringtone_user_uri_check"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ringtoneVibrationUtilsApi()Z
    .registers 3

    .line 210
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.media.audio.ringtone_vibration_utils_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist roForegroundAudioControl()Z
    .registers 3

    .line 217
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.media.audio.ro_foreground_audio_control"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist roVolumeRingerApiHardening()Z
    .registers 3

    .line 224
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.media.audio.ro_volume_ringer_api_hardening"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist routedDeviceIds()Z
    .registers 3

    .line 231
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.media.audio.routed_device_ids"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist scoManagedByAudio()Z
    .registers 3

    .line 238
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.media.audio.sco_managed_by_audio"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sony360raMpegh3dFormat()Z
    .registers 3

    .line 245
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.media.audio.sony_360ra_mpegh_3d_format"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist spatialAudioSettingsVersioning()Z
    .registers 3

    .line 252
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.media.audio.spatial_audio_settings_versioning"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist spatializerCapabilities()Z
    .registers 3

    .line 259
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.media.audio.spatializer_capabilities"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist speakerCleanupUsage()Z
    .registers 3

    .line 266
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.media.audio.speaker_cleanup_usage"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist speakerLayoutApi()Z
    .registers 3

    .line 273
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.media.audio.speaker_layout_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportedDeviceTypesApi()Z
    .registers 3

    .line 280
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.media.audio.supported_device_types_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unifyAbsoluteVolumeManagement()Z
    .registers 3

    .line 287
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.media.audio.unify_absolute_volume_management"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist volumeRingerApiHardening()Z
    .registers 3

    .line 294
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "android.media.audio.volume_ringer_api_hardening"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
