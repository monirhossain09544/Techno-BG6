.class public Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/FeatureFlags;",
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
    .registers 73
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 584
    new-instance v1, Ljava/util/HashSet;

    const-string v69, "com.android.graphics.surfaceflinger.flags.window_blur_kawase2_fix_aliasing"

    const-string v70, ""

    const-string v2, "com.android.graphics.surfaceflinger.flags.add_first_vsync_to_tracker"

    const-string v3, "com.android.graphics.surfaceflinger.flags.adpf_gpu_sf"

    const-string v4, "com.android.graphics.surfaceflinger.flags.anchor_list"

    const-string v5, "com.android.graphics.surfaceflinger.flags.arr_setframerate_api"

    const-string v6, "com.android.graphics.surfaceflinger.flags.arr_setframerate_gte_enum"

    const-string v7, "com.android.graphics.surfaceflinger.flags.arr_surfacecontrol_setframerate_api"

    const-string v8, "com.android.graphics.surfaceflinger.flags.begone_bright_hlg"

    const-string v9, "com.android.graphics.surfaceflinger.flags.buffer_stuffing_fix"

    const-string v10, "com.android.graphics.surfaceflinger.flags.cache_when_source_crop_layer_only_moved"

    const-string v11, "com.android.graphics.surfaceflinger.flags.connected_display"

    const-string v12, "com.android.graphics.surfaceflinger.flags.connected_display_hdr_v2"

    const-string v13, "com.android.graphics.surfaceflinger.flags.correct_dpi_with_display_size"

    const-string v14, "com.android.graphics.surfaceflinger.flags.deprecate_frame_tracker"

    const-string v15, "com.android.graphics.surfaceflinger.flags.deprecate_vsync_sf"

    const-string v16, "com.android.graphics.surfaceflinger.flags.disable_synthetic_vsync_for_performance"

    const-string v17, "com.android.graphics.surfaceflinger.flags.disable_transparent_region_hint"

    const-string v18, "com.android.graphics.surfaceflinger.flags.display_command_modeset"

    const-string v19, "com.android.graphics.surfaceflinger.flags.enable_layer_command_batching"

    const-string v20, "com.android.graphics.surfaceflinger.flags.enable_small_area_detection"

    const-string v21, "com.android.graphics.surfaceflinger.flags.filter_refresh_rates_within_config_group"

    const-string v22, "com.android.graphics.surfaceflinger.flags.flush_buffer_slots_to_uncache"

    const-string v23, "com.android.graphics.surfaceflinger.flags.follower_arbitrary_refresh_rate_selection"

    const-string v24, "com.android.graphics.surfaceflinger.flags.follower_display_backpressure"

    const-string v25, "com.android.graphics.surfaceflinger.flags.force_compile_graphite_renderengine"

    const-string v26, "com.android.graphics.surfaceflinger.flags.force_slower_follower_gpu_composition"

    const-string v27, "com.android.graphics.surfaceflinger.flags.fp16_client_target"

    const-string v28, "com.android.graphics.surfaceflinger.flags.frame_rate_category_mrr"

    const-string v29, "com.android.graphics.surfaceflinger.flags.frontend_caching_v0"

    const-string v30, "com.android.graphics.surfaceflinger.flags.game_default_frame_rate"

    const-string v31, "com.android.graphics.surfaceflinger.flags.graphite_renderengine"

    const-string v32, "com.android.graphics.surfaceflinger.flags.graphite_renderengine_desktop_rollout"

    const-string v33, "com.android.graphics.surfaceflinger.flags.graphite_renderengine_preview_rollout"

    const-string v34, "com.android.graphics.surfaceflinger.flags.hdcp_level_hal"

    const-string v35, "com.android.graphics.surfaceflinger.flags.hdcp_negotiation"

    const-string v36, "com.android.graphics.surfaceflinger.flags.hotplug2"

    const-string v37, "com.android.graphics.surfaceflinger.flags.increase_missed_frame_jank_threshold"

    const-string v38, "com.android.graphics.surfaceflinger.flags.local_tonemap_screenshots"

    const-string v39, "com.android.graphics.surfaceflinger.flags.md_degrade_hdr"

    const-string v40, "com.android.graphics.surfaceflinger.flags.modeset_state_machine"

    const-string v41, "com.android.graphics.surfaceflinger.flags.monitor_buffer_fences"

    const-string v42, "com.android.graphics.surfaceflinger.flags.multithreaded_present"

    const-string v43, "com.android.graphics.surfaceflinger.flags.no_vsyncs_on_screen_off"

    const-string v44, "com.android.graphics.surfaceflinger.flags.offload_gpu_composition"

    const-string v45, "com.android.graphics.surfaceflinger.flags.pacesetter_selection"

    const-string v46, "com.android.graphics.surfaceflinger.flags.parse_edid_version_and_input_type"

    const-string v47, "com.android.graphics.surfaceflinger.flags.protected_if_client"

    const-string v48, "com.android.graphics.surfaceflinger.flags.readback_screenshot"

    const-string v49, "com.android.graphics.surfaceflinger.flags.refresh_rate_overlay_on_external_display"

    const-string v50, "com.android.graphics.surfaceflinger.flags.renderable_buffer_usage"

    const-string v51, "com.android.graphics.surfaceflinger.flags.reset_model_flushes_fence"

    const-string v52, "com.android.graphics.surfaceflinger.flags.restore_blur_step"

    const-string v53, "com.android.graphics.surfaceflinger.flags.resync_on_tx"

    const-string v54, "com.android.graphics.surfaceflinger.flags.screenshot_fence_preservation"

    const-string v55, "com.android.graphics.surfaceflinger.flags.set_client_drawn_corner_radii"

    const-string v56, "com.android.graphics.surfaceflinger.flags.shader_disk_cache"

    const-string v57, "com.android.graphics.surfaceflinger.flags.skip_invisible_windows_in_input"

    const-string v58, "com.android.graphics.surfaceflinger.flags.stable_edid_ids"

    const-string v59, "com.android.graphics.surfaceflinger.flags.stop_layer"

    const-string v60, "com.android.graphics.surfaceflinger.flags.supported_refresh_rate_update"

    const-string v61, "com.android.graphics.surfaceflinger.flags.synced_resolution_switch"

    const-string v62, "com.android.graphics.surfaceflinger.flags.true_hdr_screenshots"

    const-string v63, "com.android.graphics.surfaceflinger.flags.use_at_least_60_for_min_vote"

    const-string v64, "com.android.graphics.surfaceflinger.flags.use_known_refresh_rate_for_fps_consistency"

    const-string v65, "com.android.graphics.surfaceflinger.flags.vsync_predictor_predicts_within_threshold"

    const-string v66, "com.android.graphics.surfaceflinger.flags.vulkan_renderengine"

    const-string v67, "com.android.graphics.surfaceflinger.flags.wb_virtualdisplay2"

    const-string v68, "com.android.graphics.surfaceflinger.flags.window_blur_kawase2"

    filled-new-array/range {v2 .. v70}, [Ljava/lang/String;

    move-result-object v2

    .line 585
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 17
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 504
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist addFirstVsyncToTracker()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.add_first_vsync_to_tracker"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfGpuSf()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.adpf_gpu_sf"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist anchorList()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.anchor_list"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist arrSetframerateApi()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.arr_setframerate_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist arrSetframerateGteEnum()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.arr_setframerate_gte_enum"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist arrSurfacecontrolSetframerateApi()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.arr_surfacecontrol_setframerate_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist begoneBrightHlg()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.begone_bright_hlg"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist bufferStuffingFix()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.buffer_stuffing_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cacheWhenSourceCropLayerOnlyMoved()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.cache_when_source_crop_layer_only_moved"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist connectedDisplay()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.connected_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist connectedDisplayHdrV2()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.connected_display_hdr_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist correctDpiWithDisplaySize()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.correct_dpi_with_display_size"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deprecateFrameTracker()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.deprecate_frame_tracker"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deprecateVsyncSf()Z
    .registers 3

    .line 112
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.deprecate_vsync_sf"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disableSyntheticVsyncForPerformance()Z
    .registers 3

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.disable_synthetic_vsync_for_performance"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disableTransparentRegionHint()Z
    .registers 3

    .line 126
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.disable_transparent_region_hint"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist displayCommandModeset()Z
    .registers 3

    .line 133
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.display_command_modeset"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableLayerCommandBatching()Z
    .registers 3

    .line 140
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.enable_layer_command_batching"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableSmallAreaDetection()Z
    .registers 3

    .line 147
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.enable_small_area_detection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist filterRefreshRatesWithinConfigGroup()Z
    .registers 3

    .line 154
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.filter_refresh_rates_within_config_group"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist flushBufferSlotsToUncache()Z
    .registers 3

    .line 161
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.flush_buffer_slots_to_uncache"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist followerArbitraryRefreshRateSelection()Z
    .registers 3

    .line 168
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.follower_arbitrary_refresh_rate_selection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist followerDisplayBackpressure()Z
    .registers 3

    .line 175
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.follower_display_backpressure"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist forceCompileGraphiteRenderengine()Z
    .registers 3

    .line 182
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.force_compile_graphite_renderengine"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist forceSlowerFollowerGpuComposition()Z
    .registers 3

    .line 189
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.force_slower_follower_gpu_composition"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fp16ClientTarget()Z
    .registers 3

    .line 196
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.fp16_client_target"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist frameRateCategoryMrr()Z
    .registers 3

    .line 203
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.frame_rate_category_mrr"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist frontendCachingV0()Z
    .registers 3

    .line 210
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.frontend_caching_v0"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist gameDefaultFrameRate()Z
    .registers 3

    .line 217
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.game_default_frame_rate"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 70
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 512
    const-string v67, "com.android.graphics.surfaceflinger.flags.window_blur_kawase2"

    const-string v68, "com.android.graphics.surfaceflinger.flags.window_blur_kawase2_fix_aliasing"

    const-string v1, "com.android.graphics.surfaceflinger.flags.add_first_vsync_to_tracker"

    const-string v2, "com.android.graphics.surfaceflinger.flags.adpf_gpu_sf"

    const-string v3, "com.android.graphics.surfaceflinger.flags.anchor_list"

    const-string v4, "com.android.graphics.surfaceflinger.flags.arr_setframerate_api"

    const-string v5, "com.android.graphics.surfaceflinger.flags.arr_setframerate_gte_enum"

    const-string v6, "com.android.graphics.surfaceflinger.flags.arr_surfacecontrol_setframerate_api"

    const-string v7, "com.android.graphics.surfaceflinger.flags.begone_bright_hlg"

    const-string v8, "com.android.graphics.surfaceflinger.flags.buffer_stuffing_fix"

    const-string v9, "com.android.graphics.surfaceflinger.flags.cache_when_source_crop_layer_only_moved"

    const-string v10, "com.android.graphics.surfaceflinger.flags.connected_display"

    const-string v11, "com.android.graphics.surfaceflinger.flags.connected_display_hdr_v2"

    const-string v12, "com.android.graphics.surfaceflinger.flags.correct_dpi_with_display_size"

    const-string v13, "com.android.graphics.surfaceflinger.flags.deprecate_frame_tracker"

    const-string v14, "com.android.graphics.surfaceflinger.flags.deprecate_vsync_sf"

    const-string v15, "com.android.graphics.surfaceflinger.flags.disable_synthetic_vsync_for_performance"

    const-string v16, "com.android.graphics.surfaceflinger.flags.disable_transparent_region_hint"

    const-string v17, "com.android.graphics.surfaceflinger.flags.display_command_modeset"

    const-string v18, "com.android.graphics.surfaceflinger.flags.enable_layer_command_batching"

    const-string v19, "com.android.graphics.surfaceflinger.flags.enable_small_area_detection"

    const-string v20, "com.android.graphics.surfaceflinger.flags.filter_refresh_rates_within_config_group"

    const-string v21, "com.android.graphics.surfaceflinger.flags.flush_buffer_slots_to_uncache"

    const-string v22, "com.android.graphics.surfaceflinger.flags.follower_arbitrary_refresh_rate_selection"

    const-string v23, "com.android.graphics.surfaceflinger.flags.follower_display_backpressure"

    const-string v24, "com.android.graphics.surfaceflinger.flags.force_compile_graphite_renderengine"

    const-string v25, "com.android.graphics.surfaceflinger.flags.force_slower_follower_gpu_composition"

    const-string v26, "com.android.graphics.surfaceflinger.flags.fp16_client_target"

    const-string v27, "com.android.graphics.surfaceflinger.flags.frame_rate_category_mrr"

    const-string v28, "com.android.graphics.surfaceflinger.flags.frontend_caching_v0"

    const-string v29, "com.android.graphics.surfaceflinger.flags.game_default_frame_rate"

    const-string v30, "com.android.graphics.surfaceflinger.flags.graphite_renderengine"

    const-string v31, "com.android.graphics.surfaceflinger.flags.graphite_renderengine_desktop_rollout"

    const-string v32, "com.android.graphics.surfaceflinger.flags.graphite_renderengine_preview_rollout"

    const-string v33, "com.android.graphics.surfaceflinger.flags.hdcp_level_hal"

    const-string v34, "com.android.graphics.surfaceflinger.flags.hdcp_negotiation"

    const-string v35, "com.android.graphics.surfaceflinger.flags.hotplug2"

    const-string v36, "com.android.graphics.surfaceflinger.flags.increase_missed_frame_jank_threshold"

    const-string v37, "com.android.graphics.surfaceflinger.flags.local_tonemap_screenshots"

    const-string v38, "com.android.graphics.surfaceflinger.flags.md_degrade_hdr"

    const-string v39, "com.android.graphics.surfaceflinger.flags.modeset_state_machine"

    const-string v40, "com.android.graphics.surfaceflinger.flags.monitor_buffer_fences"

    const-string v41, "com.android.graphics.surfaceflinger.flags.multithreaded_present"

    const-string v42, "com.android.graphics.surfaceflinger.flags.no_vsyncs_on_screen_off"

    const-string v43, "com.android.graphics.surfaceflinger.flags.offload_gpu_composition"

    const-string v44, "com.android.graphics.surfaceflinger.flags.pacesetter_selection"

    const-string v45, "com.android.graphics.surfaceflinger.flags.parse_edid_version_and_input_type"

    const-string v46, "com.android.graphics.surfaceflinger.flags.protected_if_client"

    const-string v47, "com.android.graphics.surfaceflinger.flags.readback_screenshot"

    const-string v48, "com.android.graphics.surfaceflinger.flags.refresh_rate_overlay_on_external_display"

    const-string v49, "com.android.graphics.surfaceflinger.flags.renderable_buffer_usage"

    const-string v50, "com.android.graphics.surfaceflinger.flags.reset_model_flushes_fence"

    const-string v51, "com.android.graphics.surfaceflinger.flags.restore_blur_step"

    const-string v52, "com.android.graphics.surfaceflinger.flags.resync_on_tx"

    const-string v53, "com.android.graphics.surfaceflinger.flags.screenshot_fence_preservation"

    const-string v54, "com.android.graphics.surfaceflinger.flags.set_client_drawn_corner_radii"

    const-string v55, "com.android.graphics.surfaceflinger.flags.shader_disk_cache"

    const-string v56, "com.android.graphics.surfaceflinger.flags.skip_invisible_windows_in_input"

    const-string v57, "com.android.graphics.surfaceflinger.flags.stable_edid_ids"

    const-string v58, "com.android.graphics.surfaceflinger.flags.stop_layer"

    const-string v59, "com.android.graphics.surfaceflinger.flags.supported_refresh_rate_update"

    const-string v60, "com.android.graphics.surfaceflinger.flags.synced_resolution_switch"

    const-string v61, "com.android.graphics.surfaceflinger.flags.true_hdr_screenshots"

    const-string v62, "com.android.graphics.surfaceflinger.flags.use_at_least_60_for_min_vote"

    const-string v63, "com.android.graphics.surfaceflinger.flags.use_known_refresh_rate_for_fps_consistency"

    const-string v64, "com.android.graphics.surfaceflinger.flags.vsync_predictor_predicts_within_threshold"

    const-string v65, "com.android.graphics.surfaceflinger.flags.vulkan_renderengine"

    const-string v66, "com.android.graphics.surfaceflinger.flags.wb_virtualdisplay2"

    filled-new-array/range {v1 .. v68}, [Ljava/lang/String;

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
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist graphiteRenderengine()Z
    .registers 3

    .line 224
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.graphite_renderengine"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist graphiteRenderengineDesktopRollout()Z
    .registers 3

    .line 231
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.graphite_renderengine_desktop_rollout"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist graphiteRenderenginePreviewRollout()Z
    .registers 3

    .line 238
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.graphite_renderengine_preview_rollout"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hdcpLevelHal()Z
    .registers 3

    .line 245
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.hdcp_level_hal"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hdcpNegotiation()Z
    .registers 3

    .line 252
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.hdcp_negotiation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hotplug2()Z
    .registers 3

    .line 259
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.hotplug2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist increaseMissedFrameJankThreshold()Z
    .registers 3

    .line 266
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.increase_missed_frame_jank_threshold"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 495
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 496
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 497
    const/4 p1, 0x1

    return p1

    .line 499
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist localTonemapScreenshots()Z
    .registers 3

    .line 273
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.local_tonemap_screenshots"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist mdDegradeHdr()Z
    .registers 3

    .line 280
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.md_degrade_hdr"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist modesetStateMachine()Z
    .registers 3

    .line 287
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.modeset_state_machine"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist monitorBufferFences()Z
    .registers 3

    .line 294
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.monitor_buffer_fences"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist multithreadedPresent()Z
    .registers 3

    .line 301
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.multithreaded_present"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist noVsyncsOnScreenOff()Z
    .registers 3

    .line 308
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.no_vsyncs_on_screen_off"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist offloadGpuComposition()Z
    .registers 3

    .line 315
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.offload_gpu_composition"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist pacesetterSelection()Z
    .registers 3

    .line 322
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.pacesetter_selection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist parseEdidVersionAndInputType()Z
    .registers 3

    .line 329
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.parse_edid_version_and_input_type"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist protectedIfClient()Z
    .registers 3

    .line 336
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.protected_if_client"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist readbackScreenshot()Z
    .registers 3

    .line 343
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.readback_screenshot"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist refreshRateOverlayOnExternalDisplay()Z
    .registers 3

    .line 350
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.refresh_rate_overlay_on_external_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist renderableBufferUsage()Z
    .registers 3

    .line 357
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.renderable_buffer_usage"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist resetModelFlushesFence()Z
    .registers 3

    .line 364
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.reset_model_flushes_fence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist restoreBlurStep()Z
    .registers 3

    .line 371
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.restore_blur_step"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist resyncOnTx()Z
    .registers 3

    .line 378
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.resync_on_tx"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist screenshotFencePreservation()Z
    .registers 3

    .line 385
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.screenshot_fence_preservation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setClientDrawnCornerRadii()Z
    .registers 3

    .line 392
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.set_client_drawn_corner_radii"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist shaderDiskCache()Z
    .registers 3

    .line 399
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.shader_disk_cache"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist skipInvisibleWindowsInInput()Z
    .registers 3

    .line 406
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.skip_invisible_windows_in_input"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist stableEdidIds()Z
    .registers 3

    .line 413
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.stable_edid_ids"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist stopLayer()Z
    .registers 3

    .line 420
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.stop_layer"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportedRefreshRateUpdate()Z
    .registers 3

    .line 427
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.supported_refresh_rate_update"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist syncedResolutionSwitch()Z
    .registers 3

    .line 434
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.synced_resolution_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist trueHdrScreenshots()Z
    .registers 3

    .line 441
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.true_hdr_screenshots"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useAtLeast60ForMinVote()Z
    .registers 3

    .line 448
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.use_at_least_60_for_min_vote"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useKnownRefreshRateForFpsConsistency()Z
    .registers 3

    .line 455
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.use_known_refresh_rate_for_fps_consistency"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist vsyncPredictorPredictsWithinThreshold()Z
    .registers 3

    .line 462
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.vsync_predictor_predicts_within_threshold"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist vulkanRenderengine()Z
    .registers 3

    .line 469
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.vulkan_renderengine"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist wbVirtualdisplay2()Z
    .registers 3

    .line 476
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.wb_virtualdisplay2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist windowBlurKawase2()Z
    .registers 3

    .line 483
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.window_blur_kawase2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist windowBlurKawase2FixAliasing()Z
    .registers 3

    .line 490
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.window_blur_kawase2_fix_aliasing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
