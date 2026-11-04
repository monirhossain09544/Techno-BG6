.class public final Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags; = null

.field public static final blacklist FLAG_CHANGE_GET_ADAS_ALLOWLIST_FROM_HIDDEN_TO_SYSTEM:Ljava/lang/String; = "android.location.flags.change_get_adas_allowlist_from_hidden_to_system"

.field public static final blacklist FLAG_DENSITY_BASED_COARSE_LOCATIONS:Ljava/lang/String; = "android.location.flags.density_based_coarse_locations"

.field public static final blacklist FLAG_DEPRECATE_PROVIDER_REQUEST_APIS:Ljava/lang/String; = "android.location.flags.deprecate_provider_request_apis"

.field public static final blacklist FLAG_DISABLE_HARDWARE_AR:Ljava/lang/String; = "android.location.flags.disable_hardware_ar"

.field public static final blacklist FLAG_DISABLE_STATIONARY_THROTTLING:Ljava/lang/String; = "android.location.flags.disable_stationary_throttling"

.field public static final blacklist FLAG_ENABLE_LOCATION_BYPASS:Ljava/lang/String; = "android.location.flags.enable_location_bypass"

.field public static final blacklist FLAG_ENABLE_NI_SUPL_MESSAGE_INJECTION_BY_CARRIER_CONFIG_BUGFIX:Ljava/lang/String; = "android.location.flags.enable_ni_supl_message_injection_by_carrier_config_bugfix"

.field public static final blacklist FLAG_FIX_GLONASS_ALMANAC_FREQUENCY_CHANNEL_RANGE:Ljava/lang/String; = "android.location.flags.fix_glonass_almanac_frequency_channel_range"

.field public static final blacklist FLAG_FIX_SERVICE_WATCHER:Ljava/lang/String; = "android.location.flags.fix_service_watcher"

.field public static final blacklist FLAG_GEOID_HEIGHTS_VIA_ALTITUDE_HAL:Ljava/lang/String; = "android.location.flags.geoid_heights_via_altitude_hal"

.field public static final blacklist FLAG_GNSS_API_MEASUREMENT_REQUEST_WORK_SOURCE:Ljava/lang/String; = "android.location.flags.gnss_api_measurement_request_work_source"

.field public static final blacklist FLAG_GNSS_API_NAVIC_L1:Ljava/lang/String; = "android.location.flags.gnss_api_navic_l1"

.field public static final blacklist FLAG_GNSS_ASSISTANCE_INTERFACE:Ljava/lang/String; = "android.location.flags.gnss_assistance_interface"

.field public static final blacklist FLAG_GNSS_ASSISTANCE_INTERFACE_JNI:Ljava/lang/String; = "android.location.flags.gnss_assistance_interface_jni"

.field public static final blacklist FLAG_GNSS_LOCATION_PROVIDER_OVERLAY_2025_DEVICES:Ljava/lang/String; = "android.location.flags.gnss_location_provider_overlay_2025_devices"

.field public static final blacklist FLAG_KEEP_GNSS_STATIONARY_THROTTLING:Ljava/lang/String; = "android.location.flags.keep_gnss_stationary_throttling"

.field public static final blacklist FLAG_LOCATION_BYPASS:Ljava/lang/String; = "android.location.flags.location_bypass"

.field public static final blacklist FLAG_LOCATION_INDICATORS_ENABLED:Ljava/lang/String; = "android.location.flags.location_indicators_enabled"

.field public static final blacklist FLAG_NEW_GEOCODER:Ljava/lang/String; = "android.location.flags.new_geocoder"

.field public static final blacklist FLAG_POPULATION_DENSITY_PROVIDER:Ljava/lang/String; = "android.location.flags.population_density_provider"

.field public static final blacklist FLAG_SERVICE_WATCHER_UNSTABLE_FALLBACK:Ljava/lang/String; = "android.location.flags.service_watcher_unstable_fallback"

.field public static final blacklist FLAG_SUPPORT_IONEX_ASSISTANCE:Ljava/lang/String; = "android.location.flags.support_ionex_assistance"

.field public static final blacklist FLAG_SUPPORT_TOA_IN_GNSS_SATELLITE_ALMANAC:Ljava/lang/String; = "android.location.flags.support_toa_in_gnss_satellite_almanac"

.field public static final blacklist FLAG_UPDATE_MIN_LOCATION_REQUEST_INTERVAL:Ljava/lang/String; = "android.location.flags.update_min_location_request_interval"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 199
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist changeGetAdasAllowlistFromHiddenToSystem()Z
    .registers 1

    .line 58
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->changeGetAdasAllowlistFromHiddenToSystem()Z

    move-result v0

    return v0
.end method

.method public static blacklist densityBasedCoarseLocations()Z
    .registers 1

    .line 64
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->densityBasedCoarseLocations()Z

    move-result v0

    return v0
.end method

.method public static blacklist deprecateProviderRequestApis()Z
    .registers 1

    .line 70
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->deprecateProviderRequestApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist disableHardwareAr()Z
    .registers 1

    .line 76
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->disableHardwareAr()Z

    move-result v0

    return v0
.end method

.method public static blacklist disableStationaryThrottling()Z
    .registers 1

    .line 82
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->disableStationaryThrottling()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableLocationBypass()Z
    .registers 1

    .line 88
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->enableLocationBypass()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableNiSuplMessageInjectionByCarrierConfigBugfix()Z
    .registers 1

    .line 94
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->enableNiSuplMessageInjectionByCarrierConfigBugfix()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixGlonassAlmanacFrequencyChannelRange()Z
    .registers 1

    .line 100
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->fixGlonassAlmanacFrequencyChannelRange()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixServiceWatcher()Z
    .registers 1

    .line 106
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->fixServiceWatcher()Z

    move-result v0

    return v0
.end method

.method public static blacklist geoidHeightsViaAltitudeHal()Z
    .registers 1

    .line 112
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->geoidHeightsViaAltitudeHal()Z

    move-result v0

    return v0
.end method

.method public static blacklist gnssApiMeasurementRequestWorkSource()Z
    .registers 1

    .line 118
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->gnssApiMeasurementRequestWorkSource()Z

    move-result v0

    return v0
.end method

.method public static blacklist gnssApiNavicL1()Z
    .registers 1

    .line 124
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->gnssApiNavicL1()Z

    move-result v0

    return v0
.end method

.method public static blacklist gnssAssistanceInterface()Z
    .registers 1

    .line 130
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->gnssAssistanceInterface()Z

    move-result v0

    return v0
.end method

.method public static blacklist gnssAssistanceInterfaceJni()Z
    .registers 1

    .line 136
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->gnssAssistanceInterfaceJni()Z

    move-result v0

    return v0
.end method

.method public static blacklist gnssLocationProviderOverlay2025Devices()Z
    .registers 1

    .line 142
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->gnssLocationProviderOverlay2025Devices()Z

    move-result v0

    return v0
.end method

.method public static blacklist keepGnssStationaryThrottling()Z
    .registers 1

    .line 148
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->keepGnssStationaryThrottling()Z

    move-result v0

    return v0
.end method

.method public static blacklist locationBypass()Z
    .registers 1

    .line 154
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->locationBypass()Z

    move-result v0

    return v0
.end method

.method public static blacklist locationIndicatorsEnabled()Z
    .registers 1

    .line 160
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->locationIndicatorsEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist newGeocoder()Z
    .registers 1

    .line 166
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->newGeocoder()Z

    move-result v0

    return v0
.end method

.method public static blacklist populationDensityProvider()Z
    .registers 1

    .line 172
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->populationDensityProvider()Z

    move-result v0

    return v0
.end method

.method public static blacklist serviceWatcherUnstableFallback()Z
    .registers 1

    .line 178
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->serviceWatcherUnstableFallback()Z

    move-result v0

    return v0
.end method

.method public static blacklist supportIonexAssistance()Z
    .registers 1

    .line 184
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->supportIonexAssistance()Z

    move-result v0

    return v0
.end method

.method public static blacklist supportToaInGnssSatelliteAlmanac()Z
    .registers 1

    .line 190
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->supportToaInGnssSatelliteAlmanac()Z

    move-result v0

    return v0
.end method

.method public static blacklist updateMinLocationRequestInterval()Z
    .registers 1

    .line 196
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->updateMinLocationRequestInterval()Z

    move-result v0

    return v0
.end method
