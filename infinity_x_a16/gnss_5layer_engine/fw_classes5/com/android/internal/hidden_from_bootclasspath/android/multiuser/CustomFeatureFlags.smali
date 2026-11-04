.class public Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/FeatureFlags;",
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
    .registers 64
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 512
    new-instance v1, Ljava/util/HashSet;

    const-string v60, "android.multiuser.widget_scaling_bugfix"

    const-string v61, ""

    const-string v2, "android.multiuser.add_launcher_user_config"

    const-string v3, "android.multiuser.allow_main_user_to_access_blocked_number_provider"

    const-string v4, "android.multiuser.allow_resolver_sheet_for_private_space"

    const-string v5, "android.multiuser.allow_supervising_profile"

    const-string v6, "android.multiuser.backup_activated_for_all_users"

    const-string v7, "android.multiuser.bind_wallpaper_service_on_its_own_thread_during_a_user_switch"

    const-string v8, "android.multiuser.block_private_space_creation"

    const-string v9, "android.multiuser.cache_profile_type_read_only"

    const-string v10, "android.multiuser.cache_user_restrictions_read_only"

    const-string v11, "android.multiuser.cache_user_start_realtime_read_only"

    const-string v12, "android.multiuser.cache_user_unlock_realtime_read_only"

    const-string v13, "android.multiuser.consistent_max_users"

    const-string v14, "android.multiuser.create_initial_user"

    const-string v15, "android.multiuser.decouple_max_users_from_profiles"

    const-string v16, "android.multiuser.demote_main_user"

    const-string v17, "android.multiuser.disable_private_space_items_on_home"

    const-string v18, "android.multiuser.disallow_removing_last_admin_user"

    const-string v19, "android.multiuser.enable_biometrics_to_unlock_private_space"

    const-string v20, "android.multiuser.enable_hiding_profiles"

    const-string v21, "android.multiuser.enable_moving_content_into_private_space"

    const-string v22, "android.multiuser.enable_permission_to_access_hidden_profiles"

    const-string v23, "android.multiuser.enable_private_space_autolock_on_restarts"

    const-string v24, "android.multiuser.enable_private_space_features"

    const-string v25, "android.multiuser.enable_private_space_intent_redirection"

    const-string v26, "android.multiuser.enable_ps_sensitive_notifications_toggle"

    const-string v27, "android.multiuser.enable_system_user_only_for_services_and_providers"

    const-string v28, "android.multiuser.fix_avatar_content_provider_null_authority"

    const-string v29, "android.multiuser.hsu_allowlist_activities"

    const-string v30, "android.multiuser.hsu_device_provisioner"

    const-string v31, "android.multiuser.hsu_not_admin"

    const-string v32, "android.multiuser.logout_user_api"

    const-string v33, "android.multiuser.max_users_in_car_is_for_secondary"

    const-string v34, "android.multiuser.move_quiet_mode_operations_to_separate_thread"

    const-string v35, "android.multiuser.move_set_screen_lock_dialog_to_settings_app"

    const-string v36, "android.multiuser.multiuser_widget"

    const-string v37, "android.multiuser.perfetto_multiuser_table"

    const-string v38, "android.multiuser.private_space_file_limit_check_timeout"

    const-string v39, "android.multiuser.profiles_for_all"

    const-string v40, "android.multiuser.property_invalidated_cache_bypass_mismatched_uids"

    const-string v41, "android.multiuser.reorder_wallpaper_during_user_switch"

    const-string v42, "android.multiuser.reschedule_stop_if_visible_activities"

    const-string v43, "android.multiuser.restrict_quiet_mode_credential_bug_fix_to_managed_profiles"

    const-string v44, "android.multiuser.save_global_and_guest_restrictions_on_system_user_xml"

    const-string v45, "android.multiuser.save_global_and_guest_restrictions_on_system_user_xml_read_only"

    const-string v46, "android.multiuser.schedule_stop_of_background_user"

    const-string v47, "android.multiuser.schedule_stop_of_background_user_by_default"

    const-string v48, "android.multiuser.set_power_mode_during_user_switch"

    const-string v49, "android.multiuser.setupwizard_username_population"

    const-string v50, "android.multiuser.stop_excess_for_background_starts"

    const-string v51, "android.multiuser.stop_previous_user_apps"

    const-string v52, "android.multiuser.support_communal_profile"

    const-string v53, "android.multiuser.support_communal_profile_nextgen"

    const-string v54, "android.multiuser.unicorn_mode_refactoring_for_hsum_read_only"

    const-string v55, "android.multiuser.use_all_cpus_during_user_switch"

    const-string v56, "android.multiuser.use_private_space_icon_in_biometric_prompt"

    const-string v57, "android.multiuser.user_filter_refactoring"

    const-string v58, "android.multiuser.user_restriction_config_wifi_shared_private"

    const-string v59, "android.multiuser.widget_current_user_view"

    filled-new-array/range {v2 .. v61}, [Ljava/lang/String;

    move-result-object v2

    .line 513
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 17
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 441
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist addLauncherUserConfig()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.multiuser.add_launcher_user_config"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowMainUserToAccessBlockedNumberProvider()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.multiuser.allow_main_user_to_access_blocked_number_provider"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowResolverSheetForPrivateSpace()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.multiuser.allow_resolver_sheet_for_private_space"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowSupervisingProfile()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "android.multiuser.allow_supervising_profile"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist backupActivatedForAllUsers()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.multiuser.backup_activated_for_all_users"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist bindWallpaperServiceOnItsOwnThreadDuringAUserSwitch()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "android.multiuser.bind_wallpaper_service_on_its_own_thread_during_a_user_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist blockPrivateSpaceCreation()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.multiuser.block_private_space_creation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cacheProfileTypeReadOnly()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.multiuser.cache_profile_type_read_only"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cacheUserRestrictionsReadOnly()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "android.multiuser.cache_user_restrictions_read_only"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cacheUserStartRealtimeReadOnly()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "android.multiuser.cache_user_start_realtime_read_only"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cacheUserUnlockRealtimeReadOnly()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.multiuser.cache_user_unlock_realtime_read_only"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist consistentMaxUsers()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.multiuser.consistent_max_users"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist createInitialUser()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "android.multiuser.create_initial_user"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist decoupleMaxUsersFromProfiles()Z
    .registers 3

    .line 112
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "android.multiuser.decouple_max_users_from_profiles"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist demoteMainUser()Z
    .registers 3

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.multiuser.demote_main_user"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disablePrivateSpaceItemsOnHome()Z
    .registers 3

    .line 126
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "android.multiuser.disable_private_space_items_on_home"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disallowRemovingLastAdminUser()Z
    .registers 3

    .line 133
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "android.multiuser.disallow_removing_last_admin_user"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableBiometricsToUnlockPrivateSpace()Z
    .registers 3

    .line 140
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "android.multiuser.enable_biometrics_to_unlock_private_space"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableHidingProfiles()Z
    .registers 3

    .line 147
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.multiuser.enable_hiding_profiles"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableMovingContentIntoPrivateSpace()Z
    .registers 3

    .line 154
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.multiuser.enable_moving_content_into_private_space"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePermissionToAccessHiddenProfiles()Z
    .registers 3

    .line 161
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.multiuser.enable_permission_to_access_hidden_profiles"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePrivateSpaceAutolockOnRestarts()Z
    .registers 3

    .line 168
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.multiuser.enable_private_space_autolock_on_restarts"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePrivateSpaceFeatures()Z
    .registers 3

    .line 175
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.multiuser.enable_private_space_features"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePrivateSpaceIntentRedirection()Z
    .registers 3

    .line 182
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.multiuser.enable_private_space_intent_redirection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePsSensitiveNotificationsToggle()Z
    .registers 3

    .line 189
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.multiuser.enable_ps_sensitive_notifications_toggle"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableSystemUserOnlyForServicesAndProviders()Z
    .registers 3

    .line 196
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.multiuser.enable_system_user_only_for_services_and_providers"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixAvatarContentProviderNullAuthority()Z
    .registers 3

    .line 203
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "android.multiuser.fix_avatar_content_provider_null_authority"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 61
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 449
    const-string v58, "android.multiuser.widget_current_user_view"

    const-string v59, "android.multiuser.widget_scaling_bugfix"

    const-string v1, "android.multiuser.add_launcher_user_config"

    const-string v2, "android.multiuser.allow_main_user_to_access_blocked_number_provider"

    const-string v3, "android.multiuser.allow_resolver_sheet_for_private_space"

    const-string v4, "android.multiuser.allow_supervising_profile"

    const-string v5, "android.multiuser.backup_activated_for_all_users"

    const-string v6, "android.multiuser.bind_wallpaper_service_on_its_own_thread_during_a_user_switch"

    const-string v7, "android.multiuser.block_private_space_creation"

    const-string v8, "android.multiuser.cache_profile_type_read_only"

    const-string v9, "android.multiuser.cache_user_restrictions_read_only"

    const-string v10, "android.multiuser.cache_user_start_realtime_read_only"

    const-string v11, "android.multiuser.cache_user_unlock_realtime_read_only"

    const-string v12, "android.multiuser.consistent_max_users"

    const-string v13, "android.multiuser.create_initial_user"

    const-string v14, "android.multiuser.decouple_max_users_from_profiles"

    const-string v15, "android.multiuser.demote_main_user"

    const-string v16, "android.multiuser.disable_private_space_items_on_home"

    const-string v17, "android.multiuser.disallow_removing_last_admin_user"

    const-string v18, "android.multiuser.enable_biometrics_to_unlock_private_space"

    const-string v19, "android.multiuser.enable_hiding_profiles"

    const-string v20, "android.multiuser.enable_moving_content_into_private_space"

    const-string v21, "android.multiuser.enable_permission_to_access_hidden_profiles"

    const-string v22, "android.multiuser.enable_private_space_autolock_on_restarts"

    const-string v23, "android.multiuser.enable_private_space_features"

    const-string v24, "android.multiuser.enable_private_space_intent_redirection"

    const-string v25, "android.multiuser.enable_ps_sensitive_notifications_toggle"

    const-string v26, "android.multiuser.enable_system_user_only_for_services_and_providers"

    const-string v27, "android.multiuser.fix_avatar_content_provider_null_authority"

    const-string v28, "android.multiuser.hsu_allowlist_activities"

    const-string v29, "android.multiuser.hsu_device_provisioner"

    const-string v30, "android.multiuser.hsu_not_admin"

    const-string v31, "android.multiuser.logout_user_api"

    const-string v32, "android.multiuser.max_users_in_car_is_for_secondary"

    const-string v33, "android.multiuser.move_quiet_mode_operations_to_separate_thread"

    const-string v34, "android.multiuser.move_set_screen_lock_dialog_to_settings_app"

    const-string v35, "android.multiuser.multiuser_widget"

    const-string v36, "android.multiuser.perfetto_multiuser_table"

    const-string v37, "android.multiuser.private_space_file_limit_check_timeout"

    const-string v38, "android.multiuser.profiles_for_all"

    const-string v39, "android.multiuser.property_invalidated_cache_bypass_mismatched_uids"

    const-string v40, "android.multiuser.reorder_wallpaper_during_user_switch"

    const-string v41, "android.multiuser.reschedule_stop_if_visible_activities"

    const-string v42, "android.multiuser.restrict_quiet_mode_credential_bug_fix_to_managed_profiles"

    const-string v43, "android.multiuser.save_global_and_guest_restrictions_on_system_user_xml"

    const-string v44, "android.multiuser.save_global_and_guest_restrictions_on_system_user_xml_read_only"

    const-string v45, "android.multiuser.schedule_stop_of_background_user"

    const-string v46, "android.multiuser.schedule_stop_of_background_user_by_default"

    const-string v47, "android.multiuser.set_power_mode_during_user_switch"

    const-string v48, "android.multiuser.setupwizard_username_population"

    const-string v49, "android.multiuser.stop_excess_for_background_starts"

    const-string v50, "android.multiuser.stop_previous_user_apps"

    const-string v51, "android.multiuser.support_communal_profile"

    const-string v52, "android.multiuser.support_communal_profile_nextgen"

    const-string v53, "android.multiuser.unicorn_mode_refactoring_for_hsum_read_only"

    const-string v54, "android.multiuser.use_all_cpus_during_user_switch"

    const-string v55, "android.multiuser.use_private_space_icon_in_biometric_prompt"

    const-string v56, "android.multiuser.user_filter_refactoring"

    const-string v57, "android.multiuser.user_restriction_config_wifi_shared_private"

    filled-new-array/range {v1 .. v59}, [Ljava/lang/String;

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
            "Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist hsuAllowlistActivities()Z
    .registers 3

    .line 210
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "android.multiuser.hsu_allowlist_activities"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hsuDeviceProvisioner()Z
    .registers 3

    .line 217
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.multiuser.hsu_device_provisioner"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hsuNotAdmin()Z
    .registers 3

    .line 224
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.multiuser.hsu_not_admin"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 432
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 433
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 434
    const/4 p1, 0x1

    return p1

    .line 436
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist logoutUserApi()Z
    .registers 3

    .line 231
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.multiuser.logout_user_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist maxUsersInCarIsForSecondary()Z
    .registers 3

    .line 238
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.multiuser.max_users_in_car_is_for_secondary"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist moveQuietModeOperationsToSeparateThread()Z
    .registers 3

    .line 245
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.multiuser.move_quiet_mode_operations_to_separate_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist moveSetScreenLockDialogToSettingsApp()Z
    .registers 3

    .line 252
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.multiuser.move_set_screen_lock_dialog_to_settings_app"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist multiuserWidget()Z
    .registers 3

    .line 259
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "android.multiuser.multiuser_widget"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist perfettoMultiuserTable()Z
    .registers 3

    .line 266
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.multiuser.perfetto_multiuser_table"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist privateSpaceFileLimitCheckTimeout()Z
    .registers 3

    .line 273
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "android.multiuser.private_space_file_limit_check_timeout"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist profilesForAll()Z
    .registers 3

    .line 280
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "android.multiuser.profiles_for_all"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist propertyInvalidatedCacheBypassMismatchedUids()Z
    .registers 3

    .line 287
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.multiuser.property_invalidated_cache_bypass_mismatched_uids"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist reorderWallpaperDuringUserSwitch()Z
    .registers 3

    .line 294
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.multiuser.reorder_wallpaper_during_user_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rescheduleStopIfVisibleActivities()Z
    .registers 3

    .line 301
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.multiuser.reschedule_stop_if_visible_activities"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist restrictQuietModeCredentialBugFixToManagedProfiles()Z
    .registers 3

    .line 308
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "android.multiuser.restrict_quiet_mode_credential_bug_fix_to_managed_profiles"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist saveGlobalAndGuestRestrictionsOnSystemUserXml()Z
    .registers 3

    .line 315
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.multiuser.save_global_and_guest_restrictions_on_system_user_xml"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist saveGlobalAndGuestRestrictionsOnSystemUserXmlReadOnly()Z
    .registers 3

    .line 322
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.multiuser.save_global_and_guest_restrictions_on_system_user_xml_read_only"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist scheduleStopOfBackgroundUser()Z
    .registers 3

    .line 329
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.multiuser.schedule_stop_of_background_user"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist scheduleStopOfBackgroundUserByDefault()Z
    .registers 3

    .line 336
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.multiuser.schedule_stop_of_background_user_by_default"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setPowerModeDuringUserSwitch()Z
    .registers 3

    .line 343
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "android.multiuser.set_power_mode_during_user_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setupwizardUsernamePopulation()Z
    .registers 3

    .line 350
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.multiuser.setupwizard_username_population"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist stopExcessForBackgroundStarts()Z
    .registers 3

    .line 357
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.multiuser.stop_excess_for_background_starts"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist stopPreviousUserApps()Z
    .registers 3

    .line 364
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.multiuser.stop_previous_user_apps"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportCommunalProfile()Z
    .registers 3

    .line 371
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "android.multiuser.support_communal_profile"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportCommunalProfileNextgen()Z
    .registers 3

    .line 378
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.multiuser.support_communal_profile_nextgen"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unicornModeRefactoringForHsumReadOnly()Z
    .registers 3

    .line 385
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "android.multiuser.unicorn_mode_refactoring_for_hsum_read_only"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useAllCpusDuringUserSwitch()Z
    .registers 3

    .line 392
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.multiuser.use_all_cpus_during_user_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist usePrivateSpaceIconInBiometricPrompt()Z
    .registers 3

    .line 399
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.multiuser.use_private_space_icon_in_biometric_prompt"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist userFilterRefactoring()Z
    .registers 3

    .line 406
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "android.multiuser.user_filter_refactoring"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist userRestrictionConfigWifiSharedPrivate()Z
    .registers 3

    .line 413
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "android.multiuser.user_restriction_config_wifi_shared_private"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist widgetCurrentUserView()Z
    .registers 3

    .line 420
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.multiuser.widget_current_user_view"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist widgetScalingBugfix()Z
    .registers 3

    .line 427
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "android.multiuser.widget_scaling_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
