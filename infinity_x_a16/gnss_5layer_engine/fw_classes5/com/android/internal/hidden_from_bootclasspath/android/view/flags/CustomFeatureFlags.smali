.class public Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;",
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
    .registers 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance v1, Ljava/util/HashSet;

    const-string v39, "android.view.flags.view_velocity_api"

    const-string v40, ""

    const-string v2, "android.view.flags.buffer_stuffing_multi_recovery"

    const-string v3, "android.view.flags.buffer_stuffing_recovery"

    const-string v4, "android.view.flags.customizable_window_headers"

    const-string v5, "android.view.flags.deprecate_surface_view_z_order_apis"

    const-string v6, "android.view.flags.disable_draw_wake_lock"

    const-string v7, "android.view.flags.dynamic_view_rotary_haptics_configuration"

    const-string v8, "android.view.flags.enable_arrow_icon_on_hover_when_clickable"

    const-string v9, "android.view.flags.enable_dispatch_on_scroll_changed"

    const-string v10, "android.view.flags.enable_invalidate_check_thread"

    const-string v11, "android.view.flags.enable_scroll_feedback_for_touch"

    const-string v12, "android.view.flags.enable_surface_native_alloc_registration_ro"

    const-string v13, "android.view.flags.enable_use_measure_cache_during_force_layout"

    const-string v14, "android.view.flags.enable_vector_cursor_a11y_settings"

    const-string v15, "android.view.flags.enable_vector_cursors"

    const-string v16, "android.view.flags.expected_presentation_time_api"

    const-string v17, "android.view.flags.expected_presentation_time_read_only"

    const-string v18, "android.view.flags.notify_gpu_load_up"

    const-string v19, "android.view.flags.root_view_changed_listener"

    const-string v20, "android.view.flags.scroll_capture_relax_scroll_view_criteria"

    const-string v21, "android.view.flags.scroll_capture_target_z_order_fix"

    const-string v22, "android.view.flags.scroll_feedback_api"

    const-string v23, "android.view.flags.sensitive_content_app_protection"

    const-string v24, "android.view.flags.sensitive_content_app_protection_api"

    const-string v25, "android.view.flags.sensitive_content_premature_protection_removed_fix"

    const-string v26, "android.view.flags.set_frame_rate_callback"

    const-string v27, "android.view.flags.surface_view_get_surface_package"

    const-string v28, "android.view.flags.surface_view_set_composition_order"

    const-string v29, "android.view.flags.toolkit_frame_rate_by_size_read_only"

    const-string v30, "android.view.flags.toolkit_frame_rate_debug"

    const-string v31, "android.view.flags.toolkit_frame_rate_touch_boost_25q1"

    const-string v32, "android.view.flags.toolkit_initial_touch_boost"

    const-string v33, "android.view.flags.toolkit_metrics_for_frame_rate_decision"

    const-string v34, "android.view.flags.toolkit_set_frame_rate"

    const-string v35, "android.view.flags.toolkit_set_frame_rate_read_only"

    const-string v36, "android.view.flags.toolkit_viewgroup_set_requested_frame_rate_api"

    const-string v37, "android.view.flags.use_refactored_round_scrollbar"

    const-string v38, "android.view.flags.use_view_based_rotary_encoder_scroll_haptics"

    filled-new-array/range {v2 .. v40}, [Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 17
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 294
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist bufferStuffingMultiRecovery()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.view.flags.buffer_stuffing_multi_recovery"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist bufferStuffingRecovery()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.view.flags.buffer_stuffing_recovery"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist customizableWindowHeaders()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.view.flags.customizable_window_headers"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deprecateSurfaceViewZOrderApis()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.view.flags.deprecate_surface_view_z_order_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disableDrawWakeLock()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.view.flags.disable_draw_wake_lock"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dynamicViewRotaryHapticsConfiguration()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.view.flags.dynamic_view_rotary_haptics_configuration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableArrowIconOnHoverWhenClickable()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.view.flags.enable_arrow_icon_on_hover_when_clickable"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDispatchOnScrollChanged()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.view.flags.enable_dispatch_on_scroll_changed"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableInvalidateCheckThread()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.view.flags.enable_invalidate_check_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableScrollFeedbackForTouch()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.view.flags.enable_scroll_feedback_for_touch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableSurfaceNativeAllocRegistrationRo()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.view.flags.enable_surface_native_alloc_registration_ro"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableUseMeasureCacheDuringForceLayout()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.view.flags.enable_use_measure_cache_during_force_layout"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableVectorCursorA11ySettings()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.view.flags.enable_vector_cursor_a11y_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableVectorCursors()Z
    .registers 3

    .line 112
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.view.flags.enable_vector_cursors"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist expectedPresentationTimeApi()Z
    .registers 3

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.view.flags.expected_presentation_time_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist expectedPresentationTimeReadOnly()Z
    .registers 3

    .line 126
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.view.flags.expected_presentation_time_read_only"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 302
    const-string v37, "android.view.flags.use_view_based_rotary_encoder_scroll_haptics"

    const-string v38, "android.view.flags.view_velocity_api"

    const-string v1, "android.view.flags.buffer_stuffing_multi_recovery"

    const-string v2, "android.view.flags.buffer_stuffing_recovery"

    const-string v3, "android.view.flags.customizable_window_headers"

    const-string v4, "android.view.flags.deprecate_surface_view_z_order_apis"

    const-string v5, "android.view.flags.disable_draw_wake_lock"

    const-string v6, "android.view.flags.dynamic_view_rotary_haptics_configuration"

    const-string v7, "android.view.flags.enable_arrow_icon_on_hover_when_clickable"

    const-string v8, "android.view.flags.enable_dispatch_on_scroll_changed"

    const-string v9, "android.view.flags.enable_invalidate_check_thread"

    const-string v10, "android.view.flags.enable_scroll_feedback_for_touch"

    const-string v11, "android.view.flags.enable_surface_native_alloc_registration_ro"

    const-string v12, "android.view.flags.enable_use_measure_cache_during_force_layout"

    const-string v13, "android.view.flags.enable_vector_cursor_a11y_settings"

    const-string v14, "android.view.flags.enable_vector_cursors"

    const-string v15, "android.view.flags.expected_presentation_time_api"

    const-string v16, "android.view.flags.expected_presentation_time_read_only"

    const-string v17, "android.view.flags.notify_gpu_load_up"

    const-string v18, "android.view.flags.root_view_changed_listener"

    const-string v19, "android.view.flags.scroll_capture_relax_scroll_view_criteria"

    const-string v20, "android.view.flags.scroll_capture_target_z_order_fix"

    const-string v21, "android.view.flags.scroll_feedback_api"

    const-string v22, "android.view.flags.sensitive_content_app_protection"

    const-string v23, "android.view.flags.sensitive_content_app_protection_api"

    const-string v24, "android.view.flags.sensitive_content_premature_protection_removed_fix"

    const-string v25, "android.view.flags.set_frame_rate_callback"

    const-string v26, "android.view.flags.surface_view_get_surface_package"

    const-string v27, "android.view.flags.surface_view_set_composition_order"

    const-string v28, "android.view.flags.toolkit_frame_rate_by_size_read_only"

    const-string v29, "android.view.flags.toolkit_frame_rate_debug"

    const-string v30, "android.view.flags.toolkit_frame_rate_touch_boost_25q1"

    const-string v31, "android.view.flags.toolkit_initial_touch_boost"

    const-string v32, "android.view.flags.toolkit_metrics_for_frame_rate_decision"

    const-string v33, "android.view.flags.toolkit_set_frame_rate"

    const-string v34, "android.view.flags.toolkit_set_frame_rate_read_only"

    const-string v35, "android.view.flags.toolkit_viewgroup_set_requested_frame_rate_api"

    const-string v36, "android.view.flags.use_refactored_round_scrollbar"

    filled-new-array/range {v1 .. v38}, [Ljava/lang/String;

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
            "Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 286
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 287
    const/4 p1, 0x1

    return p1

    .line 289
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist notifyGpuLoadUp()Z
    .registers 3

    .line 133
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.view.flags.notify_gpu_load_up"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rootViewChangedListener()Z
    .registers 3

    .line 140
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.view.flags.root_view_changed_listener"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist scrollCaptureRelaxScrollViewCriteria()Z
    .registers 3

    .line 147
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.view.flags.scroll_capture_relax_scroll_view_criteria"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist scrollCaptureTargetZOrderFix()Z
    .registers 3

    .line 154
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.view.flags.scroll_capture_target_z_order_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist scrollFeedbackApi()Z
    .registers 3

    .line 161
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.view.flags.scroll_feedback_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensitiveContentAppProtection()Z
    .registers 3

    .line 168
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.view.flags.sensitive_content_app_protection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensitiveContentAppProtectionApi()Z
    .registers 3

    .line 175
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.view.flags.sensitive_content_app_protection_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensitiveContentPrematureProtectionRemovedFix()Z
    .registers 3

    .line 182
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.view.flags.sensitive_content_premature_protection_removed_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setFrameRateCallback()Z
    .registers 3

    .line 189
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.view.flags.set_frame_rate_callback"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist surfaceViewGetSurfacePackage()Z
    .registers 3

    .line 196
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.view.flags.surface_view_get_surface_package"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist surfaceViewSetCompositionOrder()Z
    .registers 3

    .line 203
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.view.flags.surface_view_set_composition_order"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist toolkitFrameRateBySizeReadOnly()Z
    .registers 3

    .line 210
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.view.flags.toolkit_frame_rate_by_size_read_only"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist toolkitFrameRateDebug()Z
    .registers 3

    .line 217
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.view.flags.toolkit_frame_rate_debug"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist toolkitFrameRateTouchBoost25q1()Z
    .registers 3

    .line 224
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.view.flags.toolkit_frame_rate_touch_boost_25q1"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist toolkitInitialTouchBoost()Z
    .registers 3

    .line 231
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.view.flags.toolkit_initial_touch_boost"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist toolkitMetricsForFrameRateDecision()Z
    .registers 3

    .line 238
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.view.flags.toolkit_metrics_for_frame_rate_decision"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist toolkitSetFrameRate()Z
    .registers 3

    .line 245
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.view.flags.toolkit_set_frame_rate"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist toolkitSetFrameRateReadOnly()Z
    .registers 3

    .line 252
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.view.flags.toolkit_set_frame_rate_read_only"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist toolkitViewgroupSetRequestedFrameRateApi()Z
    .registers 3

    .line 259
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.view.flags.toolkit_viewgroup_set_requested_frame_rate_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useRefactoredRoundScrollbar()Z
    .registers 3

    .line 266
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.view.flags.use_refactored_round_scrollbar"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useViewBasedRotaryEncoderScrollHaptics()Z
    .registers 3

    .line 273
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.view.flags.use_view_based_rotary_encoder_scroll_haptics"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist viewVelocityApi()Z
    .registers 3

    .line 280
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.view.flags.view_velocity_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
