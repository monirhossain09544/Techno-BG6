.class public final Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags; = null

.field public static final blacklist FLAG_A11Y_CHARACTER_IN_WINDOW_API:Ljava/lang/String; = "android.view.accessibility.a11y_character_in_window_api"

.field public static final blacklist FLAG_A11Y_EXPANSION_STATE_API:Ljava/lang/String; = "android.view.accessibility.a11y_expansion_state_api"

.field public static final blacklist FLAG_A11Y_IS_REQUIRED_API:Ljava/lang/String; = "android.view.accessibility.a11y_is_required_api"

.field public static final blacklist FLAG_A11Y_IS_VISITED_API:Ljava/lang/String; = "android.view.accessibility.a11y_is_visited_api"

.field public static final blacklist FLAG_A11Y_OVERLAY_CALLBACKS:Ljava/lang/String; = "android.view.accessibility.a11y_overlay_callbacks"

.field public static final blacklist FLAG_A11Y_SELECTION_API:Ljava/lang/String; = "android.view.accessibility.a11y_selection_api"

.field public static final blacklist FLAG_A11Y_SEQUENTIAL_FOCUS_STARTING_POINT:Ljava/lang/String; = "android.view.accessibility.a11y_sequential_focus_starting_point"

.field public static final blacklist FLAG_A11Y_SORT_DIRECTION_API:Ljava/lang/String; = "android.view.accessibility.a11y_sort_direction_api"

.field public static final blacklist FLAG_BRAILLE_DISPLAY_HID:Ljava/lang/String; = "android.view.accessibility.braille_display_hid"

.field public static final blacklist FLAG_BUTTON_CHOOSER_ACTIVITY_BOTTOM_MARGIN_SYSTEM_BAR:Ljava/lang/String; = "android.view.accessibility.button_chooser_activity_bottom_margin_system_bar"

.field public static final blacklist FLAG_COLLECTION_INFO_ITEM_COUNTS:Ljava/lang/String; = "android.view.accessibility.collection_info_item_counts"

.field public static final blacklist FLAG_COPY_SURFACE_CONTROL_FOR_WINDOW_SCREENSHOTS:Ljava/lang/String; = "android.view.accessibility.copy_surface_control_for_window_screenshots"

.field public static final blacklist FLAG_DEPRECATE_ACCESSIBILITY_ANNOUNCEMENT_APIS:Ljava/lang/String; = "android.view.accessibility.deprecate_accessibility_announcement_apis"

.field public static final blacklist FLAG_DEPRECATE_ANI_LABEL_FOR_APIS:Ljava/lang/String; = "android.view.accessibility.deprecate_ani_label_for_apis"

.field public static final blacklist FLAG_ENABLE_REFRESH_WINDOW_INFO:Ljava/lang/String; = "android.view.accessibility.enable_refresh_window_info"

.field public static final blacklist FLAG_ENABLE_TRUSTED_ACCESSIBILITY_SERVICE_API:Ljava/lang/String; = "android.view.accessibility.enable_trusted_accessibility_service_api"

.field public static final blacklist FLAG_ENABLE_TYPE_WINDOW_CONTROL:Ljava/lang/String; = "android.view.accessibility.enable_type_window_control"

.field public static final blacklist FLAG_FLASH_NOTIFICATION_SYSTEM_API:Ljava/lang/String; = "android.view.accessibility.flash_notification_system_api"

.field public static final blacklist FLAG_FORCE_INVERT_COLOR:Ljava/lang/String; = "android.view.accessibility.force_invert_color"

.field public static final blacklist FLAG_GLOBAL_ACTION_MEDIA_PLAY_PAUSE:Ljava/lang/String; = "android.view.accessibility.global_action_media_play_pause"

.field public static final blacklist FLAG_GLOBAL_ACTION_MENU:Ljava/lang/String; = "android.view.accessibility.global_action_menu"

.field public static final blacklist FLAG_GRANULAR_SCROLLING:Ljava/lang/String; = "android.view.accessibility.granular_scrolling"

.field public static final blacklist FLAG_IGNORE_UNIMPORTANT_ROOT:Ljava/lang/String; = "android.view.accessibility.ignore_unimportant_root"

.field public static final blacklist FLAG_INDETERMINATE_RANGE_INFO:Ljava/lang/String; = "android.view.accessibility.indeterminate_range_info"

.field public static final blacklist FLAG_LAUNCHER_APP_DISPLAY_PROGRESS_UPDATE_ON_VISIBILITY_CHANGE:Ljava/lang/String; = "android.view.accessibility.launcher_app_display_progress_update_on_visibility_change"

.field public static final blacklist FLAG_LIGHT_BAR_UPDATE_BUTTON_TINT_ON_NAV_MODE_CHANGE:Ljava/lang/String; = "android.view.accessibility.light_bar_update_button_tint_on_nav_mode_change"

.field public static final blacklist FLAG_MOTION_EVENT_OBSERVING:Ljava/lang/String; = "android.view.accessibility.motion_event_observing"

.field public static final blacklist FLAG_NAVBAR_FLIP_ORDER_OPTION:Ljava/lang/String; = "android.view.accessibility.navbar_flip_order_option"

.field public static final blacklist FLAG_PREVENT_LEAKING_VIEWROOTIMPL:Ljava/lang/String; = "android.view.accessibility.prevent_leaking_viewrootimpl"

.field public static final blacklist FLAG_REDUCE_WINDOW_CONTENT_CHANGED_EVENT_THROTTLE:Ljava/lang/String; = "android.view.accessibility.reduce_window_content_changed_event_throttle"

.field public static final blacklist FLAG_REMOVE_CHILD_HOVER_CHECK_FOR_TOUCH_EXPLORATION:Ljava/lang/String; = "android.view.accessibility.remove_child_hover_check_for_touch_exploration"

.field public static final blacklist FLAG_REQUEST_RECTANGLE_WITH_SOURCE:Ljava/lang/String; = "android.view.accessibility.request_rectangle_with_source"

.field public static final blacklist FLAG_SKIP_ACCESSIBILITY_WARNING_DIALOG_FOR_TRUSTED_SERVICES:Ljava/lang/String; = "android.view.accessibility.skip_accessibility_warning_dialog_for_trusted_services"

.field public static final blacklist FLAG_SUPPLEMENTAL_DESCRIPTION:Ljava/lang/String; = "android.view.accessibility.supplemental_description"

.field public static final blacklist FLAG_SUPPORT_MULTIPLE_LABELEDBY:Ljava/lang/String; = "android.view.accessibility.support_multiple_labeledby"

.field public static final blacklist FLAG_SUPPORT_SYSTEM_PINCH_ZOOM_OPT_OUT_APIS:Ljava/lang/String; = "android.view.accessibility.support_system_pinch_zoom_opt_out_apis"

.field public static final blacklist FLAG_TEXT_CURSOR_BLINK_INTERVAL:Ljava/lang/String; = "android.view.accessibility.text_cursor_blink_interval"

.field public static final blacklist FLAG_TRI_STATE_CHECKED:Ljava/lang/String; = "android.view.accessibility.tri_state_checked"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 311
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist a11yCharacterInWindowApi()Z
    .registers 1

    .line 86
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->a11yCharacterInWindowApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist a11yExpansionStateApi()Z
    .registers 1

    .line 92
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->a11yExpansionStateApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist a11yIsRequiredApi()Z
    .registers 1

    .line 98
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->a11yIsRequiredApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist a11yIsVisitedApi()Z
    .registers 1

    .line 104
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->a11yIsVisitedApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist a11yOverlayCallbacks()Z
    .registers 1

    .line 110
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->a11yOverlayCallbacks()Z

    move-result v0

    return v0
.end method

.method public static blacklist a11ySelectionApi()Z
    .registers 1

    .line 116
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->a11ySelectionApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist a11ySequentialFocusStartingPoint()Z
    .registers 1

    .line 122
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->a11ySequentialFocusStartingPoint()Z

    move-result v0

    return v0
.end method

.method public static blacklist a11ySortDirectionApi()Z
    .registers 1

    .line 128
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->a11ySortDirectionApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist brailleDisplayHid()Z
    .registers 1

    .line 134
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->brailleDisplayHid()Z

    move-result v0

    return v0
.end method

.method public static blacklist buttonChooserActivityBottomMarginSystemBar()Z
    .registers 1

    .line 140
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->buttonChooserActivityBottomMarginSystemBar()Z

    move-result v0

    return v0
.end method

.method public static blacklist collectionInfoItemCounts()Z
    .registers 1

    .line 146
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->collectionInfoItemCounts()Z

    move-result v0

    return v0
.end method

.method public static blacklist copySurfaceControlForWindowScreenshots()Z
    .registers 1

    .line 152
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->copySurfaceControlForWindowScreenshots()Z

    move-result v0

    return v0
.end method

.method public static blacklist deprecateAccessibilityAnnouncementApis()Z
    .registers 1

    .line 158
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->deprecateAccessibilityAnnouncementApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist deprecateAniLabelForApis()Z
    .registers 1

    .line 164
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->deprecateAniLabelForApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableRefreshWindowInfo()Z
    .registers 1

    .line 170
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->enableRefreshWindowInfo()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableTrustedAccessibilityServiceApi()Z
    .registers 1

    .line 176
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->enableTrustedAccessibilityServiceApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableTypeWindowControl()Z
    .registers 1

    .line 182
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->enableTypeWindowControl()Z

    move-result v0

    return v0
.end method

.method public static blacklist flashNotificationSystemApi()Z
    .registers 1

    .line 188
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->flashNotificationSystemApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist forceInvertColor()Z
    .registers 1

    .line 194
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->forceInvertColor()Z

    move-result v0

    return v0
.end method

.method public static blacklist globalActionMediaPlayPause()Z
    .registers 1

    .line 200
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->globalActionMediaPlayPause()Z

    move-result v0

    return v0
.end method

.method public static blacklist globalActionMenu()Z
    .registers 1

    .line 206
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->globalActionMenu()Z

    move-result v0

    return v0
.end method

.method public static blacklist granularScrolling()Z
    .registers 1

    .line 212
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->granularScrolling()Z

    move-result v0

    return v0
.end method

.method public static blacklist ignoreUnimportantRoot()Z
    .registers 1

    .line 218
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->ignoreUnimportantRoot()Z

    move-result v0

    return v0
.end method

.method public static blacklist indeterminateRangeInfo()Z
    .registers 1

    .line 224
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->indeterminateRangeInfo()Z

    move-result v0

    return v0
.end method

.method public static blacklist launcherAppDisplayProgressUpdateOnVisibilityChange()Z
    .registers 1

    .line 230
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->launcherAppDisplayProgressUpdateOnVisibilityChange()Z

    move-result v0

    return v0
.end method

.method public static blacklist lightBarUpdateButtonTintOnNavModeChange()Z
    .registers 1

    .line 236
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->lightBarUpdateButtonTintOnNavModeChange()Z

    move-result v0

    return v0
.end method

.method public static blacklist motionEventObserving()Z
    .registers 1

    .line 242
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->motionEventObserving()Z

    move-result v0

    return v0
.end method

.method public static blacklist navbarFlipOrderOption()Z
    .registers 1

    .line 248
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->navbarFlipOrderOption()Z

    move-result v0

    return v0
.end method

.method public static blacklist preventLeakingViewrootimpl()Z
    .registers 1

    .line 254
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->preventLeakingViewrootimpl()Z

    move-result v0

    return v0
.end method

.method public static blacklist reduceWindowContentChangedEventThrottle()Z
    .registers 1

    .line 260
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->reduceWindowContentChangedEventThrottle()Z

    move-result v0

    return v0
.end method

.method public static blacklist removeChildHoverCheckForTouchExploration()Z
    .registers 1

    .line 266
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->removeChildHoverCheckForTouchExploration()Z

    move-result v0

    return v0
.end method

.method public static blacklist requestRectangleWithSource()Z
    .registers 1

    .line 272
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->requestRectangleWithSource()Z

    move-result v0

    return v0
.end method

.method public static blacklist skipAccessibilityWarningDialogForTrustedServices()Z
    .registers 1

    .line 278
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->skipAccessibilityWarningDialogForTrustedServices()Z

    move-result v0

    return v0
.end method

.method public static blacklist supplementalDescription()Z
    .registers 1

    .line 284
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->supplementalDescription()Z

    move-result v0

    return v0
.end method

.method public static blacklist supportMultipleLabeledby()Z
    .registers 1

    .line 290
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->supportMultipleLabeledby()Z

    move-result v0

    return v0
.end method

.method public static blacklist supportSystemPinchZoomOptOutApis()Z
    .registers 1

    .line 296
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->supportSystemPinchZoomOptOutApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist textCursorBlinkInterval()Z
    .registers 1

    .line 302
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->textCursorBlinkInterval()Z

    move-result v0

    return v0
.end method

.method public static blacklist triStateChecked()Z
    .registers 1

    .line 308
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/FeatureFlags;->triStateChecked()Z

    move-result v0

    return v0
.end method
