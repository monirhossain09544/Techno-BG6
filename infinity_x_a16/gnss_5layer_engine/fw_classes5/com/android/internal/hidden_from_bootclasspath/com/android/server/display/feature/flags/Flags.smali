.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags; = null

.field public static final blacklist FLAG_AUTO_BRIGHTNESS_MODES:Ljava/lang/String; = "com.android.server.display.feature.flags.auto_brightness_modes"

.field public static final blacklist FLAG_AUTO_BRIGHTNESS_MODE_BEDTIME_WEAR:Ljava/lang/String; = "com.android.server.display.feature.flags.auto_brightness_mode_bedtime_wear"

.field public static final blacklist FLAG_BACK_UP_SMOOTH_DISPLAY_AND_FORCE_PEAK_REFRESH_RATE:Ljava/lang/String; = "com.android.server.display.feature.flags.back_up_smooth_display_and_force_peak_refresh_rate"

.field public static final blacklist FLAG_BASE_DENSITY_FOR_EXTERNAL_DISPLAYS:Ljava/lang/String; = "com.android.server.display.feature.flags.base_density_for_external_displays"

.field public static final blacklist FLAG_BLOCK_AUTOBRIGHTNESS_CHANGES_ON_STYLUS_USAGE:Ljava/lang/String; = "com.android.server.display.feature.flags.block_autobrightness_changes_on_stylus_usage"

.field public static final blacklist FLAG_BRIGHTNESS_WEAR_BEDTIME_MODE_CLAMPER:Ljava/lang/String; = "com.android.server.display.feature.flags.brightness_wear_bedtime_mode_clamper"

.field public static final blacklist FLAG_CHANGE_DEFAULT_DISPLAY_LID_CLOSED:Ljava/lang/String; = "com.android.server.display.feature.flags.change_default_display_lid_closed"

.field public static final blacklist FLAG_COMMITTED_STATE_SEPARATE_EVENT:Ljava/lang/String; = "com.android.server.display.feature.flags.committed_state_separate_event"

.field public static final blacklist FLAG_CONFIGURABLE_DEFAULT_DOZE_VALUES:Ljava/lang/String; = "com.android.server.display.feature.flags.configurable_default_doze_values"

.field public static final blacklist FLAG_DELAY_IMPLICIT_RR_REGISTRATION_UNTIL_RR_ACCESSED:Ljava/lang/String; = "com.android.server.display.feature.flags.delay_implicit_rr_registration_until_rr_accessed"

.field public static final blacklist FLAG_DISPLAY_CATEGORY_BUILT_IN:Ljava/lang/String; = "com.android.server.display.feature.flags.display_category_built_in"

.field public static final blacklist FLAG_DISPLAY_LISTENER_PERFORMANCE_IMPROVEMENTS:Ljava/lang/String; = "com.android.server.display.feature.flags.display_listener_performance_improvements"

.field public static final blacklist FLAG_DISPLAY_TOPOLOGY:Ljava/lang/String; = "com.android.server.display.feature.flags.display_topology"

.field public static final blacklist FLAG_DISPLAY_TOPOLOGY_API:Ljava/lang/String; = "com.android.server.display.feature.flags.display_topology_api"

.field public static final blacklist FLAG_DOZE_BRIGHTNESS_STRATEGY:Ljava/lang/String; = "com.android.server.display.feature.flags.doze_brightness_strategy"

.field public static final blacklist FLAG_ENABLE_ANISOTROPY_CORRECTED_MODES:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_anisotropy_corrected_modes"

.field public static final blacklist FLAG_ENABLE_APP_RESOLUTION_CHANGE:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_app_resolution_change"

.field public static final blacklist FLAG_ENABLE_BATTERY_STATS_FOR_ALL_DISPLAYS:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_battery_stats_for_all_displays"

.field public static final blacklist FLAG_ENABLE_CONNECTED_DISPLAY_ERROR_HANDLING:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_connected_display_error_handling"

.field public static final blacklist FLAG_ENABLE_DEFAULT_DISPLAY_IN_TOPOLOGY_SWITCH:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_default_display_in_topology_switch"

.field public static final blacklist FLAG_ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_display_content_mode_management"

.field public static final blacklist FLAG_ENABLE_DISPLAY_MIRROR_IN_LOCK_TASK_MODE:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_display_mirror_in_lock_task_mode"

.field public static final blacklist FLAG_ENABLE_DISPLAY_OFFLOAD:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_display_offload"

.field public static final blacklist FLAG_ENABLE_GET_SUGGESTED_FRAME_RATE:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_get_suggested_frame_rate"

.field public static final blacklist FLAG_ENABLE_GET_SUPPORTED_REFRESH_RATES:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_get_supported_refresh_rates"

.field public static final blacklist FLAG_ENABLE_HAS_ARR_SUPPORT:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_has_arr_support"

.field public static final blacklist FLAG_ENABLE_HDR_OVERRIDE_PLUGIN_TYPE:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_hdr_override_plugin_type"

.field public static final blacklist FLAG_ENABLE_LOGGING_FOR_DISPLAY_EVENTS:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_logging_for_display_events"

.field public static final blacklist FLAG_ENABLE_ON_DISPLAY_ADDED_IN_OBSERVER:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_on_display_added_in_observer"

.field public static final blacklist FLAG_ENABLE_PEAK_REFRESH_RATE_PHYSICAL_LIMIT:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_peak_refresh_rate_physical_limit"

.field public static final blacklist FLAG_ENABLE_POWER_THROTTLING_CLAMPER:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_power_throttling_clamper"

.field public static final blacklist FLAG_ENABLE_SINGLE_APP_EVENT_FOR_MODE_AND_FRAME_RATE_OVERRIDE:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_single_app_event_for_mode_and_frame_rate_override"

.field public static final blacklist FLAG_ENABLE_SIZE_OVERRIDE_FOR_EXTERNAL_DISPLAYS:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_size_override_for_external_displays"

.field public static final blacklist FLAG_ENABLE_SYNTHETIC_60HZ_MODES:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_synthetic_60hz_modes"

.field public static final blacklist FLAG_ENABLE_SYNTHETIC_MODES_V2:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_synthetic_modes_v2"

.field public static final blacklist FLAG_ENSURE_COLOR_FADE_WHEN_TURNING_ON:Ljava/lang/String; = "com.android.server.display.feature.flags.ensure_color_fade_when_turning_on"

.field public static final blacklist FLAG_EVEN_DIMMER:Ljava/lang/String; = "com.android.server.display.feature.flags.even_dimmer"

.field public static final blacklist FLAG_FAST_HDR_TRANSITIONS:Ljava/lang/String; = "com.android.server.display.feature.flags.fast_hdr_transitions"

.field public static final blacklist FLAG_FRAMERATE_OVERRIDE_TRIGGERS_RR_CALLBACKS:Ljava/lang/String; = "com.android.server.display.feature.flags.framerate_override_triggers_rr_callbacks"

.field public static final blacklist FLAG_HDR_BRIGHTNESS_SETTING:Ljava/lang/String; = "com.android.server.display.feature.flags.hdr_brightness_setting"

.field public static final blacklist FLAG_HIGHEST_HDR_SDR_RATIO_API:Ljava/lang/String; = "com.android.server.display.feature.flags.highest_hdr_sdr_ratio_api"

.field public static final blacklist FLAG_IGNORE_APP_PREFERRED_REFRESH_RATE_REQUEST:Ljava/lang/String; = "com.android.server.display.feature.flags.ignore_app_preferred_refresh_rate_request"

.field public static final blacklist FLAG_IS_ALWAYS_ON_AVAILABLE_API:Ljava/lang/String; = "com.android.server.display.feature.flags.is_always_on_available_api"

.field public static final blacklist FLAG_MINMODE_CAP_BRIGHTNESS_ENABLED:Ljava/lang/String; = "com.android.server.display.feature.flags.minmode_cap_brightness_enabled"

.field public static final blacklist FLAG_MODE_SWITCH_WITHOUT_SAVING:Ljava/lang/String; = "com.android.server.display.feature.flags.mode_switch_without_saving"

.field public static final blacklist FLAG_NORMAL_BRIGHTNESS_FOR_DOZE_PARAMETER:Ljava/lang/String; = "com.android.server.display.feature.flags.normal_brightness_for_doze_parameter"

.field public static final blacklist FLAG_OFFLOAD_SESSION_CANCEL_BLOCK_SCREEN_ON:Ljava/lang/String; = "com.android.server.display.feature.flags.offload_session_cancel_block_screen_on"

.field public static final blacklist FLAG_REFACTOR_DISPLAY_POWER_CONTROLLER:Ljava/lang/String; = "com.android.server.display.feature.flags.refactor_display_power_controller"

.field public static final blacklist FLAG_REFRESH_RATE_EVENT_FOR_FOREGROUND_APPS:Ljava/lang/String; = "com.android.server.display.feature.flags.refresh_rate_event_for_foreground_apps"

.field public static final blacklist FLAG_RESOLUTION_BACKUP_RESTORE:Ljava/lang/String; = "com.android.server.display.feature.flags.resolution_backup_restore"

.field public static final blacklist FLAG_SENSOR_BASED_BRIGHTNESS_THROTTLING:Ljava/lang/String; = "com.android.server.display.feature.flags.sensor_based_brightness_throttling"

.field public static final blacklist FLAG_SEPARATE_TIMEOUTS:Ljava/lang/String; = "com.android.server.display.feature.flags.separate_timeouts"

.field public static final blacklist FLAG_SET_BRIGHTNESS_BY_UNIT:Ljava/lang/String; = "com.android.server.display.feature.flags.set_brightness_by_unit"

.field public static final blacklist FLAG_SUBSCRIBE_GRANULAR_DISPLAY_EVENTS:Ljava/lang/String; = "com.android.server.display.feature.flags.subscribe_granular_display_events"

.field public static final blacklist FLAG_USE_FUSION_PROX_SENSOR:Ljava/lang/String; = "com.android.server.display.feature.flags.use_fusion_prox_sensor"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 447
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist autoBrightnessModeBedtimeWear()Z
    .registers 1

    .line 120
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->autoBrightnessModeBedtimeWear()Z

    move-result v0

    return v0
.end method

.method public static blacklist autoBrightnessModes()Z
    .registers 1

    .line 126
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->autoBrightnessModes()Z

    move-result v0

    return v0
.end method

.method public static blacklist backUpSmoothDisplayAndForcePeakRefreshRate()Z
    .registers 1

    .line 132
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->backUpSmoothDisplayAndForcePeakRefreshRate()Z

    move-result v0

    return v0
.end method

.method public static blacklist baseDensityForExternalDisplays()Z
    .registers 1

    .line 138
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->baseDensityForExternalDisplays()Z

    move-result v0

    return v0
.end method

.method public static blacklist blockAutobrightnessChangesOnStylusUsage()Z
    .registers 1

    .line 144
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->blockAutobrightnessChangesOnStylusUsage()Z

    move-result v0

    return v0
.end method

.method public static blacklist brightnessWearBedtimeModeClamper()Z
    .registers 1

    .line 150
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->brightnessWearBedtimeModeClamper()Z

    move-result v0

    return v0
.end method

.method public static blacklist changeDefaultDisplayLidClosed()Z
    .registers 1

    .line 156
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->changeDefaultDisplayLidClosed()Z

    move-result v0

    return v0
.end method

.method public static blacklist committedStateSeparateEvent()Z
    .registers 1

    .line 162
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->committedStateSeparateEvent()Z

    move-result v0

    return v0
.end method

.method public static blacklist configurableDefaultDozeValues()Z
    .registers 1

    .line 168
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->configurableDefaultDozeValues()Z

    move-result v0

    return v0
.end method

.method public static blacklist delayImplicitRrRegistrationUntilRrAccessed()Z
    .registers 1

    .line 174
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->delayImplicitRrRegistrationUntilRrAccessed()Z

    move-result v0

    return v0
.end method

.method public static blacklist displayCategoryBuiltIn()Z
    .registers 1

    .line 180
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->displayCategoryBuiltIn()Z

    move-result v0

    return v0
.end method

.method public static blacklist displayListenerPerformanceImprovements()Z
    .registers 1

    .line 186
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->displayListenerPerformanceImprovements()Z

    move-result v0

    return v0
.end method

.method public static blacklist displayTopology()Z
    .registers 1

    .line 192
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->displayTopology()Z

    move-result v0

    return v0
.end method

.method public static blacklist displayTopologyApi()Z
    .registers 1

    .line 198
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->displayTopologyApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist dozeBrightnessStrategy()Z
    .registers 1

    .line 204
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->dozeBrightnessStrategy()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableAnisotropyCorrectedModes()Z
    .registers 1

    .line 210
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->enableAnisotropyCorrectedModes()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableAppResolutionChange()Z
    .registers 1

    .line 216
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->enableAppResolutionChange()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableBatteryStatsForAllDisplays()Z
    .registers 1

    .line 222
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->enableBatteryStatsForAllDisplays()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableConnectedDisplayErrorHandling()Z
    .registers 1

    .line 228
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->enableConnectedDisplayErrorHandling()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableDefaultDisplayInTopologySwitch()Z
    .registers 1

    .line 234
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->enableDefaultDisplayInTopologySwitch()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableDisplayContentModeManagement()Z
    .registers 1

    .line 240
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->enableDisplayContentModeManagement()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableDisplayMirrorInLockTaskMode()Z
    .registers 1

    .line 246
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->enableDisplayMirrorInLockTaskMode()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableDisplayOffload()Z
    .registers 1

    .line 252
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->enableDisplayOffload()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableGetSuggestedFrameRate()Z
    .registers 1

    .line 258
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->enableGetSuggestedFrameRate()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableGetSupportedRefreshRates()Z
    .registers 1

    .line 264
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->enableGetSupportedRefreshRates()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableHasArrSupport()Z
    .registers 1

    .line 270
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->enableHasArrSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableHdrOverridePluginType()Z
    .registers 1

    .line 276
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->enableHdrOverridePluginType()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableLoggingForDisplayEvents()Z
    .registers 1

    .line 282
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->enableLoggingForDisplayEvents()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableOnDisplayAddedInObserver()Z
    .registers 1

    .line 288
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->enableOnDisplayAddedInObserver()Z

    move-result v0

    return v0
.end method

.method public static blacklist enablePeakRefreshRatePhysicalLimit()Z
    .registers 1

    .line 294
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->enablePeakRefreshRatePhysicalLimit()Z

    move-result v0

    return v0
.end method

.method public static blacklist enablePowerThrottlingClamper()Z
    .registers 1

    .line 300
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->enablePowerThrottlingClamper()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableSingleAppEventForModeAndFrameRateOverride()Z
    .registers 1

    .line 306
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->enableSingleAppEventForModeAndFrameRateOverride()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableSizeOverrideForExternalDisplays()Z
    .registers 1

    .line 312
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->enableSizeOverrideForExternalDisplays()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableSynthetic60hzModes()Z
    .registers 1

    .line 318
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->enableSynthetic60hzModes()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableSyntheticModesV2()Z
    .registers 1

    .line 324
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->enableSyntheticModesV2()Z

    move-result v0

    return v0
.end method

.method public static blacklist ensureColorFadeWhenTurningOn()Z
    .registers 1

    .line 330
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->ensureColorFadeWhenTurningOn()Z

    move-result v0

    return v0
.end method

.method public static blacklist evenDimmer()Z
    .registers 1

    .line 336
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->evenDimmer()Z

    move-result v0

    return v0
.end method

.method public static blacklist fastHdrTransitions()Z
    .registers 1

    .line 342
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->fastHdrTransitions()Z

    move-result v0

    return v0
.end method

.method public static blacklist framerateOverrideTriggersRrCallbacks()Z
    .registers 1

    .line 348
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->framerateOverrideTriggersRrCallbacks()Z

    move-result v0

    return v0
.end method

.method public static blacklist hdrBrightnessSetting()Z
    .registers 1

    .line 354
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->hdrBrightnessSetting()Z

    move-result v0

    return v0
.end method

.method public static blacklist highestHdrSdrRatioApi()Z
    .registers 1

    .line 360
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->highestHdrSdrRatioApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist ignoreAppPreferredRefreshRateRequest()Z
    .registers 1

    .line 366
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->ignoreAppPreferredRefreshRateRequest()Z

    move-result v0

    return v0
.end method

.method public static blacklist isAlwaysOnAvailableApi()Z
    .registers 1

    .line 372
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->isAlwaysOnAvailableApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist minmodeCapBrightnessEnabled()Z
    .registers 1

    .line 378
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->minmodeCapBrightnessEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist modeSwitchWithoutSaving()Z
    .registers 1

    .line 384
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->modeSwitchWithoutSaving()Z

    move-result v0

    return v0
.end method

.method public static blacklist normalBrightnessForDozeParameter()Z
    .registers 1

    .line 390
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->normalBrightnessForDozeParameter()Z

    move-result v0

    return v0
.end method

.method public static blacklist offloadSessionCancelBlockScreenOn()Z
    .registers 1

    .line 396
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->offloadSessionCancelBlockScreenOn()Z

    move-result v0

    return v0
.end method

.method public static blacklist refactorDisplayPowerController()Z
    .registers 1

    .line 402
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->refactorDisplayPowerController()Z

    move-result v0

    return v0
.end method

.method public static blacklist refreshRateEventForForegroundApps()Z
    .registers 1

    .line 408
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->refreshRateEventForForegroundApps()Z

    move-result v0

    return v0
.end method

.method public static blacklist resolutionBackupRestore()Z
    .registers 1

    .line 414
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->resolutionBackupRestore()Z

    move-result v0

    return v0
.end method

.method public static blacklist sensorBasedBrightnessThrottling()Z
    .registers 1

    .line 420
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->sensorBasedBrightnessThrottling()Z

    move-result v0

    return v0
.end method

.method public static blacklist separateTimeouts()Z
    .registers 1

    .line 426
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->separateTimeouts()Z

    move-result v0

    return v0
.end method

.method public static blacklist setBrightnessByUnit()Z
    .registers 1

    .line 432
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->setBrightnessByUnit()Z

    move-result v0

    return v0
.end method

.method public static blacklist subscribeGranularDisplayEvents()Z
    .registers 1

    .line 438
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->subscribeGranularDisplayEvents()Z

    move-result v0

    return v0
.end method

.method public static blacklist useFusionProxSensor()Z
    .registers 1

    .line 444
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/FeatureFlags;->useFusionProxSensor()Z

    move-result v0

    return v0
.end method
