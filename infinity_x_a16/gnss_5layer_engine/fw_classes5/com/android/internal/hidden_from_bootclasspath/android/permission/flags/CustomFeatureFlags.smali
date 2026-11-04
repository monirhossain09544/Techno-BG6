.class public Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;",
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
    .registers 80
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 640
    new-instance v1, Ljava/util/HashSet;

    const-string v76, "android.permission.flags.watch_face_role_enabled"

    const-string v77, ""

    const-string v2, "android.permission.flags.access_local_network_permission_enabled"

    const-string v3, "android.permission.flags.allow_host_permission_dialogs_on_virtual_devices"

    const-string v4, "android.permission.flags.app_function_access_api_enabled"

    const-string v5, "android.permission.flags.app_function_access_service_enabled"

    const-string v6, "android.permission.flags.app_function_access_ui_enabled"

    const-string v7, "android.permission.flags.app_ops_cell_reporting"

    const-string v8, "android.permission.flags.app_ops_read_cell_information"

    const-string v9, "android.permission.flags.app_ops_service_handler_fix"

    const-string v10, "android.permission.flags.appop_access_tracking_logging_enabled"

    const-string v11, "android.permission.flags.appop_mode_caching_enabled"

    const-string v12, "android.permission.flags.bluetooth_permission_use_module_protection_level"

    const-string v13, "android.permission.flags.check_op_overload_api_enabled"

    const-string v14, "android.permission.flags.check_op_validate_package"

    const-string v15, "android.permission.flags.check_package_caching_enabled"

    const-string v16, "android.permission.flags.content_restriction_role_enabled"

    const-string v17, "android.permission.flags.deprecate_default_permission_pregrant_policy"

    const-string v18, "android.permission.flags.device_aware_app_op_new_schema_enabled"

    const-string v19, "android.permission.flags.device_aware_permission_apis_enabled"

    const-string v20, "android.permission.flags.device_aware_permissions_enabled"

    const-string v21, "android.permission.flags.device_id_in_op_proxy_info_enabled"

    const-string v22, "android.permission.flags.device_policy_management_role_split_create_managed_profile_enabled"

    const-string v23, "android.permission.flags.enable_aiai_proxied_text_classifiers"

    const-string v24, "android.permission.flags.enable_all_sqlite_appops_accesses"

    const-string v25, "android.permission.flags.enable_otp_in_text_classifiers"

    const-string v26, "android.permission.flags.enable_sqlite_appops_accesses"

    const-string v27, "android.permission.flags.enable_system_supervision_role_behavior"

    const-string v28, "android.permission.flags.enforce_default_device_id_in_my_attribution_source"

    const-string v29, "android.permission.flags.enhanced_confirmation_in_call_apis_enabled"

    const-string v30, "android.permission.flags.enhanced_confirmation_mode_apis_enabled"

    const-string v31, "android.permission.flags.factory_reset_prep_permission_apis"

    const-string v32, "android.permission.flags.fine_power_monitor_permission"

    const-string v33, "android.permission.flags.finish_running_ops_for_killed_packages"

    const-string v34, "android.permission.flags.get_emergency_role_holder_api_enabled"

    const-string v35, "android.permission.flags.grant_read_blocked_numbers_to_system_ui_intelligence"

    const-string v36, "android.permission.flags.health_connect_backup_restore_permission_enabled"

    const-string v37, "android.permission.flags.ignore_process_text"

    const-string v38, "android.permission.flags.limit_sensor_privacy_listeners"

    const-string v39, "android.permission.flags.location_bypass_privacy_dashboard_enabled"

    const-string v40, "android.permission.flags.note_op_batching_enabled"

    const-string v41, "android.permission.flags.op_enable_mobile_data_by_user"

    const-string v42, "android.permission.flags.open_safety_center_apis"

    const-string v43, "android.permission.flags.permission_one_time_session_logging_enabled"

    const-string v44, "android.permission.flags.permission_request_short_circuit_enabled"

    const-string v45, "android.permission.flags.permission_tree_apis_deprecated"

    const-string v46, "android.permission.flags.purpose_declaration_enabled"

    const-string v47, "android.permission.flags.ranging_permission_enabled"

    const-string v48, "android.permission.flags.rate_limit_batched_note_op_async_callbacks_enabled"

    const-string v49, "android.permission.flags.record_all_runtime_appops_sqlite"

    const-string v50, "android.permission.flags.replace_body_sensor_permission_enabled"

    const-string v51, "android.permission.flags.retail_demo_role_enabled"

    const-string v52, "android.permission.flags.sensitive_content_improvements"

    const-string v53, "android.permission.flags.sensitive_content_metrics_bugfix"

    const-string v54, "android.permission.flags.sensitive_content_recents_screenshot_bugfix"

    const-string v55, "android.permission.flags.sensitive_notification_app_protection"

    const-string v56, "android.permission.flags.set_next_attribution_source"

    const-string v57, "android.permission.flags.should_register_attribution_source"

    const-string v58, "android.permission.flags.signature_permission_allowlist_enabled"

    const-string v59, "android.permission.flags.sqlite_discrete_op_event_logging_enabled"

    const-string v60, "android.permission.flags.supervision_role_enabled"

    const-string v61, "android.permission.flags.supervision_role_permission_update_enabled"

    const-string v62, "android.permission.flags.sync_on_op_noted_api"

    const-string v63, "android.permission.flags.system_selection_toolbar_enabled"

    const-string v64, "android.permission.flags.system_server_role_controller_enabled"

    const-string v65, "android.permission.flags.system_vendor_intelligence_role_enabled"

    const-string v66, "android.permission.flags.text_classifier_choice_api_enabled"

    const-string v67, "android.permission.flags.unknown_call_package_install_blocking_enabled"

    const-string v68, "android.permission.flags.unknown_call_setting_blocked_logging_enabled"

    const-string v69, "android.permission.flags.updatable_text_classifier_for_otp_detection_enabled"

    const-string v70, "android.permission.flags.use_frozen_aware_remote_callback_list"

    const-string v71, "android.permission.flags.use_profile_labels_for_default_app_section_titles"

    const-string v72, "android.permission.flags.voice_activation_permission_apis"

    const-string v73, "android.permission.flags.wallet_role_cross_user_enabled"

    const-string v74, "android.permission.flags.wallet_role_enabled"

    const-string v75, "android.permission.flags.wallet_role_icon_property_enabled"

    filled-new-array/range {v2 .. v77}, [Ljava/lang/String;

    move-result-object v2

    .line 641
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 17
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 553
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist accessLocalNetworkPermissionEnabled()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.permission.flags.access_local_network_permission_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowHostPermissionDialogsOnVirtualDevices()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.permission.flags.allow_host_permission_dialogs_on_virtual_devices"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appFunctionAccessApiEnabled()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;-><init>()V

    const-string v1, "android.permission.flags.app_function_access_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appFunctionAccessServiceEnabled()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.permission.flags.app_function_access_service_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appFunctionAccessUiEnabled()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.permission.flags.app_function_access_ui_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appOpsCellReporting()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.permission.flags.app_ops_cell_reporting"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appOpsReadCellInformation()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.permission.flags.app_ops_read_cell_information"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appOpsServiceHandlerFix()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.permission.flags.app_ops_service_handler_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appopAccessTrackingLoggingEnabled()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.permission.flags.appop_access_tracking_logging_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appopModeCachingEnabled()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "android.permission.flags.appop_mode_caching_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist bluetoothPermissionUseModuleProtectionLevel()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "android.permission.flags.bluetooth_permission_use_module_protection_level"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist checkOpOverloadApiEnabled()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "android.permission.flags.check_op_overload_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist checkOpValidatePackage()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;-><init>()V

    const-string v1, "android.permission.flags.check_op_validate_package"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist checkPackageCachingEnabled()Z
    .registers 3

    .line 112
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda73;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda73;-><init>()V

    const-string v1, "android.permission.flags.check_package_caching_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist contentRestrictionRoleEnabled()Z
    .registers 3

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.permission.flags.content_restriction_role_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deprecateDefaultPermissionPregrantPolicy()Z
    .registers 3

    .line 126
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.permission.flags.deprecate_default_permission_pregrant_policy"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceAwareAppOpNewSchemaEnabled()Z
    .registers 3

    .line 133
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "android.permission.flags.device_aware_app_op_new_schema_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceAwarePermissionApisEnabled()Z
    .registers 3

    .line 140
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;-><init>()V

    const-string v1, "android.permission.flags.device_aware_permission_apis_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceAwarePermissionsEnabled()Z
    .registers 3

    .line 147
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;-><init>()V

    const-string v1, "android.permission.flags.device_aware_permissions_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceIdInOpProxyInfoEnabled()Z
    .registers 3

    .line 154
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.permission.flags.device_id_in_op_proxy_info_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist devicePolicyManagementRoleSplitCreateManagedProfileEnabled()Z
    .registers 3

    .line 161
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda74;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda74;-><init>()V

    const-string v1, "android.permission.flags.device_policy_management_role_split_create_managed_profile_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAiaiProxiedTextClassifiers()Z
    .registers 3

    .line 168
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.permission.flags.enable_aiai_proxied_text_classifiers"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAllSqliteAppopsAccesses()Z
    .registers 3

    .line 175
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "android.permission.flags.enable_all_sqlite_appops_accesses"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableOtpInTextClassifiers()Z
    .registers 3

    .line 182
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.permission.flags.enable_otp_in_text_classifiers"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableSqliteAppopsAccesses()Z
    .registers 3

    .line 189
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "android.permission.flags.enable_sqlite_appops_accesses"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableSystemSupervisionRoleBehavior()Z
    .registers 3

    .line 196
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "android.permission.flags.enable_system_supervision_role_behavior"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enforceDefaultDeviceIdInMyAttributionSource()Z
    .registers 3

    .line 203
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "android.permission.flags.enforce_default_device_id_in_my_attribution_source"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enhancedConfirmationInCallApisEnabled()Z
    .registers 3

    .line 210
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.permission.flags.enhanced_confirmation_in_call_apis_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enhancedConfirmationModeApisEnabled()Z
    .registers 3

    .line 217
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "android.permission.flags.enhanced_confirmation_mode_apis_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist factoryResetPrepPermissionApis()Z
    .registers 3

    .line 224
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "android.permission.flags.factory_reset_prep_permission_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist finePowerMonitorPermission()Z
    .registers 3

    .line 231
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.permission.flags.fine_power_monitor_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist finishRunningOpsForKilledPackages()Z
    .registers 3

    .line 238
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.permission.flags.finish_running_ops_for_killed_packages"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getEmergencyRoleHolderApiEnabled()Z
    .registers 3

    .line 245
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.permission.flags.get_emergency_role_holder_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 77
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 561
    const-string v74, "android.permission.flags.wallet_role_icon_property_enabled"

    const-string v75, "android.permission.flags.watch_face_role_enabled"

    const-string v1, "android.permission.flags.access_local_network_permission_enabled"

    const-string v2, "android.permission.flags.allow_host_permission_dialogs_on_virtual_devices"

    const-string v3, "android.permission.flags.app_function_access_api_enabled"

    const-string v4, "android.permission.flags.app_function_access_service_enabled"

    const-string v5, "android.permission.flags.app_function_access_ui_enabled"

    const-string v6, "android.permission.flags.app_ops_cell_reporting"

    const-string v7, "android.permission.flags.app_ops_read_cell_information"

    const-string v8, "android.permission.flags.app_ops_service_handler_fix"

    const-string v9, "android.permission.flags.appop_access_tracking_logging_enabled"

    const-string v10, "android.permission.flags.appop_mode_caching_enabled"

    const-string v11, "android.permission.flags.bluetooth_permission_use_module_protection_level"

    const-string v12, "android.permission.flags.check_op_overload_api_enabled"

    const-string v13, "android.permission.flags.check_op_validate_package"

    const-string v14, "android.permission.flags.check_package_caching_enabled"

    const-string v15, "android.permission.flags.content_restriction_role_enabled"

    const-string v16, "android.permission.flags.deprecate_default_permission_pregrant_policy"

    const-string v17, "android.permission.flags.device_aware_app_op_new_schema_enabled"

    const-string v18, "android.permission.flags.device_aware_permission_apis_enabled"

    const-string v19, "android.permission.flags.device_aware_permissions_enabled"

    const-string v20, "android.permission.flags.device_id_in_op_proxy_info_enabled"

    const-string v21, "android.permission.flags.device_policy_management_role_split_create_managed_profile_enabled"

    const-string v22, "android.permission.flags.enable_aiai_proxied_text_classifiers"

    const-string v23, "android.permission.flags.enable_all_sqlite_appops_accesses"

    const-string v24, "android.permission.flags.enable_otp_in_text_classifiers"

    const-string v25, "android.permission.flags.enable_sqlite_appops_accesses"

    const-string v26, "android.permission.flags.enable_system_supervision_role_behavior"

    const-string v27, "android.permission.flags.enforce_default_device_id_in_my_attribution_source"

    const-string v28, "android.permission.flags.enhanced_confirmation_in_call_apis_enabled"

    const-string v29, "android.permission.flags.enhanced_confirmation_mode_apis_enabled"

    const-string v30, "android.permission.flags.factory_reset_prep_permission_apis"

    const-string v31, "android.permission.flags.fine_power_monitor_permission"

    const-string v32, "android.permission.flags.finish_running_ops_for_killed_packages"

    const-string v33, "android.permission.flags.get_emergency_role_holder_api_enabled"

    const-string v34, "android.permission.flags.grant_read_blocked_numbers_to_system_ui_intelligence"

    const-string v35, "android.permission.flags.health_connect_backup_restore_permission_enabled"

    const-string v36, "android.permission.flags.ignore_process_text"

    const-string v37, "android.permission.flags.limit_sensor_privacy_listeners"

    const-string v38, "android.permission.flags.location_bypass_privacy_dashboard_enabled"

    const-string v39, "android.permission.flags.note_op_batching_enabled"

    const-string v40, "android.permission.flags.op_enable_mobile_data_by_user"

    const-string v41, "android.permission.flags.open_safety_center_apis"

    const-string v42, "android.permission.flags.permission_one_time_session_logging_enabled"

    const-string v43, "android.permission.flags.permission_request_short_circuit_enabled"

    const-string v44, "android.permission.flags.permission_tree_apis_deprecated"

    const-string v45, "android.permission.flags.purpose_declaration_enabled"

    const-string v46, "android.permission.flags.ranging_permission_enabled"

    const-string v47, "android.permission.flags.rate_limit_batched_note_op_async_callbacks_enabled"

    const-string v48, "android.permission.flags.record_all_runtime_appops_sqlite"

    const-string v49, "android.permission.flags.replace_body_sensor_permission_enabled"

    const-string v50, "android.permission.flags.retail_demo_role_enabled"

    const-string v51, "android.permission.flags.sensitive_content_improvements"

    const-string v52, "android.permission.flags.sensitive_content_metrics_bugfix"

    const-string v53, "android.permission.flags.sensitive_content_recents_screenshot_bugfix"

    const-string v54, "android.permission.flags.sensitive_notification_app_protection"

    const-string v55, "android.permission.flags.set_next_attribution_source"

    const-string v56, "android.permission.flags.should_register_attribution_source"

    const-string v57, "android.permission.flags.signature_permission_allowlist_enabled"

    const-string v58, "android.permission.flags.sqlite_discrete_op_event_logging_enabled"

    const-string v59, "android.permission.flags.supervision_role_enabled"

    const-string v60, "android.permission.flags.supervision_role_permission_update_enabled"

    const-string v61, "android.permission.flags.sync_on_op_noted_api"

    const-string v62, "android.permission.flags.system_selection_toolbar_enabled"

    const-string v63, "android.permission.flags.system_server_role_controller_enabled"

    const-string v64, "android.permission.flags.system_vendor_intelligence_role_enabled"

    const-string v65, "android.permission.flags.text_classifier_choice_api_enabled"

    const-string v66, "android.permission.flags.unknown_call_package_install_blocking_enabled"

    const-string v67, "android.permission.flags.unknown_call_setting_blocked_logging_enabled"

    const-string v68, "android.permission.flags.updatable_text_classifier_for_otp_detection_enabled"

    const-string v69, "android.permission.flags.use_frozen_aware_remote_callback_list"

    const-string v70, "android.permission.flags.use_profile_labels_for_default_app_section_titles"

    const-string v71, "android.permission.flags.voice_activation_permission_apis"

    const-string v72, "android.permission.flags.wallet_role_cross_user_enabled"

    const-string v73, "android.permission.flags.wallet_role_enabled"

    filled-new-array/range {v1 .. v75}, [Ljava/lang/String;

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
            "Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist grantReadBlockedNumbersToSystemUiIntelligence()Z
    .registers 3

    .line 252
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.permission.flags.grant_read_blocked_numbers_to_system_ui_intelligence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist healthConnectBackupRestorePermissionEnabled()Z
    .registers 3

    .line 259
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.permission.flags.health_connect_backup_restore_permission_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreProcessText()Z
    .registers 3

    .line 266
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "android.permission.flags.ignore_process_text"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 544
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 545
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 546
    const/4 p1, 0x1

    return p1

    .line 548
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist limitSensorPrivacyListeners()Z
    .registers 3

    .line 273
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.permission.flags.limit_sensor_privacy_listeners"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist locationBypassPrivacyDashboardEnabled()Z
    .registers 3

    .line 280
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.permission.flags.location_bypass_privacy_dashboard_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist noteOpBatchingEnabled()Z
    .registers 3

    .line 287
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda68;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda68;-><init>()V

    const-string v1, "android.permission.flags.note_op_batching_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist opEnableMobileDataByUser()Z
    .registers 3

    .line 294
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda70;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda70;-><init>()V

    const-string v1, "android.permission.flags.op_enable_mobile_data_by_user"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist openSafetyCenterApis()Z
    .registers 3

    .line 301
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "android.permission.flags.open_safety_center_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist permissionOneTimeSessionLoggingEnabled()Z
    .registers 3

    .line 308
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.permission.flags.permission_one_time_session_logging_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist permissionRequestShortCircuitEnabled()Z
    .registers 3

    .line 315
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.permission.flags.permission_request_short_circuit_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist permissionTreeApisDeprecated()Z
    .registers 3

    .line 322
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.permission.flags.permission_tree_apis_deprecated"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist purposeDeclarationEnabled()Z
    .registers 3

    .line 329
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "android.permission.flags.purpose_declaration_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rangingPermissionEnabled()Z
    .registers 3

    .line 336
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.permission.flags.ranging_permission_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rateLimitBatchedNoteOpAsyncCallbacksEnabled()Z
    .registers 3

    .line 343
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.permission.flags.rate_limit_batched_note_op_async_callbacks_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist recordAllRuntimeAppopsSqlite()Z
    .registers 3

    .line 350
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.permission.flags.record_all_runtime_appops_sqlite"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist replaceBodySensorPermissionEnabled()Z
    .registers 3

    .line 357
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "android.permission.flags.replace_body_sensor_permission_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist retailDemoRoleEnabled()Z
    .registers 3

    .line 364
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.permission.flags.retail_demo_role_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensitiveContentImprovements()Z
    .registers 3

    .line 371
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;-><init>()V

    const-string v1, "android.permission.flags.sensitive_content_improvements"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensitiveContentMetricsBugfix()Z
    .registers 3

    .line 378
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "android.permission.flags.sensitive_content_metrics_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensitiveContentRecentsScreenshotBugfix()Z
    .registers 3

    .line 385
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "android.permission.flags.sensitive_content_recents_screenshot_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensitiveNotificationAppProtection()Z
    .registers 3

    .line 392
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda71;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda71;-><init>()V

    const-string v1, "android.permission.flags.sensitive_notification_app_protection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setNextAttributionSource()Z
    .registers 3

    .line 399
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "android.permission.flags.set_next_attribution_source"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist shouldRegisterAttributionSource()Z
    .registers 3

    .line 406
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.permission.flags.should_register_attribution_source"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist signaturePermissionAllowlistEnabled()Z
    .registers 3

    .line 413
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "android.permission.flags.signature_permission_allowlist_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sqliteDiscreteOpEventLoggingEnabled()Z
    .registers 3

    .line 420
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.permission.flags.sqlite_discrete_op_event_logging_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supervisionRoleEnabled()Z
    .registers 3

    .line 427
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.permission.flags.supervision_role_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supervisionRolePermissionUpdateEnabled()Z
    .registers 3

    .line 434
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;-><init>()V

    const-string v1, "android.permission.flags.supervision_role_permission_update_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist syncOnOpNotedApi()Z
    .registers 3

    .line 441
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "android.permission.flags.sync_on_op_noted_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist systemSelectionToolbarEnabled()Z
    .registers 3

    .line 448
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.permission.flags.system_selection_toolbar_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist systemServerRoleControllerEnabled()Z
    .registers 3

    .line 455
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda69;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda69;-><init>()V

    const-string v1, "android.permission.flags.system_server_role_controller_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist systemVendorIntelligenceRoleEnabled()Z
    .registers 3

    .line 462
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;-><init>()V

    const-string v1, "android.permission.flags.system_vendor_intelligence_role_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist textClassifierChoiceApiEnabled()Z
    .registers 3

    .line 469
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.permission.flags.text_classifier_choice_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unknownCallPackageInstallBlockingEnabled()Z
    .registers 3

    .line 476
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "android.permission.flags.unknown_call_package_install_blocking_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unknownCallSettingBlockedLoggingEnabled()Z
    .registers 3

    .line 483
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;-><init>()V

    const-string v1, "android.permission.flags.unknown_call_setting_blocked_logging_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist updatableTextClassifierForOtpDetectionEnabled()Z
    .registers 3

    .line 490
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.permission.flags.updatable_text_classifier_for_otp_detection_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useFrozenAwareRemoteCallbackList()Z
    .registers 3

    .line 497
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda72;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda72;-><init>()V

    const-string v1, "android.permission.flags.use_frozen_aware_remote_callback_list"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useProfileLabelsForDefaultAppSectionTitles()Z
    .registers 3

    .line 504
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.permission.flags.use_profile_labels_for_default_app_section_titles"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist voiceActivationPermissionApis()Z
    .registers 3

    .line 511
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.permission.flags.voice_activation_permission_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist walletRoleCrossUserEnabled()Z
    .registers 3

    .line 518
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.permission.flags.wallet_role_cross_user_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist walletRoleEnabled()Z
    .registers 3

    .line 525
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "android.permission.flags.wallet_role_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist walletRoleIconPropertyEnabled()Z
    .registers 3

    .line 532
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;-><init>()V

    const-string v1, "android.permission.flags.wallet_role_icon_property_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist watchFaceRoleEnabled()Z
    .registers 3

    .line 539
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.permission.flags.watch_face_role_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
