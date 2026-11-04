.class public Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;",
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
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 304
    new-instance v1, Ljava/util/HashSet;

    const-string v34, "android.companion.virtualdevice.flags.virtual_sensor_additional_info"

    const-string v35, ""

    const-string v2, "android.companion.virtualdevice.flags.activity_control_api"

    const-string v3, "android.companion.virtualdevice.flags.automated_app_launch_interception"

    const-string v4, "android.companion.virtualdevice.flags.camera_multiple_input_streams"

    const-string v5, "android.companion.virtualdevice.flags.camera_timestamp_from_surface"

    const-string v6, "android.companion.virtualdevice.flags.computer_control_access"

    const-string v7, "android.companion.virtualdevice.flags.computer_control_activity_policy_strict"

    const-string v8, "android.companion.virtualdevice.flags.computer_control_consent"

    const-string v9, "android.companion.virtualdevice.flags.computer_control_typing"

    const-string v10, "android.companion.virtualdevice.flags.correct_virtual_display_power_state"

    const-string v11, "android.companion.virtualdevice.flags.default_device_camera_access_policy"

    const-string v12, "android.companion.virtualdevice.flags.device_aware_display_power"

    const-string v13, "android.companion.virtualdevice.flags.device_aware_settings_override"

    const-string v14, "android.companion.virtualdevice.flags.device_aware_ui_mode"

    const-string v15, "android.companion.virtualdevice.flags.enable_animations_per_display"

    const-string v16, "android.companion.virtualdevice.flags.enable_limited_vdm_role"

    const-string v17, "android.companion.virtualdevice.flags.external_camera_default_policy"

    const-string v18, "android.companion.virtualdevice.flags.external_virtual_cameras"

    const-string v19, "android.companion.virtualdevice.flags.fix_vdm_opt_out_on_mirror_displays"

    const-string v20, "android.companion.virtualdevice.flags.handle_invalid_device_id"

    const-string v21, "android.companion.virtualdevice.flags.high_resolution_scroll"

    const-string v22, "android.companion.virtualdevice.flags.itemized_vdm_permissions"

    const-string v23, "android.companion.virtualdevice.flags.migrate_viewconfiguration_constants_to_resources"

    const-string v24, "android.companion.virtualdevice.flags.notifications_for_device_streaming"

    const-string v25, "android.companion.virtualdevice.flags.status_bar_and_insets"

    const-string v26, "android.companion.virtualdevice.flags.vdm_mirror_display_permission"

    const-string v27, "android.companion.virtualdevice.flags.viewconfiguration_apis"

    const-string v28, "android.companion.virtualdevice.flags.virtual_camera_metadata"

    const-string v29, "android.companion.virtualdevice.flags.virtual_camera_no_frame_duplication"

    const-string v30, "android.companion.virtualdevice.flags.virtual_camera_on_open"

    const-string v31, "android.companion.virtualdevice.flags.virtual_display_insets"

    const-string v32, "android.companion.virtualdevice.flags.virtual_display_rotation_api"

    const-string v33, "android.companion.virtualdevice.flags.virtual_rotary"

    filled-new-array/range {v2 .. v35}, [Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 17
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 259
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist activityControlApi()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.activity_control_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist automatedAppLaunchInterception()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.automated_app_launch_interception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cameraMultipleInputStreams()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.camera_multiple_input_streams"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cameraTimestampFromSurface()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.camera_timestamp_from_surface"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist computerControlAccess()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.computer_control_access"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist computerControlActivityPolicyStrict()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.computer_control_activity_policy_strict"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist computerControlConsent()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.computer_control_consent"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist computerControlTyping()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.computer_control_typing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist correctVirtualDisplayPowerState()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.correct_virtual_display_power_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist defaultDeviceCameraAccessPolicy()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.default_device_camera_access_policy"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceAwareDisplayPower()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.device_aware_display_power"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceAwareSettingsOverride()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.device_aware_settings_override"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceAwareUiMode()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.device_aware_ui_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAnimationsPerDisplay()Z
    .registers 3

    .line 112
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.enable_animations_per_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableLimitedVdmRole()Z
    .registers 3

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.enable_limited_vdm_role"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist externalCameraDefaultPolicy()Z
    .registers 3

    .line 126
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.external_camera_default_policy"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist externalVirtualCameras()Z
    .registers 3

    .line 133
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.external_virtual_cameras"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixVdmOptOutOnMirrorDisplays()Z
    .registers 3

    .line 140
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.fix_vdm_opt_out_on_mirror_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 267
    const-string v32, "android.companion.virtualdevice.flags.virtual_rotary"

    const-string v33, "android.companion.virtualdevice.flags.virtual_sensor_additional_info"

    const-string v1, "android.companion.virtualdevice.flags.activity_control_api"

    const-string v2, "android.companion.virtualdevice.flags.automated_app_launch_interception"

    const-string v3, "android.companion.virtualdevice.flags.camera_multiple_input_streams"

    const-string v4, "android.companion.virtualdevice.flags.camera_timestamp_from_surface"

    const-string v5, "android.companion.virtualdevice.flags.computer_control_access"

    const-string v6, "android.companion.virtualdevice.flags.computer_control_activity_policy_strict"

    const-string v7, "android.companion.virtualdevice.flags.computer_control_consent"

    const-string v8, "android.companion.virtualdevice.flags.computer_control_typing"

    const-string v9, "android.companion.virtualdevice.flags.correct_virtual_display_power_state"

    const-string v10, "android.companion.virtualdevice.flags.default_device_camera_access_policy"

    const-string v11, "android.companion.virtualdevice.flags.device_aware_display_power"

    const-string v12, "android.companion.virtualdevice.flags.device_aware_settings_override"

    const-string v13, "android.companion.virtualdevice.flags.device_aware_ui_mode"

    const-string v14, "android.companion.virtualdevice.flags.enable_animations_per_display"

    const-string v15, "android.companion.virtualdevice.flags.enable_limited_vdm_role"

    const-string v16, "android.companion.virtualdevice.flags.external_camera_default_policy"

    const-string v17, "android.companion.virtualdevice.flags.external_virtual_cameras"

    const-string v18, "android.companion.virtualdevice.flags.fix_vdm_opt_out_on_mirror_displays"

    const-string v19, "android.companion.virtualdevice.flags.handle_invalid_device_id"

    const-string v20, "android.companion.virtualdevice.flags.high_resolution_scroll"

    const-string v21, "android.companion.virtualdevice.flags.itemized_vdm_permissions"

    const-string v22, "android.companion.virtualdevice.flags.migrate_viewconfiguration_constants_to_resources"

    const-string v23, "android.companion.virtualdevice.flags.notifications_for_device_streaming"

    const-string v24, "android.companion.virtualdevice.flags.status_bar_and_insets"

    const-string v25, "android.companion.virtualdevice.flags.vdm_mirror_display_permission"

    const-string v26, "android.companion.virtualdevice.flags.viewconfiguration_apis"

    const-string v27, "android.companion.virtualdevice.flags.virtual_camera_metadata"

    const-string v28, "android.companion.virtualdevice.flags.virtual_camera_no_frame_duplication"

    const-string v29, "android.companion.virtualdevice.flags.virtual_camera_on_open"

    const-string v30, "android.companion.virtualdevice.flags.virtual_display_insets"

    const-string v31, "android.companion.virtualdevice.flags.virtual_display_rotation_api"

    filled-new-array/range {v1 .. v33}, [Ljava/lang/String;

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
            "Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist handleInvalidDeviceId()Z
    .registers 3

    .line 147
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.handle_invalid_device_id"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist highResolutionScroll()Z
    .registers 3

    .line 154
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.high_resolution_scroll"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 251
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 252
    const/4 p1, 0x1

    return p1

    .line 254
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist itemizedVdmPermissions()Z
    .registers 3

    .line 161
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.itemized_vdm_permissions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist migrateViewconfigurationConstantsToResources()Z
    .registers 3

    .line 168
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.migrate_viewconfiguration_constants_to_resources"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist notificationsForDeviceStreaming()Z
    .registers 3

    .line 175
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.notifications_for_device_streaming"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist statusBarAndInsets()Z
    .registers 3

    .line 182
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.status_bar_and_insets"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist vdmMirrorDisplayPermission()Z
    .registers 3

    .line 189
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.vdm_mirror_display_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist viewconfigurationApis()Z
    .registers 3

    .line 196
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.viewconfiguration_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist virtualCameraMetadata()Z
    .registers 3

    .line 203
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.virtual_camera_metadata"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist virtualCameraNoFrameDuplication()Z
    .registers 3

    .line 210
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.virtual_camera_no_frame_duplication"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist virtualCameraOnOpen()Z
    .registers 3

    .line 217
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.virtual_camera_on_open"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist virtualDisplayInsets()Z
    .registers 3

    .line 224
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.virtual_display_insets"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist virtualDisplayRotationApi()Z
    .registers 3

    .line 231
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.virtual_display_rotation_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist virtualRotary()Z
    .registers 3

    .line 238
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.virtual_rotary"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist virtualSensorAdditionalInfo()Z
    .registers 3

    .line 245
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.virtual_sensor_additional_info"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
