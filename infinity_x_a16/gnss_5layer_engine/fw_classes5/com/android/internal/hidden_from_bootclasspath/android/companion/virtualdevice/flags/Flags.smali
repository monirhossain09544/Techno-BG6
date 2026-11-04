.class public final Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ACTIVITY_CONTROL_API:Ljava/lang/String; = "android.companion.virtualdevice.flags.activity_control_api"

.field public static final blacklist FLAG_AUTOMATED_APP_LAUNCH_INTERCEPTION:Ljava/lang/String; = "android.companion.virtualdevice.flags.automated_app_launch_interception"

.field public static final blacklist FLAG_CAMERA_MULTIPLE_INPUT_STREAMS:Ljava/lang/String; = "android.companion.virtualdevice.flags.camera_multiple_input_streams"

.field public static final blacklist FLAG_CAMERA_TIMESTAMP_FROM_SURFACE:Ljava/lang/String; = "android.companion.virtualdevice.flags.camera_timestamp_from_surface"

.field public static final blacklist FLAG_COMPUTER_CONTROL_ACCESS:Ljava/lang/String; = "android.companion.virtualdevice.flags.computer_control_access"

.field public static final blacklist FLAG_COMPUTER_CONTROL_ACTIVITY_POLICY_STRICT:Ljava/lang/String; = "android.companion.virtualdevice.flags.computer_control_activity_policy_strict"

.field public static final blacklist FLAG_COMPUTER_CONTROL_CONSENT:Ljava/lang/String; = "android.companion.virtualdevice.flags.computer_control_consent"

.field public static final blacklist FLAG_COMPUTER_CONTROL_TYPING:Ljava/lang/String; = "android.companion.virtualdevice.flags.computer_control_typing"

.field public static final blacklist FLAG_CORRECT_VIRTUAL_DISPLAY_POWER_STATE:Ljava/lang/String; = "android.companion.virtualdevice.flags.correct_virtual_display_power_state"

.field public static final blacklist FLAG_DEFAULT_DEVICE_CAMERA_ACCESS_POLICY:Ljava/lang/String; = "android.companion.virtualdevice.flags.default_device_camera_access_policy"

.field public static final blacklist FLAG_DEVICE_AWARE_DISPLAY_POWER:Ljava/lang/String; = "android.companion.virtualdevice.flags.device_aware_display_power"

.field public static final blacklist FLAG_DEVICE_AWARE_SETTINGS_OVERRIDE:Ljava/lang/String; = "android.companion.virtualdevice.flags.device_aware_settings_override"

.field public static final blacklist FLAG_DEVICE_AWARE_UI_MODE:Ljava/lang/String; = "android.companion.virtualdevice.flags.device_aware_ui_mode"

.field public static final blacklist FLAG_ENABLE_ANIMATIONS_PER_DISPLAY:Ljava/lang/String; = "android.companion.virtualdevice.flags.enable_animations_per_display"

.field public static final blacklist FLAG_ENABLE_LIMITED_VDM_ROLE:Ljava/lang/String; = "android.companion.virtualdevice.flags.enable_limited_vdm_role"

.field public static final blacklist FLAG_EXTERNAL_CAMERA_DEFAULT_POLICY:Ljava/lang/String; = "android.companion.virtualdevice.flags.external_camera_default_policy"

.field public static final blacklist FLAG_EXTERNAL_VIRTUAL_CAMERAS:Ljava/lang/String; = "android.companion.virtualdevice.flags.external_virtual_cameras"

.field public static final blacklist FLAG_FIX_VDM_OPT_OUT_ON_MIRROR_DISPLAYS:Ljava/lang/String; = "android.companion.virtualdevice.flags.fix_vdm_opt_out_on_mirror_displays"

.field public static final blacklist FLAG_HANDLE_INVALID_DEVICE_ID:Ljava/lang/String; = "android.companion.virtualdevice.flags.handle_invalid_device_id"

.field public static final blacklist FLAG_HIGH_RESOLUTION_SCROLL:Ljava/lang/String; = "android.companion.virtualdevice.flags.high_resolution_scroll"

.field public static final blacklist FLAG_ITEMIZED_VDM_PERMISSIONS:Ljava/lang/String; = "android.companion.virtualdevice.flags.itemized_vdm_permissions"

.field public static final blacklist FLAG_MIGRATE_VIEWCONFIGURATION_CONSTANTS_TO_RESOURCES:Ljava/lang/String; = "android.companion.virtualdevice.flags.migrate_viewconfiguration_constants_to_resources"

.field public static final blacklist FLAG_NOTIFICATIONS_FOR_DEVICE_STREAMING:Ljava/lang/String; = "android.companion.virtualdevice.flags.notifications_for_device_streaming"

.field public static final blacklist FLAG_STATUS_BAR_AND_INSETS:Ljava/lang/String; = "android.companion.virtualdevice.flags.status_bar_and_insets"

.field public static final blacklist FLAG_VDM_MIRROR_DISPLAY_PERMISSION:Ljava/lang/String; = "android.companion.virtualdevice.flags.vdm_mirror_display_permission"

.field public static final blacklist FLAG_VIEWCONFIGURATION_APIS:Ljava/lang/String; = "android.companion.virtualdevice.flags.viewconfiguration_apis"

.field public static final blacklist FLAG_VIRTUAL_CAMERA_METADATA:Ljava/lang/String; = "android.companion.virtualdevice.flags.virtual_camera_metadata"

.field public static final blacklist FLAG_VIRTUAL_CAMERA_NO_FRAME_DUPLICATION:Ljava/lang/String; = "android.companion.virtualdevice.flags.virtual_camera_no_frame_duplication"

.field public static final blacklist FLAG_VIRTUAL_CAMERA_ON_OPEN:Ljava/lang/String; = "android.companion.virtualdevice.flags.virtual_camera_on_open"

.field public static final blacklist FLAG_VIRTUAL_DISPLAY_INSETS:Ljava/lang/String; = "android.companion.virtualdevice.flags.virtual_display_insets"

.field public static final blacklist FLAG_VIRTUAL_DISPLAY_ROTATION_API:Ljava/lang/String; = "android.companion.virtualdevice.flags.virtual_display_rotation_api"

.field public static final blacklist FLAG_VIRTUAL_ROTARY:Ljava/lang/String; = "android.companion.virtualdevice.flags.virtual_rotary"

.field public static final blacklist FLAG_VIRTUAL_SENSOR_ADDITIONAL_INFO:Ljava/lang/String; = "android.companion.virtualdevice.flags.virtual_sensor_additional_info"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 271
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist activityControlApi()Z
    .registers 1

    .line 76
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->activityControlApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist automatedAppLaunchInterception()Z
    .registers 1

    .line 82
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->automatedAppLaunchInterception()Z

    move-result v0

    return v0
.end method

.method public static blacklist cameraMultipleInputStreams()Z
    .registers 1

    .line 88
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->cameraMultipleInputStreams()Z

    move-result v0

    return v0
.end method

.method public static blacklist cameraTimestampFromSurface()Z
    .registers 1

    .line 94
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->cameraTimestampFromSurface()Z

    move-result v0

    return v0
.end method

.method public static blacklist computerControlAccess()Z
    .registers 1

    .line 100
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->computerControlAccess()Z

    move-result v0

    return v0
.end method

.method public static blacklist computerControlActivityPolicyStrict()Z
    .registers 1

    .line 106
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->computerControlActivityPolicyStrict()Z

    move-result v0

    return v0
.end method

.method public static blacklist computerControlConsent()Z
    .registers 1

    .line 112
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->computerControlConsent()Z

    move-result v0

    return v0
.end method

.method public static blacklist computerControlTyping()Z
    .registers 1

    .line 118
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->computerControlTyping()Z

    move-result v0

    return v0
.end method

.method public static blacklist correctVirtualDisplayPowerState()Z
    .registers 1

    .line 124
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->correctVirtualDisplayPowerState()Z

    move-result v0

    return v0
.end method

.method public static blacklist defaultDeviceCameraAccessPolicy()Z
    .registers 1

    .line 130
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->defaultDeviceCameraAccessPolicy()Z

    move-result v0

    return v0
.end method

.method public static blacklist deviceAwareDisplayPower()Z
    .registers 1

    .line 136
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->deviceAwareDisplayPower()Z

    move-result v0

    return v0
.end method

.method public static blacklist deviceAwareSettingsOverride()Z
    .registers 1

    .line 142
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->deviceAwareSettingsOverride()Z

    move-result v0

    return v0
.end method

.method public static blacklist deviceAwareUiMode()Z
    .registers 1

    .line 148
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->deviceAwareUiMode()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableAnimationsPerDisplay()Z
    .registers 1

    .line 154
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->enableAnimationsPerDisplay()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableLimitedVdmRole()Z
    .registers 1

    .line 160
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->enableLimitedVdmRole()Z

    move-result v0

    return v0
.end method

.method public static blacklist externalCameraDefaultPolicy()Z
    .registers 1

    .line 166
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->externalCameraDefaultPolicy()Z

    move-result v0

    return v0
.end method

.method public static blacklist externalVirtualCameras()Z
    .registers 1

    .line 172
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->externalVirtualCameras()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixVdmOptOutOnMirrorDisplays()Z
    .registers 1

    .line 178
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->fixVdmOptOutOnMirrorDisplays()Z

    move-result v0

    return v0
.end method

.method public static blacklist handleInvalidDeviceId()Z
    .registers 1

    .line 184
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->handleInvalidDeviceId()Z

    move-result v0

    return v0
.end method

.method public static blacklist highResolutionScroll()Z
    .registers 1

    .line 190
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->highResolutionScroll()Z

    move-result v0

    return v0
.end method

.method public static blacklist itemizedVdmPermissions()Z
    .registers 1

    .line 196
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->itemizedVdmPermissions()Z

    move-result v0

    return v0
.end method

.method public static blacklist migrateViewconfigurationConstantsToResources()Z
    .registers 1

    .line 202
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->migrateViewconfigurationConstantsToResources()Z

    move-result v0

    return v0
.end method

.method public static blacklist notificationsForDeviceStreaming()Z
    .registers 1

    .line 208
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->notificationsForDeviceStreaming()Z

    move-result v0

    return v0
.end method

.method public static blacklist statusBarAndInsets()Z
    .registers 1

    .line 214
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->statusBarAndInsets()Z

    move-result v0

    return v0
.end method

.method public static blacklist vdmMirrorDisplayPermission()Z
    .registers 1

    .line 220
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->vdmMirrorDisplayPermission()Z

    move-result v0

    return v0
.end method

.method public static blacklist viewconfigurationApis()Z
    .registers 1

    .line 226
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->viewconfigurationApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist virtualCameraMetadata()Z
    .registers 1

    .line 232
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->virtualCameraMetadata()Z

    move-result v0

    return v0
.end method

.method public static blacklist virtualCameraNoFrameDuplication()Z
    .registers 1

    .line 238
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->virtualCameraNoFrameDuplication()Z

    move-result v0

    return v0
.end method

.method public static blacklist virtualCameraOnOpen()Z
    .registers 1

    .line 244
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->virtualCameraOnOpen()Z

    move-result v0

    return v0
.end method

.method public static blacklist virtualDisplayInsets()Z
    .registers 1

    .line 250
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->virtualDisplayInsets()Z

    move-result v0

    return v0
.end method

.method public static blacklist virtualDisplayRotationApi()Z
    .registers 1

    .line 256
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->virtualDisplayRotationApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist virtualRotary()Z
    .registers 1

    .line 262
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->virtualRotary()Z

    move-result v0

    return v0
.end method

.method public static blacklist virtualSensorAdditionalInfo()Z
    .registers 1

    .line 268
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;->virtualSensorAdditionalInfo()Z

    move-result v0

    return v0
.end method
