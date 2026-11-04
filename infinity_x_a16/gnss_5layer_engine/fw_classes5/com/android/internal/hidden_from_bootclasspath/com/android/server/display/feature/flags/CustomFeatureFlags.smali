.class public Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;",
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
    .registers 60
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 480
    new-instance v1, Ljava/util/HashSet;

    const-string v56, "com.android.server.display.feature.flags.use_fusion_prox_sensor"

    const-string v57, ""

    const-string v2, "com.android.server.display.feature.flags.auto_brightness_mode_bedtime_wear"

    const-string v3, "com.android.server.display.feature.flags.auto_brightness_modes"

    const-string v4, "com.android.server.display.feature.flags.back_up_smooth_display_and_force_peak_refresh_rate"

    const-string v5, "com.android.server.display.feature.flags.base_density_for_external_displays"

    const-string v6, "com.android.server.display.feature.flags.block_autobrightness_changes_on_stylus_usage"

    const-string v7, "com.android.server.display.feature.flags.brightness_wear_bedtime_mode_clamper"

    const-string v8, "com.android.server.display.feature.flags.change_default_display_lid_closed"

    const-string v9, "com.android.server.display.feature.flags.committed_state_separate_event"

    const-string v10, "com.android.server.display.feature.flags.configurable_default_doze_values"

    const-string v11, "com.android.server.display.feature.flags.delay_implicit_rr_registration_until_rr_accessed"

    const-string v12, "com.android.server.display.feature.flags.display_category_built_in"

    const-string v13, "com.android.server.display.feature.flags.display_listener_performance_improvements"

    const-string v14, "com.android.server.display.feature.flags.display_topology"

    const-string v15, "com.android.server.display.feature.flags.display_topology_api"

    const-string v16, "com.android.server.display.feature.flags.doze_brightness_strategy"

    const-string v17, "com.android.server.display.feature.flags.enable_anisotropy_corrected_modes"

    const-string v18, "com.android.server.display.feature.flags.enable_app_resolution_change"

    const-string v19, "com.android.server.display.feature.flags.enable_battery_stats_for_all_displays"

    const-string v20, "com.android.server.display.feature.flags.enable_connected_display_error_handling"

    const-string v21, "com.android.server.display.feature.flags.enable_default_display_in_topology_switch"

    const-string v22, "com.android.server.display.feature.flags.enable_display_content_mode_management"

    const-string v23, "com.android.server.display.feature.flags.enable_display_mirror_in_lock_task_mode"

    const-string v24, "com.android.server.display.feature.flags.enable_display_offload"

    const-string v25, "com.android.server.display.feature.flags.enable_get_suggested_frame_rate"

    const-string v26, "com.android.server.display.feature.flags.enable_get_supported_refresh_rates"

    const-string v27, "com.android.server.display.feature.flags.enable_has_arr_support"

    const-string v28, "com.android.server.display.feature.flags.enable_hdr_override_plugin_type"

    const-string v29, "com.android.server.display.feature.flags.enable_logging_for_display_events"

    const-string v30, "com.android.server.display.feature.flags.enable_on_display_added_in_observer"

    const-string v31, "com.android.server.display.feature.flags.enable_peak_refresh_rate_physical_limit"

    const-string v32, "com.android.server.display.feature.flags.enable_power_throttling_clamper"

    const-string v33, "com.android.server.display.feature.flags.enable_single_app_event_for_mode_and_frame_rate_override"

    const-string v34, "com.android.server.display.feature.flags.enable_size_override_for_external_displays"

    const-string v35, "com.android.server.display.feature.flags.enable_synthetic_60hz_modes"

    const-string v36, "com.android.server.display.feature.flags.enable_synthetic_modes_v2"

    const-string v37, "com.android.server.display.feature.flags.ensure_color_fade_when_turning_on"

    const-string v38, "com.android.server.display.feature.flags.even_dimmer"

    const-string v39, "com.android.server.display.feature.flags.fast_hdr_transitions"

    const-string v40, "com.android.server.display.feature.flags.framerate_override_triggers_rr_callbacks"

    const-string v41, "com.android.server.display.feature.flags.hdr_brightness_setting"

    const-string v42, "com.android.server.display.feature.flags.highest_hdr_sdr_ratio_api"

    const-string v43, "com.android.server.display.feature.flags.ignore_app_preferred_refresh_rate_request"

    const-string v44, "com.android.server.display.feature.flags.is_always_on_available_api"

    const-string v45, "com.android.server.display.feature.flags.minmode_cap_brightness_enabled"

    const-string v46, "com.android.server.display.feature.flags.mode_switch_without_saving"

    const-string v47, "com.android.server.display.feature.flags.normal_brightness_for_doze_parameter"

    const-string v48, "com.android.server.display.feature.flags.offload_session_cancel_block_screen_on"

    const-string v49, "com.android.server.display.feature.flags.refactor_display_power_controller"

    const-string v50, "com.android.server.display.feature.flags.refresh_rate_event_for_foreground_apps"

    const-string v51, "com.android.server.display.feature.flags.resolution_backup_restore"

    const-string v52, "com.android.server.display.feature.flags.sensor_based_brightness_throttling"

    const-string v53, "com.android.server.display.feature.flags.separate_timeouts"

    const-string v54, "com.android.server.display.feature.flags.set_brightness_by_unit"

    const-string v55, "com.android.server.display.feature.flags.subscribe_granular_display_events"

    filled-new-array/range {v2 .. v57}, [Ljava/lang/String;

    move-result-object v2

    .line 481
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 17
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 413
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist autoBrightnessModeBedtimeWear()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.auto_brightness_mode_bedtime_wear"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist autoBrightnessModes()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.auto_brightness_modes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist backUpSmoothDisplayAndForcePeakRefreshRate()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.back_up_smooth_display_and_force_peak_refresh_rate"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist baseDensityForExternalDisplays()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.base_density_for_external_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist blockAutobrightnessChangesOnStylusUsage()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.block_autobrightness_changes_on_stylus_usage"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist brightnessWearBedtimeModeClamper()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.brightness_wear_bedtime_mode_clamper"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist changeDefaultDisplayLidClosed()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.change_default_display_lid_closed"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist committedStateSeparateEvent()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.committed_state_separate_event"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist configurableDefaultDozeValues()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.configurable_default_doze_values"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist delayImplicitRrRegistrationUntilRrAccessed()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.delay_implicit_rr_registration_until_rr_accessed"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist displayCategoryBuiltIn()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.display_category_built_in"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist displayListenerPerformanceImprovements()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.display_listener_performance_improvements"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist displayTopology()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.display_topology"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist displayTopologyApi()Z
    .registers 3

    .line 112
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.display_topology_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dozeBrightnessStrategy()Z
    .registers 3

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.doze_brightness_strategy"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAnisotropyCorrectedModes()Z
    .registers 3

    .line 126
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_anisotropy_corrected_modes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAppResolutionChange()Z
    .registers 3

    .line 133
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_app_resolution_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableBatteryStatsForAllDisplays()Z
    .registers 3

    .line 140
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_battery_stats_for_all_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableConnectedDisplayErrorHandling()Z
    .registers 3

    .line 147
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_connected_display_error_handling"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDefaultDisplayInTopologySwitch()Z
    .registers 3

    .line 154
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_default_display_in_topology_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDisplayContentModeManagement()Z
    .registers 3

    .line 161
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_display_content_mode_management"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDisplayMirrorInLockTaskMode()Z
    .registers 3

    .line 168
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_display_mirror_in_lock_task_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDisplayOffload()Z
    .registers 3

    .line 175
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_display_offload"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableGetSuggestedFrameRate()Z
    .registers 3

    .line 182
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_get_suggested_frame_rate"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableGetSupportedRefreshRates()Z
    .registers 3

    .line 189
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_get_supported_refresh_rates"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableHasArrSupport()Z
    .registers 3

    .line 196
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_has_arr_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableHdrOverridePluginType()Z
    .registers 3

    .line 203
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_hdr_override_plugin_type"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableLoggingForDisplayEvents()Z
    .registers 3

    .line 210
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_logging_for_display_events"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableOnDisplayAddedInObserver()Z
    .registers 3

    .line 217
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_on_display_added_in_observer"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePeakRefreshRatePhysicalLimit()Z
    .registers 3

    .line 224
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_peak_refresh_rate_physical_limit"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePowerThrottlingClamper()Z
    .registers 3

    .line 231
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_power_throttling_clamper"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableSingleAppEventForModeAndFrameRateOverride()Z
    .registers 3

    .line 238
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_single_app_event_for_mode_and_frame_rate_override"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableSizeOverrideForExternalDisplays()Z
    .registers 3

    .line 245
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_size_override_for_external_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableSynthetic60hzModes()Z
    .registers 3

    .line 252
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_synthetic_60hz_modes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableSyntheticModesV2()Z
    .registers 3

    .line 259
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_synthetic_modes_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ensureColorFadeWhenTurningOn()Z
    .registers 3

    .line 266
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.ensure_color_fade_when_turning_on"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist evenDimmer()Z
    .registers 3

    .line 273
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.even_dimmer"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fastHdrTransitions()Z
    .registers 3

    .line 280
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.fast_hdr_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist framerateOverrideTriggersRrCallbacks()Z
    .registers 3

    .line 287
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.framerate_override_triggers_rr_callbacks"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 57
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 421
    const-string v54, "com.android.server.display.feature.flags.subscribe_granular_display_events"

    const-string v55, "com.android.server.display.feature.flags.use_fusion_prox_sensor"

    const-string v1, "com.android.server.display.feature.flags.auto_brightness_mode_bedtime_wear"

    const-string v2, "com.android.server.display.feature.flags.auto_brightness_modes"

    const-string v3, "com.android.server.display.feature.flags.back_up_smooth_display_and_force_peak_refresh_rate"

    const-string v4, "com.android.server.display.feature.flags.base_density_for_external_displays"

    const-string v5, "com.android.server.display.feature.flags.block_autobrightness_changes_on_stylus_usage"

    const-string v6, "com.android.server.display.feature.flags.brightness_wear_bedtime_mode_clamper"

    const-string v7, "com.android.server.display.feature.flags.change_default_display_lid_closed"

    const-string v8, "com.android.server.display.feature.flags.committed_state_separate_event"

    const-string v9, "com.android.server.display.feature.flags.configurable_default_doze_values"

    const-string v10, "com.android.server.display.feature.flags.delay_implicit_rr_registration_until_rr_accessed"

    const-string v11, "com.android.server.display.feature.flags.display_category_built_in"

    const-string v12, "com.android.server.display.feature.flags.display_listener_performance_improvements"

    const-string v13, "com.android.server.display.feature.flags.display_topology"

    const-string v14, "com.android.server.display.feature.flags.display_topology_api"

    const-string v15, "com.android.server.display.feature.flags.doze_brightness_strategy"

    const-string v16, "com.android.server.display.feature.flags.enable_anisotropy_corrected_modes"

    const-string v17, "com.android.server.display.feature.flags.enable_app_resolution_change"

    const-string v18, "com.android.server.display.feature.flags.enable_battery_stats_for_all_displays"

    const-string v19, "com.android.server.display.feature.flags.enable_connected_display_error_handling"

    const-string v20, "com.android.server.display.feature.flags.enable_default_display_in_topology_switch"

    const-string v21, "com.android.server.display.feature.flags.enable_display_content_mode_management"

    const-string v22, "com.android.server.display.feature.flags.enable_display_mirror_in_lock_task_mode"

    const-string v23, "com.android.server.display.feature.flags.enable_display_offload"

    const-string v24, "com.android.server.display.feature.flags.enable_get_suggested_frame_rate"

    const-string v25, "com.android.server.display.feature.flags.enable_get_supported_refresh_rates"

    const-string v26, "com.android.server.display.feature.flags.enable_has_arr_support"

    const-string v27, "com.android.server.display.feature.flags.enable_hdr_override_plugin_type"

    const-string v28, "com.android.server.display.feature.flags.enable_logging_for_display_events"

    const-string v29, "com.android.server.display.feature.flags.enable_on_display_added_in_observer"

    const-string v30, "com.android.server.display.feature.flags.enable_peak_refresh_rate_physical_limit"

    const-string v31, "com.android.server.display.feature.flags.enable_power_throttling_clamper"

    const-string v32, "com.android.server.display.feature.flags.enable_single_app_event_for_mode_and_frame_rate_override"

    const-string v33, "com.android.server.display.feature.flags.enable_size_override_for_external_displays"

    const-string v34, "com.android.server.display.feature.flags.enable_synthetic_60hz_modes"

    const-string v35, "com.android.server.display.feature.flags.enable_synthetic_modes_v2"

    const-string v36, "com.android.server.display.feature.flags.ensure_color_fade_when_turning_on"

    const-string v37, "com.android.server.display.feature.flags.even_dimmer"

    const-string v38, "com.android.server.display.feature.flags.fast_hdr_transitions"

    const-string v39, "com.android.server.display.feature.flags.framerate_override_triggers_rr_callbacks"

    const-string v40, "com.android.server.display.feature.flags.hdr_brightness_setting"

    const-string v41, "com.android.server.display.feature.flags.highest_hdr_sdr_ratio_api"

    const-string v42, "com.android.server.display.feature.flags.ignore_app_preferred_refresh_rate_request"

    const-string v43, "com.android.server.display.feature.flags.is_always_on_available_api"

    const-string v44, "com.android.server.display.feature.flags.minmode_cap_brightness_enabled"

    const-string v45, "com.android.server.display.feature.flags.mode_switch_without_saving"

    const-string v46, "com.android.server.display.feature.flags.normal_brightness_for_doze_parameter"

    const-string v47, "com.android.server.display.feature.flags.offload_session_cancel_block_screen_on"

    const-string v48, "com.android.server.display.feature.flags.refactor_display_power_controller"

    const-string v49, "com.android.server.display.feature.flags.refresh_rate_event_for_foreground_apps"

    const-string v50, "com.android.server.display.feature.flags.resolution_backup_restore"

    const-string v51, "com.android.server.display.feature.flags.sensor_based_brightness_throttling"

    const-string v52, "com.android.server.display.feature.flags.separate_timeouts"

    const-string v53, "com.android.server.display.feature.flags.set_brightness_by_unit"

    filled-new-array/range {v1 .. v55}, [Ljava/lang/String;

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
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist hdrBrightnessSetting()Z
    .registers 3

    .line 294
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.hdr_brightness_setting"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist highestHdrSdrRatioApi()Z
    .registers 3

    .line 301
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.highest_hdr_sdr_ratio_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreAppPreferredRefreshRateRequest()Z
    .registers 3

    .line 308
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.ignore_app_preferred_refresh_rate_request"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isAlwaysOnAvailableApi()Z
    .registers 3

    .line 315
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.is_always_on_available_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 404
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 405
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 406
    const/4 p1, 0x1

    return p1

    .line 408
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist minmodeCapBrightnessEnabled()Z
    .registers 3

    .line 322
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.minmode_cap_brightness_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist modeSwitchWithoutSaving()Z
    .registers 3

    .line 329
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.mode_switch_without_saving"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist normalBrightnessForDozeParameter()Z
    .registers 3

    .line 336
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.normal_brightness_for_doze_parameter"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist offloadSessionCancelBlockScreenOn()Z
    .registers 3

    .line 343
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.offload_session_cancel_block_screen_on"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist refactorDisplayPowerController()Z
    .registers 3

    .line 350
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.refactor_display_power_controller"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist refreshRateEventForForegroundApps()Z
    .registers 3

    .line 357
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.refresh_rate_event_for_foreground_apps"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist resolutionBackupRestore()Z
    .registers 3

    .line 364
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.resolution_backup_restore"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensorBasedBrightnessThrottling()Z
    .registers 3

    .line 371
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.sensor_based_brightness_throttling"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist separateTimeouts()Z
    .registers 3

    .line 378
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.separate_timeouts"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setBrightnessByUnit()Z
    .registers 3

    .line 385
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.set_brightness_by_unit"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist subscribeGranularDisplayEvents()Z
    .registers 3

    .line 392
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.subscribe_granular_display_events"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useFusionProxSensor()Z
    .registers 3

    .line 399
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.use_fusion_prox_sensor"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
