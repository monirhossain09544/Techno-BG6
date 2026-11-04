.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags; = null

.field public static final blacklist FLAG_A11Y_CRASH_ON_INCONSISTENT_EVENT_STREAM:Ljava/lang/String; = "com.android.input.flags.a11y_crash_on_inconsistent_event_stream"

.field public static final blacklist FLAG_ABORT_DEVICE_OPENING_ON_ENODEV:Ljava/lang/String; = "com.android.input.flags.abort_device_opening_on_enodev"

.field public static final blacklist FLAG_ALLOW_TRANSFER_OF_ENTIRE_GESTURE:Ljava/lang/String; = "com.android.input.flags.allow_transfer_of_entire_gesture"

.field public static final blacklist FLAG_CLEAR_RELATIVE_AXES_IN_RESAMPLED_COORDS:Ljava/lang/String; = "com.android.input.flags.clear_relative_axes_in_resampled_coords"

.field public static final blacklist FLAG_COLLECT_PALM_REJECTION_QUALITY_METRICS:Ljava/lang/String; = "com.android.input.flags.collect_palm_rejection_quality_metrics"

.field public static final blacklist FLAG_CONNECTED_DISPLAYS_ASSOCIATED_DISPLAY_CURSOR_BUGFIX:Ljava/lang/String; = "com.android.input.flags.connected_displays_associated_display_cursor_bugfix"

.field public static final blacklist FLAG_CONNECTED_DISPLAYS_CURSOR:Ljava/lang/String; = "com.android.input.flags.connected_displays_cursor"

.field public static final blacklist FLAG_DEPRECATE_SPLIT_TOUCH_APIS:Ljava/lang/String; = "com.android.input.flags.deprecate_split_touch_apis"

.field public static final blacklist FLAG_DEVICE_ASSOCIATIONS:Ljava/lang/String; = "com.android.input.flags.device_associations"

.field public static final blacklist FLAG_DISABLE_REJECT_TOUCH_ON_STYLUS_HOVER:Ljava/lang/String; = "com.android.input.flags.disable_reject_touch_on_stylus_hover"

.field public static final blacklist FLAG_ENABLE_ALPHABETIC_KEYBOARD_WAKE:Ljava/lang/String; = "com.android.input.flags.enable_alphabetic_keyboard_wake"

.field public static final blacklist FLAG_ENABLE_BUTTON_STATE_VERIFICATION:Ljava/lang/String; = "com.android.input.flags.enable_button_state_verification"

.field public static final blacklist FLAG_ENABLE_DISPLAY_TOPOLOGY_VALIDATION:Ljava/lang/String; = "com.android.input.flags.enable_display_topology_validation"

.field public static final blacklist FLAG_ENABLE_INBOUND_EVENT_VERIFICATION:Ljava/lang/String; = "com.android.input.flags.enable_inbound_event_verification"

.field public static final blacklist FLAG_ENABLE_INPUT_POLICY_PROFILE:Ljava/lang/String; = "com.android.input.flags.enable_input_policy_profile"

.field public static final blacklist FLAG_ENABLE_MULTI_DEVICE_INPUT:Ljava/lang/String; = "com.android.input.flags.enable_multi_device_input"

.field public static final blacklist FLAG_ENABLE_MULTI_DEVICE_SAME_WINDOW_STREAM:Ljava/lang/String; = "com.android.input.flags.enable_multi_device_same_window_stream"

.field public static final blacklist FLAG_ENABLE_OUTBOUND_EVENT_VERIFICATION:Ljava/lang/String; = "com.android.input.flags.enable_outbound_event_verification"

.field public static final blacklist FLAG_ENABLE_PER_DEVICE_INPUT_LATENCY_METRICS:Ljava/lang/String; = "com.android.input.flags.enable_per_device_input_latency_metrics"

.field public static final blacklist FLAG_ENABLE_PREDICTION_PRUNING_VIA_JERK_THRESHOLDING:Ljava/lang/String; = "com.android.input.flags.enable_prediction_pruning_via_jerk_thresholding"

.field public static final blacklist FLAG_ENABLE_V2_TOUCHPAD_TYPING_PALM_REJECTION:Ljava/lang/String; = "com.android.input.flags.enable_v2_touchpad_typing_palm_rejection"

.field public static final blacklist FLAG_INPUT_DEVICE_VIEW_BEHAVIOR_API:Ljava/lang/String; = "com.android.input.flags.input_device_view_behavior_api"

.field public static final blacklist FLAG_KEYBOARD_REPEAT_KEYS:Ljava/lang/String; = "com.android.input.flags.keyboard_repeat_keys"

.field public static final blacklist FLAG_LOW_LEVEL_TRACING:Ljava/lang/String; = "com.android.input.flags.low_level_tracing"

.field public static final blacklist FLAG_OVERRIDE_KEY_BEHAVIOR_PERMISSION_APIS:Ljava/lang/String; = "com.android.input.flags.override_key_behavior_permission_apis"

.field public static final blacklist FLAG_PREVENT_MERGING_INPUT_POINTER_DEVICES:Ljava/lang/String; = "com.android.input.flags.prevent_merging_input_pointer_devices"

.field public static final blacklist FLAG_RATE_LIMIT_USER_ACTIVITY_POKE_IN_DISPATCHER:Ljava/lang/String; = "com.android.input.flags.rate_limit_user_activity_poke_in_dispatcher"

.field public static final blacklist FLAG_ROTARY_INPUT_TELEMETRY:Ljava/lang/String; = "com.android.input.flags.rotary_input_telemetry"

.field public static final blacklist FLAG_SCALE_CURSOR_SPEED_WITH_DPI:Ljava/lang/String; = "com.android.input.flags.scale_cursor_speed_with_dpi"

.field public static final blacklist FLAG_SET_INPUT_DEVICE_KERNEL_WAKE:Ljava/lang/String; = "com.android.input.flags.set_input_device_kernel_wake"

.field public static final blacklist FLAG_SHOW_POINTERS_FOR_PARTIAL_SCREENSHARE:Ljava/lang/String; = "com.android.input.flags.show_pointers_for_partial_screenshare"

.field public static final blacklist FLAG_SIMULTANEOUS_OUTSIDE_AND_HOVER_FIX:Ljava/lang/String; = "com.android.input.flags.simultaneous_outside_and_hover_fix"

.field public static final blacklist FLAG_USE_CLONED_SCREEN_COORDINATES_AS_RAW:Ljava/lang/String; = "com.android.input.flags.use_cloned_screen_coordinates_as_raw"

.field public static final blacklist FLAG_USE_SEPARATE_XY_DPI_SCALING_FOR_MICE:Ljava/lang/String; = "com.android.input.flags.use_separate_xy_dpi_scaling_for_mice"

.field public static final blacklist FLAG_USE_TOPOLOGY_AWARE_FLAG:Ljava/lang/String; = "com.android.input.flags.use_topology_aware_flag"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 287
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist a11yCrashOnInconsistentEventStream()Z
    .registers 1

    .line 80
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->a11yCrashOnInconsistentEventStream()Z

    move-result v0

    return v0
.end method

.method public static blacklist abortDeviceOpeningOnEnodev()Z
    .registers 1

    .line 86
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->abortDeviceOpeningOnEnodev()Z

    move-result v0

    return v0
.end method

.method public static blacklist allowTransferOfEntireGesture()Z
    .registers 1

    .line 92
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->allowTransferOfEntireGesture()Z

    move-result v0

    return v0
.end method

.method public static blacklist clearRelativeAxesInResampledCoords()Z
    .registers 1

    .line 98
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->clearRelativeAxesInResampledCoords()Z

    move-result v0

    return v0
.end method

.method public static blacklist collectPalmRejectionQualityMetrics()Z
    .registers 1

    .line 104
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->collectPalmRejectionQualityMetrics()Z

    move-result v0

    return v0
.end method

.method public static blacklist connectedDisplaysAssociatedDisplayCursorBugfix()Z
    .registers 1

    .line 110
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->connectedDisplaysAssociatedDisplayCursorBugfix()Z

    move-result v0

    return v0
.end method

.method public static blacklist connectedDisplaysCursor()Z
    .registers 1

    .line 116
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->connectedDisplaysCursor()Z

    move-result v0

    return v0
.end method

.method public static blacklist deprecateSplitTouchApis()Z
    .registers 1

    .line 122
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->deprecateSplitTouchApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist deviceAssociations()Z
    .registers 1

    .line 128
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->deviceAssociations()Z

    move-result v0

    return v0
.end method

.method public static blacklist disableRejectTouchOnStylusHover()Z
    .registers 1

    .line 134
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->disableRejectTouchOnStylusHover()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableAlphabeticKeyboardWake()Z
    .registers 1

    .line 140
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->enableAlphabeticKeyboardWake()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableButtonStateVerification()Z
    .registers 1

    .line 146
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->enableButtonStateVerification()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableDisplayTopologyValidation()Z
    .registers 1

    .line 152
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->enableDisplayTopologyValidation()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableInboundEventVerification()Z
    .registers 1

    .line 158
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->enableInboundEventVerification()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableInputPolicyProfile()Z
    .registers 1

    .line 164
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->enableInputPolicyProfile()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableMultiDeviceInput()Z
    .registers 1

    .line 170
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->enableMultiDeviceInput()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableMultiDeviceSameWindowStream()Z
    .registers 1

    .line 176
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->enableMultiDeviceSameWindowStream()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableOutboundEventVerification()Z
    .registers 1

    .line 182
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->enableOutboundEventVerification()Z

    move-result v0

    return v0
.end method

.method public static blacklist enablePerDeviceInputLatencyMetrics()Z
    .registers 1

    .line 188
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->enablePerDeviceInputLatencyMetrics()Z

    move-result v0

    return v0
.end method

.method public static blacklist enablePredictionPruningViaJerkThresholding()Z
    .registers 1

    .line 194
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->enablePredictionPruningViaJerkThresholding()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableV2TouchpadTypingPalmRejection()Z
    .registers 1

    .line 200
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->enableV2TouchpadTypingPalmRejection()Z

    move-result v0

    return v0
.end method

.method public static blacklist inputDeviceViewBehaviorApi()Z
    .registers 1

    .line 206
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->inputDeviceViewBehaviorApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist keyboardRepeatKeys()Z
    .registers 1

    .line 212
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->keyboardRepeatKeys()Z

    move-result v0

    return v0
.end method

.method public static blacklist lowLevelTracing()Z
    .registers 1

    .line 218
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->lowLevelTracing()Z

    move-result v0

    return v0
.end method

.method public static blacklist overrideKeyBehaviorPermissionApis()Z
    .registers 1

    .line 224
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->overrideKeyBehaviorPermissionApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist preventMergingInputPointerDevices()Z
    .registers 1

    .line 230
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->preventMergingInputPointerDevices()Z

    move-result v0

    return v0
.end method

.method public static blacklist rateLimitUserActivityPokeInDispatcher()Z
    .registers 1

    .line 236
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->rateLimitUserActivityPokeInDispatcher()Z

    move-result v0

    return v0
.end method

.method public static blacklist rotaryInputTelemetry()Z
    .registers 1

    .line 242
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->rotaryInputTelemetry()Z

    move-result v0

    return v0
.end method

.method public static blacklist scaleCursorSpeedWithDpi()Z
    .registers 1

    .line 248
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->scaleCursorSpeedWithDpi()Z

    move-result v0

    return v0
.end method

.method public static blacklist setInputDeviceKernelWake()Z
    .registers 1

    .line 254
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->setInputDeviceKernelWake()Z

    move-result v0

    return v0
.end method

.method public static blacklist showPointersForPartialScreenshare()Z
    .registers 1

    .line 260
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->showPointersForPartialScreenshare()Z

    move-result v0

    return v0
.end method

.method public static blacklist simultaneousOutsideAndHoverFix()Z
    .registers 1

    .line 266
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->simultaneousOutsideAndHoverFix()Z

    move-result v0

    return v0
.end method

.method public static blacklist useClonedScreenCoordinatesAsRaw()Z
    .registers 1

    .line 272
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->useClonedScreenCoordinatesAsRaw()Z

    move-result v0

    return v0
.end method

.method public static blacklist useSeparateXyDpiScalingForMice()Z
    .registers 1

    .line 278
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->useSeparateXyDpiScalingForMice()Z

    move-result v0

    return v0
.end method

.method public static blacklist useTopologyAwareFlag()Z
    .registers 1

    .line 284
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;->useTopologyAwareFlag()Z

    move-result v0

    return v0
.end method
