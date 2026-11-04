.class public Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;",
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
    .registers 69
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 552
    new-instance v1, Ljava/util/HashSet;

    const-string v65, "android.os.use_query_angle_choice"

    const-string v66, ""

    const-string v2, "android.os.adpf_25q2_metrics"

    const-string v3, "android.os.adpf_cap_max_batch_size"

    const-string v4, "android.os.adpf_gpu_report_actual_work_duration"

    const-string v5, "android.os.adpf_graphics_pipeline"

    const-string v6, "android.os.adpf_hwui_gpu"

    const-string v7, "android.os.adpf_measure_during_input_event_boost"

    const-string v8, "android.os.adpf_obtainview_boost"

    const-string v9, "android.os.adpf_platform_power_efficiency"

    const-string v10, "android.os.adpf_prefer_power_efficiency"

    const-string v11, "android.os.adpf_use_fmq_channel"

    const-string v12, "android.os.adpf_use_fmq_channel_fixed"

    const-string v13, "android.os.adpf_use_load_hints"

    const-string v14, "android.os.allow_consentless_bugreport_delegated_consent"

    const-string v15, "android.os.allow_private_profile"

    const-string v16, "android.os.allow_thermal_hal_skin_forecast"

    const-string v17, "android.os.allow_thermal_headroom_thresholds"

    const-string v18, "android.os.allow_thermal_thresholds_callback"

    const-string v19, "android.os.android_os_build_vanilla_ice_cream"

    const-string v20, "android.os.api_for_backported_fixes"

    const-string v21, "android.os.async_trace_for_track"

    const-string v22, "android.os.battery_part_status_api"

    const-string v23, "android.os.battery_saver_supported_check_api"

    const-string v24, "android.os.battery_service_support_current_adb_command"

    const-string v25, "android.os.binder_cache_transaction_trace_names"

    const-string v26, "android.os.binder_frozen_state_change_callback"

    const-string v27, "android.os.bluetooth_bugreport_mode"

    const-string v28, "android.os.bugreport_deferred_consent_screenshot_fix"

    const-string v29, "android.os.bugreport_multi_display_screenshot_enabled"

    const-string v30, "android.os.count_class_instances_api"

    const-string v31, "android.os.cpu_gpu_headrooms"

    const-string v32, "android.os.disable_madvise_artfile_default"

    const-string v33, "android.os.enable_angle_deny_list"

    const-string v34, "android.os.enable_angle_for_games"

    const-string v35, "android.os.enable_has_binders"

    const-string v36, "android.os.enforce_strict_file_mode_check"

    const-string v37, "android.os.get_private_space_settings"

    const-string v38, "android.os.ipc_data_cache_module_adservices"

    const-string v39, "android.os.ipc_data_cache_testmode_apis"

    const-string v40, "android.os.low_light_dream_behavior"

    const-string v41, "android.os.mainline_vcn_platform_api"

    const-string v42, "android.os.material_colors_10_2024"

    const-string v43, "android.os.material_colors_2025_03"

    const-string v44, "android.os.material_default_user_icon"

    const-string v45, "android.os.material_motion_tokens"

    const-string v46, "android.os.material_shape_tokens"

    const-string v47, "android.os.message_queue_testability"

    const-string v48, "android.os.native_framework_prototype"

    const-string v49, "android.os.native_looper_skip_epoll_wait_for_zero_timeout"

    const-string v50, "android.os.network_time_uses_shared_memory"

    const-string v51, "android.os.ordered_broadcast_multiple_permissions"

    const-string v52, "android.os.parcel_marshall_bytebuffer"

    const-string v53, "android.os.parcel_string_cache_enabled"

    const-string v54, "android.os.perfetto_sdk_tracing"

    const-string v55, "android.os.perfetto_sdk_tracing_v2"

    const-string v56, "android.os.perfetto_sdk_tracing_v3"

    const-string v57, "android.os.remove_app_profiler_pss_collection"

    const-string v58, "android.os.security_state_service"

    const-string v59, "android.os.state_of_health_public"

    const-string v60, "android.os.storage_lifetime_api"

    const-string v61, "android.os.strict_mode_restricted_network"

    const-string v62, "android.os.telemetry_apis_framework_initialization"

    const-string v63, "android.os.update_engine_api"

    const-string v64, "android.os.use_concurrent_message_queue_in_apps"

    filled-new-array/range {v2 .. v66}, [Ljava/lang/String;

    move-result-object v2

    .line 553
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 17
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 476
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist adpf25q2Metrics()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "android.os.adpf_25q2_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfCapMaxBatchSize()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "android.os.adpf_cap_max_batch_size"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfGpuReportActualWorkDuration()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.os.adpf_gpu_report_actual_work_duration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfGraphicsPipeline()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "android.os.adpf_graphics_pipeline"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfHwuiGpu()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "android.os.adpf_hwui_gpu"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfMeasureDuringInputEventBoost()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.os.adpf_measure_during_input_event_boost"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfObtainviewBoost()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.os.adpf_obtainview_boost"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfPlatformPowerEfficiency()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda62;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda62;-><init>()V

    const-string v1, "android.os.adpf_platform_power_efficiency"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfPreferPowerEfficiency()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.os.adpf_prefer_power_efficiency"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfUseFmqChannel()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.os.adpf_use_fmq_channel"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfUseFmqChannelFixed()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.os.adpf_use_fmq_channel_fixed"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfUseLoadHints()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda63;-><init>()V

    const-string v1, "android.os.adpf_use_load_hints"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowConsentlessBugreportDelegatedConsent()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.os.allow_consentless_bugreport_delegated_consent"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowPrivateProfile()Z
    .registers 3

    .line 112
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.os.allow_private_profile"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowThermalHalSkinForecast()Z
    .registers 3

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.os.allow_thermal_hal_skin_forecast"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowThermalHeadroomThresholds()Z
    .registers 3

    .line 126
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "android.os.allow_thermal_headroom_thresholds"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowThermalThresholdsCallback()Z
    .registers 3

    .line 133
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.os.allow_thermal_thresholds_callback"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist androidOsBuildVanillaIceCream()Z
    .registers 3

    .line 140
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.os.android_os_build_vanilla_ice_cream"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist apiForBackportedFixes()Z
    .registers 3

    .line 147
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "android.os.api_for_backported_fixes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist asyncTraceForTrack()Z
    .registers 3

    .line 154
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda60;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda60;-><init>()V

    const-string v1, "android.os.async_trace_for_track"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist batteryPartStatusApi()Z
    .registers 3

    .line 161
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "android.os.battery_part_status_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist batterySaverSupportedCheckApi()Z
    .registers 3

    .line 168
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.os.battery_saver_supported_check_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist batteryServiceSupportCurrentAdbCommand()Z
    .registers 3

    .line 175
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.os.battery_service_support_current_adb_command"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist binderCacheTransactionTraceNames()Z
    .registers 3

    .line 182
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.os.binder_cache_transaction_trace_names"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist binderFrozenStateChangeCallback()Z
    .registers 3

    .line 189
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "android.os.binder_frozen_state_change_callback"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist bluetoothBugreportMode()Z
    .registers 3

    .line 196
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.os.bluetooth_bugreport_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist bugreportDeferredConsentScreenshotFix()Z
    .registers 3

    .line 203
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.os.bugreport_deferred_consent_screenshot_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist bugreportMultiDisplayScreenshotEnabled()Z
    .registers 3

    .line 210
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.os.bugreport_multi_display_screenshot_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist countClassInstancesApi()Z
    .registers 3

    .line 217
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "android.os.count_class_instances_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cpuGpuHeadrooms()Z
    .registers 3

    .line 224
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.os.cpu_gpu_headrooms"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disableMadviseArtfileDefault()Z
    .registers 3

    .line 231
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "android.os.disable_madvise_artfile_default"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAngleDenyList()Z
    .registers 3

    .line 238
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "android.os.enable_angle_deny_list"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAngleForGames()Z
    .registers 3

    .line 245
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "android.os.enable_angle_for_games"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableHasBinders()Z
    .registers 3

    .line 252
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.os.enable_has_binders"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enforceStrictFileModeCheck()Z
    .registers 3

    .line 259
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.os.enforce_strict_file_mode_check"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 66
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 484
    const-string v63, "android.os.use_concurrent_message_queue_in_apps"

    const-string v64, "android.os.use_query_angle_choice"

    const-string v1, "android.os.adpf_25q2_metrics"

    const-string v2, "android.os.adpf_cap_max_batch_size"

    const-string v3, "android.os.adpf_gpu_report_actual_work_duration"

    const-string v4, "android.os.adpf_graphics_pipeline"

    const-string v5, "android.os.adpf_hwui_gpu"

    const-string v6, "android.os.adpf_measure_during_input_event_boost"

    const-string v7, "android.os.adpf_obtainview_boost"

    const-string v8, "android.os.adpf_platform_power_efficiency"

    const-string v9, "android.os.adpf_prefer_power_efficiency"

    const-string v10, "android.os.adpf_use_fmq_channel"

    const-string v11, "android.os.adpf_use_fmq_channel_fixed"

    const-string v12, "android.os.adpf_use_load_hints"

    const-string v13, "android.os.allow_consentless_bugreport_delegated_consent"

    const-string v14, "android.os.allow_private_profile"

    const-string v15, "android.os.allow_thermal_hal_skin_forecast"

    const-string v16, "android.os.allow_thermal_headroom_thresholds"

    const-string v17, "android.os.allow_thermal_thresholds_callback"

    const-string v18, "android.os.android_os_build_vanilla_ice_cream"

    const-string v19, "android.os.api_for_backported_fixes"

    const-string v20, "android.os.async_trace_for_track"

    const-string v21, "android.os.battery_part_status_api"

    const-string v22, "android.os.battery_saver_supported_check_api"

    const-string v23, "android.os.battery_service_support_current_adb_command"

    const-string v24, "android.os.binder_cache_transaction_trace_names"

    const-string v25, "android.os.binder_frozen_state_change_callback"

    const-string v26, "android.os.bluetooth_bugreport_mode"

    const-string v27, "android.os.bugreport_deferred_consent_screenshot_fix"

    const-string v28, "android.os.bugreport_multi_display_screenshot_enabled"

    const-string v29, "android.os.count_class_instances_api"

    const-string v30, "android.os.cpu_gpu_headrooms"

    const-string v31, "android.os.disable_madvise_artfile_default"

    const-string v32, "android.os.enable_angle_deny_list"

    const-string v33, "android.os.enable_angle_for_games"

    const-string v34, "android.os.enable_has_binders"

    const-string v35, "android.os.enforce_strict_file_mode_check"

    const-string v36, "android.os.get_private_space_settings"

    const-string v37, "android.os.ipc_data_cache_module_adservices"

    const-string v38, "android.os.ipc_data_cache_testmode_apis"

    const-string v39, "android.os.low_light_dream_behavior"

    const-string v40, "android.os.mainline_vcn_platform_api"

    const-string v41, "android.os.material_colors_10_2024"

    const-string v42, "android.os.material_colors_2025_03"

    const-string v43, "android.os.material_default_user_icon"

    const-string v44, "android.os.material_motion_tokens"

    const-string v45, "android.os.material_shape_tokens"

    const-string v46, "android.os.message_queue_testability"

    const-string v47, "android.os.native_framework_prototype"

    const-string v48, "android.os.native_looper_skip_epoll_wait_for_zero_timeout"

    const-string v49, "android.os.network_time_uses_shared_memory"

    const-string v50, "android.os.ordered_broadcast_multiple_permissions"

    const-string v51, "android.os.parcel_marshall_bytebuffer"

    const-string v52, "android.os.parcel_string_cache_enabled"

    const-string v53, "android.os.perfetto_sdk_tracing"

    const-string v54, "android.os.perfetto_sdk_tracing_v2"

    const-string v55, "android.os.perfetto_sdk_tracing_v3"

    const-string v56, "android.os.remove_app_profiler_pss_collection"

    const-string v57, "android.os.security_state_service"

    const-string v58, "android.os.state_of_health_public"

    const-string v59, "android.os.storage_lifetime_api"

    const-string v60, "android.os.strict_mode_restricted_network"

    const-string v61, "android.os.telemetry_apis_framework_initialization"

    const-string v62, "android.os.update_engine_api"

    filled-new-array/range {v1 .. v64}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPrivateSpaceSettings()Z
    .registers 3

    .line 266
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.os.get_private_space_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist ipcDataCacheModuleAdservices()Z
    .registers 3

    .line 273
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "android.os.ipc_data_cache_module_adservices"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ipcDataCacheTestmodeApis()Z
    .registers 3

    .line 280
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "android.os.ipc_data_cache_testmode_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 467
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 468
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 469
    const/4 p1, 0x1

    return p1

    .line 471
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist lowLightDreamBehavior()Z
    .registers 3

    .line 287
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "android.os.low_light_dream_behavior"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist mainlineVcnPlatformApi()Z
    .registers 3

    .line 294
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.os.mainline_vcn_platform_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist materialColors102024()Z
    .registers 3

    .line 301
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "android.os.material_colors_10_2024"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist materialColors202503()Z
    .registers 3

    .line 308
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.os.material_colors_2025_03"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist materialDefaultUserIcon()Z
    .registers 3

    .line 315
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.os.material_default_user_icon"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist materialMotionTokens()Z
    .registers 3

    .line 322
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "android.os.material_motion_tokens"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist materialShapeTokens()Z
    .registers 3

    .line 329
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.os.material_shape_tokens"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist messageQueueTestability()Z
    .registers 3

    .line 336
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.os.message_queue_testability"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nativeFrameworkPrototype()Z
    .registers 3

    .line 343
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.os.native_framework_prototype"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nativeLooperSkipEpollWaitForZeroTimeout()Z
    .registers 3

    .line 350
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "android.os.native_looper_skip_epoll_wait_for_zero_timeout"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist networkTimeUsesSharedMemory()Z
    .registers 3

    .line 357
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.os.network_time_uses_shared_memory"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist orderedBroadcastMultiplePermissions()Z
    .registers 3

    .line 364
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.os.ordered_broadcast_multiple_permissions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist parcelMarshallBytebuffer()Z
    .registers 3

    .line 371
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda59;-><init>()V

    const-string v1, "android.os.parcel_marshall_bytebuffer"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist parcelStringCacheEnabled()Z
    .registers 3

    .line 378
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.os.parcel_string_cache_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist perfettoSdkTracing()Z
    .registers 3

    .line 385
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "android.os.perfetto_sdk_tracing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist perfettoSdkTracingV2()Z
    .registers 3

    .line 392
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "android.os.perfetto_sdk_tracing_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist perfettoSdkTracingV3()Z
    .registers 3

    .line 399
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.os.perfetto_sdk_tracing_v3"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeAppProfilerPssCollection()Z
    .registers 3

    .line 406
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.os.remove_app_profiler_pss_collection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist securityStateService()Z
    .registers 3

    .line 413
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.os.security_state_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist stateOfHealthPublic()Z
    .registers 3

    .line 420
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.os.state_of_health_public"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist storageLifetimeApi()Z
    .registers 3

    .line 427
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.os.storage_lifetime_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist strictModeRestrictedNetwork()Z
    .registers 3

    .line 434
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda61;-><init>()V

    const-string v1, "android.os.strict_mode_restricted_network"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist telemetryApisFrameworkInitialization()Z
    .registers 3

    .line 441
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.os.telemetry_apis_framework_initialization"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist updateEngineApi()Z
    .registers 3

    .line 448
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.os.update_engine_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useConcurrentMessageQueueInApps()Z
    .registers 3

    .line 455
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.os.use_concurrent_message_queue_in_apps"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useQueryAngleChoice()Z
    .registers 3

    .line 462
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "android.os.use_query_angle_choice"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
