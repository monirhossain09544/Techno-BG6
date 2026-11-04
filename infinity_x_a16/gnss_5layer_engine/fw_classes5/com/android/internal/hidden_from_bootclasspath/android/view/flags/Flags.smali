.class public final Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags; = null

.field public static final blacklist FLAG_BUFFER_STUFFING_MULTI_RECOVERY:Ljava/lang/String; = "android.view.flags.buffer_stuffing_multi_recovery"

.field public static final blacklist FLAG_BUFFER_STUFFING_RECOVERY:Ljava/lang/String; = "android.view.flags.buffer_stuffing_recovery"

.field public static final blacklist FLAG_CUSTOMIZABLE_WINDOW_HEADERS:Ljava/lang/String; = "android.view.flags.customizable_window_headers"

.field public static final blacklist FLAG_DEPRECATE_SURFACE_VIEW_Z_ORDER_APIS:Ljava/lang/String; = "android.view.flags.deprecate_surface_view_z_order_apis"

.field public static final blacklist FLAG_DISABLE_DRAW_WAKE_LOCK:Ljava/lang/String; = "android.view.flags.disable_draw_wake_lock"

.field public static final blacklist FLAG_DYNAMIC_VIEW_ROTARY_HAPTICS_CONFIGURATION:Ljava/lang/String; = "android.view.flags.dynamic_view_rotary_haptics_configuration"

.field public static final blacklist FLAG_ENABLE_ARROW_ICON_ON_HOVER_WHEN_CLICKABLE:Ljava/lang/String; = "android.view.flags.enable_arrow_icon_on_hover_when_clickable"

.field public static final blacklist FLAG_ENABLE_DISPATCH_ON_SCROLL_CHANGED:Ljava/lang/String; = "android.view.flags.enable_dispatch_on_scroll_changed"

.field public static final blacklist FLAG_ENABLE_INVALIDATE_CHECK_THREAD:Ljava/lang/String; = "android.view.flags.enable_invalidate_check_thread"

.field public static final blacklist FLAG_ENABLE_SCROLL_FEEDBACK_FOR_TOUCH:Ljava/lang/String; = "android.view.flags.enable_scroll_feedback_for_touch"

.field public static final blacklist FLAG_ENABLE_SURFACE_NATIVE_ALLOC_REGISTRATION_RO:Ljava/lang/String; = "android.view.flags.enable_surface_native_alloc_registration_ro"

.field public static final blacklist FLAG_ENABLE_USE_MEASURE_CACHE_DURING_FORCE_LAYOUT:Ljava/lang/String; = "android.view.flags.enable_use_measure_cache_during_force_layout"

.field public static final blacklist FLAG_ENABLE_VECTOR_CURSORS:Ljava/lang/String; = "android.view.flags.enable_vector_cursors"

.field public static final blacklist FLAG_ENABLE_VECTOR_CURSOR_A11Y_SETTINGS:Ljava/lang/String; = "android.view.flags.enable_vector_cursor_a11y_settings"

.field public static final blacklist FLAG_EXPECTED_PRESENTATION_TIME_API:Ljava/lang/String; = "android.view.flags.expected_presentation_time_api"

.field public static final blacklist FLAG_EXPECTED_PRESENTATION_TIME_READ_ONLY:Ljava/lang/String; = "android.view.flags.expected_presentation_time_read_only"

.field public static final blacklist FLAG_NOTIFY_GPU_LOAD_UP:Ljava/lang/String; = "android.view.flags.notify_gpu_load_up"

.field public static final blacklist FLAG_ROOT_VIEW_CHANGED_LISTENER:Ljava/lang/String; = "android.view.flags.root_view_changed_listener"

.field public static final blacklist FLAG_SCROLL_CAPTURE_RELAX_SCROLL_VIEW_CRITERIA:Ljava/lang/String; = "android.view.flags.scroll_capture_relax_scroll_view_criteria"

.field public static final blacklist FLAG_SCROLL_CAPTURE_TARGET_Z_ORDER_FIX:Ljava/lang/String; = "android.view.flags.scroll_capture_target_z_order_fix"

.field public static final blacklist FLAG_SCROLL_FEEDBACK_API:Ljava/lang/String; = "android.view.flags.scroll_feedback_api"

.field public static final blacklist FLAG_SENSITIVE_CONTENT_APP_PROTECTION:Ljava/lang/String; = "android.view.flags.sensitive_content_app_protection"

.field public static final blacklist FLAG_SENSITIVE_CONTENT_APP_PROTECTION_API:Ljava/lang/String; = "android.view.flags.sensitive_content_app_protection_api"

.field public static final blacklist FLAG_SENSITIVE_CONTENT_PREMATURE_PROTECTION_REMOVED_FIX:Ljava/lang/String; = "android.view.flags.sensitive_content_premature_protection_removed_fix"

.field public static final blacklist FLAG_SET_FRAME_RATE_CALLBACK:Ljava/lang/String; = "android.view.flags.set_frame_rate_callback"

.field public static final blacklist FLAG_SURFACE_VIEW_GET_SURFACE_PACKAGE:Ljava/lang/String; = "android.view.flags.surface_view_get_surface_package"

.field public static final blacklist FLAG_SURFACE_VIEW_SET_COMPOSITION_ORDER:Ljava/lang/String; = "android.view.flags.surface_view_set_composition_order"

.field public static final blacklist FLAG_TOOLKIT_FRAME_RATE_BY_SIZE_READ_ONLY:Ljava/lang/String; = "android.view.flags.toolkit_frame_rate_by_size_read_only"

.field public static final blacklist FLAG_TOOLKIT_FRAME_RATE_DEBUG:Ljava/lang/String; = "android.view.flags.toolkit_frame_rate_debug"

.field public static final blacklist FLAG_TOOLKIT_FRAME_RATE_TOUCH_BOOST_25Q1:Ljava/lang/String; = "android.view.flags.toolkit_frame_rate_touch_boost_25q1"

.field public static final blacklist FLAG_TOOLKIT_INITIAL_TOUCH_BOOST:Ljava/lang/String; = "android.view.flags.toolkit_initial_touch_boost"

.field public static final blacklist FLAG_TOOLKIT_METRICS_FOR_FRAME_RATE_DECISION:Ljava/lang/String; = "android.view.flags.toolkit_metrics_for_frame_rate_decision"

.field public static final blacklist FLAG_TOOLKIT_SET_FRAME_RATE:Ljava/lang/String; = "android.view.flags.toolkit_set_frame_rate"

.field public static final blacklist FLAG_TOOLKIT_SET_FRAME_RATE_READ_ONLY:Ljava/lang/String; = "android.view.flags.toolkit_set_frame_rate_read_only"

.field public static final blacklist FLAG_TOOLKIT_VIEWGROUP_SET_REQUESTED_FRAME_RATE_API:Ljava/lang/String; = "android.view.flags.toolkit_viewgroup_set_requested_frame_rate_api"

.field public static final blacklist FLAG_USE_REFACTORED_ROUND_SCROLLBAR:Ljava/lang/String; = "android.view.flags.use_refactored_round_scrollbar"

.field public static final blacklist FLAG_USE_VIEW_BASED_ROTARY_ENCODER_SCROLL_HAPTICS:Ljava/lang/String; = "android.view.flags.use_view_based_rotary_encoder_scroll_haptics"

.field public static final blacklist FLAG_VIEW_VELOCITY_API:Ljava/lang/String; = "android.view.flags.view_velocity_api"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 311
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bufferStuffingMultiRecovery()Z
    .registers 1

    .line 86
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->bufferStuffingMultiRecovery()Z

    move-result v0

    return v0
.end method

.method public static blacklist bufferStuffingRecovery()Z
    .registers 1

    .line 92
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->bufferStuffingRecovery()Z

    move-result v0

    return v0
.end method

.method public static blacklist customizableWindowHeaders()Z
    .registers 1

    .line 98
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->customizableWindowHeaders()Z

    move-result v0

    return v0
.end method

.method public static blacklist deprecateSurfaceViewZOrderApis()Z
    .registers 1

    .line 104
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->deprecateSurfaceViewZOrderApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist disableDrawWakeLock()Z
    .registers 1

    .line 110
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->disableDrawWakeLock()Z

    move-result v0

    return v0
.end method

.method public static blacklist dynamicViewRotaryHapticsConfiguration()Z
    .registers 1

    .line 116
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->dynamicViewRotaryHapticsConfiguration()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableArrowIconOnHoverWhenClickable()Z
    .registers 1

    .line 122
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->enableArrowIconOnHoverWhenClickable()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableDispatchOnScrollChanged()Z
    .registers 1

    .line 128
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->enableDispatchOnScrollChanged()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableInvalidateCheckThread()Z
    .registers 1

    .line 134
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->enableInvalidateCheckThread()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableScrollFeedbackForTouch()Z
    .registers 1

    .line 140
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->enableScrollFeedbackForTouch()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableSurfaceNativeAllocRegistrationRo()Z
    .registers 1

    .line 146
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->enableSurfaceNativeAllocRegistrationRo()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableUseMeasureCacheDuringForceLayout()Z
    .registers 1

    .line 152
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->enableUseMeasureCacheDuringForceLayout()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableVectorCursorA11ySettings()Z
    .registers 1

    .line 158
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->enableVectorCursorA11ySettings()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableVectorCursors()Z
    .registers 1

    .line 164
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->enableVectorCursors()Z

    move-result v0

    return v0
.end method

.method public static blacklist expectedPresentationTimeApi()Z
    .registers 1

    .line 170
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->expectedPresentationTimeApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist expectedPresentationTimeReadOnly()Z
    .registers 1

    .line 176
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->expectedPresentationTimeReadOnly()Z

    move-result v0

    return v0
.end method

.method public static blacklist notifyGpuLoadUp()Z
    .registers 1

    .line 182
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->notifyGpuLoadUp()Z

    move-result v0

    return v0
.end method

.method public static blacklist rootViewChangedListener()Z
    .registers 1

    .line 188
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->rootViewChangedListener()Z

    move-result v0

    return v0
.end method

.method public static blacklist scrollCaptureRelaxScrollViewCriteria()Z
    .registers 1

    .line 194
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->scrollCaptureRelaxScrollViewCriteria()Z

    move-result v0

    return v0
.end method

.method public static blacklist scrollCaptureTargetZOrderFix()Z
    .registers 1

    .line 200
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->scrollCaptureTargetZOrderFix()Z

    move-result v0

    return v0
.end method

.method public static blacklist scrollFeedbackApi()Z
    .registers 1

    .line 206
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->scrollFeedbackApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist sensitiveContentAppProtection()Z
    .registers 1

    .line 212
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->sensitiveContentAppProtection()Z

    move-result v0

    return v0
.end method

.method public static blacklist sensitiveContentAppProtectionApi()Z
    .registers 1

    .line 218
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->sensitiveContentAppProtectionApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist sensitiveContentPrematureProtectionRemovedFix()Z
    .registers 1

    .line 224
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->sensitiveContentPrematureProtectionRemovedFix()Z

    move-result v0

    return v0
.end method

.method public static blacklist setFrameRateCallback()Z
    .registers 1

    .line 230
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->setFrameRateCallback()Z

    move-result v0

    return v0
.end method

.method public static blacklist surfaceViewGetSurfacePackage()Z
    .registers 1

    .line 236
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->surfaceViewGetSurfacePackage()Z

    move-result v0

    return v0
.end method

.method public static blacklist surfaceViewSetCompositionOrder()Z
    .registers 1

    .line 242
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->surfaceViewSetCompositionOrder()Z

    move-result v0

    return v0
.end method

.method public static blacklist toolkitFrameRateBySizeReadOnly()Z
    .registers 1

    .line 248
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->toolkitFrameRateBySizeReadOnly()Z

    move-result v0

    return v0
.end method

.method public static blacklist toolkitFrameRateDebug()Z
    .registers 1

    .line 254
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->toolkitFrameRateDebug()Z

    move-result v0

    return v0
.end method

.method public static blacklist toolkitFrameRateTouchBoost25q1()Z
    .registers 1

    .line 260
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->toolkitFrameRateTouchBoost25q1()Z

    move-result v0

    return v0
.end method

.method public static blacklist toolkitInitialTouchBoost()Z
    .registers 1

    .line 266
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->toolkitInitialTouchBoost()Z

    move-result v0

    return v0
.end method

.method public static blacklist toolkitMetricsForFrameRateDecision()Z
    .registers 1

    .line 272
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->toolkitMetricsForFrameRateDecision()Z

    move-result v0

    return v0
.end method

.method public static blacklist toolkitSetFrameRate()Z
    .registers 1

    .line 278
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->toolkitSetFrameRate()Z

    move-result v0

    return v0
.end method

.method public static blacklist toolkitSetFrameRateReadOnly()Z
    .registers 1

    .line 284
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->toolkitSetFrameRateReadOnly()Z

    move-result v0

    return v0
.end method

.method public static blacklist toolkitViewgroupSetRequestedFrameRateApi()Z
    .registers 1

    .line 290
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->toolkitViewgroupSetRequestedFrameRateApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist useRefactoredRoundScrollbar()Z
    .registers 1

    .line 296
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->useRefactoredRoundScrollbar()Z

    move-result v0

    return v0
.end method

.method public static blacklist useViewBasedRotaryEncoderScrollHaptics()Z
    .registers 1

    .line 302
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->useViewBasedRotaryEncoderScrollHaptics()Z

    move-result v0

    return v0
.end method

.method public static blacklist viewVelocityApi()Z
    .registers 1

    .line 308
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;->viewVelocityApi()Z

    move-result v0

    return v0
.end method
