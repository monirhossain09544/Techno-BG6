.class public Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/app/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/app/FeatureFlags;",
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
    .registers 94
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/app/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 752
    new-instance v1, Ljava/util/HashSet;

    const-string v90, "android.app.use_sticky_bcast_cache"

    const-string v91, ""

    const-string v2, "android.app.always_rebind_user_set_wallpaper"

    const-string v3, "android.app.api_metric_style"

    const-string v4, "android.app.api_rich_ongoing"

    const-string v5, "android.app.api_rich_ongoing_permission"

    const-string v6, "android.app.api_tvextender"

    const-string v7, "android.app.app_exit_info_debug_memory_api"

    const-string v8, "android.app.app_restrictions_api"

    const-string v9, "android.app.app_start_info"

    const-string v10, "android.app.app_start_info_component"

    const-string v11, "android.app.background_install_control_callback_api"

    const-string v12, "android.app.backup_restore_logging"

    const-string v13, "android.app.bic_client"

    const-string v14, "android.app.category_voicemail"

    const-string v15, "android.app.clean_up_spans_and_new_lines"

    const-string v16, "android.app.compact_heads_up_notification_reply"

    const-string v17, "android.app.device_unlock_listener"

    const-string v18, "android.app.early_render_thread_priority_boost"

    const-string v19, "android.app.enable_connected_displays_wallpaper"

    const-string v20, "android.app.enable_current_mode_type_binder_cache"

    const-string v21, "android.app.enable_night_mode_binder_cache"

    const-string v22, "android.app.enable_pip_ui_state_callback_on_entering"

    const-string v23, "android.app.enable_process_observer_broadcast_on_process_started"

    const-string v24, "android.app.enable_tv_implicit_enter_pip_restriction"

    const-string v25, "android.app.enable_wallpaper_transform_surface_control_command"

    const-string v26, "android.app.enforce_pic_testmode_protocol"

    const-string v27, "android.app.evenly_divided_call_style_action_layout"

    const-string v28, "android.app.fix_contrast_and_force_invert_state_for_multi_user"

    const-string v29, "android.app.fix_wallpaper_crops_on_restore"

    const-string v30, "android.app.get_binding_uid_importance"

    const-string v31, "android.app.get_free_memory"

    const-string v32, "android.app.get_optimization_info_from_app_process"

    const-string v33, "android.app.hide_status_bar_notification"

    const-string v34, "android.app.include_anr_subreason"

    const-string v35, "android.app.introduce_new_service_ontimeout_callback"

    const-string v36, "android.app.jank_perceptible_narrow"

    const-string v37, "android.app.jank_perceptible_narrow_holdback"

    const-string v38, "android.app.lifetime_extension_refactor"

    const-string v39, "android.app.live_wallpaper_content_handling"

    const-string v40, "android.app.metric_style_unit_in_label"

    const-string v41, "android.app.modes_api"

    const-string v42, "android.app.modes_ui"

    const-string v43, "android.app.modes_ui_dnd_slice"

    const-string v44, "android.app.modes_ui_dnd_tile"

    const-string v45, "android.app.modes_ui_tile_reactivates_last"

    const-string v46, "android.app.nm_binder_perf_cache_channels"

    const-string v47, "android.app.nm_binder_perf_get_apps_with_channels"

    const-string v48, "android.app.nm_binder_perf_permission_check"

    const-string v49, "android.app.nm_binder_perf_throttle_notify"

    const-string v50, "android.app.nm_collapsed_lines"

    const-string v51, "android.app.nm_contextual_display"

    const-string v52, "android.app.nm_highlights"

    const-string v53, "android.app.nm_insights"

    const-string v54, "android.app.nm_summarization"

    const-string v55, "android.app.nm_summarization_all"

    const-string v56, "android.app.nm_summarization_onboarding_ui"

    const-string v57, "android.app.nm_summarization_ui"

    const-string v58, "android.app.no_sbnholder"

    const-string v59, "android.app.notification_channel_vibration_effect_api"

    const-string v60, "android.app.notification_classification_ui"

    const-string v61, "android.app.notification_expansion_optional"

    const-string v62, "android.app.notification_is_animated_action_api"

    const-string v63, "android.app.notification_no_custom_view_conversations"

    const-string v64, "android.app.notification_top_line_margin_fix"

    const-string v65, "android.app.notification_update_shedding_allow_progress_completion"

    const-string v66, "android.app.notifications_redesign_app_icons"

    const-string v67, "android.app.notifications_redesign_fonts"

    const-string v68, "android.app.notifications_redesign_templates"

    const-string v69, "android.app.notifications_redesign_themed_app_icons"

    const-string v70, "android.app.notify_keyguard_events"

    const-string v71, "android.app.on_restart_activity_lifecycle_callback"

    const-string v72, "android.app.opt_in_rich_ongoing"

    const-string v73, "android.app.pic_test_mode"

    const-string v74, "android.app.pinner_service_client_api"

    const-string v75, "android.app.remove_remote_views"

    const-string v76, "android.app.report_postgc_memory_metrics"

    const-string v77, "android.app.restrict_audio_attributes_alarm"

    const-string v78, "android.app.restrict_audio_attributes_call"

    const-string v79, "android.app.restrict_audio_attributes_media"

    const-string v80, "android.app.sdk_context_in_app_process"

    const-string v81, "android.app.sharedpreferences_skip_fsync"

    const-string v82, "android.app.skip_bg_mem_trim_on_fg_app"

    const-string v83, "android.app.skip_ref_content_provider"

    const-string v84, "android.app.system_dialer_phone_call_fgs_grant"

    const-string v85, "android.app.system_terms_of_address_enabled"

    const-string v86, "android.app.ui_rich_ongoing"

    const-string v87, "android.app.uid_importance_listener_for_uids"

    const-string v88, "android.app.update_recents_from_system"

    const-string v89, "android.app.use_app_info_not_launched"

    filled-new-array/range {v2 .. v91}, [Ljava/lang/String;

    move-result-object v2

    .line 753
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 17
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 651
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist alwaysRebindUserSetWallpaper()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.app.always_rebind_user_set_wallpaper"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist apiMetricStyle()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda69;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda69;-><init>()V

    const-string v1, "android.app.api_metric_style"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist apiRichOngoing()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.app.api_rich_ongoing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist apiRichOngoingPermission()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.app.api_rich_ongoing_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist apiTvextender()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.app.api_tvextender"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appExitInfoDebugMemoryApi()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda81;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda81;-><init>()V

    const-string v1, "android.app.app_exit_info_debug_memory_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appRestrictionsApi()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.app.app_restrictions_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appStartInfo()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda84;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda84;-><init>()V

    const-string v1, "android.app.app_start_info"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appStartInfoComponent()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.app.app_start_info_component"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist backgroundInstallControlCallbackApi()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.app.background_install_control_callback_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist backupRestoreLogging()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.app.backup_restore_logging"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist bicClient()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.app.bic_client"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist categoryVoicemail()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "android.app.category_voicemail"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cleanUpSpansAndNewLines()Z
    .registers 3

    .line 112
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda72;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda72;-><init>()V

    const-string v1, "android.app.clean_up_spans_and_new_lines"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist compactHeadsUpNotificationReply()Z
    .registers 3

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda70;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda70;-><init>()V

    const-string v1, "android.app.compact_heads_up_notification_reply"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceUnlockListener()Z
    .registers 3

    .line 126
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.app.device_unlock_listener"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist earlyRenderThreadPriorityBoost()Z
    .registers 3

    .line 133
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda64;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda64;-><init>()V

    const-string v1, "android.app.early_render_thread_priority_boost"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableConnectedDisplaysWallpaper()Z
    .registers 3

    .line 140
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda83;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda83;-><init>()V

    const-string v1, "android.app.enable_connected_displays_wallpaper"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCurrentModeTypeBinderCache()Z
    .registers 3

    .line 147
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.app.enable_current_mode_type_binder_cache"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableNightModeBinderCache()Z
    .registers 3

    .line 154
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "android.app.enable_night_mode_binder_cache"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePipUiStateCallbackOnEntering()Z
    .registers 3

    .line 161
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "android.app.enable_pip_ui_state_callback_on_entering"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableProcessObserverBroadcastOnProcessStarted()Z
    .registers 3

    .line 168
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "android.app.enable_process_observer_broadcast_on_process_started"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTvImplicitEnterPipRestriction()Z
    .registers 3

    .line 175
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.app.enable_tv_implicit_enter_pip_restriction"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableWallpaperTransformSurfaceControlCommand()Z
    .registers 3

    .line 182
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.app.enable_wallpaper_transform_surface_control_command"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enforcePicTestmodeProtocol()Z
    .registers 3

    .line 189
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda62;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda62;-><init>()V

    const-string v1, "android.app.enforce_pic_testmode_protocol"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist evenlyDividedCallStyleActionLayout()Z
    .registers 3

    .line 196
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda59;-><init>()V

    const-string v1, "android.app.evenly_divided_call_style_action_layout"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixContrastAndForceInvertStateForMultiUser()Z
    .registers 3

    .line 203
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.app.fix_contrast_and_force_invert_state_for_multi_user"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixWallpaperCropsOnRestore()Z
    .registers 3

    .line 210
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.app.fix_wallpaper_crops_on_restore"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getBindingUidImportance()Z
    .registers 3

    .line 217
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.app.get_binding_uid_importance"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 91
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 659
    const-string v88, "android.app.use_app_info_not_launched"

    const-string v89, "android.app.use_sticky_bcast_cache"

    const-string v1, "android.app.always_rebind_user_set_wallpaper"

    const-string v2, "android.app.api_metric_style"

    const-string v3, "android.app.api_rich_ongoing"

    const-string v4, "android.app.api_rich_ongoing_permission"

    const-string v5, "android.app.api_tvextender"

    const-string v6, "android.app.app_exit_info_debug_memory_api"

    const-string v7, "android.app.app_restrictions_api"

    const-string v8, "android.app.app_start_info"

    const-string v9, "android.app.app_start_info_component"

    const-string v10, "android.app.background_install_control_callback_api"

    const-string v11, "android.app.backup_restore_logging"

    const-string v12, "android.app.bic_client"

    const-string v13, "android.app.category_voicemail"

    const-string v14, "android.app.clean_up_spans_and_new_lines"

    const-string v15, "android.app.compact_heads_up_notification_reply"

    const-string v16, "android.app.device_unlock_listener"

    const-string v17, "android.app.early_render_thread_priority_boost"

    const-string v18, "android.app.enable_connected_displays_wallpaper"

    const-string v19, "android.app.enable_current_mode_type_binder_cache"

    const-string v20, "android.app.enable_night_mode_binder_cache"

    const-string v21, "android.app.enable_pip_ui_state_callback_on_entering"

    const-string v22, "android.app.enable_process_observer_broadcast_on_process_started"

    const-string v23, "android.app.enable_tv_implicit_enter_pip_restriction"

    const-string v24, "android.app.enable_wallpaper_transform_surface_control_command"

    const-string v25, "android.app.enforce_pic_testmode_protocol"

    const-string v26, "android.app.evenly_divided_call_style_action_layout"

    const-string v27, "android.app.fix_contrast_and_force_invert_state_for_multi_user"

    const-string v28, "android.app.fix_wallpaper_crops_on_restore"

    const-string v29, "android.app.get_binding_uid_importance"

    const-string v30, "android.app.get_free_memory"

    const-string v31, "android.app.get_optimization_info_from_app_process"

    const-string v32, "android.app.hide_status_bar_notification"

    const-string v33, "android.app.include_anr_subreason"

    const-string v34, "android.app.introduce_new_service_ontimeout_callback"

    const-string v35, "android.app.jank_perceptible_narrow"

    const-string v36, "android.app.jank_perceptible_narrow_holdback"

    const-string v37, "android.app.lifetime_extension_refactor"

    const-string v38, "android.app.live_wallpaper_content_handling"

    const-string v39, "android.app.metric_style_unit_in_label"

    const-string v40, "android.app.modes_api"

    const-string v41, "android.app.modes_ui"

    const-string v42, "android.app.modes_ui_dnd_slice"

    const-string v43, "android.app.modes_ui_dnd_tile"

    const-string v44, "android.app.modes_ui_tile_reactivates_last"

    const-string v45, "android.app.nm_binder_perf_cache_channels"

    const-string v46, "android.app.nm_binder_perf_get_apps_with_channels"

    const-string v47, "android.app.nm_binder_perf_permission_check"

    const-string v48, "android.app.nm_binder_perf_throttle_notify"

    const-string v49, "android.app.nm_collapsed_lines"

    const-string v50, "android.app.nm_contextual_display"

    const-string v51, "android.app.nm_highlights"

    const-string v52, "android.app.nm_insights"

    const-string v53, "android.app.nm_summarization"

    const-string v54, "android.app.nm_summarization_all"

    const-string v55, "android.app.nm_summarization_onboarding_ui"

    const-string v56, "android.app.nm_summarization_ui"

    const-string v57, "android.app.no_sbnholder"

    const-string v58, "android.app.notification_channel_vibration_effect_api"

    const-string v59, "android.app.notification_classification_ui"

    const-string v60, "android.app.notification_expansion_optional"

    const-string v61, "android.app.notification_is_animated_action_api"

    const-string v62, "android.app.notification_no_custom_view_conversations"

    const-string v63, "android.app.notification_top_line_margin_fix"

    const-string v64, "android.app.notification_update_shedding_allow_progress_completion"

    const-string v65, "android.app.notifications_redesign_app_icons"

    const-string v66, "android.app.notifications_redesign_fonts"

    const-string v67, "android.app.notifications_redesign_templates"

    const-string v68, "android.app.notifications_redesign_themed_app_icons"

    const-string v69, "android.app.notify_keyguard_events"

    const-string v70, "android.app.on_restart_activity_lifecycle_callback"

    const-string v71, "android.app.opt_in_rich_ongoing"

    const-string v72, "android.app.pic_test_mode"

    const-string v73, "android.app.pinner_service_client_api"

    const-string v74, "android.app.remove_remote_views"

    const-string v75, "android.app.report_postgc_memory_metrics"

    const-string v76, "android.app.restrict_audio_attributes_alarm"

    const-string v77, "android.app.restrict_audio_attributes_call"

    const-string v78, "android.app.restrict_audio_attributes_media"

    const-string v79, "android.app.sdk_context_in_app_process"

    const-string v80, "android.app.sharedpreferences_skip_fsync"

    const-string v81, "android.app.skip_bg_mem_trim_on_fg_app"

    const-string v82, "android.app.skip_ref_content_provider"

    const-string v83, "android.app.system_dialer_phone_call_fgs_grant"

    const-string v84, "android.app.system_terms_of_address_enabled"

    const-string v85, "android.app.ui_rich_ongoing"

    const-string v86, "android.app.uid_importance_listener_for_uids"

    const-string v87, "android.app.update_recents_from_system"

    filled-new-array/range {v1 .. v89}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFreeMemory()Z
    .registers 3

    .line 224
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda71;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda71;-><init>()V

    const-string v1, "android.app.get_free_memory"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getOptimizationInfoFromAppProcess()Z
    .registers 3

    .line 231
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda79;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda79;-><init>()V

    const-string v1, "android.app.get_optimization_info_from_app_process"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/app/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 655
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist hideStatusBarNotification()Z
    .registers 3

    .line 238
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "android.app.hide_status_bar_notification"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist includeAnrSubreason()Z
    .registers 3

    .line 245
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "android.app.include_anr_subreason"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist introduceNewServiceOntimeoutCallback()Z
    .registers 3

    .line 252
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda67;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda67;-><init>()V

    const-string v1, "android.app.introduce_new_service_ontimeout_callback"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 642
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 643
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 644
    const/4 p1, 0x1

    return p1

    .line 646
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist jankPerceptibleNarrow()Z
    .registers 3

    .line 259
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda73;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda73;-><init>()V

    const-string v1, "android.app.jank_perceptible_narrow"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist jankPerceptibleNarrowHoldback()Z
    .registers 3

    .line 266
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "android.app.jank_perceptible_narrow_holdback"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist lifetimeExtensionRefactor()Z
    .registers 3

    .line 273
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "android.app.lifetime_extension_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist liveWallpaperContentHandling()Z
    .registers 3

    .line 280
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.app.live_wallpaper_content_handling"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist metricStyleUnitInLabel()Z
    .registers 3

    .line 287
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda78;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda78;-><init>()V

    const-string v1, "android.app.metric_style_unit_in_label"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist modesApi()Z
    .registers 3

    .line 294
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda85;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda85;-><init>()V

    const-string v1, "android.app.modes_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist modesUi()Z
    .registers 3

    .line 301
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda63;-><init>()V

    const-string v1, "android.app.modes_ui"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist modesUiDndSlice()Z
    .registers 3

    .line 308
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.app.modes_ui_dnd_slice"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist modesUiDndTile()Z
    .registers 3

    .line 315
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.app.modes_ui_dnd_tile"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist modesUiTileReactivatesLast()Z
    .registers 3

    .line 322
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda86;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda86;-><init>()V

    const-string v1, "android.app.modes_ui_tile_reactivates_last"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nmBinderPerfCacheChannels()Z
    .registers 3

    .line 329
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda60;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda60;-><init>()V

    const-string v1, "android.app.nm_binder_perf_cache_channels"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nmBinderPerfGetAppsWithChannels()Z
    .registers 3

    .line 336
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "android.app.nm_binder_perf_get_apps_with_channels"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nmBinderPerfPermissionCheck()Z
    .registers 3

    .line 343
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "android.app.nm_binder_perf_permission_check"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nmBinderPerfThrottleNotify()Z
    .registers 3

    .line 350
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda77;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda77;-><init>()V

    const-string v1, "android.app.nm_binder_perf_throttle_notify"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nmCollapsedLines()Z
    .registers 3

    .line 357
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda82;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda82;-><init>()V

    const-string v1, "android.app.nm_collapsed_lines"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nmContextualDisplay()Z
    .registers 3

    .line 364
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.app.nm_contextual_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nmHighlights()Z
    .registers 3

    .line 371
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.app.nm_highlights"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nmInsights()Z
    .registers 3

    .line 378
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.app.nm_insights"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nmSummarization()Z
    .registers 3

    .line 385
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "android.app.nm_summarization"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nmSummarizationAll()Z
    .registers 3

    .line 392
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "android.app.nm_summarization_all"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nmSummarizationOnboardingUi()Z
    .registers 3

    .line 399
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.app.nm_summarization_onboarding_ui"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nmSummarizationUi()Z
    .registers 3

    .line 406
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda66;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda66;-><init>()V

    const-string v1, "android.app.nm_summarization_ui"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist noSbnholder()Z
    .registers 3

    .line 413
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.app.no_sbnholder"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist notificationChannelVibrationEffectApi()Z
    .registers 3

    .line 420
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "android.app.notification_channel_vibration_effect_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist notificationClassificationUi()Z
    .registers 3

    .line 427
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.app.notification_classification_ui"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist notificationExpansionOptional()Z
    .registers 3

    .line 434
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "android.app.notification_expansion_optional"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist notificationIsAnimatedActionApi()Z
    .registers 3

    .line 441
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda61;-><init>()V

    const-string v1, "android.app.notification_is_animated_action_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist notificationNoCustomViewConversations()Z
    .registers 3

    .line 448
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda87;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda87;-><init>()V

    const-string v1, "android.app.notification_no_custom_view_conversations"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist notificationTopLineMarginFix()Z
    .registers 3

    .line 455
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "android.app.notification_top_line_margin_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist notificationUpdateSheddingAllowProgressCompletion()Z
    .registers 3

    .line 462
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.app.notification_update_shedding_allow_progress_completion"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist notificationsRedesignAppIcons()Z
    .registers 3

    .line 469
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.app.notifications_redesign_app_icons"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist notificationsRedesignFonts()Z
    .registers 3

    .line 476
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "android.app.notifications_redesign_fonts"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist notificationsRedesignTemplates()Z
    .registers 3

    .line 483
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda74;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda74;-><init>()V

    const-string v1, "android.app.notifications_redesign_templates"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist notificationsRedesignThemedAppIcons()Z
    .registers 3

    .line 490
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.app.notifications_redesign_themed_app_icons"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist notifyKeyguardEvents()Z
    .registers 3

    .line 497
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.app.notify_keyguard_events"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist onRestartActivityLifecycleCallback()Z
    .registers 3

    .line 504
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda88;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda88;-><init>()V

    const-string v1, "android.app.on_restart_activity_lifecycle_callback"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist optInRichOngoing()Z
    .registers 3

    .line 511
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.app.opt_in_rich_ongoing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist picTestMode()Z
    .registers 3

    .line 518
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "android.app.pic_test_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist pinnerServiceClientApi()Z
    .registers 3

    .line 525
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.app.pinner_service_client_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeRemoteViews()Z
    .registers 3

    .line 532
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda75;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda75;-><init>()V

    const-string v1, "android.app.remove_remote_views"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist reportPostgcMemoryMetrics()Z
    .registers 3

    .line 539
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "android.app.report_postgc_memory_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist restrictAudioAttributesAlarm()Z
    .registers 3

    .line 546
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "android.app.restrict_audio_attributes_alarm"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist restrictAudioAttributesCall()Z
    .registers 3

    .line 553
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.app.restrict_audio_attributes_call"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist restrictAudioAttributesMedia()Z
    .registers 3

    .line 560
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.app.restrict_audio_attributes_media"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sdkContextInAppProcess()Z
    .registers 3

    .line 567
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.app.sdk_context_in_app_process"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sharedpreferencesSkipFsync()Z
    .registers 3

    .line 574
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda65;-><init>()V

    const-string v1, "android.app.sharedpreferences_skip_fsync"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist skipBgMemTrimOnFgApp()Z
    .registers 3

    .line 581
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda68;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda68;-><init>()V

    const-string v1, "android.app.skip_bg_mem_trim_on_fg_app"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist skipRefContentProvider()Z
    .registers 3

    .line 588
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.app.skip_ref_content_provider"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist systemDialerPhoneCallFgsGrant()Z
    .registers 3

    .line 595
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.app.system_dialer_phone_call_fgs_grant"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist systemTermsOfAddressEnabled()Z
    .registers 3

    .line 602
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda76;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda76;-><init>()V

    const-string v1, "android.app.system_terms_of_address_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist uiRichOngoing()Z
    .registers 3

    .line 609
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda80;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda80;-><init>()V

    const-string v1, "android.app.ui_rich_ongoing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist uidImportanceListenerForUids()Z
    .registers 3

    .line 616
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.app.uid_importance_listener_for_uids"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist updateRecentsFromSystem()Z
    .registers 3

    .line 623
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "android.app.update_recents_from_system"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useAppInfoNotLaunched()Z
    .registers 3

    .line 630
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.app.use_app_info_not_launched"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useStickyBcastCache()Z
    .registers 3

    .line 637
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "android.app.use_sticky_bcast_cache"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
