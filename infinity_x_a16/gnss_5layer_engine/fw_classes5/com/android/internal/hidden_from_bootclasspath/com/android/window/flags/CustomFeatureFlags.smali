.class public Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/FeatureFlags;",
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2808
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x15b

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.android.window.flags.activity_embedding_abort_cross_uid_launch_in_finishing_task_fragment"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.activity_embedding_delay_task_fragment_finish_for_activity_launch"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.activity_embedding_interactive_divider_flag"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.activity_embedding_metrics"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.allow_disable_activity_record_input_sink"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.always_draw_magnification_fullscreen_border"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.always_seq_id_layout"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.always_seq_id_layout_wear"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.always_update_wallpaper_permission"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.aod_transition"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.app_compat_properties_api"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.app_compat_refactoring"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.app_compat_refactoring_fix_multiwindow_task_hierarchy"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.app_compat_refactoring_force_change_for_letterbox_transitions"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.app_compat_refactoring_rounded_corners"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.app_compat_refactoring_rounded_corners_animation"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.app_compat_refactoring_set_appbounds_to_null_when_empty"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.app_compat_refactoring_skip_starting_window_letterbox"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.app_compat_refactoring_use_activity_leash_for_letterboxing"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.app_compat_ui_framework"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.app_handle_no_relayout_on_exclusion_change"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.apply_desk_activation_on_user_switch"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.apply_lifecycle_on_pip_change"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.avoid_rebinding_intentionally_disconnected_wallpaper"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.backup_and_restore_for_user_aspect_ratio_settings"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_additional_start_modes"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_check_broadcast_when_dispatched"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_cover_intent_sender"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_dont_bring_existing_background_task_stack_to_fg"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_reduce_grace_period"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_report_aborted_activity_starts"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_respect_app_switch_state_when_check_bound_by_foreground_uid"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_send_intent_with_options"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_strict_mode_ro"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.camera_compat_fullscreen_pick_same_task_activity"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.camera_compat_landscape_camera_support"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.camera_compat_unify_camera_policies"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.clear_reusable_scvh_on_release"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.close_fullscreen_and_splitscreen_keyboard_shortcut"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.close_task_keyboard_shortcut"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.close_to_square_config_includes_status_bar"

    const/16 v3, 0x28

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.cover_display_opt_in"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.current_animator_scale_uses_shared_memory"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.default_desk_without_warmup_migration"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.defer_resume_focus_in_non_focused_window"

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.density_390_api"

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.deprecate_surface_animation_frame_callback"

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.deprecate_window_animator_frame_callback"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.dimming_wallpaper_for_maximized_and_tiled"

    const/16 v3, 0x30

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.disable_desktop_launch_params_outside_desktop_bug_fix"

    const/16 v3, 0x31

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.disable_non_resizable_app_snap_resizing"

    const/16 v3, 0x32

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.disable_restore_non_fullscreen_bounds_on_configuration_change"

    const/16 v3, 0x33

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.do_not_force_wallpaper_for_freeform_task"

    const/16 v3, 0x34

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_accessible_custom_headers"

    const/16 v3, 0x35

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_activity_embedding_support_for_connected_displays"

    const/16 v3, 0x36

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_app_handle_position_reporting"

    const/16 v3, 0x37

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_app_header_with_task_density"

    const/16 v3, 0x38

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_app_to_web_education_animation"

    const/16 v3, 0x39

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_auto_restart_on_display_move"

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_backup_and_restore_display_window_settings"

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_block_non_desktop_display_window_drag_bugfix"

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_border_settings"

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_bounds_restoring_on_tiling_exit"

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_box_shadow_settings"

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_bug_fixes_for_secondary_display"

    const/16 v3, 0x40

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_camera_compat_compatibility_info_rotate_and_crop_bugfix"

    const/16 v3, 0x41

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_camera_compat_external_display_rotation_bugfix"

    const/16 v3, 0x42

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_camera_compat_for_desktop_windowing"

    const/16 v3, 0x43

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_camera_compat_for_desktop_windowing_opt_out"

    const/16 v3, 0x44

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_camera_compat_for_desktop_windowing_opt_out_api"

    const/16 v3, 0x45

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_camera_compat_sandbox_display_rotation_on_external_displays_bugfix"

    const/16 v3, 0x46

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_camera_compat_track_task_and_app_bugfix"

    const/16 v3, 0x47

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_caption_compat_inset_conversion"

    const/16 v3, 0x48

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_caption_compat_inset_force_consumption"

    const/16 v3, 0x49

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_caption_compat_inset_force_consumption_always"

    const/16 v3, 0x4a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_cascading_windows"

    const/16 v3, 0x4b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_close_lid_interaction"

    const/16 v3, 0x4c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_compat_ui_desktop_mode_synchronization_bugfix"

    const/16 v3, 0x4d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_compat_ui_visibility_status"

    const/16 v3, 0x4e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_compatui_sysui_launcher_fix"

    const/16 v3, 0x4f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_connected_displays_dnd"

    const/16 v3, 0x50

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_connected_displays_pip"

    const/16 v3, 0x51

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_connected_displays_wallpaper_presentations"

    const/16 v3, 0x52

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_connected_displays_window_drag"

    const/16 v3, 0x53

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_crash_logging_for_desktop"

    const/16 v3, 0x54

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_cross_displays_app_launch_transition"

    const/16 v3, 0x55

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_cross_displays_pip_task_launch"

    const/16 v3, 0x56

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_app_handle_animation"

    const/16 v3, 0x57

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_app_header_state_change_announcements"

    const/16 v3, 0x58

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_app_launch_alttab_transitions"

    const/16 v3, 0x59

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_app_launch_alttab_transitions_bugfix"

    const/16 v3, 0x5a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_app_launch_bugfix"

    const/16 v3, 0x5b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_app_launch_transitions"

    const/16 v3, 0x5c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_app_launch_transitions_bugfix"

    const/16 v3, 0x5d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_close_shortcut_bugfix"

    const/16 v3, 0x5e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_close_task_animation_in_dtc_bugfix"

    const/16 v3, 0x5f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_first_based_default_to_desktop_bugfix"

    const/16 v3, 0x60

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_first_based_drag_to_maximize"

    const/16 v3, 0x61

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_first_fullscreen_refocus_bugfix"

    const/16 v3, 0x62

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_first_listener"

    const/16 v3, 0x63

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_first_policy_in_lpm"

    const/16 v3, 0x64

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_first_top_fullscreen_bugfix"

    const/16 v3, 0x65

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_ime_bugfix"

    const/16 v3, 0x66

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_immersive_drag_bugfix"

    const/16 v3, 0x67

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_indicator_in_separate_thread_bugfix"

    const/16 v3, 0x68

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_invisible_task_removal_cleanup_bugfix"

    const/16 v3, 0x69

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_mode_through_dev_option"

    const/16 v3, 0x6a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_opening_deeplink_minimize_animation_bugfix"

    const/16 v3, 0x6b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_recents_transitions_corners_bugfix"

    const/16 v3, 0x6c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_splitscreen_transition_bugfix"

    const/16 v3, 0x6d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_system_dialogs_transitions"

    const/16 v3, 0x6e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_tab_tearing_launch_animation"

    const/16 v3, 0x6f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_tab_tearing_minimize_animation_bugfix"

    const/16 v3, 0x70

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_task_limit_separate_transition"

    const/16 v3, 0x71

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_taskbar_on_freeform_displays"

    const/16 v3, 0x72

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_trampoline_close_animation_bugfix"

    const/16 v3, 0x73

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_wallpaper_activity_for_system_user"

    const/16 v3, 0x74

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_app_handle_education"

    const/16 v3, 0x75

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_app_to_web"

    const/16 v3, 0x76

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_app_to_web_education"

    const/16 v3, 0x77

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_app_to_web_education_integration"

    const/16 v3, 0x78

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_back_navigation"

    const/16 v3, 0x79

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_enter_transition_bugfix"

    const/16 v3, 0x7a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_enter_transitions"

    const/16 v3, 0x7b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_enterprise_bugfix"

    const/16 v3, 0x7c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_exit_by_minimize_transition_bugfix"

    const/16 v3, 0x7d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_exit_transitions"

    const/16 v3, 0x7e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_exit_transitions_bugfix"

    const/16 v3, 0x7f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_hsum"

    const/16 v3, 0x80

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_immersive_handle_hiding"

    const/16 v3, 0x81

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_modals_policy"

    const/16 v3, 0x82

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_mode"

    const/16 v3, 0x83

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_multi_instance_features"

    const/16 v3, 0x84

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_persistence"

    const/16 v3, 0x85

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_pip"

    const/16 v3, 0x86

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_pip_in_overview_bugfix"

    const/16 v3, 0x87

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_quick_switch"

    const/16 v3, 0x88

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_scvh_cache_bug_fix"

    const/16 v3, 0x89

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_size_constraints"

    const/16 v3, 0x8a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_task_limit"

    const/16 v3, 0x8b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_taskbar_running_apps"

    const/16 v3, 0x8c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_transitions"

    const/16 v3, 0x8d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_wallpaper_activity"

    const/16 v3, 0x8e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_device_state_auto_rotate_setting_logging"

    const/16 v3, 0x8f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_device_state_auto_rotate_setting_refactor"

    const/16 v3, 0x90

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_dialog_display_fixes"

    const/16 v3, 0x91

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_display_compat_mode"

    const/16 v3, 0x92

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_display_disconnect_interaction"

    const/16 v3, 0x93

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_display_focus_in_shell_transitions"

    const/16 v3, 0x94

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_display_reconnect_interaction"

    const/16 v3, 0x95

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_display_windowing_mode_switching"

    const/16 v3, 0x96

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_drag_end_stable_bounds_reset"

    const/16 v3, 0x97

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_drag_resize_set_up_in_bg_thread"

    const/16 v3, 0x98

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_drag_to_desktop_incoming_transitions_bugfix"

    const/16 v3, 0x99

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_drag_to_maximize"

    const/16 v3, 0x9a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_dragging_pip_across_displays"

    const/16 v3, 0x9b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_drawing_app_handle"

    const/16 v3, 0x9c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_dream_activity_windowing_exclusion"

    const/16 v3, 0x9d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_dynamic_radius_computation_bugfix"

    const/16 v3, 0x9e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_empty_desk_on_minimize"

    const/16 v3, 0x9f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_experimental_bubbles_controller"

    const/16 v3, 0xa0

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_external_display_persistence_bugfix"

    const/16 v3, 0xa1

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_freeform_box_shadows"

    const/16 v3, 0xa2

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_freeform_display_launch_params"

    const/16 v3, 0xa3

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_full_screen_window_on_removing_split_screen_stage_bugfix"

    const/16 v3, 0xa4

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_fullscreen_window_controls"

    const/16 v3, 0xa5

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_fully_immersive_in_desktop"

    const/16 v3, 0xa6

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_handle_input_fix"

    const/16 v3, 0xa7

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_handlers_debugging_mode"

    const/16 v3, 0xa8

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_hold_to_drag_app_handle"

    const/16 v3, 0xa9

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_independent_back_in_projected"

    const/16 v3, 0xaa

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_inorder_transition_callbacks_for_desktop"

    const/16 v3, 0xab

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_input_layer_transition_fix"

    const/16 v3, 0xac

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_interaction_dependent_tab_tearing_bounds"

    const/16 v3, 0xad

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_interactive_picture_in_picture"

    const/16 v3, 0xae

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_key_gesture_handler_for_sysui"

    const/16 v3, 0xaf

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_launcher_handle_go_home_keyboard_shortcut"

    const/16 v3, 0xb0

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_minimize_button"

    const/16 v3, 0xb1

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_mirror_display_no_activity"

    const/16 v3, 0xb2

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_modals_fullscreen_with_permission"

    const/16 v3, 0xb3

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_modals_fullscreen_with_platform_signature"

    const/16 v3, 0xb4

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_move_to_next_display_shortcut"

    const/16 v3, 0xb5

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_multi_display_home_focus_bug_fix"

    const/16 v3, 0xb6

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_multi_display_split"

    const/16 v3, 0xb7

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_multidisplay_trackpad_back_gesture"

    const/16 v3, 0xb8

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_multiple_desktops_backend"

    const/16 v3, 0xb9

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_multiple_desktops_default_activation_in_desktop_first_displays"

    const/16 v3, 0xba

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_multiple_desktops_frontend"

    const/16 v3, 0xbb

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_no_window_decoration_for_desks"

    const/16 v3, 0xbc

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_non_default_display_split"

    const/16 v3, 0xbd

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_non_default_display_split_bugfix"

    const/16 v3, 0xbe

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_opaque_background_for_transparent_windows"

    const/16 v3, 0xbf

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_overflow_button_for_taskbar_pinned_items"

    const/16 v3, 0xc0

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_per_display_desktop_wallpaper_activity"

    const/16 v3, 0xc1

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_per_display_package_context_cache_in_statusbar_notif"

    const/16 v3, 0xc2

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_per_display_window_decor_view_host_pool"

    const/16 v3, 0xc3

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_persisting_display_size_for_connected_displays"

    const/16 v3, 0xc4

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_pinning_app_with_context_menu"

    const/16 v3, 0xc5

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_pip_params_update_notification_bugfix"

    const/16 v3, 0xc6

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_presentation_disallowed_on_unfocused_host_task"

    const/16 v3, 0xc7

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_presentation_for_connected_displays"

    const/16 v3, 0xc8

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_projected_display_desktop_mode"

    const/16 v3, 0xc9

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_quickswitch_desktop_split_bugfix"

    const/16 v3, 0xca

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_reject_home_transition"

    const/16 v3, 0xcb

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_remove_status_bar_input_layer"

    const/16 v3, 0xcc

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_request_fullscreen_bugfix"

    const/16 v3, 0xcd

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_request_fullscreen_refactor"

    const/16 v3, 0xce

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_request_fullscreen_restore_freeform_bugfix"

    const/16 v3, 0xcf

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_resizing_metrics"

    const/16 v3, 0xd0

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_restart_menu_for_connected_displays"

    const/16 v3, 0xd1

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_restore_to_previous_size_from_desktop_immersive"

    const/16 v3, 0xd2

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_see_through_task_fragments"

    const/16 v3, 0xd3

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_shell_initial_bounds_regression_bug_fix"

    const/16 v3, 0xd4

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_shrink_window_bounds_after_drag"

    const/16 v3, 0xd5

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_size_compat_mode_improvements_for_connected_displays"

    const/16 v3, 0xd6

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_start_launch_transition_from_taskbar_bugfix"

    const/16 v3, 0xd7

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_sys_decors_callbacks_via_wm"

    const/16 v3, 0xd8

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_tall_app_headers"

    const/16 v3, 0xd9

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_task_resizing_keyboard_shortcuts"

    const/16 v3, 0xda

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_task_stack_observer_in_shell"

    const/16 v3, 0xdb

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_taskbar_connected_displays"

    const/16 v3, 0xdc

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_taskbar_overflow"

    const/16 v3, 0xdd

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_taskbar_recent_tasks_throttle_bugfix"

    const/16 v3, 0xde

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_taskbar_recents_layout_transition"

    const/16 v3, 0xdf

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_themed_app_headers"

    const/16 v3, 0xe0

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_tile_resizing"

    const/16 v3, 0xe1

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_top_visible_root_task_per_user_tracking"

    const/16 v3, 0xe2

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_transition_on_activity_set_requested_orientation"

    const/16 v3, 0xe3

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_updated_display_connection_dialog"

    const/16 v3, 0xe4

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_upscaling_size_compat_on_exiting_desktop_bugfix"

    const/16 v3, 0xe5

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_visual_indicator_in_transition_bugfix"

    const/16 v3, 0xe6

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_window_context_resources_update_on_config_change"

    const/16 v3, 0xe7

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_window_decoration_refactor"

    const/16 v3, 0xe8

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_window_drop_smooth_transition"

    const/16 v3, 0xe9

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_window_repositioning_api"

    const/16 v3, 0xea

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_windowing_dynamic_initial_bounds"

    const/16 v3, 0xeb

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_windowing_edge_drag_resize"

    const/16 v3, 0xec

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_windowing_scaled_resizing"

    const/16 v3, 0xed

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_windowing_task_stack_order_bugfix"

    const/16 v3, 0xee

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_windowing_transition_handlers_observers"

    const/16 v3, 0xef

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enforce_edge_to_edge"

    const/16 v3, 0xf0

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.ensure_keyguard_does_transition_starting_bug_fix"

    const/16 v3, 0xf1

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.ensure_wallpaper_drawn_on_display_switch"

    const/16 v3, 0xf2

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enter_desktop_by_default_on_freeform_displays"

    const/16 v3, 0xf3

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.exclude_caption_from_app_bounds"

    const/16 v3, 0xf4

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.exclude_desk_roots_from_desktop_tasks"

    const/16 v3, 0xf5

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.excluding_layer_from_task_snapshot"

    const/16 v3, 0xf6

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.fallback_to_focused_display"

    const/16 v3, 0xf7

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.fallback_transition_player"

    const/16 v3, 0xf8

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.fifo_priority_for_major_ui_processes"

    const/16 v3, 0xf9

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.fix_bal_reparent_existing_task"

    const/16 v3, 0xfa

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.fix_bubble_trampoline_animation"

    const/16 v3, 0xfb

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.fix_hide_overlay_api"

    const/16 v3, 0xfc

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.fix_leaking_visual_indicator"

    const/16 v3, 0xfd

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.fix_rapid_top_resumed_switch"

    const/16 v3, 0xfe

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.force_close_top_transparent_fullscreen_task"

    const/16 v3, 0xff

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.form_factor_based_desktop_first_switch"

    const/16 v3, 0x100

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.grant_manage_key_gestures_to_recents"

    const/16 v3, 0x101

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.handle_incompatible_tasks_in_desktop_launch_params"

    const/16 v3, 0x102

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.ignore_aspect_ratio_restrictions_for_resizeable_freeform_activities"

    const/16 v3, 0x103

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.ignore_corner_radius_and_shadows"

    const/16 v3, 0x104

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.ignore_current_params_in_desktop_launch_params"

    const/16 v3, 0x105

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.ignore_override_task_bounds_if_incompatible_with_display"

    const/16 v3, 0x106

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.ime_back_callback_leak_prevention"

    const/16 v3, 0x107

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.include_top_transparent_fullscreen_task_in_desktop_heuristic"

    const/16 v3, 0x108

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.inherit_task_bounds_for_trampoline_task_launches"

    const/16 v3, 0x109

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.jank_api"

    const/16 v3, 0x10a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.keyboard_shortcuts_to_switch_desks"

    const/16 v3, 0x10b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.keyguard_remove_default_display_usage"

    const/16 v3, 0x10c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.letterbox_background_wallpaper"

    const/16 v3, 0x10d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.limit_system_fullscreen_override_to_default_display"

    const/16 v3, 0x10e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.migrate_basic_legacy_ready"

    const/16 v3, 0x10f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.move_to_external_display_shortcut"

    const/16 v3, 0x110

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.move_to_next_display_shortcut_with_projected_mode"

    const/16 v3, 0x111

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.multi_crop"

    const/16 v3, 0x112

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.multiple_system_navigation_observer_callbacks"

    const/16 v3, 0x113

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.nested_tasks_with_independent_bounds_bugfix"

    const/16 v3, 0x114

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.no_alpha_rotation_enter_animation"

    const/16 v3, 0x115

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.opt_out_override_orientation_to_user"

    const/16 v3, 0x116

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.parallel_cd_transitions_during_recents"

    const/16 v3, 0x117

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.polish_close_wallpaper_includes_open_change"

    const/16 v3, 0x118

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.port_window_size_animation"

    const/16 v3, 0x119

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.predictive_back_callback_cancellation_fix"

    const/16 v3, 0x11a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.predictive_back_delay_wm_transition"

    const/16 v3, 0x11b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.predictive_back_intercept_transition"

    const/16 v3, 0x11c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.predictive_back_priority_system_navigation_observer"

    const/16 v3, 0x11d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.predictive_back_stop_keycode_back_forwarding"

    const/16 v3, 0x11e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.predictive_back_swipe_edge_none_api"

    const/16 v3, 0x11f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.predictive_back_system_override_callback"

    const/16 v3, 0x120

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.predictive_back_timestamp_api"

    const/16 v3, 0x121

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.preserve_recents_task_configuration_on_relaunch"

    const/16 v3, 0x122

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.rear_display_disable_force_desktop_system_decorations"

    const/16 v3, 0x123

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.reduce_changed_exclusion_rects_msgs"

    const/16 v3, 0x124

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.reduce_task_snapshot_memory_usage"

    const/16 v3, 0x125

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.reenable_app_handle_animations"

    const/16 v3, 0x126

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.reenable_app_handle_color_animations"

    const/16 v3, 0x127

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.refactor_match_parent_bounds"

    const/16 v3, 0x128

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.relative_insets"

    const/16 v3, 0x129

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.release_all_transition_surfaces"

    const/16 v3, 0x12a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.remove_desk_on_last_task_removal"

    const/16 v3, 0x12b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.remove_get_dimmer"

    const/16 v3, 0x12c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.reparent_window_token_api"

    const/16 v3, 0x12d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.repository_based_persistence"

    const/16 v3, 0x12e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.repository_based_persistence_bg_thread"

    const/16 v3, 0x12f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.respect_fullscreen_activity_option_in_desktop_launch_params"

    const/16 v3, 0x130

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.respect_orientation_change_for_unresizeable"

    const/16 v3, 0x131

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.respect_requested_task_snapshot_resolution"

    const/16 v3, 0x132

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.restore_user_aspect_ratio_settings_using_service"

    const/16 v3, 0x133

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.restrict_freeform_hidden_system_bars_to_filling_tasks"

    const/16 v3, 0x134

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.return_all_visible_activities_for_vis"

    const/16 v3, 0x135

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.root_task_for_bubble"

    const/16 v3, 0x136

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.safe_region_letterboxing_v1"

    const/16 v3, 0x137

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.screen_recording_callbacks"

    const/16 v3, 0x138

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.scrolling_from_letterbox"

    const/16 v3, 0x139

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.scvh_set_focusable"

    const/16 v3, 0x13a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.scvh_surface_control_lifetime_fix"

    const/16 v3, 0x13b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.sdk_desired_present_time"

    const/16 v3, 0x13c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.set_sc_properties_in_client"

    const/16 v3, 0x13d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.show_app_handle_large_screens"

    const/16 v3, 0x13e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.show_biometric_prompt_secondary_display_message"

    const/16 v3, 0x13f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.show_desktop_experience_dev_option"

    const/16 v3, 0x140

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.show_desktop_windowing_dev_option"

    const/16 v3, 0x141

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.show_home_behind_desktop"

    const/16 v3, 0x142

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.skip_compat_ui_education_in_desktop_mode"

    const/16 v3, 0x143

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.skip_deactivation_of_desk_with_nothing_in_front"

    const/16 v3, 0x144

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.skip_decor_view_relayout_when_closing_bugfix"

    const/16 v3, 0x145

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.support_gemini_on_multi_display"

    const/16 v3, 0x146

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.system_content_priority"

    const/16 v3, 0x147

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.system_ui_post_animation_end"

    const/16 v3, 0x148

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.task_fragment_companion_activity"

    const/16 v3, 0x149

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.taskbar_running_tasks_in_splitscreen_select"

    const/16 v3, 0x14a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.toggle_fullscreen_state_via_fullscreen_key"

    const/16 v3, 0x14b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.touch_pass_through_opt_in"

    const/16 v3, 0x14c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.transfer_starting_window_to_next_when_invisible"

    const/16 v3, 0x14d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.transit_ready_tracking"

    const/16 v3, 0x14e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.transit_tracker_plumbing"

    const/16 v3, 0x14f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.transition_handler_cuj_tags"

    const/16 v3, 0x150

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.unify_shell_binders"

    const/16 v3, 0x151

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.universal_resizable_by_default"

    const/16 v3, 0x152

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.untrusted_embedding_any_app_permission"

    const/16 v3, 0x153

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.untrusted_embedding_state_sharing"

    const/16 v3, 0x154

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.update_dims_when_window_shown"

    const/16 v3, 0x155

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.update_task_crop_in_sync"

    const/16 v3, 0x156

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.use_input_reported_focus_for_accessibility"

    const/16 v3, 0x157

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.vdm_force_app_universal_resizable_api"

    const/16 v3, 0x158

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.wait_for_present_fence_on_display_switch"

    const/16 v3, 0x159

    aput-object v2, v1, v3

    const-string v2, ""

    const/16 v3, 0x15a

    aput-object v2, v1, v3

    .line 2809
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    iput-object p1, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 17
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 2450
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist activityEmbeddingAbortCrossUidLaunchInFinishingTaskFragment()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda254;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda254;-><init>()V

    const-string v1, "com.android.window.flags.activity_embedding_abort_cross_uid_launch_in_finishing_task_fragment"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist activityEmbeddingDelayTaskFragmentFinishForActivityLaunch()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda223;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda223;-><init>()V

    const-string v1, "com.android.window.flags.activity_embedding_delay_task_fragment_finish_for_activity_launch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist activityEmbeddingInteractiveDividerFlag()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda327;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda327;-><init>()V

    const-string v1, "com.android.window.flags.activity_embedding_interactive_divider_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist activityEmbeddingMetrics()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda338;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda338;-><init>()V

    const-string v1, "com.android.window.flags.activity_embedding_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowDisableActivityRecordInputSink()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda261;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda261;-><init>()V

    const-string v1, "com.android.window.flags.allow_disable_activity_record_input_sink"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist alwaysDrawMagnificationFullscreenBorder()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "com.android.window.flags.always_draw_magnification_fullscreen_border"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist alwaysSeqIdLayout()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda199;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda199;-><init>()V

    const-string v1, "com.android.window.flags.always_seq_id_layout"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist alwaysSeqIdLayoutWear()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda237;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda237;-><init>()V

    const-string v1, "com.android.window.flags.always_seq_id_layout_wear"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist alwaysUpdateWallpaperPermission()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda191;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda191;-><init>()V

    const-string v1, "com.android.window.flags.always_update_wallpaper_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist aodTransition()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "com.android.window.flags.aod_transition"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appCompatPropertiesApi()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda79;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda79;-><init>()V

    const-string v1, "com.android.window.flags.app_compat_properties_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appCompatRefactoring()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda202;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda202;-><init>()V

    const-string v1, "com.android.window.flags.app_compat_refactoring"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appCompatRefactoringFixMultiwindowTaskHierarchy()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.window.flags.app_compat_refactoring_fix_multiwindow_task_hierarchy"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appCompatRefactoringForceChangeForLetterboxTransitions()Z
    .registers 3

    .line 112
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda206;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda206;-><init>()V

    const-string v1, "com.android.window.flags.app_compat_refactoring_force_change_for_letterbox_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appCompatRefactoringRoundedCorners()Z
    .registers 3

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;-><init>()V

    const-string v1, "com.android.window.flags.app_compat_refactoring_rounded_corners"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appCompatRefactoringRoundedCornersAnimation()Z
    .registers 3

    .line 126
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda222;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda222;-><init>()V

    const-string v1, "com.android.window.flags.app_compat_refactoring_rounded_corners_animation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appCompatRefactoringSetAppboundsToNullWhenEmpty()Z
    .registers 3

    .line 133
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.window.flags.app_compat_refactoring_set_appbounds_to_null_when_empty"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appCompatRefactoringSkipStartingWindowLetterbox()Z
    .registers 3

    .line 140
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda318;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda318;-><init>()V

    const-string v1, "com.android.window.flags.app_compat_refactoring_skip_starting_window_letterbox"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appCompatRefactoringUseActivityLeashForLetterboxing()Z
    .registers 3

    .line 147
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda73;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda73;-><init>()V

    const-string v1, "com.android.window.flags.app_compat_refactoring_use_activity_leash_for_letterboxing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appCompatUiFramework()Z
    .registers 3

    .line 154
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda189;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda189;-><init>()V

    const-string v1, "com.android.window.flags.app_compat_ui_framework"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appHandleNoRelayoutOnExclusionChange()Z
    .registers 3

    .line 161
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;-><init>()V

    const-string v1, "com.android.window.flags.app_handle_no_relayout_on_exclusion_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist applyDeskActivationOnUserSwitch()Z
    .registers 3

    .line 168
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda326;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda326;-><init>()V

    const-string v1, "com.android.window.flags.apply_desk_activation_on_user_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist applyLifecycleOnPipChange()Z
    .registers 3

    .line 175
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda298;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda298;-><init>()V

    const-string v1, "com.android.window.flags.apply_lifecycle_on_pip_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist avoidRebindingIntentionallyDisconnectedWallpaper()Z
    .registers 3

    .line 182
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda245;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda245;-><init>()V

    const-string v1, "com.android.window.flags.avoid_rebinding_intentionally_disconnected_wallpaper"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist backupAndRestoreForUserAspectRatioSettings()Z
    .registers 3

    .line 189
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda255;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda255;-><init>()V

    const-string v1, "com.android.window.flags.backup_and_restore_for_user_aspect_ratio_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balAdditionalStartModes()Z
    .registers 3

    .line 196
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda107;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda107;-><init>()V

    const-string v1, "com.android.window.flags.bal_additional_start_modes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balCheckBroadcastWhenDispatched()Z
    .registers 3

    .line 203
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda320;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda320;-><init>()V

    const-string v1, "com.android.window.flags.bal_check_broadcast_when_dispatched"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balCoverIntentSender()Z
    .registers 3

    .line 210
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.window.flags.bal_cover_intent_sender"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balDontBringExistingBackgroundTaskStackToFg()Z
    .registers 3

    .line 217
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;-><init>()V

    const-string v1, "com.android.window.flags.bal_dont_bring_existing_background_task_stack_to_fg"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balReduceGracePeriod()Z
    .registers 3

    .line 224
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;-><init>()V

    const-string v1, "com.android.window.flags.bal_reduce_grace_period"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balReportAbortedActivityStarts()Z
    .registers 3

    .line 231
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda216;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda216;-><init>()V

    const-string v1, "com.android.window.flags.bal_report_aborted_activity_starts"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balRespectAppSwitchStateWhenCheckBoundByForegroundUid()Z
    .registers 3

    .line 238
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda212;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda212;-><init>()V

    const-string v1, "com.android.window.flags.bal_respect_app_switch_state_when_check_bound_by_foreground_uid"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balSendIntentWithOptions()Z
    .registers 3

    .line 245
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.window.flags.bal_send_intent_with_options"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balStrictModeRo()Z
    .registers 3

    .line 252
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda284;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda284;-><init>()V

    const-string v1, "com.android.window.flags.bal_strict_mode_ro"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cameraCompatFullscreenPickSameTaskActivity()Z
    .registers 3

    .line 259
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda121;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda121;-><init>()V

    const-string v1, "com.android.window.flags.camera_compat_fullscreen_pick_same_task_activity"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cameraCompatLandscapeCameraSupport()Z
    .registers 3

    .line 266
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda161;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda161;-><init>()V

    const-string v1, "com.android.window.flags.camera_compat_landscape_camera_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cameraCompatUnifyCameraPolicies()Z
    .registers 3

    .line 273
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda93;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda93;-><init>()V

    const-string v1, "com.android.window.flags.camera_compat_unify_camera_policies"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist clearReusableScvhOnRelease()Z
    .registers 3

    .line 280
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda149;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda149;-><init>()V

    const-string v1, "com.android.window.flags.clear_reusable_scvh_on_release"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist closeFullscreenAndSplitscreenKeyboardShortcut()Z
    .registers 3

    .line 287
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda229;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda229;-><init>()V

    const-string v1, "com.android.window.flags.close_fullscreen_and_splitscreen_keyboard_shortcut"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist closeTaskKeyboardShortcut()Z
    .registers 3

    .line 294
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "com.android.window.flags.close_task_keyboard_shortcut"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist closeToSquareConfigIncludesStatusBar()Z
    .registers 3

    .line 301
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda87;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda87;-><init>()V

    const-string v1, "com.android.window.flags.close_to_square_config_includes_status_bar"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist coverDisplayOptIn()Z
    .registers 3

    .line 308
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda180;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda180;-><init>()V

    const-string v1, "com.android.window.flags.cover_display_opt_in"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist currentAnimatorScaleUsesSharedMemory()Z
    .registers 3

    .line 315
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda76;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda76;-><init>()V

    const-string v1, "com.android.window.flags.current_animator_scale_uses_shared_memory"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist defaultDeskWithoutWarmupMigration()Z
    .registers 3

    .line 322
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda246;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda246;-><init>()V

    const-string v1, "com.android.window.flags.default_desk_without_warmup_migration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deferResumeFocusInNonFocusedWindow()Z
    .registers 3

    .line 329
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda314;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda314;-><init>()V

    const-string v1, "com.android.window.flags.defer_resume_focus_in_non_focused_window"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist density390Api()Z
    .registers 3

    .line 336
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda337;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda337;-><init>()V

    const-string v1, "com.android.window.flags.density_390_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deprecateSurfaceAnimationFrameCallback()Z
    .registers 3

    .line 343
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda288;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda288;-><init>()V

    const-string v1, "com.android.window.flags.deprecate_surface_animation_frame_callback"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deprecateWindowAnimatorFrameCallback()Z
    .registers 3

    .line 350
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.window.flags.deprecate_window_animator_frame_callback"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dimmingWallpaperForMaximizedAndTiled()Z
    .registers 3

    .line 357
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda116;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda116;-><init>()V

    const-string v1, "com.android.window.flags.dimming_wallpaper_for_maximized_and_tiled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disableDesktopLaunchParamsOutsideDesktopBugFix()Z
    .registers 3

    .line 364
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda139;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda139;-><init>()V

    const-string v1, "com.android.window.flags.disable_desktop_launch_params_outside_desktop_bug_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disableNonResizableAppSnapResizing()Z
    .registers 3

    .line 371
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda167;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda167;-><init>()V

    const-string v1, "com.android.window.flags.disable_non_resizable_app_snap_resizing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disableRestoreNonFullscreenBoundsOnConfigurationChange()Z
    .registers 3

    .line 378
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda339;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda339;-><init>()V

    const-string v1, "com.android.window.flags.disable_restore_non_fullscreen_bounds_on_configuration_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist doNotForceWallpaperForFreeformTask()Z
    .registers 3

    .line 385
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.window.flags.do_not_force_wallpaper_for_freeform_task"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAccessibleCustomHeaders()Z
    .registers 3

    .line 392
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda69;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda69;-><init>()V

    const-string v1, "com.android.window.flags.enable_accessible_custom_headers"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableActivityEmbeddingSupportForConnectedDisplays()Z
    .registers 3

    .line 399
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda248;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda248;-><init>()V

    const-string v1, "com.android.window.flags.enable_activity_embedding_support_for_connected_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAppHandlePositionReporting()Z
    .registers 3

    .line 406
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda238;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda238;-><init>()V

    const-string v1, "com.android.window.flags.enable_app_handle_position_reporting"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAppHeaderWithTaskDensity()Z
    .registers 3

    .line 413
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda227;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda227;-><init>()V

    const-string v1, "com.android.window.flags.enable_app_header_with_task_density"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAppToWebEducationAnimation()Z
    .registers 3

    .line 420
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda123;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda123;-><init>()V

    const-string v1, "com.android.window.flags.enable_app_to_web_education_animation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAutoRestartOnDisplayMove()Z
    .registers 3

    .line 427
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda257;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda257;-><init>()V

    const-string v1, "com.android.window.flags.enable_auto_restart_on_display_move"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableBackupAndRestoreDisplayWindowSettings()Z
    .registers 3

    .line 434
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda242;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda242;-><init>()V

    const-string v1, "com.android.window.flags.enable_backup_and_restore_display_window_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableBlockNonDesktopDisplayWindowDragBugfix()Z
    .registers 3

    .line 441
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda258;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda258;-><init>()V

    const-string v1, "com.android.window.flags.enable_block_non_desktop_display_window_drag_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableBorderSettings()Z
    .registers 3

    .line 448
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda120;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda120;-><init>()V

    const-string v1, "com.android.window.flags.enable_border_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableBoundsRestoringOnTilingExit()Z
    .registers 3

    .line 455
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda281;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda281;-><init>()V

    const-string v1, "com.android.window.flags.enable_bounds_restoring_on_tiling_exit"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableBoxShadowSettings()Z
    .registers 3

    .line 462
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda119;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda119;-><init>()V

    const-string v1, "com.android.window.flags.enable_box_shadow_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableBugFixesForSecondaryDisplay()Z
    .registers 3

    .line 469
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;-><init>()V

    const-string v1, "com.android.window.flags.enable_bug_fixes_for_secondary_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCameraCompatCompatibilityInfoRotateAndCropBugfix()Z
    .registers 3

    .line 476
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda234;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda234;-><init>()V

    const-string v1, "com.android.window.flags.enable_camera_compat_compatibility_info_rotate_and_crop_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCameraCompatExternalDisplayRotationBugfix()Z
    .registers 3

    .line 483
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda137;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda137;-><init>()V

    const-string v1, "com.android.window.flags.enable_camera_compat_external_display_rotation_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCameraCompatForDesktopWindowing()Z
    .registers 3

    .line 490
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda82;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda82;-><init>()V

    const-string v1, "com.android.window.flags.enable_camera_compat_for_desktop_windowing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCameraCompatForDesktopWindowingOptOut()Z
    .registers 3

    .line 497
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda204;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda204;-><init>()V

    const-string v1, "com.android.window.flags.enable_camera_compat_for_desktop_windowing_opt_out"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCameraCompatForDesktopWindowingOptOutApi()Z
    .registers 3

    .line 504
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda291;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda291;-><init>()V

    const-string v1, "com.android.window.flags.enable_camera_compat_for_desktop_windowing_opt_out_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCameraCompatSandboxDisplayRotationOnExternalDisplaysBugfix()Z
    .registers 3

    .line 511
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda122;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda122;-><init>()V

    const-string v1, "com.android.window.flags.enable_camera_compat_sandbox_display_rotation_on_external_displays_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCameraCompatTrackTaskAndAppBugfix()Z
    .registers 3

    .line 518
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda77;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda77;-><init>()V

    const-string v1, "com.android.window.flags.enable_camera_compat_track_task_and_app_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCaptionCompatInsetConversion()Z
    .registers 3

    .line 525
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda268;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda268;-><init>()V

    const-string v1, "com.android.window.flags.enable_caption_compat_inset_conversion"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCaptionCompatInsetForceConsumption()Z
    .registers 3

    .line 532
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda188;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda188;-><init>()V

    const-string v1, "com.android.window.flags.enable_caption_compat_inset_force_consumption"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCaptionCompatInsetForceConsumptionAlways()Z
    .registers 3

    .line 539
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda342;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda342;-><init>()V

    const-string v1, "com.android.window.flags.enable_caption_compat_inset_force_consumption_always"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCascadingWindows()Z
    .registers 3

    .line 546
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda190;-><init>()V

    const-string v1, "com.android.window.flags.enable_cascading_windows"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCloseLidInteraction()Z
    .registers 3

    .line 553
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda325;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda325;-><init>()V

    const-string v1, "com.android.window.flags.enable_close_lid_interaction"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCompatUiDesktopModeSynchronizationBugfix()Z
    .registers 3

    .line 560
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda344;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda344;-><init>()V

    const-string v1, "com.android.window.flags.enable_compat_ui_desktop_mode_synchronization_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCompatUiVisibilityStatus()Z
    .registers 3

    .line 567
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda296;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda296;-><init>()V

    const-string v1, "com.android.window.flags.enable_compat_ui_visibility_status"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCompatuiSysuiLauncherFix()Z
    .registers 3

    .line 574
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda323;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda323;-><init>()V

    const-string v1, "com.android.window.flags.enable_compatui_sysui_launcher_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableConnectedDisplaysDnd()Z
    .registers 3

    .line 581
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda95;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda95;-><init>()V

    const-string v1, "com.android.window.flags.enable_connected_displays_dnd"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableConnectedDisplaysPip()Z
    .registers 3

    .line 588
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda184;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda184;-><init>()V

    const-string v1, "com.android.window.flags.enable_connected_displays_pip"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableConnectedDisplaysWallpaperPresentations()Z
    .registers 3

    .line 595
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "com.android.window.flags.enable_connected_displays_wallpaper_presentations"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableConnectedDisplaysWindowDrag()Z
    .registers 3

    .line 602
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda185;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda185;-><init>()V

    const-string v1, "com.android.window.flags.enable_connected_displays_window_drag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCrashLoggingForDesktop()Z
    .registers 3

    .line 609
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda195;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda195;-><init>()V

    const-string v1, "com.android.window.flags.enable_crash_logging_for_desktop"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCrossDisplaysAppLaunchTransition()Z
    .registers 3

    .line 616
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda247;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda247;-><init>()V

    const-string v1, "com.android.window.flags.enable_cross_displays_app_launch_transition"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCrossDisplaysPipTaskLaunch()Z
    .registers 3

    .line 623
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda282;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda282;-><init>()V

    const-string v1, "com.android.window.flags.enable_cross_displays_pip_task_launch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopAppHandleAnimation()Z
    .registers 3

    .line 630
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_app_handle_animation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopAppHeaderStateChangeAnnouncements()Z
    .registers 3

    .line 637
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda157;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda157;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_app_header_state_change_announcements"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopAppLaunchAlttabTransitions()Z
    .registers 3

    .line 644
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda118;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda118;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_app_launch_alttab_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopAppLaunchAlttabTransitionsBugfix()Z
    .registers 3

    .line 651
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda128;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda128;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_app_launch_alttab_transitions_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopAppLaunchBugfix()Z
    .registers 3

    .line 658
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_app_launch_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopAppLaunchTransitions()Z
    .registers 3

    .line 665
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda194;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda194;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_app_launch_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopAppLaunchTransitionsBugfix()Z
    .registers 3

    .line 672
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda289;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda289;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_app_launch_transitions_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopCloseShortcutBugfix()Z
    .registers 3

    .line 679
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda265;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda265;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_close_shortcut_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopCloseTaskAnimationInDtcBugfix()Z
    .registers 3

    .line 686
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda117;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda117;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_close_task_animation_in_dtc_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopFirstBasedDefaultToDesktopBugfix()Z
    .registers 3

    .line 693
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda309;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda309;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_first_based_default_to_desktop_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopFirstBasedDragToMaximize()Z
    .registers 3

    .line 700
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda294;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda294;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_first_based_drag_to_maximize"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopFirstFullscreenRefocusBugfix()Z
    .registers 3

    .line 707
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_first_fullscreen_refocus_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopFirstListener()Z
    .registers 3

    .line 714
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda315;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda315;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_first_listener"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopFirstPolicyInLpm()Z
    .registers 3

    .line 721
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda343;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda343;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_first_policy_in_lpm"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopFirstTopFullscreenBugfix()Z
    .registers 3

    .line 728
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_first_top_fullscreen_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopImeBugfix()Z
    .registers 3

    .line 735
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda160;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda160;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_ime_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopImmersiveDragBugfix()Z
    .registers 3

    .line 742
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_immersive_drag_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopIndicatorInSeparateThreadBugfix()Z
    .registers 3

    .line 749
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda269;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda269;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_indicator_in_separate_thread_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopInvisibleTaskRemovalCleanupBugfix()Z
    .registers 3

    .line 756
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda192;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda192;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_invisible_task_removal_cleanup_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopModeThroughDevOption()Z
    .registers 3

    .line 763
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_mode_through_dev_option"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopOpeningDeeplinkMinimizeAnimationBugfix()Z
    .registers 3

    .line 770
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda262;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda262;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_opening_deeplink_minimize_animation_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopRecentsTransitionsCornersBugfix()Z
    .registers 3

    .line 777
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda170;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda170;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_recents_transitions_corners_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopSplitscreenTransitionBugfix()Z
    .registers 3

    .line 784
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda231;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda231;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_splitscreen_transition_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopSystemDialogsTransitions()Z
    .registers 3

    .line 791
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_system_dialogs_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopTabTearingLaunchAnimation()Z
    .registers 3

    .line 798
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda251;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda251;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_tab_tearing_launch_animation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopTabTearingMinimizeAnimationBugfix()Z
    .registers 3

    .line 805
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda277;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda277;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_tab_tearing_minimize_animation_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopTaskLimitSeparateTransition()Z
    .registers 3

    .line 812
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda225;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda225;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_task_limit_separate_transition"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopTaskbarOnFreeformDisplays()Z
    .registers 3

    .line 819
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_taskbar_on_freeform_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopTrampolineCloseAnimationBugfix()Z
    .registers 3

    .line 826
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda96;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda96;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_trampoline_close_animation_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWallpaperActivityForSystemUser()Z
    .registers 3

    .line 833
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda218;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda218;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_wallpaper_activity_for_system_user"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingAppHandleEducation()Z
    .registers 3

    .line 840
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda86;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda86;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_app_handle_education"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingAppToWeb()Z
    .registers 3

    .line 847
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda264;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda264;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_app_to_web"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingAppToWebEducation()Z
    .registers 3

    .line 854
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda331;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda331;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_app_to_web_education"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingAppToWebEducationIntegration()Z
    .registers 3

    .line 861
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda150;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda150;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_app_to_web_education_integration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingBackNavigation()Z
    .registers 3

    .line 868
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda108;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda108;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_back_navigation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingEnterTransitionBugfix()Z
    .registers 3

    .line 875
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda310;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda310;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_enter_transition_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingEnterTransitions()Z
    .registers 3

    .line 882
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_enter_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingEnterpriseBugfix()Z
    .registers 3

    .line 889
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda141;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda141;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_enterprise_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingExitByMinimizeTransitionBugfix()Z
    .registers 3

    .line 896
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda132;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda132;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_exit_by_minimize_transition_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingExitTransitions()Z
    .registers 3

    .line 903
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda244;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda244;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_exit_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingExitTransitionsBugfix()Z
    .registers 3

    .line 910
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda169;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda169;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_exit_transitions_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingHsum()Z
    .registers 3

    .line 917
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda286;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda286;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_hsum"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingImmersiveHandleHiding()Z
    .registers 3

    .line 924
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda151;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda151;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_immersive_handle_hiding"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingModalsPolicy()Z
    .registers 3

    .line 931
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda211;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda211;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_modals_policy"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingMode()Z
    .registers 3

    .line 938
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda332;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda332;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingMultiInstanceFeatures()Z
    .registers 3

    .line 945
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda88;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda88;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_multi_instance_features"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingPersistence()Z
    .registers 3

    .line 952
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda253;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda253;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_persistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingPip()Z
    .registers 3

    .line 959
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda182;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda182;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_pip"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingPipInOverviewBugfix()Z
    .registers 3

    .line 966
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda313;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda313;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_pip_in_overview_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingQuickSwitch()Z
    .registers 3

    .line 973
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_quick_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingScvhCacheBugFix()Z
    .registers 3

    .line 980
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_scvh_cache_bug_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingSizeConstraints()Z
    .registers 3

    .line 987
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda287;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda287;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_size_constraints"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingTaskLimit()Z
    .registers 3

    .line 994
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda148;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda148;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_task_limit"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingTaskbarRunningApps()Z
    .registers 3

    .line 1001
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda341;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda341;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_taskbar_running_apps"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingTransitions()Z
    .registers 3

    .line 1008
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda90;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda90;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingWallpaperActivity()Z
    .registers 3

    .line 1015
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda328;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda328;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_wallpaper_activity"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDeviceStateAutoRotateSettingLogging()Z
    .registers 3

    .line 1022
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda134;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda134;-><init>()V

    const-string v1, "com.android.window.flags.enable_device_state_auto_rotate_setting_logging"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDeviceStateAutoRotateSettingRefactor()Z
    .registers 3

    .line 1029
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda220;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda220;-><init>()V

    const-string v1, "com.android.window.flags.enable_device_state_auto_rotate_setting_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDialogDisplayFixes()Z
    .registers 3

    .line 1036
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda129;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda129;-><init>()V

    const-string v1, "com.android.window.flags.enable_dialog_display_fixes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDisplayCompatMode()Z
    .registers 3

    .line 1043
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.window.flags.enable_display_compat_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDisplayDisconnectInteraction()Z
    .registers 3

    .line 1050
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda233;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda233;-><init>()V

    const-string v1, "com.android.window.flags.enable_display_disconnect_interaction"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDisplayFocusInShellTransitions()Z
    .registers 3

    .line 1057
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda102;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda102;-><init>()V

    const-string v1, "com.android.window.flags.enable_display_focus_in_shell_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDisplayReconnectInteraction()Z
    .registers 3

    .line 1064
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda329;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda329;-><init>()V

    const-string v1, "com.android.window.flags.enable_display_reconnect_interaction"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDisplayWindowingModeSwitching()Z
    .registers 3

    .line 1071
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.window.flags.enable_display_windowing_mode_switching"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDragEndStableBoundsReset()Z
    .registers 3

    .line 1078
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda113;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda113;-><init>()V

    const-string v1, "com.android.window.flags.enable_drag_end_stable_bounds_reset"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDragResizeSetUpInBgThread()Z
    .registers 3

    .line 1085
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda126;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda126;-><init>()V

    const-string v1, "com.android.window.flags.enable_drag_resize_set_up_in_bg_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDragToDesktopIncomingTransitionsBugfix()Z
    .registers 3

    .line 1092
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda142;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda142;-><init>()V

    const-string v1, "com.android.window.flags.enable_drag_to_desktop_incoming_transitions_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDragToMaximize()Z
    .registers 3

    .line 1099
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda256;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda256;-><init>()V

    const-string v1, "com.android.window.flags.enable_drag_to_maximize"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDraggingPipAcrossDisplays()Z
    .registers 3

    .line 1106
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda127;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda127;-><init>()V

    const-string v1, "com.android.window.flags.enable_dragging_pip_across_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDrawingAppHandle()Z
    .registers 3

    .line 1113
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda99;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda99;-><init>()V

    const-string v1, "com.android.window.flags.enable_drawing_app_handle"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDreamActivityWindowingExclusion()Z
    .registers 3

    .line 1120
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda179;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda179;-><init>()V

    const-string v1, "com.android.window.flags.enable_dream_activity_windowing_exclusion"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDynamicRadiusComputationBugfix()Z
    .registers 3

    .line 1127
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda175;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda175;-><init>()V

    const-string v1, "com.android.window.flags.enable_dynamic_radius_computation_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableEmptyDeskOnMinimize()Z
    .registers 3

    .line 1134
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda162;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda162;-><init>()V

    const-string v1, "com.android.window.flags.enable_empty_desk_on_minimize"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableExperimentalBubblesController()Z
    .registers 3

    .line 1141
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda146;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda146;-><init>()V

    const-string v1, "com.android.window.flags.enable_experimental_bubbles_controller"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableExternalDisplayPersistenceBugfix()Z
    .registers 3

    .line 1148
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda306;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda306;-><init>()V

    const-string v1, "com.android.window.flags.enable_external_display_persistence_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableFreeformBoxShadows()Z
    .registers 3

    .line 1155
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda166;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda166;-><init>()V

    const-string v1, "com.android.window.flags.enable_freeform_box_shadows"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableFreeformDisplayLaunchParams()Z
    .registers 3

    .line 1162
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "com.android.window.flags.enable_freeform_display_launch_params"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableFullScreenWindowOnRemovingSplitScreenStageBugfix()Z
    .registers 3

    .line 1169
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "com.android.window.flags.enable_full_screen_window_on_removing_split_screen_stage_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableFullscreenWindowControls()Z
    .registers 3

    .line 1176
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda330;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda330;-><init>()V

    const-string v1, "com.android.window.flags.enable_fullscreen_window_controls"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableFullyImmersiveInDesktop()Z
    .registers 3

    .line 1183
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda171;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda171;-><init>()V

    const-string v1, "com.android.window.flags.enable_fully_immersive_in_desktop"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableHandleInputFix()Z
    .registers 3

    .line 1190
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda243;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda243;-><init>()V

    const-string v1, "com.android.window.flags.enable_handle_input_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableHandlersDebuggingMode()Z
    .registers 3

    .line 1197
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda193;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda193;-><init>()V

    const-string v1, "com.android.window.flags.enable_handlers_debugging_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableHoldToDragAppHandle()Z
    .registers 3

    .line 1204
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda305;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda305;-><init>()V

    const-string v1, "com.android.window.flags.enable_hold_to_drag_app_handle"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableIndependentBackInProjected()Z
    .registers 3

    .line 1211
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.window.flags.enable_independent_back_in_projected"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableInorderTransitionCallbacksForDesktop()Z
    .registers 3

    .line 1218
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda241;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda241;-><init>()V

    const-string v1, "com.android.window.flags.enable_inorder_transition_callbacks_for_desktop"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableInputLayerTransitionFix()Z
    .registers 3

    .line 1225
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.window.flags.enable_input_layer_transition_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableInteractionDependentTabTearingBounds()Z
    .registers 3

    .line 1232
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.window.flags.enable_interaction_dependent_tab_tearing_bounds"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableInteractivePictureInPicture()Z
    .registers 3

    .line 1239
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda213;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda213;-><init>()V

    const-string v1, "com.android.window.flags.enable_interactive_picture_in_picture"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableKeyGestureHandlerForSysui()Z
    .registers 3

    .line 1246
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda250;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda250;-><init>()V

    const-string v1, "com.android.window.flags.enable_key_gesture_handler_for_sysui"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableLauncherHandleGoHomeKeyboardShortcut()Z
    .registers 3

    .line 1253
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "com.android.window.flags.enable_launcher_handle_go_home_keyboard_shortcut"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableMinimizeButton()Z
    .registers 3

    .line 1260
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda145;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda145;-><init>()V

    const-string v1, "com.android.window.flags.enable_minimize_button"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableMirrorDisplayNoActivity()Z
    .registers 3

    .line 1267
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda345;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda345;-><init>()V

    const-string v1, "com.android.window.flags.enable_mirror_display_no_activity"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableModalsFullscreenWithPermission()Z
    .registers 3

    .line 1274
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda163;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda163;-><init>()V

    const-string v1, "com.android.window.flags.enable_modals_fullscreen_with_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableModalsFullscreenWithPlatformSignature()Z
    .registers 3

    .line 1281
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda311;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda311;-><init>()V

    const-string v1, "com.android.window.flags.enable_modals_fullscreen_with_platform_signature"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableMoveToNextDisplayShortcut()Z
    .registers 3

    .line 1288
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda252;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda252;-><init>()V

    const-string v1, "com.android.window.flags.enable_move_to_next_display_shortcut"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableMultiDisplayHomeFocusBugFix()Z
    .registers 3

    .line 1295
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda280;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda280;-><init>()V

    const-string v1, "com.android.window.flags.enable_multi_display_home_focus_bug_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableMultiDisplaySplit()Z
    .registers 3

    .line 1302
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda292;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda292;-><init>()V

    const-string v1, "com.android.window.flags.enable_multi_display_split"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableMultidisplayTrackpadBackGesture()Z
    .registers 3

    .line 1309
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.window.flags.enable_multidisplay_trackpad_back_gesture"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableMultipleDesktopsBackend()Z
    .registers 3

    .line 1316
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda228;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda228;-><init>()V

    const-string v1, "com.android.window.flags.enable_multiple_desktops_backend"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableMultipleDesktopsDefaultActivationInDesktopFirstDisplays()Z
    .registers 3

    .line 1323
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda186;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda186;-><init>()V

    const-string v1, "com.android.window.flags.enable_multiple_desktops_default_activation_in_desktop_first_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableMultipleDesktopsFrontend()Z
    .registers 3

    .line 1330
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda214;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda214;-><init>()V

    const-string v1, "com.android.window.flags.enable_multiple_desktops_frontend"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableNoWindowDecorationForDesks()Z
    .registers 3

    .line 1337
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda125;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda125;-><init>()V

    const-string v1, "com.android.window.flags.enable_no_window_decoration_for_desks"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableNonDefaultDisplaySplit()Z
    .registers 3

    .line 1344
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda143;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda143;-><init>()V

    const-string v1, "com.android.window.flags.enable_non_default_display_split"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableNonDefaultDisplaySplitBugfix()Z
    .registers 3

    .line 1351
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda208;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda208;-><init>()V

    const-string v1, "com.android.window.flags.enable_non_default_display_split_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableOpaqueBackgroundForTransparentWindows()Z
    .registers 3

    .line 1358
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda101;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda101;-><init>()V

    const-string v1, "com.android.window.flags.enable_opaque_background_for_transparent_windows"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableOverflowButtonForTaskbarPinnedItems()Z
    .registers 3

    .line 1365
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "com.android.window.flags.enable_overflow_button_for_taskbar_pinned_items"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePerDisplayDesktopWallpaperActivity()Z
    .registers 3

    .line 1372
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda239;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda239;-><init>()V

    const-string v1, "com.android.window.flags.enable_per_display_desktop_wallpaper_activity"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePerDisplayPackageContextCacheInStatusbarNotif()Z
    .registers 3

    .line 1379
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda106;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda106;-><init>()V

    const-string v1, "com.android.window.flags.enable_per_display_package_context_cache_in_statusbar_notif"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePerDisplayWindowDecorViewHostPool()Z
    .registers 3

    .line 1386
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda240;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda240;-><init>()V

    const-string v1, "com.android.window.flags.enable_per_display_window_decor_view_host_pool"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePersistingDisplaySizeForConnectedDisplays()Z
    .registers 3

    .line 1393
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda295;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda295;-><init>()V

    const-string v1, "com.android.window.flags.enable_persisting_display_size_for_connected_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePinningAppWithContextMenu()Z
    .registers 3

    .line 1400
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.window.flags.enable_pinning_app_with_context_menu"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePipParamsUpdateNotificationBugfix()Z
    .registers 3

    .line 1407
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda75;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda75;-><init>()V

    const-string v1, "com.android.window.flags.enable_pip_params_update_notification_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePresentationDisallowedOnUnfocusedHostTask()Z
    .registers 3

    .line 1414
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda266;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda266;-><init>()V

    const-string v1, "com.android.window.flags.enable_presentation_disallowed_on_unfocused_host_task"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePresentationForConnectedDisplays()Z
    .registers 3

    .line 1421
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda236;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda236;-><init>()V

    const-string v1, "com.android.window.flags.enable_presentation_for_connected_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableProjectedDisplayDesktopMode()Z
    .registers 3

    .line 1428
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda91;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda91;-><init>()V

    const-string v1, "com.android.window.flags.enable_projected_display_desktop_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableQuickswitchDesktopSplitBugfix()Z
    .registers 3

    .line 1435
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda133;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda133;-><init>()V

    const-string v1, "com.android.window.flags.enable_quickswitch_desktop_split_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableRejectHomeTransition()Z
    .registers 3

    .line 1442
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda155;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda155;-><init>()V

    const-string v1, "com.android.window.flags.enable_reject_home_transition"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableRemoveStatusBarInputLayer()Z
    .registers 3

    .line 1449
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda275;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda275;-><init>()V

    const-string v1, "com.android.window.flags.enable_remove_status_bar_input_layer"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableRequestFullscreenBugfix()Z
    .registers 3

    .line 1456
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda131;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda131;-><init>()V

    const-string v1, "com.android.window.flags.enable_request_fullscreen_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableRequestFullscreenRefactor()Z
    .registers 3

    .line 1463
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda290;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda290;-><init>()V

    const-string v1, "com.android.window.flags.enable_request_fullscreen_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableRequestFullscreenRestoreFreeformBugfix()Z
    .registers 3

    .line 1470
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda81;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda81;-><init>()V

    const-string v1, "com.android.window.flags.enable_request_fullscreen_restore_freeform_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableResizingMetrics()Z
    .registers 3

    .line 1477
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda224;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda224;-><init>()V

    const-string v1, "com.android.window.flags.enable_resizing_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableRestartMenuForConnectedDisplays()Z
    .registers 3

    .line 1484
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda196;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda196;-><init>()V

    const-string v1, "com.android.window.flags.enable_restart_menu_for_connected_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableRestoreToPreviousSizeFromDesktopImmersive()Z
    .registers 3

    .line 1491
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda124;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda124;-><init>()V

    const-string v1, "com.android.window.flags.enable_restore_to_previous_size_from_desktop_immersive"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableSeeThroughTaskFragments()Z
    .registers 3

    .line 1498
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;-><init>()V

    const-string v1, "com.android.window.flags.enable_see_through_task_fragments"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableShellInitialBoundsRegressionBugFix()Z
    .registers 3

    .line 1505
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda109;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda109;-><init>()V

    const-string v1, "com.android.window.flags.enable_shell_initial_bounds_regression_bug_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableShrinkWindowBoundsAfterDrag()Z
    .registers 3

    .line 1512
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "com.android.window.flags.enable_shrink_window_bounds_after_drag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableSizeCompatModeImprovementsForConnectedDisplays()Z
    .registers 3

    .line 1519
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda232;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda232;-><init>()V

    const-string v1, "com.android.window.flags.enable_size_compat_mode_improvements_for_connected_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableStartLaunchTransitionFromTaskbarBugfix()Z
    .registers 3

    .line 1526
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda273;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda273;-><init>()V

    const-string v1, "com.android.window.flags.enable_start_launch_transition_from_taskbar_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableSysDecorsCallbacksViaWm()Z
    .registers 3

    .line 1533
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda203;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda203;-><init>()V

    const-string v1, "com.android.window.flags.enable_sys_decors_callbacks_via_wm"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTallAppHeaders()Z
    .registers 3

    .line 1540
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.window.flags.enable_tall_app_headers"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTaskResizingKeyboardShortcuts()Z
    .registers 3

    .line 1547
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda201;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda201;-><init>()V

    const-string v1, "com.android.window.flags.enable_task_resizing_keyboard_shortcuts"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTaskStackObserverInShell()Z
    .registers 3

    .line 1554
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.window.flags.enable_task_stack_observer_in_shell"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTaskbarConnectedDisplays()Z
    .registers 3

    .line 1561
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda312;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda312;-><init>()V

    const-string v1, "com.android.window.flags.enable_taskbar_connected_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTaskbarOverflow()Z
    .registers 3

    .line 1568
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda221;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda221;-><init>()V

    const-string v1, "com.android.window.flags.enable_taskbar_overflow"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTaskbarRecentTasksThrottleBugfix()Z
    .registers 3

    .line 1575
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda159;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda159;-><init>()V

    const-string v1, "com.android.window.flags.enable_taskbar_recent_tasks_throttle_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTaskbarRecentsLayoutTransition()Z
    .registers 3

    .line 1582
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "com.android.window.flags.enable_taskbar_recents_layout_transition"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableThemedAppHeaders()Z
    .registers 3

    .line 1589
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda144;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda144;-><init>()V

    const-string v1, "com.android.window.flags.enable_themed_app_headers"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTileResizing()Z
    .registers 3

    .line 1596
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda307;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda307;-><init>()V

    const-string v1, "com.android.window.flags.enable_tile_resizing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTopVisibleRootTaskPerUserTracking()Z
    .registers 3

    .line 1603
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda168;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda168;-><init>()V

    const-string v1, "com.android.window.flags.enable_top_visible_root_task_per_user_tracking"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTransitionOnActivitySetRequestedOrientation()Z
    .registers 3

    .line 1610
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.window.flags.enable_transition_on_activity_set_requested_orientation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableUpdatedDisplayConnectionDialog()Z
    .registers 3

    .line 1617
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda285;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda285;-><init>()V

    const-string v1, "com.android.window.flags.enable_updated_display_connection_dialog"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableUpscalingSizeCompatOnExitingDesktopBugfix()Z
    .registers 3

    .line 1624
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda334;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda334;-><init>()V

    const-string v1, "com.android.window.flags.enable_upscaling_size_compat_on_exiting_desktop_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableVisualIndicatorInTransitionBugfix()Z
    .registers 3

    .line 1631
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda156;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda156;-><init>()V

    const-string v1, "com.android.window.flags.enable_visual_indicator_in_transition_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableWindowContextResourcesUpdateOnConfigChange()Z
    .registers 3

    .line 1638
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda89;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda89;-><init>()V

    const-string v1, "com.android.window.flags.enable_window_context_resources_update_on_config_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableWindowDecorationRefactor()Z
    .registers 3

    .line 1645
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.window.flags.enable_window_decoration_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableWindowDropSmoothTransition()Z
    .registers 3

    .line 1652
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda72;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda72;-><init>()V

    const-string v1, "com.android.window.flags.enable_window_drop_smooth_transition"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableWindowRepositioningApi()Z
    .registers 3

    .line 1659
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda333;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda333;-><init>()V

    const-string v1, "com.android.window.flags.enable_window_repositioning_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableWindowingDynamicInitialBounds()Z
    .registers 3

    .line 1666
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda111;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda111;-><init>()V

    const-string v1, "com.android.window.flags.enable_windowing_dynamic_initial_bounds"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableWindowingEdgeDragResize()Z
    .registers 3

    .line 1673
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda300;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda300;-><init>()V

    const-string v1, "com.android.window.flags.enable_windowing_edge_drag_resize"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableWindowingScaledResizing()Z
    .registers 3

    .line 1680
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda303;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda303;-><init>()V

    const-string v1, "com.android.window.flags.enable_windowing_scaled_resizing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableWindowingTaskStackOrderBugfix()Z
    .registers 3

    .line 1687
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda136;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda136;-><init>()V

    const-string v1, "com.android.window.flags.enable_windowing_task_stack_order_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableWindowingTransitionHandlersObservers()Z
    .registers 3

    .line 1694
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda235;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda235;-><init>()V

    const-string v1, "com.android.window.flags.enable_windowing_transition_handlers_observers"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enforceEdgeToEdge()Z
    .registers 3

    .line 1701
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda267;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda267;-><init>()V

    const-string v1, "com.android.window.flags.enforce_edge_to_edge"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ensureKeyguardDoesTransitionStartingBugFix()Z
    .registers 3

    .line 1708
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda302;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda302;-><init>()V

    const-string v1, "com.android.window.flags.ensure_keyguard_does_transition_starting_bug_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ensureWallpaperDrawnOnDisplaySwitch()Z
    .registers 3

    .line 1715
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda71;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda71;-><init>()V

    const-string v1, "com.android.window.flags.ensure_wallpaper_drawn_on_display_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enterDesktopByDefaultOnFreeformDisplays()Z
    .registers 3

    .line 1722
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "com.android.window.flags.enter_desktop_by_default_on_freeform_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist excludeCaptionFromAppBounds()Z
    .registers 3

    .line 1729
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda336;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda336;-><init>()V

    const-string v1, "com.android.window.flags.exclude_caption_from_app_bounds"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist excludeDeskRootsFromDesktopTasks()Z
    .registers 3

    .line 1736
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda85;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda85;-><init>()V

    const-string v1, "com.android.window.flags.exclude_desk_roots_from_desktop_tasks"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist excludingLayerFromTaskSnapshot()Z
    .registers 3

    .line 1743
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "com.android.window.flags.excluding_layer_from_task_snapshot"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fallbackToFocusedDisplay()Z
    .registers 3

    .line 1750
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda176;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda176;-><init>()V

    const-string v1, "com.android.window.flags.fallback_to_focused_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fallbackTransitionPlayer()Z
    .registers 3

    .line 1757
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda172;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda172;-><init>()V

    const-string v1, "com.android.window.flags.fallback_transition_player"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fifoPriorityForMajorUiProcesses()Z
    .registers 3

    .line 1764
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda271;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda271;-><init>()V

    const-string v1, "com.android.window.flags.fifo_priority_for_major_ui_processes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixBalReparentExistingTask()Z
    .registers 3

    .line 1771
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "com.android.window.flags.fix_bal_reparent_existing_task"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixBubbleTrampolineAnimation()Z
    .registers 3

    .line 1778
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.window.flags.fix_bubble_trampoline_animation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixHideOverlayApi()Z
    .registers 3

    .line 1785
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda68;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda68;-><init>()V

    const-string v1, "com.android.window.flags.fix_hide_overlay_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixLeakingVisualIndicator()Z
    .registers 3

    .line 1792
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda230;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda230;-><init>()V

    const-string v1, "com.android.window.flags.fix_leaking_visual_indicator"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixRapidTopResumedSwitch()Z
    .registers 3

    .line 1799
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda259;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda259;-><init>()V

    const-string v1, "com.android.window.flags.fix_rapid_top_resumed_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist forceCloseTopTransparentFullscreenTask()Z
    .registers 3

    .line 1806
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda187;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda187;-><init>()V

    const-string v1, "com.android.window.flags.force_close_top_transparent_fullscreen_task"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist formFactorBasedDesktopFirstSwitch()Z
    .registers 3

    .line 1813
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;-><init>()V

    const-string v1, "com.android.window.flags.form_factor_based_desktop_first_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2458
    const/16 v0, 0x15a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.window.flags.activity_embedding_abort_cross_uid_launch_in_finishing_task_fragment"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.activity_embedding_delay_task_fragment_finish_for_activity_launch"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.activity_embedding_interactive_divider_flag"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.activity_embedding_metrics"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.allow_disable_activity_record_input_sink"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.always_draw_magnification_fullscreen_border"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.always_seq_id_layout"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.always_seq_id_layout_wear"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.always_update_wallpaper_permission"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.aod_transition"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.app_compat_properties_api"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.app_compat_refactoring"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.app_compat_refactoring_fix_multiwindow_task_hierarchy"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.app_compat_refactoring_force_change_for_letterbox_transitions"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.app_compat_refactoring_rounded_corners"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.app_compat_refactoring_rounded_corners_animation"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.app_compat_refactoring_set_appbounds_to_null_when_empty"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.app_compat_refactoring_skip_starting_window_letterbox"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.app_compat_refactoring_use_activity_leash_for_letterboxing"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.app_compat_ui_framework"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.app_handle_no_relayout_on_exclusion_change"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.apply_desk_activation_on_user_switch"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.apply_lifecycle_on_pip_change"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.avoid_rebinding_intentionally_disconnected_wallpaper"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.backup_and_restore_for_user_aspect_ratio_settings"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_additional_start_modes"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_check_broadcast_when_dispatched"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_cover_intent_sender"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_dont_bring_existing_background_task_stack_to_fg"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_reduce_grace_period"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_report_aborted_activity_starts"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_respect_app_switch_state_when_check_bound_by_foreground_uid"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_send_intent_with_options"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_strict_mode_ro"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.camera_compat_fullscreen_pick_same_task_activity"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.camera_compat_landscape_camera_support"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.camera_compat_unify_camera_policies"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.clear_reusable_scvh_on_release"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.close_fullscreen_and_splitscreen_keyboard_shortcut"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.close_task_keyboard_shortcut"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.close_to_square_config_includes_status_bar"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.cover_display_opt_in"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.current_animator_scale_uses_shared_memory"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.default_desk_without_warmup_migration"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.defer_resume_focus_in_non_focused_window"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.density_390_api"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.deprecate_surface_animation_frame_callback"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.deprecate_window_animator_frame_callback"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.dimming_wallpaper_for_maximized_and_tiled"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.disable_desktop_launch_params_outside_desktop_bug_fix"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.disable_non_resizable_app_snap_resizing"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.disable_restore_non_fullscreen_bounds_on_configuration_change"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.do_not_force_wallpaper_for_freeform_task"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_accessible_custom_headers"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_activity_embedding_support_for_connected_displays"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_app_handle_position_reporting"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_app_header_with_task_density"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_app_to_web_education_animation"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_auto_restart_on_display_move"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_backup_and_restore_display_window_settings"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_block_non_desktop_display_window_drag_bugfix"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_border_settings"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_bounds_restoring_on_tiling_exit"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_box_shadow_settings"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_bug_fixes_for_secondary_display"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_camera_compat_compatibility_info_rotate_and_crop_bugfix"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_camera_compat_external_display_rotation_bugfix"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_camera_compat_for_desktop_windowing"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_camera_compat_for_desktop_windowing_opt_out"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_camera_compat_for_desktop_windowing_opt_out_api"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_camera_compat_sandbox_display_rotation_on_external_displays_bugfix"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_camera_compat_track_task_and_app_bugfix"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_caption_compat_inset_conversion"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_caption_compat_inset_force_consumption"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_caption_compat_inset_force_consumption_always"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_cascading_windows"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_close_lid_interaction"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_compat_ui_desktop_mode_synchronization_bugfix"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_compat_ui_visibility_status"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_compatui_sysui_launcher_fix"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_connected_displays_dnd"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_connected_displays_pip"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_connected_displays_wallpaper_presentations"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_connected_displays_window_drag"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_crash_logging_for_desktop"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_cross_displays_app_launch_transition"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_cross_displays_pip_task_launch"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_app_handle_animation"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_app_header_state_change_announcements"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_app_launch_alttab_transitions"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_app_launch_alttab_transitions_bugfix"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_app_launch_bugfix"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_app_launch_transitions"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_app_launch_transitions_bugfix"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_close_shortcut_bugfix"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_close_task_animation_in_dtc_bugfix"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_first_based_default_to_desktop_bugfix"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_first_based_drag_to_maximize"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_first_fullscreen_refocus_bugfix"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_first_listener"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_first_policy_in_lpm"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_first_top_fullscreen_bugfix"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_ime_bugfix"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_immersive_drag_bugfix"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_indicator_in_separate_thread_bugfix"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_invisible_task_removal_cleanup_bugfix"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_mode_through_dev_option"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_opening_deeplink_minimize_animation_bugfix"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_recents_transitions_corners_bugfix"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_splitscreen_transition_bugfix"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_system_dialogs_transitions"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_tab_tearing_launch_animation"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_tab_tearing_minimize_animation_bugfix"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_task_limit_separate_transition"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_taskbar_on_freeform_displays"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_trampoline_close_animation_bugfix"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_wallpaper_activity_for_system_user"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_app_handle_education"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_app_to_web"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_app_to_web_education"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_app_to_web_education_integration"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_back_navigation"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_enter_transition_bugfix"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_enter_transitions"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_enterprise_bugfix"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_exit_by_minimize_transition_bugfix"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_exit_transitions"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_exit_transitions_bugfix"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_hsum"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_immersive_handle_hiding"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_modals_policy"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_mode"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_multi_instance_features"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_persistence"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_pip"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_pip_in_overview_bugfix"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_quick_switch"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_scvh_cache_bug_fix"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_size_constraints"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_task_limit"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_taskbar_running_apps"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_transitions"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_wallpaper_activity"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_device_state_auto_rotate_setting_logging"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_device_state_auto_rotate_setting_refactor"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_dialog_display_fixes"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_display_compat_mode"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_display_disconnect_interaction"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_display_focus_in_shell_transitions"

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_display_reconnect_interaction"

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_display_windowing_mode_switching"

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_drag_end_stable_bounds_reset"

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_drag_resize_set_up_in_bg_thread"

    const/16 v2, 0x98

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_drag_to_desktop_incoming_transitions_bugfix"

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_drag_to_maximize"

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_dragging_pip_across_displays"

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_drawing_app_handle"

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_dream_activity_windowing_exclusion"

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_dynamic_radius_computation_bugfix"

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_empty_desk_on_minimize"

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_experimental_bubbles_controller"

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_external_display_persistence_bugfix"

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_freeform_box_shadows"

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_freeform_display_launch_params"

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_full_screen_window_on_removing_split_screen_stage_bugfix"

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_fullscreen_window_controls"

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_fully_immersive_in_desktop"

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_handle_input_fix"

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_handlers_debugging_mode"

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_hold_to_drag_app_handle"

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_independent_back_in_projected"

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_inorder_transition_callbacks_for_desktop"

    const/16 v2, 0xab

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_input_layer_transition_fix"

    const/16 v2, 0xac

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_interaction_dependent_tab_tearing_bounds"

    const/16 v2, 0xad

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_interactive_picture_in_picture"

    const/16 v2, 0xae

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_key_gesture_handler_for_sysui"

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_launcher_handle_go_home_keyboard_shortcut"

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_minimize_button"

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_mirror_display_no_activity"

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_modals_fullscreen_with_permission"

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_modals_fullscreen_with_platform_signature"

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_move_to_next_display_shortcut"

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_multi_display_home_focus_bug_fix"

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_multi_display_split"

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_multidisplay_trackpad_back_gesture"

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_multiple_desktops_backend"

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_multiple_desktops_default_activation_in_desktop_first_displays"

    const/16 v2, 0xba

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_multiple_desktops_frontend"

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_no_window_decoration_for_desks"

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_non_default_display_split"

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_non_default_display_split_bugfix"

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_opaque_background_for_transparent_windows"

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_overflow_button_for_taskbar_pinned_items"

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_per_display_desktop_wallpaper_activity"

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_per_display_package_context_cache_in_statusbar_notif"

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_per_display_window_decor_view_host_pool"

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_persisting_display_size_for_connected_displays"

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_pinning_app_with_context_menu"

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_pip_params_update_notification_bugfix"

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_presentation_disallowed_on_unfocused_host_task"

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_presentation_for_connected_displays"

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_projected_display_desktop_mode"

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_quickswitch_desktop_split_bugfix"

    const/16 v2, 0xca

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_reject_home_transition"

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_remove_status_bar_input_layer"

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_request_fullscreen_bugfix"

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_request_fullscreen_refactor"

    const/16 v2, 0xce

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_request_fullscreen_restore_freeform_bugfix"

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_resizing_metrics"

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_restart_menu_for_connected_displays"

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_restore_to_previous_size_from_desktop_immersive"

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_see_through_task_fragments"

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_shell_initial_bounds_regression_bug_fix"

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_shrink_window_bounds_after_drag"

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_size_compat_mode_improvements_for_connected_displays"

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_start_launch_transition_from_taskbar_bugfix"

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_sys_decors_callbacks_via_wm"

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_tall_app_headers"

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_task_resizing_keyboard_shortcuts"

    const/16 v2, 0xda

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_task_stack_observer_in_shell"

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_taskbar_connected_displays"

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_taskbar_overflow"

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_taskbar_recent_tasks_throttle_bugfix"

    const/16 v2, 0xde

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_taskbar_recents_layout_transition"

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_themed_app_headers"

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_tile_resizing"

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_top_visible_root_task_per_user_tracking"

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_transition_on_activity_set_requested_orientation"

    const/16 v2, 0xe3

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_updated_display_connection_dialog"

    const/16 v2, 0xe4

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_upscaling_size_compat_on_exiting_desktop_bugfix"

    const/16 v2, 0xe5

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_visual_indicator_in_transition_bugfix"

    const/16 v2, 0xe6

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_window_context_resources_update_on_config_change"

    const/16 v2, 0xe7

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_window_decoration_refactor"

    const/16 v2, 0xe8

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_window_drop_smooth_transition"

    const/16 v2, 0xe9

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_window_repositioning_api"

    const/16 v2, 0xea

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_windowing_dynamic_initial_bounds"

    const/16 v2, 0xeb

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_windowing_edge_drag_resize"

    const/16 v2, 0xec

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_windowing_scaled_resizing"

    const/16 v2, 0xed

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_windowing_task_stack_order_bugfix"

    const/16 v2, 0xee

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_windowing_transition_handlers_observers"

    const/16 v2, 0xef

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enforce_edge_to_edge"

    const/16 v2, 0xf0

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.ensure_keyguard_does_transition_starting_bug_fix"

    const/16 v2, 0xf1

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.ensure_wallpaper_drawn_on_display_switch"

    const/16 v2, 0xf2

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enter_desktop_by_default_on_freeform_displays"

    const/16 v2, 0xf3

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.exclude_caption_from_app_bounds"

    const/16 v2, 0xf4

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.exclude_desk_roots_from_desktop_tasks"

    const/16 v2, 0xf5

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.excluding_layer_from_task_snapshot"

    const/16 v2, 0xf6

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.fallback_to_focused_display"

    const/16 v2, 0xf7

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.fallback_transition_player"

    const/16 v2, 0xf8

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.fifo_priority_for_major_ui_processes"

    const/16 v2, 0xf9

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.fix_bal_reparent_existing_task"

    const/16 v2, 0xfa

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.fix_bubble_trampoline_animation"

    const/16 v2, 0xfb

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.fix_hide_overlay_api"

    const/16 v2, 0xfc

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.fix_leaking_visual_indicator"

    const/16 v2, 0xfd

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.fix_rapid_top_resumed_switch"

    const/16 v2, 0xfe

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.force_close_top_transparent_fullscreen_task"

    const/16 v2, 0xff

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.form_factor_based_desktop_first_switch"

    const/16 v2, 0x100

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.grant_manage_key_gestures_to_recents"

    const/16 v2, 0x101

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.handle_incompatible_tasks_in_desktop_launch_params"

    const/16 v2, 0x102

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.ignore_aspect_ratio_restrictions_for_resizeable_freeform_activities"

    const/16 v2, 0x103

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.ignore_corner_radius_and_shadows"

    const/16 v2, 0x104

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.ignore_current_params_in_desktop_launch_params"

    const/16 v2, 0x105

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.ignore_override_task_bounds_if_incompatible_with_display"

    const/16 v2, 0x106

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.ime_back_callback_leak_prevention"

    const/16 v2, 0x107

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.include_top_transparent_fullscreen_task_in_desktop_heuristic"

    const/16 v2, 0x108

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.inherit_task_bounds_for_trampoline_task_launches"

    const/16 v2, 0x109

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.jank_api"

    const/16 v2, 0x10a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.keyboard_shortcuts_to_switch_desks"

    const/16 v2, 0x10b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.keyguard_remove_default_display_usage"

    const/16 v2, 0x10c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.letterbox_background_wallpaper"

    const/16 v2, 0x10d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.limit_system_fullscreen_override_to_default_display"

    const/16 v2, 0x10e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.migrate_basic_legacy_ready"

    const/16 v2, 0x10f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.move_to_external_display_shortcut"

    const/16 v2, 0x110

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.move_to_next_display_shortcut_with_projected_mode"

    const/16 v2, 0x111

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.multi_crop"

    const/16 v2, 0x112

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.multiple_system_navigation_observer_callbacks"

    const/16 v2, 0x113

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.nested_tasks_with_independent_bounds_bugfix"

    const/16 v2, 0x114

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.no_alpha_rotation_enter_animation"

    const/16 v2, 0x115

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.opt_out_override_orientation_to_user"

    const/16 v2, 0x116

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.parallel_cd_transitions_during_recents"

    const/16 v2, 0x117

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.polish_close_wallpaper_includes_open_change"

    const/16 v2, 0x118

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.port_window_size_animation"

    const/16 v2, 0x119

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.predictive_back_callback_cancellation_fix"

    const/16 v2, 0x11a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.predictive_back_delay_wm_transition"

    const/16 v2, 0x11b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.predictive_back_intercept_transition"

    const/16 v2, 0x11c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.predictive_back_priority_system_navigation_observer"

    const/16 v2, 0x11d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.predictive_back_stop_keycode_back_forwarding"

    const/16 v2, 0x11e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.predictive_back_swipe_edge_none_api"

    const/16 v2, 0x11f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.predictive_back_system_override_callback"

    const/16 v2, 0x120

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.predictive_back_timestamp_api"

    const/16 v2, 0x121

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.preserve_recents_task_configuration_on_relaunch"

    const/16 v2, 0x122

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.rear_display_disable_force_desktop_system_decorations"

    const/16 v2, 0x123

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.reduce_changed_exclusion_rects_msgs"

    const/16 v2, 0x124

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.reduce_task_snapshot_memory_usage"

    const/16 v2, 0x125

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.reenable_app_handle_animations"

    const/16 v2, 0x126

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.reenable_app_handle_color_animations"

    const/16 v2, 0x127

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.refactor_match_parent_bounds"

    const/16 v2, 0x128

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.relative_insets"

    const/16 v2, 0x129

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.release_all_transition_surfaces"

    const/16 v2, 0x12a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.remove_desk_on_last_task_removal"

    const/16 v2, 0x12b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.remove_get_dimmer"

    const/16 v2, 0x12c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.reparent_window_token_api"

    const/16 v2, 0x12d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.repository_based_persistence"

    const/16 v2, 0x12e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.repository_based_persistence_bg_thread"

    const/16 v2, 0x12f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.respect_fullscreen_activity_option_in_desktop_launch_params"

    const/16 v2, 0x130

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.respect_orientation_change_for_unresizeable"

    const/16 v2, 0x131

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.respect_requested_task_snapshot_resolution"

    const/16 v2, 0x132

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.restore_user_aspect_ratio_settings_using_service"

    const/16 v2, 0x133

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.restrict_freeform_hidden_system_bars_to_filling_tasks"

    const/16 v2, 0x134

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.return_all_visible_activities_for_vis"

    const/16 v2, 0x135

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.root_task_for_bubble"

    const/16 v2, 0x136

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.safe_region_letterboxing_v1"

    const/16 v2, 0x137

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.screen_recording_callbacks"

    const/16 v2, 0x138

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.scrolling_from_letterbox"

    const/16 v2, 0x139

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.scvh_set_focusable"

    const/16 v2, 0x13a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.scvh_surface_control_lifetime_fix"

    const/16 v2, 0x13b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.sdk_desired_present_time"

    const/16 v2, 0x13c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.set_sc_properties_in_client"

    const/16 v2, 0x13d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.show_app_handle_large_screens"

    const/16 v2, 0x13e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.show_biometric_prompt_secondary_display_message"

    const/16 v2, 0x13f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.show_desktop_experience_dev_option"

    const/16 v2, 0x140

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.show_desktop_windowing_dev_option"

    const/16 v2, 0x141

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.show_home_behind_desktop"

    const/16 v2, 0x142

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.skip_compat_ui_education_in_desktop_mode"

    const/16 v2, 0x143

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.skip_deactivation_of_desk_with_nothing_in_front"

    const/16 v2, 0x144

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.skip_decor_view_relayout_when_closing_bugfix"

    const/16 v2, 0x145

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.support_gemini_on_multi_display"

    const/16 v2, 0x146

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.system_content_priority"

    const/16 v2, 0x147

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.system_ui_post_animation_end"

    const/16 v2, 0x148

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.task_fragment_companion_activity"

    const/16 v2, 0x149

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.taskbar_running_tasks_in_splitscreen_select"

    const/16 v2, 0x14a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.toggle_fullscreen_state_via_fullscreen_key"

    const/16 v2, 0x14b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.touch_pass_through_opt_in"

    const/16 v2, 0x14c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.transfer_starting_window_to_next_when_invisible"

    const/16 v2, 0x14d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.transit_ready_tracking"

    const/16 v2, 0x14e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.transit_tracker_plumbing"

    const/16 v2, 0x14f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.transition_handler_cuj_tags"

    const/16 v2, 0x150

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.unify_shell_binders"

    const/16 v2, 0x151

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.universal_resizable_by_default"

    const/16 v2, 0x152

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.untrusted_embedding_any_app_permission"

    const/16 v2, 0x153

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.untrusted_embedding_state_sharing"

    const/16 v2, 0x154

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.update_dims_when_window_shown"

    const/16 v2, 0x155

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.update_task_crop_in_sync"

    const/16 v2, 0x156

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.use_input_reported_focus_for_accessibility"

    const/16 v2, 0x157

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.vdm_force_app_universal_resizable_api"

    const/16 v2, 0x158

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.wait_for_present_fence_on_display_switch"

    const/16 v2, 0x159

    aput-object v1, v0, v2

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
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 2454
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist grantManageKeyGesturesToRecents()Z
    .registers 3

    .line 1820
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda164;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda164;-><init>()V

    const-string v1, "com.android.window.flags.grant_manage_key_gestures_to_recents"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist handleIncompatibleTasksInDesktopLaunchParams()Z
    .registers 3

    .line 1827
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda92;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda92;-><init>()V

    const-string v1, "com.android.window.flags.handle_incompatible_tasks_in_desktop_launch_params"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreAspectRatioRestrictionsForResizeableFreeformActivities()Z
    .registers 3

    .line 1834
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.window.flags.ignore_aspect_ratio_restrictions_for_resizeable_freeform_activities"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreCornerRadiusAndShadows()Z
    .registers 3

    .line 1841
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.window.flags.ignore_corner_radius_and_shadows"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreCurrentParamsInDesktopLaunchParams()Z
    .registers 3

    .line 1848
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda299;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda299;-><init>()V

    const-string v1, "com.android.window.flags.ignore_current_params_in_desktop_launch_params"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreOverrideTaskBoundsIfIncompatibleWithDisplay()Z
    .registers 3

    .line 1855
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda324;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda324;-><init>()V

    const-string v1, "com.android.window.flags.ignore_override_task_bounds_if_incompatible_with_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist imeBackCallbackLeakPrevention()Z
    .registers 3

    .line 1862
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda316;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda316;-><init>()V

    const-string v1, "com.android.window.flags.ime_back_callback_leak_prevention"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist includeTopTransparentFullscreenTaskInDesktopHeuristic()Z
    .registers 3

    .line 1869
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda260;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda260;-><init>()V

    const-string v1, "com.android.window.flags.include_top_transparent_fullscreen_task_in_desktop_heuristic"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist inheritTaskBoundsForTrampolineTaskLaunches()Z
    .registers 3

    .line 1876
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda110;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda110;-><init>()V

    const-string v1, "com.android.window.flags.inherit_task_bounds_for_trampoline_task_launches"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 2441
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 2442
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 2443
    const/4 p1, 0x1

    return p1

    .line 2445
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist jankApi()Z
    .registers 3

    .line 1883
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda335;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda335;-><init>()V

    const-string v1, "com.android.window.flags.jank_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist keyboardShortcutsToSwitchDesks()Z
    .registers 3

    .line 1890
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda249;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda249;-><init>()V

    const-string v1, "com.android.window.flags.keyboard_shortcuts_to_switch_desks"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist keyguardRemoveDefaultDisplayUsage()Z
    .registers 3

    .line 1897
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda173;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda173;-><init>()V

    const-string v1, "com.android.window.flags.keyguard_remove_default_display_usage"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist letterboxBackgroundWallpaper()Z
    .registers 3

    .line 1904
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda340;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda340;-><init>()V

    const-string v1, "com.android.window.flags.letterbox_background_wallpaper"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist limitSystemFullscreenOverrideToDefaultDisplay()Z
    .registers 3

    .line 1911
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "com.android.window.flags.limit_system_fullscreen_override_to_default_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist migrateBasicLegacyReady()Z
    .registers 3

    .line 1918
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda217;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda217;-><init>()V

    const-string v1, "com.android.window.flags.migrate_basic_legacy_ready"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist moveToExternalDisplayShortcut()Z
    .registers 3

    .line 1925
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda83;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda83;-><init>()V

    const-string v1, "com.android.window.flags.move_to_external_display_shortcut"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist moveToNextDisplayShortcutWithProjectedMode()Z
    .registers 3

    .line 1932
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda205;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda205;-><init>()V

    const-string v1, "com.android.window.flags.move_to_next_display_shortcut_with_projected_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist multiCrop()Z
    .registers 3

    .line 1939
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda209;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda209;-><init>()V

    const-string v1, "com.android.window.flags.multi_crop"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist multipleSystemNavigationObserverCallbacks()Z
    .registers 3

    .line 1946
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda200;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda200;-><init>()V

    const-string v1, "com.android.window.flags.multiple_system_navigation_observer_callbacks"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nestedTasksWithIndependentBoundsBugfix()Z
    .registers 3

    .line 1953
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.window.flags.nested_tasks_with_independent_bounds_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist noAlphaRotationEnterAnimation()Z
    .registers 3

    .line 1960
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda322;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda322;-><init>()V

    const-string v1, "com.android.window.flags.no_alpha_rotation_enter_animation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist optOutOverrideOrientationToUser()Z
    .registers 3

    .line 1967
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda94;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda94;-><init>()V

    const-string v1, "com.android.window.flags.opt_out_override_orientation_to_user"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist parallelCdTransitionsDuringRecents()Z
    .registers 3

    .line 1974
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda165;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda165;-><init>()V

    const-string v1, "com.android.window.flags.parallel_cd_transitions_during_recents"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist polishCloseWallpaperIncludesOpenChange()Z
    .registers 3

    .line 1981
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda147;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda147;-><init>()V

    const-string v1, "com.android.window.flags.polish_close_wallpaper_includes_open_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist portWindowSizeAnimation()Z
    .registers 3

    .line 1988
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda98;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda98;-><init>()V

    const-string v1, "com.android.window.flags.port_window_size_animation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist predictiveBackCallbackCancellationFix()Z
    .registers 3

    .line 1995
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda301;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda301;-><init>()V

    const-string v1, "com.android.window.flags.predictive_back_callback_cancellation_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist predictiveBackDelayWmTransition()Z
    .registers 3

    .line 2002
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda321;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda321;-><init>()V

    const-string v1, "com.android.window.flags.predictive_back_delay_wm_transition"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist predictiveBackInterceptTransition()Z
    .registers 3

    .line 2009
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda74;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda74;-><init>()V

    const-string v1, "com.android.window.flags.predictive_back_intercept_transition"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist predictiveBackPrioritySystemNavigationObserver()Z
    .registers 3

    .line 2016
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda70;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda70;-><init>()V

    const-string v1, "com.android.window.flags.predictive_back_priority_system_navigation_observer"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist predictiveBackStopKeycodeBackForwarding()Z
    .registers 3

    .line 2023
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda278;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda278;-><init>()V

    const-string v1, "com.android.window.flags.predictive_back_stop_keycode_back_forwarding"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist predictiveBackSwipeEdgeNoneApi()Z
    .registers 3

    .line 2030
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda115;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda115;-><init>()V

    const-string v1, "com.android.window.flags.predictive_back_swipe_edge_none_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist predictiveBackSystemOverrideCallback()Z
    .registers 3

    .line 2037
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda104;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda104;-><init>()V

    const-string v1, "com.android.window.flags.predictive_back_system_override_callback"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist predictiveBackTimestampApi()Z
    .registers 3

    .line 2044
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda319;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda319;-><init>()V

    const-string v1, "com.android.window.flags.predictive_back_timestamp_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist preserveRecentsTaskConfigurationOnRelaunch()Z
    .registers 3

    .line 2051
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.window.flags.preserve_recents_task_configuration_on_relaunch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rearDisplayDisableForceDesktopSystemDecorations()Z
    .registers 3

    .line 2058
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda272;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda272;-><init>()V

    const-string v1, "com.android.window.flags.rear_display_disable_force_desktop_system_decorations"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist reduceChangedExclusionRectsMsgs()Z
    .registers 3

    .line 2065
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda207;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda207;-><init>()V

    const-string v1, "com.android.window.flags.reduce_changed_exclusion_rects_msgs"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist reduceTaskSnapshotMemoryUsage()Z
    .registers 3

    .line 2072
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda304;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda304;-><init>()V

    const-string v1, "com.android.window.flags.reduce_task_snapshot_memory_usage"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist reenableAppHandleAnimations()Z
    .registers 3

    .line 2079
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "com.android.window.flags.reenable_app_handle_animations"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist reenableAppHandleColorAnimations()Z
    .registers 3

    .line 2086
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda219;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda219;-><init>()V

    const-string v1, "com.android.window.flags.reenable_app_handle_color_animations"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist refactorMatchParentBounds()Z
    .registers 3

    .line 2093
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda84;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda84;-><init>()V

    const-string v1, "com.android.window.flags.refactor_match_parent_bounds"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist relativeInsets()Z
    .registers 3

    .line 2100
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda153;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda153;-><init>()V

    const-string v1, "com.android.window.flags.relative_insets"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist releaseAllTransitionSurfaces()Z
    .registers 3

    .line 2107
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda210;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda210;-><init>()V

    const-string v1, "com.android.window.flags.release_all_transition_surfaces"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeDeskOnLastTaskRemoval()Z
    .registers 3

    .line 2114
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.window.flags.remove_desk_on_last_task_removal"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeGetDimmer()Z
    .registers 3

    .line 2121
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.window.flags.remove_get_dimmer"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist reparentWindowTokenApi()Z
    .registers 3

    .line 2128
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda140;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda140;-><init>()V

    const-string v1, "com.android.window.flags.reparent_window_token_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist repositoryBasedPersistence()Z
    .registers 3

    .line 2135
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda181;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda181;-><init>()V

    const-string v1, "com.android.window.flags.repository_based_persistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist repositoryBasedPersistenceBgThread()Z
    .registers 3

    .line 2142
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda183;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda183;-><init>()V

    const-string v1, "com.android.window.flags.repository_based_persistence_bg_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist respectFullscreenActivityOptionInDesktopLaunchParams()Z
    .registers 3

    .line 2149
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.window.flags.respect_fullscreen_activity_option_in_desktop_launch_params"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist respectOrientationChangeForUnresizeable()Z
    .registers 3

    .line 2156
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "com.android.window.flags.respect_orientation_change_for_unresizeable"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist respectRequestedTaskSnapshotResolution()Z
    .registers 3

    .line 2163
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda103;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda103;-><init>()V

    const-string v1, "com.android.window.flags.respect_requested_task_snapshot_resolution"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist restoreUserAspectRatioSettingsUsingService()Z
    .registers 3

    .line 2170
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda112;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda112;-><init>()V

    const-string v1, "com.android.window.flags.restore_user_aspect_ratio_settings_using_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist restrictFreeformHiddenSystemBarsToFillingTasks()Z
    .registers 3

    .line 2177
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.window.flags.restrict_freeform_hidden_system_bars_to_filling_tasks"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist returnAllVisibleActivitiesForVis()Z
    .registers 3

    .line 2184
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda198;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda198;-><init>()V

    const-string v1, "com.android.window.flags.return_all_visible_activities_for_vis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rootTaskForBubble()Z
    .registers 3

    .line 2191
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda317;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda317;-><init>()V

    const-string v1, "com.android.window.flags.root_task_for_bubble"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist safeRegionLetterboxingV1()Z
    .registers 3

    .line 2198
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda178;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda178;-><init>()V

    const-string v1, "com.android.window.flags.safe_region_letterboxing_v1"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist screenRecordingCallbacks()Z
    .registers 3

    .line 2205
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda154;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda154;-><init>()V

    const-string v1, "com.android.window.flags.screen_recording_callbacks"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist scrollingFromLetterbox()Z
    .registers 3

    .line 2212
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda152;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda152;-><init>()V

    const-string v1, "com.android.window.flags.scrolling_from_letterbox"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist scvhSetFocusable()Z
    .registers 3

    .line 2219
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda97;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda97;-><init>()V

    const-string v1, "com.android.window.flags.scvh_set_focusable"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist scvhSurfaceControlLifetimeFix()Z
    .registers 3

    .line 2226
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda308;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda308;-><init>()V

    const-string v1, "com.android.window.flags.scvh_surface_control_lifetime_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sdkDesiredPresentTime()Z
    .registers 3

    .line 2233
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda274;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda274;-><init>()V

    const-string v1, "com.android.window.flags.sdk_desired_present_time"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setScPropertiesInClient()Z
    .registers 3

    .line 2240
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "com.android.window.flags.set_sc_properties_in_client"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist showAppHandleLargeScreens()Z
    .registers 3

    .line 2247
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda174;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda174;-><init>()V

    const-string v1, "com.android.window.flags.show_app_handle_large_screens"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist showBiometricPromptSecondaryDisplayMessage()Z
    .registers 3

    .line 2254
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.window.flags.show_biometric_prompt_secondary_display_message"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist showDesktopExperienceDevOption()Z
    .registers 3

    .line 2261
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda215;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda215;-><init>()V

    const-string v1, "com.android.window.flags.show_desktop_experience_dev_option"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist showDesktopWindowingDevOption()Z
    .registers 3

    .line 2268
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda114;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda114;-><init>()V

    const-string v1, "com.android.window.flags.show_desktop_windowing_dev_option"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist showHomeBehindDesktop()Z
    .registers 3

    .line 2275
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda78;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda78;-><init>()V

    const-string v1, "com.android.window.flags.show_home_behind_desktop"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist skipCompatUiEducationInDesktopMode()Z
    .registers 3

    .line 2282
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda105;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda105;-><init>()V

    const-string v1, "com.android.window.flags.skip_compat_ui_education_in_desktop_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist skipDeactivationOfDeskWithNothingInFront()Z
    .registers 3

    .line 2289
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.window.flags.skip_deactivation_of_desk_with_nothing_in_front"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist skipDecorViewRelayoutWhenClosingBugfix()Z
    .registers 3

    .line 2296
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "com.android.window.flags.skip_decor_view_relayout_when_closing_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportGeminiOnMultiDisplay()Z
    .registers 3

    .line 2303
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda270;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda270;-><init>()V

    const-string v1, "com.android.window.flags.support_gemini_on_multi_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist systemContentPriority()Z
    .registers 3

    .line 2310
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.window.flags.system_content_priority"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist systemUiPostAnimationEnd()Z
    .registers 3

    .line 2317
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "com.android.window.flags.system_ui_post_animation_end"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist taskFragmentCompanionActivity()Z
    .registers 3

    .line 2324
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda293;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda293;-><init>()V

    const-string v1, "com.android.window.flags.task_fragment_companion_activity"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist taskbarRunningTasksInSplitscreenSelect()Z
    .registers 3

    .line 2331
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda138;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda138;-><init>()V

    const-string v1, "com.android.window.flags.taskbar_running_tasks_in_splitscreen_select"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist toggleFullscreenStateViaFullscreenKey()Z
    .registers 3

    .line 2338
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda276;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda276;-><init>()V

    const-string v1, "com.android.window.flags.toggle_fullscreen_state_via_fullscreen_key"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist touchPassThroughOptIn()Z
    .registers 3

    .line 2345
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda197;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda197;-><init>()V

    const-string v1, "com.android.window.flags.touch_pass_through_opt_in"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist transferStartingWindowToNextWhenInvisible()Z
    .registers 3

    .line 2352
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda158;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda158;-><init>()V

    const-string v1, "com.android.window.flags.transfer_starting_window_to_next_when_invisible"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist transitReadyTracking()Z
    .registers 3

    .line 2359
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda279;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda279;-><init>()V

    const-string v1, "com.android.window.flags.transit_ready_tracking"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist transitTrackerPlumbing()Z
    .registers 3

    .line 2366
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda80;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda80;-><init>()V

    const-string v1, "com.android.window.flags.transit_tracker_plumbing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist transitionHandlerCujTags()Z
    .registers 3

    .line 2373
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda177;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda177;-><init>()V

    const-string v1, "com.android.window.flags.transition_handler_cuj_tags"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unifyShellBinders()Z
    .registers 3

    .line 2380
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda100;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda100;-><init>()V

    const-string v1, "com.android.window.flags.unify_shell_binders"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist universalResizableByDefault()Z
    .registers 3

    .line 2387
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda226;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda226;-><init>()V

    const-string v1, "com.android.window.flags.universal_resizable_by_default"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist untrustedEmbeddingAnyAppPermission()Z
    .registers 3

    .line 2394
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "com.android.window.flags.untrusted_embedding_any_app_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist untrustedEmbeddingStateSharing()Z
    .registers 3

    .line 2401
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda283;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda283;-><init>()V

    const-string v1, "com.android.window.flags.untrusted_embedding_state_sharing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist updateDimsWhenWindowShown()Z
    .registers 3

    .line 2408
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda135;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda135;-><init>()V

    const-string v1, "com.android.window.flags.update_dims_when_window_shown"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist updateTaskCropInSync()Z
    .registers 3

    .line 2415
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.window.flags.update_task_crop_in_sync"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useInputReportedFocusForAccessibility()Z
    .registers 3

    .line 2422
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda130;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda130;-><init>()V

    const-string v1, "com.android.window.flags.use_input_reported_focus_for_accessibility"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist vdmForceAppUniversalResizableApi()Z
    .registers 3

    .line 2429
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda263;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda263;-><init>()V

    const-string v1, "com.android.window.flags.vdm_force_app_universal_resizable_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist waitForPresentFenceOnDisplaySwitch()Z
    .registers 3

    .line 2436
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda297;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda297;-><init>()V

    const-string v1, "com.android.window.flags.wait_for_present_fence_on_display_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
