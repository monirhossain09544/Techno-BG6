.class public Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/FeatureFlags;",
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
    .registers 66
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 528
    new-instance v1, Ljava/util/HashSet;

    const-string v62, "android.app.admin.flags.use_policy_intersection_for_permitted_input_methods"

    const-string v63, ""

    const-string v2, "android.app.admin.flags.active_admin_cleanup"

    const-string v3, "android.app.admin.flags.allow_querying_profile_type"

    const-string v4, "android.app.admin.flags.app_restrictions_coexistence"

    const-string v5, "android.app.admin.flags.assist_content_user_restriction_enabled"

    const-string v6, "android.app.admin.flags.associate_disallow_grant_admin_with_permission"

    const-string v7, "android.app.admin.flags.backup_connected_apps_settings"

    const-string v8, "android.app.admin.flags.backup_service_security_log_event_enabled"

    const-string v9, "android.app.admin.flags.coexistence_migration_for_supervision_enabled"

    const-string v10, "android.app.admin.flags.cross_profile_widget_provider_bulk_apis"

    const-string v11, "android.app.admin.flags.cross_user_suspension_enabled_ro"

    const-string v12, "android.app.admin.flags.dedicated_device_control_api_enabled"

    const-string v13, "android.app.admin.flags.default_sms_personal_app_suspension_fix_enabled"

    const-string v14, "android.app.admin.flags.device_owner_for_all"

    const-string v15, "android.app.admin.flags.device_policy_size_tracking_enabled"

    const-string v16, "android.app.admin.flags.device_theft_api_enabled"

    const-string v17, "android.app.admin.flags.device_theft_impl_enabled"

    const-string v18, "android.app.admin.flags.disallow_user_control_stopped_state_fix"

    const-string v19, "android.app.admin.flags.dont_write_is_system_authority"

    const-string v20, "android.app.admin.flags.dpe_based_on_async_apis_enabled"

    const-string v21, "android.app.admin.flags.enable_supervision_service_sync"

    const-string v22, "android.app.admin.flags.enforcing_admin_extra_enabled"

    const-string v23, "android.app.admin.flags.enforcing_admin_get_component_name_enabled"

    const-string v24, "android.app.admin.flags.enterprise_esim_using_carrier_privileges"

    const-string v25, "android.app.admin.flags.esim_management_enabled"

    const-string v26, "android.app.admin.flags.esim_management_ux_enabled"

    const-string v27, "android.app.admin.flags.headless_device_owner_single_user_enabled"

    const-string v28, "android.app.admin.flags.headless_single_min_target_sdk"

    const-string v29, "android.app.admin.flags.internal_log_event_listener"

    const-string v30, "android.app.admin.flags.is_mte_policy_enforced"

    const-string v31, "android.app.admin.flags.is_recursive_required_app_merging_enabled"

    const-string v32, "android.app.admin.flags.lock_now_coexistence"

    const-string v33, "android.app.admin.flags.management_mode_policy_metrics"

    const-string v34, "android.app.admin.flags.multi_user_management_device_provisioning"

    const-string v35, "android.app.admin.flags.onboarding_bugreport_storage_bug_fix"

    const-string v36, "android.app.admin.flags.onboarding_bugreport_v2_enabled"

    const-string v37, "android.app.admin.flags.onboarding_consentless_bugreports"

    const-string v38, "android.app.admin.flags.permission_migration_for_zero_trust_api_enabled"

    const-string v39, "android.app.admin.flags.policy_engine_migration_v2_enabled"

    const-string v40, "android.app.admin.flags.policy_streamlining"

    const-string v41, "android.app.admin.flags.policy_transparency_refactor_enabled"

    const-string v42, "android.app.admin.flags.provisioning_context_parameter"

    const-string v43, "android.app.admin.flags.quiet_mode_credential_bug_fix"

    const-string v44, "android.app.admin.flags.remove_device_admin_feature_checks"

    const-string v45, "android.app.admin.flags.remove_hack_in_policy_engine"

    const-string v46, "android.app.admin.flags.remove_managed_esim_on_work_profile_deletion"

    const-string v47, "android.app.admin.flags.remove_managed_profile_enabled"

    const-string v48, "android.app.admin.flags.reset_password_with_token_coexistence"

    const-string v49, "android.app.admin.flags.secondary_lockscreen_api_enabled"

    const-string v50, "android.app.admin.flags.security_log_v2_enabled"

    const-string v51, "android.app.admin.flags.set_application_restrictions_coexistence"

    const-string v52, "android.app.admin.flags.set_auto_time_enabled_coexistence"

    const-string v53, "android.app.admin.flags.set_auto_time_zone_enabled_coexistence"

    const-string v54, "android.app.admin.flags.set_backup_service_enabled_coexistence"

    const-string v55, "android.app.admin.flags.set_keyguard_disabled_features_coexistence"

    const-string v56, "android.app.admin.flags.set_mte_policy_coexistence"

    const-string v57, "android.app.admin.flags.set_permission_grant_state_coexistence"

    const-string v58, "android.app.admin.flags.split_create_managed_profile_enabled"

    const-string v59, "android.app.admin.flags.suspend_packages_coexistence"

    const-string v60, "android.app.admin.flags.unmanaged_mode_migration"

    const-string v61, "android.app.admin.flags.unsuspend_not_suspended"

    filled-new-array/range {v2 .. v63}, [Ljava/lang/String;

    move-result-object v2

    .line 529
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 17
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 455
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist activeAdminCleanup()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.app.admin.flags.active_admin_cleanup"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowQueryingProfileType()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.app.admin.flags.allow_querying_profile_type"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appRestrictionsCoexistence()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.app.admin.flags.app_restrictions_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist assistContentUserRestrictionEnabled()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "android.app.admin.flags.assist_content_user_restriction_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist associateDisallowGrantAdminWithPermission()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.app.admin.flags.associate_disallow_grant_admin_with_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist backupConnectedAppsSettings()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "android.app.admin.flags.backup_connected_apps_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist backupServiceSecurityLogEventEnabled()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.app.admin.flags.backup_service_security_log_event_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist coexistenceMigrationForSupervisionEnabled()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "android.app.admin.flags.coexistence_migration_for_supervision_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist crossProfileWidgetProviderBulkApis()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "android.app.admin.flags.cross_profile_widget_provider_bulk_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist crossUserSuspensionEnabledRo()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.app.admin.flags.cross_user_suspension_enabled_ro"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dedicatedDeviceControlApiEnabled()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.app.admin.flags.dedicated_device_control_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist defaultSmsPersonalAppSuspensionFixEnabled()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.app.admin.flags.default_sms_personal_app_suspension_fix_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceOwnerForAll()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.app.admin.flags.device_owner_for_all"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist devicePolicySizeTrackingEnabled()Z
    .registers 3

    .line 112
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.app.admin.flags.device_policy_size_tracking_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceTheftApiEnabled()Z
    .registers 3

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.app.admin.flags.device_theft_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceTheftImplEnabled()Z
    .registers 3

    .line 126
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "android.app.admin.flags.device_theft_impl_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disallowUserControlStoppedStateFix()Z
    .registers 3

    .line 133
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.app.admin.flags.disallow_user_control_stopped_state_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dontWriteIsSystemAuthority()Z
    .registers 3

    .line 140
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.app.admin.flags.dont_write_is_system_authority"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dpeBasedOnAsyncApisEnabled()Z
    .registers 3

    .line 147
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.app.admin.flags.dpe_based_on_async_apis_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableSupervisionServiceSync()Z
    .registers 3

    .line 154
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.app.admin.flags.enable_supervision_service_sync"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enforcingAdminExtraEnabled()Z
    .registers 3

    .line 161
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.app.admin.flags.enforcing_admin_extra_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enforcingAdminGetComponentNameEnabled()Z
    .registers 3

    .line 168
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;-><init>()V

    const-string v1, "android.app.admin.flags.enforcing_admin_get_component_name_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enterpriseEsimUsingCarrierPrivileges()Z
    .registers 3

    .line 175
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.app.admin.flags.enterprise_esim_using_carrier_privileges"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist esimManagementEnabled()Z
    .registers 3

    .line 182
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "android.app.admin.flags.esim_management_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist esimManagementUxEnabled()Z
    .registers 3

    .line 189
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "android.app.admin.flags.esim_management_ux_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 63
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 463
    const-string v60, "android.app.admin.flags.unsuspend_not_suspended"

    const-string v61, "android.app.admin.flags.use_policy_intersection_for_permitted_input_methods"

    const-string v1, "android.app.admin.flags.active_admin_cleanup"

    const-string v2, "android.app.admin.flags.allow_querying_profile_type"

    const-string v3, "android.app.admin.flags.app_restrictions_coexistence"

    const-string v4, "android.app.admin.flags.assist_content_user_restriction_enabled"

    const-string v5, "android.app.admin.flags.associate_disallow_grant_admin_with_permission"

    const-string v6, "android.app.admin.flags.backup_connected_apps_settings"

    const-string v7, "android.app.admin.flags.backup_service_security_log_event_enabled"

    const-string v8, "android.app.admin.flags.coexistence_migration_for_supervision_enabled"

    const-string v9, "android.app.admin.flags.cross_profile_widget_provider_bulk_apis"

    const-string v10, "android.app.admin.flags.cross_user_suspension_enabled_ro"

    const-string v11, "android.app.admin.flags.dedicated_device_control_api_enabled"

    const-string v12, "android.app.admin.flags.default_sms_personal_app_suspension_fix_enabled"

    const-string v13, "android.app.admin.flags.device_owner_for_all"

    const-string v14, "android.app.admin.flags.device_policy_size_tracking_enabled"

    const-string v15, "android.app.admin.flags.device_theft_api_enabled"

    const-string v16, "android.app.admin.flags.device_theft_impl_enabled"

    const-string v17, "android.app.admin.flags.disallow_user_control_stopped_state_fix"

    const-string v18, "android.app.admin.flags.dont_write_is_system_authority"

    const-string v19, "android.app.admin.flags.dpe_based_on_async_apis_enabled"

    const-string v20, "android.app.admin.flags.enable_supervision_service_sync"

    const-string v21, "android.app.admin.flags.enforcing_admin_extra_enabled"

    const-string v22, "android.app.admin.flags.enforcing_admin_get_component_name_enabled"

    const-string v23, "android.app.admin.flags.enterprise_esim_using_carrier_privileges"

    const-string v24, "android.app.admin.flags.esim_management_enabled"

    const-string v25, "android.app.admin.flags.esim_management_ux_enabled"

    const-string v26, "android.app.admin.flags.headless_device_owner_single_user_enabled"

    const-string v27, "android.app.admin.flags.headless_single_min_target_sdk"

    const-string v28, "android.app.admin.flags.internal_log_event_listener"

    const-string v29, "android.app.admin.flags.is_mte_policy_enforced"

    const-string v30, "android.app.admin.flags.is_recursive_required_app_merging_enabled"

    const-string v31, "android.app.admin.flags.lock_now_coexistence"

    const-string v32, "android.app.admin.flags.management_mode_policy_metrics"

    const-string v33, "android.app.admin.flags.multi_user_management_device_provisioning"

    const-string v34, "android.app.admin.flags.onboarding_bugreport_storage_bug_fix"

    const-string v35, "android.app.admin.flags.onboarding_bugreport_v2_enabled"

    const-string v36, "android.app.admin.flags.onboarding_consentless_bugreports"

    const-string v37, "android.app.admin.flags.permission_migration_for_zero_trust_api_enabled"

    const-string v38, "android.app.admin.flags.policy_engine_migration_v2_enabled"

    const-string v39, "android.app.admin.flags.policy_streamlining"

    const-string v40, "android.app.admin.flags.policy_transparency_refactor_enabled"

    const-string v41, "android.app.admin.flags.provisioning_context_parameter"

    const-string v42, "android.app.admin.flags.quiet_mode_credential_bug_fix"

    const-string v43, "android.app.admin.flags.remove_device_admin_feature_checks"

    const-string v44, "android.app.admin.flags.remove_hack_in_policy_engine"

    const-string v45, "android.app.admin.flags.remove_managed_esim_on_work_profile_deletion"

    const-string v46, "android.app.admin.flags.remove_managed_profile_enabled"

    const-string v47, "android.app.admin.flags.reset_password_with_token_coexistence"

    const-string v48, "android.app.admin.flags.secondary_lockscreen_api_enabled"

    const-string v49, "android.app.admin.flags.security_log_v2_enabled"

    const-string v50, "android.app.admin.flags.set_application_restrictions_coexistence"

    const-string v51, "android.app.admin.flags.set_auto_time_enabled_coexistence"

    const-string v52, "android.app.admin.flags.set_auto_time_zone_enabled_coexistence"

    const-string v53, "android.app.admin.flags.set_backup_service_enabled_coexistence"

    const-string v54, "android.app.admin.flags.set_keyguard_disabled_features_coexistence"

    const-string v55, "android.app.admin.flags.set_mte_policy_coexistence"

    const-string v56, "android.app.admin.flags.set_permission_grant_state_coexistence"

    const-string v57, "android.app.admin.flags.split_create_managed_profile_enabled"

    const-string v58, "android.app.admin.flags.suspend_packages_coexistence"

    const-string v59, "android.app.admin.flags.unmanaged_mode_migration"

    filled-new-array/range {v1 .. v61}, [Ljava/lang/String;

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
            "Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist headlessDeviceOwnerSingleUserEnabled()Z
    .registers 3

    .line 196
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.app.admin.flags.headless_device_owner_single_user_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist headlessSingleMinTargetSdk()Z
    .registers 3

    .line 203
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "android.app.admin.flags.headless_single_min_target_sdk"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist internalLogEventListener()Z
    .registers 3

    .line 210
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "android.app.admin.flags.internal_log_event_listener"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 446
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 447
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 448
    const/4 p1, 0x1

    return p1

    .line 450
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist isMtePolicyEnforced()Z
    .registers 3

    .line 217
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.app.admin.flags.is_mte_policy_enforced"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isRecursiveRequiredAppMergingEnabled()Z
    .registers 3

    .line 224
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.app.admin.flags.is_recursive_required_app_merging_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist lockNowCoexistence()Z
    .registers 3

    .line 231
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "android.app.admin.flags.lock_now_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist managementModePolicyMetrics()Z
    .registers 3

    .line 238
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.app.admin.flags.management_mode_policy_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist multiUserManagementDeviceProvisioning()Z
    .registers 3

    .line 245
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "android.app.admin.flags.multi_user_management_device_provisioning"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist onboardingBugreportStorageBugFix()Z
    .registers 3

    .line 252
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.app.admin.flags.onboarding_bugreport_storage_bug_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist onboardingBugreportV2Enabled()Z
    .registers 3

    .line 259
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.app.admin.flags.onboarding_bugreport_v2_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist onboardingConsentlessBugreports()Z
    .registers 3

    .line 266
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "android.app.admin.flags.onboarding_consentless_bugreports"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist permissionMigrationForZeroTrustApiEnabled()Z
    .registers 3

    .line 273
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.app.admin.flags.permission_migration_for_zero_trust_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist policyEngineMigrationV2Enabled()Z
    .registers 3

    .line 280
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "android.app.admin.flags.policy_engine_migration_v2_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist policyStreamlining()Z
    .registers 3

    .line 287
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.app.admin.flags.policy_streamlining"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist policyTransparencyRefactorEnabled()Z
    .registers 3

    .line 294
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.app.admin.flags.policy_transparency_refactor_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist provisioningContextParameter()Z
    .registers 3

    .line 301
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "android.app.admin.flags.provisioning_context_parameter"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist quietModeCredentialBugFix()Z
    .registers 3

    .line 308
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.app.admin.flags.quiet_mode_credential_bug_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeDeviceAdminFeatureChecks()Z
    .registers 3

    .line 315
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.app.admin.flags.remove_device_admin_feature_checks"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeHackInPolicyEngine()Z
    .registers 3

    .line 322
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;-><init>()V

    const-string v1, "android.app.admin.flags.remove_hack_in_policy_engine"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeManagedEsimOnWorkProfileDeletion()Z
    .registers 3

    .line 329
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.app.admin.flags.remove_managed_esim_on_work_profile_deletion"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeManagedProfileEnabled()Z
    .registers 3

    .line 336
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "android.app.admin.flags.remove_managed_profile_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist resetPasswordWithTokenCoexistence()Z
    .registers 3

    .line 343
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.app.admin.flags.reset_password_with_token_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist secondaryLockscreenApiEnabled()Z
    .registers 3

    .line 350
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.app.admin.flags.secondary_lockscreen_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist securityLogV2Enabled()Z
    .registers 3

    .line 357
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "android.app.admin.flags.security_log_v2_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setApplicationRestrictionsCoexistence()Z
    .registers 3

    .line 364
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.app.admin.flags.set_application_restrictions_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setAutoTimeEnabledCoexistence()Z
    .registers 3

    .line 371
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.app.admin.flags.set_auto_time_enabled_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setAutoTimeZoneEnabledCoexistence()Z
    .registers 3

    .line 378
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "android.app.admin.flags.set_auto_time_zone_enabled_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setBackupServiceEnabledCoexistence()Z
    .registers 3

    .line 385
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "android.app.admin.flags.set_backup_service_enabled_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setKeyguardDisabledFeaturesCoexistence()Z
    .registers 3

    .line 392
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.app.admin.flags.set_keyguard_disabled_features_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setMtePolicyCoexistence()Z
    .registers 3

    .line 399
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "android.app.admin.flags.set_mte_policy_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setPermissionGrantStateCoexistence()Z
    .registers 3

    .line 406
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.app.admin.flags.set_permission_grant_state_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist splitCreateManagedProfileEnabled()Z
    .registers 3

    .line 413
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.app.admin.flags.split_create_managed_profile_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist suspendPackagesCoexistence()Z
    .registers 3

    .line 420
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.app.admin.flags.suspend_packages_coexistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unmanagedModeMigration()Z
    .registers 3

    .line 427
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "android.app.admin.flags.unmanaged_mode_migration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unsuspendNotSuspended()Z
    .registers 3

    .line 434
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "android.app.admin.flags.unsuspend_not_suspended"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist usePolicyIntersectionForPermittedInputMethods()Z
    .registers 3

    .line 441
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.app.admin.flags.use_policy_intersection_for_permitted_input_methods"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
