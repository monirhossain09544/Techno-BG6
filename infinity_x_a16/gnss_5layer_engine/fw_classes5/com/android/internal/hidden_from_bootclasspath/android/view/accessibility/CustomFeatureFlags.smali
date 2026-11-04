.class public Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;",
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
            "Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance v1, Ljava/util/HashSet;

    const-string v39, "android.view.accessibility.tri_state_checked"

    const-string v40, ""

    const-string v2, "android.view.accessibility.a11y_character_in_window_api"

    const-string v3, "android.view.accessibility.a11y_expansion_state_api"

    const-string v4, "android.view.accessibility.a11y_is_required_api"

    const-string v5, "android.view.accessibility.a11y_is_visited_api"

    const-string v6, "android.view.accessibility.a11y_overlay_callbacks"

    const-string v7, "android.view.accessibility.a11y_selection_api"

    const-string v8, "android.view.accessibility.a11y_sequential_focus_starting_point"

    const-string v9, "android.view.accessibility.a11y_sort_direction_api"

    const-string v10, "android.view.accessibility.braille_display_hid"

    const-string v11, "android.view.accessibility.button_chooser_activity_bottom_margin_system_bar"

    const-string v12, "android.view.accessibility.collection_info_item_counts"

    const-string v13, "android.view.accessibility.copy_surface_control_for_window_screenshots"

    const-string v14, "android.view.accessibility.deprecate_accessibility_announcement_apis"

    const-string v15, "android.view.accessibility.deprecate_ani_label_for_apis"

    const-string v16, "android.view.accessibility.enable_refresh_window_info"

    const-string v17, "android.view.accessibility.enable_trusted_accessibility_service_api"

    const-string v18, "android.view.accessibility.enable_type_window_control"

    const-string v19, "android.view.accessibility.flash_notification_system_api"

    const-string v20, "android.view.accessibility.force_invert_color"

    const-string v21, "android.view.accessibility.global_action_media_play_pause"

    const-string v22, "android.view.accessibility.global_action_menu"

    const-string v23, "android.view.accessibility.granular_scrolling"

    const-string v24, "android.view.accessibility.ignore_unimportant_root"

    const-string v25, "android.view.accessibility.indeterminate_range_info"

    const-string v26, "android.view.accessibility.launcher_app_display_progress_update_on_visibility_change"

    const-string v27, "android.view.accessibility.light_bar_update_button_tint_on_nav_mode_change"

    const-string v28, "android.view.accessibility.motion_event_observing"

    const-string v29, "android.view.accessibility.navbar_flip_order_option"

    const-string v30, "android.view.accessibility.prevent_leaking_viewrootimpl"

    const-string v31, "android.view.accessibility.reduce_window_content_changed_event_throttle"

    const-string v32, "android.view.accessibility.remove_child_hover_check_for_touch_exploration"

    const-string v33, "android.view.accessibility.request_rectangle_with_source"

    const-string v34, "android.view.accessibility.skip_accessibility_warning_dialog_for_trusted_services"

    const-string v35, "android.view.accessibility.supplemental_description"

    const-string v36, "android.view.accessibility.support_multiple_labeledby"

    const-string v37, "android.view.accessibility.support_system_pinch_zoom_opt_out_apis"

    const-string v38, "android.view.accessibility.text_cursor_blink_interval"

    filled-new-array/range {v2 .. v40}, [Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

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
.method public blacklist a11yCharacterInWindowApi()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.view.accessibility.a11y_character_in_window_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist a11yExpansionStateApi()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.view.accessibility.a11y_expansion_state_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist a11yIsRequiredApi()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.view.accessibility.a11y_is_required_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist a11yIsVisitedApi()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.view.accessibility.a11y_is_visited_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist a11yOverlayCallbacks()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.view.accessibility.a11y_overlay_callbacks"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist a11ySelectionApi()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.view.accessibility.a11y_selection_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist a11ySequentialFocusStartingPoint()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.view.accessibility.a11y_sequential_focus_starting_point"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist a11ySortDirectionApi()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.view.accessibility.a11y_sort_direction_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist brailleDisplayHid()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.view.accessibility.braille_display_hid"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist buttonChooserActivityBottomMarginSystemBar()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.view.accessibility.button_chooser_activity_bottom_margin_system_bar"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist collectionInfoItemCounts()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.view.accessibility.collection_info_item_counts"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist copySurfaceControlForWindowScreenshots()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.view.accessibility.copy_surface_control_for_window_screenshots"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deprecateAccessibilityAnnouncementApis()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.view.accessibility.deprecate_accessibility_announcement_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deprecateAniLabelForApis()Z
    .registers 3

    .line 112
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.view.accessibility.deprecate_ani_label_for_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableRefreshWindowInfo()Z
    .registers 3

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.view.accessibility.enable_refresh_window_info"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTrustedAccessibilityServiceApi()Z
    .registers 3

    .line 126
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.view.accessibility.enable_trusted_accessibility_service_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTypeWindowControl()Z
    .registers 3

    .line 133
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.view.accessibility.enable_type_window_control"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist flashNotificationSystemApi()Z
    .registers 3

    .line 140
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.view.accessibility.flash_notification_system_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist forceInvertColor()Z
    .registers 3

    .line 147
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.view.accessibility.force_invert_color"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

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
    const-string v37, "android.view.accessibility.text_cursor_blink_interval"

    const-string v38, "android.view.accessibility.tri_state_checked"

    const-string v1, "android.view.accessibility.a11y_character_in_window_api"

    const-string v2, "android.view.accessibility.a11y_expansion_state_api"

    const-string v3, "android.view.accessibility.a11y_is_required_api"

    const-string v4, "android.view.accessibility.a11y_is_visited_api"

    const-string v5, "android.view.accessibility.a11y_overlay_callbacks"

    const-string v6, "android.view.accessibility.a11y_selection_api"

    const-string v7, "android.view.accessibility.a11y_sequential_focus_starting_point"

    const-string v8, "android.view.accessibility.a11y_sort_direction_api"

    const-string v9, "android.view.accessibility.braille_display_hid"

    const-string v10, "android.view.accessibility.button_chooser_activity_bottom_margin_system_bar"

    const-string v11, "android.view.accessibility.collection_info_item_counts"

    const-string v12, "android.view.accessibility.copy_surface_control_for_window_screenshots"

    const-string v13, "android.view.accessibility.deprecate_accessibility_announcement_apis"

    const-string v14, "android.view.accessibility.deprecate_ani_label_for_apis"

    const-string v15, "android.view.accessibility.enable_refresh_window_info"

    const-string v16, "android.view.accessibility.enable_trusted_accessibility_service_api"

    const-string v17, "android.view.accessibility.enable_type_window_control"

    const-string v18, "android.view.accessibility.flash_notification_system_api"

    const-string v19, "android.view.accessibility.force_invert_color"

    const-string v20, "android.view.accessibility.global_action_media_play_pause"

    const-string v21, "android.view.accessibility.global_action_menu"

    const-string v22, "android.view.accessibility.granular_scrolling"

    const-string v23, "android.view.accessibility.ignore_unimportant_root"

    const-string v24, "android.view.accessibility.indeterminate_range_info"

    const-string v25, "android.view.accessibility.launcher_app_display_progress_update_on_visibility_change"

    const-string v26, "android.view.accessibility.light_bar_update_button_tint_on_nav_mode_change"

    const-string v27, "android.view.accessibility.motion_event_observing"

    const-string v28, "android.view.accessibility.navbar_flip_order_option"

    const-string v29, "android.view.accessibility.prevent_leaking_viewrootimpl"

    const-string v30, "android.view.accessibility.reduce_window_content_changed_event_throttle"

    const-string v31, "android.view.accessibility.remove_child_hover_check_for_touch_exploration"

    const-string v32, "android.view.accessibility.request_rectangle_with_source"

    const-string v33, "android.view.accessibility.skip_accessibility_warning_dialog_for_trusted_services"

    const-string v34, "android.view.accessibility.supplemental_description"

    const-string v35, "android.view.accessibility.support_multiple_labeledby"

    const-string v36, "android.view.accessibility.support_system_pinch_zoom_opt_out_apis"

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
            "Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist globalActionMediaPlayPause()Z
    .registers 3

    .line 154
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.view.accessibility.global_action_media_play_pause"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist globalActionMenu()Z
    .registers 3

    .line 161
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.view.accessibility.global_action_menu"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist granularScrolling()Z
    .registers 3

    .line 168
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.view.accessibility.granular_scrolling"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreUnimportantRoot()Z
    .registers 3

    .line 175
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.view.accessibility.ignore_unimportant_root"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist indeterminateRangeInfo()Z
    .registers 3

    .line 182
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.view.accessibility.indeterminate_range_info"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 286
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->isOptimizationEnabled()Z

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

.method public blacklist launcherAppDisplayProgressUpdateOnVisibilityChange()Z
    .registers 3

    .line 189
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.view.accessibility.launcher_app_display_progress_update_on_visibility_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist lightBarUpdateButtonTintOnNavModeChange()Z
    .registers 3

    .line 196
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.view.accessibility.light_bar_update_button_tint_on_nav_mode_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist motionEventObserving()Z
    .registers 3

    .line 203
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.view.accessibility.motion_event_observing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist navbarFlipOrderOption()Z
    .registers 3

    .line 210
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.view.accessibility.navbar_flip_order_option"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist preventLeakingViewrootimpl()Z
    .registers 3

    .line 217
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.view.accessibility.prevent_leaking_viewrootimpl"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist reduceWindowContentChangedEventThrottle()Z
    .registers 3

    .line 224
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.view.accessibility.reduce_window_content_changed_event_throttle"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeChildHoverCheckForTouchExploration()Z
    .registers 3

    .line 231
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.view.accessibility.remove_child_hover_check_for_touch_exploration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist requestRectangleWithSource()Z
    .registers 3

    .line 238
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.view.accessibility.request_rectangle_with_source"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist skipAccessibilityWarningDialogForTrustedServices()Z
    .registers 3

    .line 245
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.view.accessibility.skip_accessibility_warning_dialog_for_trusted_services"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supplementalDescription()Z
    .registers 3

    .line 252
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.view.accessibility.supplemental_description"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportMultipleLabeledby()Z
    .registers 3

    .line 259
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.view.accessibility.support_multiple_labeledby"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportSystemPinchZoomOptOutApis()Z
    .registers 3

    .line 266
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.view.accessibility.support_system_pinch_zoom_opt_out_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist textCursorBlinkInterval()Z
    .registers 3

    .line 273
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.view.accessibility.text_cursor_blink_interval"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist triStateChecked()Z
    .registers 3

    .line 280
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.view.accessibility.tri_state_checked"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
