.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags; = null

.field public static final blacklist FLAG_AE_PRIORITY:Ljava/lang/String; = "com.android.internal.camera.flags.ae_priority"

.field public static final blacklist FLAG_ANALYTICS_24Q3:Ljava/lang/String; = "com.android.internal.camera.flags.analytics_24q3"

.field public static final blacklist FLAG_CAMERA_AE_MODE_LOW_LIGHT_BOOST:Ljava/lang/String; = "com.android.internal.camera.flags.camera_ae_mode_low_light_boost"

.field public static final blacklist FLAG_CAMERA_DEVICE_SETUP:Ljava/lang/String; = "com.android.internal.camera.flags.camera_device_setup"

.field public static final blacklist FLAG_CAMERA_EXTENSIONS_CHARACTERISTICS_GET:Ljava/lang/String; = "com.android.internal.camera.flags.camera_extensions_characteristics_get"

.field public static final blacklist FLAG_CAMERA_HEIF_GAINMAP:Ljava/lang/String; = "com.android.internal.camera.flags.camera_heif_gainmap"

.field public static final blacklist FLAG_CAMERA_HSUM_PERMISSION:Ljava/lang/String; = "com.android.internal.camera.flags.camera_hsum_permission"

.field public static final blacklist FLAG_CAMERA_MANUAL_FLASH_STRENGTH_CONTROL:Ljava/lang/String; = "com.android.internal.camera.flags.camera_manual_flash_strength_control"

.field public static final blacklist FLAG_CAMERA_MULTI_CLIENT:Ljava/lang/String; = "com.android.internal.camera.flags.camera_multi_client"

.field public static final blacklist FLAG_CAMERA_PRIVACY_ALLOWLIST:Ljava/lang/String; = "com.android.internal.camera.flags.camera_privacy_allowlist"

.field public static final blacklist FLAG_COLOR_TEMPERATURE:Ljava/lang/String; = "com.android.internal.camera.flags.color_temperature"

.field public static final blacklist FLAG_CONCERT_MODE:Ljava/lang/String; = "com.android.internal.camera.flags.concert_mode"

.field public static final blacklist FLAG_DATA_DELIVERY_PERMISSION_CHECKS:Ljava/lang/String; = "com.android.internal.camera.flags.data_delivery_permission_checks"

.field public static final blacklist FLAG_DESKTOP_EFFECTS:Ljava/lang/String; = "com.android.internal.camera.flags.desktop_effects"

.field public static final blacklist FLAG_DUMPSYS_REQUEST_STREAM_IDS:Ljava/lang/String; = "com.android.internal.camera.flags.dumpsys_request_stream_ids"

.field public static final blacklist FLAG_EFV_CAPTURE_LATENCY:Ljava/lang/String; = "com.android.internal.camera.flags.efv_capture_latency"

.field public static final blacklist FLAG_EXTENSION_10_BIT:Ljava/lang/String; = "com.android.internal.camera.flags.extension_10_bit"

.field public static final blacklist FLAG_FEATURE_COMBINATION_QUERY:Ljava/lang/String; = "com.android.internal.camera.flags.feature_combination_query"

.field public static final blacklist FLAG_FMQ_METADATA:Ljava/lang/String; = "com.android.internal.camera.flags.fmq_metadata"

.field public static final blacklist FLAG_MIRROR_MODE_SHARED_SURFACES:Ljava/lang/String; = "com.android.internal.camera.flags.mirror_mode_shared_surfaces"

.field public static final blacklist FLAG_MULTIRESOLUTION_IMAGEREADER_USAGE_CONFIG:Ljava/lang/String; = "com.android.internal.camera.flags.multiresolution_imagereader_usage_config"

.field public static final blacklist FLAG_MULTIRESOLUTION_IMAGEREADER_USAGE_PUBLIC:Ljava/lang/String; = "com.android.internal.camera.flags.multiresolution_imagereader_usage_public"

.field public static final blacklist FLAG_NIGHT_MODE_INDICATOR:Ljava/lang/String; = "com.android.internal.camera.flags.night_mode_indicator"

.field public static final blacklist FLAG_OUTPUT_CONFIGURATION_GETTER:Ljava/lang/String; = "com.android.internal.camera.flags.output_configuration_getter"

.field public static final blacklist FLAG_RETURN_BUFFERS_OUTSIDE_LOCKS:Ljava/lang/String; = "com.android.internal.camera.flags.return_buffers_outside_locks"

.field public static final blacklist FLAG_SURFACE_FORMAT_FIX:Ljava/lang/String; = "com.android.internal.camera.flags.surface_format_fix"

.field public static final blacklist FLAG_ZOOM_METHOD:Ljava/lang/String; = "com.android.internal.camera.flags.zoom_method"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 223
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist aePriority()Z
    .registers 1

    .line 64
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->aePriority()Z

    move-result v0

    return v0
.end method

.method public static blacklist analytics24q3()Z
    .registers 1

    .line 70
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->analytics24q3()Z

    move-result v0

    return v0
.end method

.method public static blacklist cameraAeModeLowLightBoost()Z
    .registers 1

    .line 76
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->cameraAeModeLowLightBoost()Z

    move-result v0

    return v0
.end method

.method public static blacklist cameraDeviceSetup()Z
    .registers 1

    .line 82
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->cameraDeviceSetup()Z

    move-result v0

    return v0
.end method

.method public static blacklist cameraExtensionsCharacteristicsGet()Z
    .registers 1

    .line 88
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->cameraExtensionsCharacteristicsGet()Z

    move-result v0

    return v0
.end method

.method public static blacklist cameraHeifGainmap()Z
    .registers 1

    .line 94
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->cameraHeifGainmap()Z

    move-result v0

    return v0
.end method

.method public static blacklist cameraHsumPermission()Z
    .registers 1

    .line 100
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->cameraHsumPermission()Z

    move-result v0

    return v0
.end method

.method public static blacklist cameraManualFlashStrengthControl()Z
    .registers 1

    .line 106
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->cameraManualFlashStrengthControl()Z

    move-result v0

    return v0
.end method

.method public static blacklist cameraMultiClient()Z
    .registers 1

    .line 112
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->cameraMultiClient()Z

    move-result v0

    return v0
.end method

.method public static blacklist cameraPrivacyAllowlist()Z
    .registers 1

    .line 118
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->cameraPrivacyAllowlist()Z

    move-result v0

    return v0
.end method

.method public static blacklist colorTemperature()Z
    .registers 1

    .line 124
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->colorTemperature()Z

    move-result v0

    return v0
.end method

.method public static blacklist concertMode()Z
    .registers 1

    .line 130
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->concertMode()Z

    move-result v0

    return v0
.end method

.method public static blacklist dataDeliveryPermissionChecks()Z
    .registers 1

    .line 136
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->dataDeliveryPermissionChecks()Z

    move-result v0

    return v0
.end method

.method public static blacklist desktopEffects()Z
    .registers 1

    .line 142
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->desktopEffects()Z

    move-result v0

    return v0
.end method

.method public static blacklist dumpsysRequestStreamIds()Z
    .registers 1

    .line 148
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->dumpsysRequestStreamIds()Z

    move-result v0

    return v0
.end method

.method public static blacklist efvCaptureLatency()Z
    .registers 1

    .line 154
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->efvCaptureLatency()Z

    move-result v0

    return v0
.end method

.method public static blacklist extension10Bit()Z
    .registers 1

    .line 160
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->extension10Bit()Z

    move-result v0

    return v0
.end method

.method public static blacklist featureCombinationQuery()Z
    .registers 1

    .line 166
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->featureCombinationQuery()Z

    move-result v0

    return v0
.end method

.method public static blacklist fmqMetadata()Z
    .registers 1

    .line 172
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->fmqMetadata()Z

    move-result v0

    return v0
.end method

.method public static blacklist mirrorModeSharedSurfaces()Z
    .registers 1

    .line 178
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->mirrorModeSharedSurfaces()Z

    move-result v0

    return v0
.end method

.method public static blacklist multiresolutionImagereaderUsageConfig()Z
    .registers 1

    .line 184
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->multiresolutionImagereaderUsageConfig()Z

    move-result v0

    return v0
.end method

.method public static blacklist multiresolutionImagereaderUsagePublic()Z
    .registers 1

    .line 190
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->multiresolutionImagereaderUsagePublic()Z

    move-result v0

    return v0
.end method

.method public static blacklist nightModeIndicator()Z
    .registers 1

    .line 196
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->nightModeIndicator()Z

    move-result v0

    return v0
.end method

.method public static blacklist outputConfigurationGetter()Z
    .registers 1

    .line 202
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->outputConfigurationGetter()Z

    move-result v0

    return v0
.end method

.method public static blacklist returnBuffersOutsideLocks()Z
    .registers 1

    .line 208
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->returnBuffersOutsideLocks()Z

    move-result v0

    return v0
.end method

.method public static blacklist surfaceFormatFix()Z
    .registers 1

    .line 214
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->surfaceFormatFix()Z

    move-result v0

    return v0
.end method

.method public static blacklist zoomMethod()Z
    .registers 1

    .line 220
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/FeatureFlags;->zoomMethod()Z

    move-result v0

    return v0
.end method
