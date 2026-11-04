.class public Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;",
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
    .registers 60
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 480
    new-instance v1, Ljava/util/HashSet;

    const-string v56, "android.security.wtf_bundle_defuse"

    const-string v57, ""

    const-string v2, "android.security.aapm_api"

    const-string v3, "android.security.aapm_feature_disable_cellular_2g"

    const-string v4, "android.security.aapm_feature_disable_install_unknown_sources"

    const-string v5, "android.security.aapm_feature_usb_data_protection"

    const-string v6, "android.security.aapm_feature_usb_data_protection_delay_disable_auto_only"

    const-string v7, "android.security.aapm_feature_usb_data_protection_disable_data_for_charger_upon_lock"

    const-string v8, "android.security.afl_api"

    const-string v9, "android.security.asm_ignore_grace_period_exemption"

    const-string v10, "android.security.asm_opt_system_into_enforcement"

    const-string v11, "android.security.asm_restrictions_enabled"

    const-string v12, "android.security.asm_restrictions_v2"

    const-string v13, "android.security.asm_toasts_enabled"

    const-string v14, "android.security.block_null_action_intents"

    const-string v15, "android.security.certificate_transparency_configuration"

    const-string v16, "android.security.check_application_thread_called_by_system"

    const-string v17, "android.security.conscrypt_network_security_config"

    const-string v18, "android.security.content_uri_permission_apis"

    const-string v19, "android.security.deprecate_bundle_defuse"

    const-string v20, "android.security.deprecate_uses_cleartext_traffic"

    const-string v21, "android.security.disable_adaptive_auth_counter_lock"

    const-string v22, "android.security.enable_intent_firewall_component_class_filter"

    const-string v23, "android.security.enable_intent_firewall_extra_key_value_filter"

    const-string v24, "android.security.enable_intent_matching_flags"

    const-string v25, "android.security.enable_talisman_service"

    const-string v26, "android.security.enforce_intent_filter_match"

    const-string v27, "android.security.extend_ecm_to_all_settings"

    const-string v28, "android.security.fail_on_parcel_size_mismatch"

    const-string v29, "android.security.failed_auth_lock_toggle"

    const-string v30, "android.security.frp_enforcement"

    const-string v31, "android.security.fsverity_api"

    const-string v32, "android.security.implicit_uri_grants_restricted_for_send_action"

    const-string v33, "android.security.implicit_uri_grants_restricted_for_sendmultiple_imagecapture_actions"

    const-string v34, "android.security.internal_log_event_listener"

    const-string v35, "android.security.keyinfo_unlocked_device_required"

    const-string v36, "android.security.keystore_grant_api"

    const-string v37, "android.security.manage_lockout_end_time_in_service"

    const-string v38, "android.security.mgf1_digest_setter_v2"

    const-string v39, "android.security.prevent_intent_redirect"

    const-string v40, "android.security.prevent_intent_redirect_abort_or_throw_exception"

    const-string v41, "android.security.prevent_intent_redirect_collect_nested_keys_on_server_if_not_collected"

    const-string v42, "android.security.prevent_intent_redirect_show_toast"

    const-string v43, "android.security.prevent_intent_redirect_show_toast_if_nested_keys_not_collected_r_w"

    const-string v44, "android.security.prevent_intent_redirect_throw_exception_if_nested_keys_not_collected"

    const-string v45, "android.security.protect_device_config_flags"

    const-string v46, "android.security.reset_auth_flags_and_metrics_in_lock_user"

    const-string v47, "android.security.scrypt_parameter_change"

    const-string v48, "android.security.secure_lock_device"

    const-string v49, "android.security.secure_lockdown"

    const-string v50, "android.security.service_uprobestats"

    const-string v51, "android.security.should_trust_manager_listen_for_primary_auth"

    const-string v52, "android.security.software_ratelimiter"

    const-string v53, "android.security.stop_recognizing_legacy_password_hashes"

    const-string v54, "android.security.subscribe_to_keyguard_locked_state_perm_priv_flag"

    const-string v55, "android.security.unlocked_storage_api"

    filled-new-array/range {v2 .. v57}, [Ljava/lang/String;

    move-result-object v2

    .line 481
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 17
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 413
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist aapmApi()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.security.aapm_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist aapmFeatureDisableCellular2g()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "android.security.aapm_feature_disable_cellular_2g"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist aapmFeatureDisableInstallUnknownSources()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "android.security.aapm_feature_disable_install_unknown_sources"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist aapmFeatureUsbDataProtection()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "android.security.aapm_feature_usb_data_protection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist aapmFeatureUsbDataProtectionDelayDisableAutoOnly()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "android.security.aapm_feature_usb_data_protection_delay_disable_auto_only"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist aapmFeatureUsbDataProtectionDisableDataForChargerUponLock()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.security.aapm_feature_usb_data_protection_disable_data_for_charger_upon_lock"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist aflApi()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.security.afl_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist asmIgnoreGracePeriodExemption()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "android.security.asm_ignore_grace_period_exemption"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist asmOptSystemIntoEnforcement()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.security.asm_opt_system_into_enforcement"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist asmRestrictionsEnabled()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.security.asm_restrictions_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist asmRestrictionsV2()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.security.asm_restrictions_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist asmToastsEnabled()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "android.security.asm_toasts_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist blockNullActionIntents()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.security.block_null_action_intents"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist certificateTransparencyConfiguration()Z
    .registers 3

    .line 112
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.security.certificate_transparency_configuration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist checkApplicationThreadCalledBySystem()Z
    .registers 3

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.security.check_application_thread_called_by_system"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist conscryptNetworkSecurityConfig()Z
    .registers 3

    .line 126
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.security.conscrypt_network_security_config"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist contentUriPermissionApis()Z
    .registers 3

    .line 133
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.security.content_uri_permission_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deprecateBundleDefuse()Z
    .registers 3

    .line 140
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.security.deprecate_bundle_defuse"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deprecateUsesCleartextTraffic()Z
    .registers 3

    .line 147
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "android.security.deprecate_uses_cleartext_traffic"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disableAdaptiveAuthCounterLock()Z
    .registers 3

    .line 154
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.security.disable_adaptive_auth_counter_lock"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableIntentFirewallComponentClassFilter()Z
    .registers 3

    .line 161
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "android.security.enable_intent_firewall_component_class_filter"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableIntentFirewallExtraKeyValueFilter()Z
    .registers 3

    .line 168
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.security.enable_intent_firewall_extra_key_value_filter"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableIntentMatchingFlags()Z
    .registers 3

    .line 175
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "android.security.enable_intent_matching_flags"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTalismanService()Z
    .registers 3

    .line 182
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.security.enable_talisman_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enforceIntentFilterMatch()Z
    .registers 3

    .line 189
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "android.security.enforce_intent_filter_match"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist extendEcmToAllSettings()Z
    .registers 3

    .line 196
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "android.security.extend_ecm_to_all_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist failOnParcelSizeMismatch()Z
    .registers 3

    .line 203
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.security.fail_on_parcel_size_mismatch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist failedAuthLockToggle()Z
    .registers 3

    .line 210
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.security.failed_auth_lock_toggle"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist frpEnforcement()Z
    .registers 3

    .line 217
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.security.frp_enforcement"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fsverityApi()Z
    .registers 3

    .line 224
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "android.security.fsverity_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 57
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 421
    const-string v54, "android.security.unlocked_storage_api"

    const-string v55, "android.security.wtf_bundle_defuse"

    const-string v1, "android.security.aapm_api"

    const-string v2, "android.security.aapm_feature_disable_cellular_2g"

    const-string v3, "android.security.aapm_feature_disable_install_unknown_sources"

    const-string v4, "android.security.aapm_feature_usb_data_protection"

    const-string v5, "android.security.aapm_feature_usb_data_protection_delay_disable_auto_only"

    const-string v6, "android.security.aapm_feature_usb_data_protection_disable_data_for_charger_upon_lock"

    const-string v7, "android.security.afl_api"

    const-string v8, "android.security.asm_ignore_grace_period_exemption"

    const-string v9, "android.security.asm_opt_system_into_enforcement"

    const-string v10, "android.security.asm_restrictions_enabled"

    const-string v11, "android.security.asm_restrictions_v2"

    const-string v12, "android.security.asm_toasts_enabled"

    const-string v13, "android.security.block_null_action_intents"

    const-string v14, "android.security.certificate_transparency_configuration"

    const-string v15, "android.security.check_application_thread_called_by_system"

    const-string v16, "android.security.conscrypt_network_security_config"

    const-string v17, "android.security.content_uri_permission_apis"

    const-string v18, "android.security.deprecate_bundle_defuse"

    const-string v19, "android.security.deprecate_uses_cleartext_traffic"

    const-string v20, "android.security.disable_adaptive_auth_counter_lock"

    const-string v21, "android.security.enable_intent_firewall_component_class_filter"

    const-string v22, "android.security.enable_intent_firewall_extra_key_value_filter"

    const-string v23, "android.security.enable_intent_matching_flags"

    const-string v24, "android.security.enable_talisman_service"

    const-string v25, "android.security.enforce_intent_filter_match"

    const-string v26, "android.security.extend_ecm_to_all_settings"

    const-string v27, "android.security.fail_on_parcel_size_mismatch"

    const-string v28, "android.security.failed_auth_lock_toggle"

    const-string v29, "android.security.frp_enforcement"

    const-string v30, "android.security.fsverity_api"

    const-string v31, "android.security.implicit_uri_grants_restricted_for_send_action"

    const-string v32, "android.security.implicit_uri_grants_restricted_for_sendmultiple_imagecapture_actions"

    const-string v33, "android.security.internal_log_event_listener"

    const-string v34, "android.security.keyinfo_unlocked_device_required"

    const-string v35, "android.security.keystore_grant_api"

    const-string v36, "android.security.manage_lockout_end_time_in_service"

    const-string v37, "android.security.mgf1_digest_setter_v2"

    const-string v38, "android.security.prevent_intent_redirect"

    const-string v39, "android.security.prevent_intent_redirect_abort_or_throw_exception"

    const-string v40, "android.security.prevent_intent_redirect_collect_nested_keys_on_server_if_not_collected"

    const-string v41, "android.security.prevent_intent_redirect_show_toast"

    const-string v42, "android.security.prevent_intent_redirect_show_toast_if_nested_keys_not_collected_r_w"

    const-string v43, "android.security.prevent_intent_redirect_throw_exception_if_nested_keys_not_collected"

    const-string v44, "android.security.protect_device_config_flags"

    const-string v45, "android.security.reset_auth_flags_and_metrics_in_lock_user"

    const-string v46, "android.security.scrypt_parameter_change"

    const-string v47, "android.security.secure_lock_device"

    const-string v48, "android.security.secure_lockdown"

    const-string v49, "android.security.service_uprobestats"

    const-string v50, "android.security.should_trust_manager_listen_for_primary_auth"

    const-string v51, "android.security.software_ratelimiter"

    const-string v52, "android.security.stop_recognizing_legacy_password_hashes"

    const-string v53, "android.security.subscribe_to_keyguard_locked_state_perm_priv_flag"

    filled-new-array/range {v1 .. v55}, [Ljava/lang/String;

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
            "Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist implicitUriGrantsRestrictedForSendAction()Z
    .registers 3

    .line 231
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.security.implicit_uri_grants_restricted_for_send_action"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist implicitUriGrantsRestrictedForSendmultipleImagecaptureActions()Z
    .registers 3

    .line 238
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "android.security.implicit_uri_grants_restricted_for_sendmultiple_imagecapture_actions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist internalLogEventListener()Z
    .registers 3

    .line 245
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.security.internal_log_event_listener"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 404
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 405
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 406
    const/4 p1, 0x1

    return p1

    .line 408
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist keyinfoUnlockedDeviceRequired()Z
    .registers 3

    .line 252
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.security.keyinfo_unlocked_device_required"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist keystoreGrantApi()Z
    .registers 3

    .line 259
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.security.keystore_grant_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist manageLockoutEndTimeInService()Z
    .registers 3

    .line 266
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.security.manage_lockout_end_time_in_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist mgf1DigestSetterV2()Z
    .registers 3

    .line 273
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.security.mgf1_digest_setter_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist preventIntentRedirect()Z
    .registers 3

    .line 280
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.security.prevent_intent_redirect"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist preventIntentRedirectAbortOrThrowException()Z
    .registers 3

    .line 287
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.security.prevent_intent_redirect_abort_or_throw_exception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist preventIntentRedirectCollectNestedKeysOnServerIfNotCollected()Z
    .registers 3

    .line 294
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.security.prevent_intent_redirect_collect_nested_keys_on_server_if_not_collected"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist preventIntentRedirectShowToast()Z
    .registers 3

    .line 301
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.security.prevent_intent_redirect_show_toast"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist preventIntentRedirectShowToastIfNestedKeysNotCollectedRW()Z
    .registers 3

    .line 308
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.security.prevent_intent_redirect_show_toast_if_nested_keys_not_collected_r_w"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist preventIntentRedirectThrowExceptionIfNestedKeysNotCollected()Z
    .registers 3

    .line 315
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "android.security.prevent_intent_redirect_throw_exception_if_nested_keys_not_collected"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist protectDeviceConfigFlags()Z
    .registers 3

    .line 322
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.security.protect_device_config_flags"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist resetAuthFlagsAndMetricsInLockUser()Z
    .registers 3

    .line 329
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.security.reset_auth_flags_and_metrics_in_lock_user"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist scryptParameterChange()Z
    .registers 3

    .line 336
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.security.scrypt_parameter_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist secureLockDevice()Z
    .registers 3

    .line 343
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.security.secure_lock_device"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist secureLockdown()Z
    .registers 3

    .line 350
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "android.security.secure_lockdown"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist serviceUprobestats()Z
    .registers 3

    .line 357
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.security.service_uprobestats"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist shouldTrustManagerListenForPrimaryAuth()Z
    .registers 3

    .line 364
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "android.security.should_trust_manager_listen_for_primary_auth"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist softwareRatelimiter()Z
    .registers 3

    .line 371
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.security.software_ratelimiter"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist stopRecognizingLegacyPasswordHashes()Z
    .registers 3

    .line 378
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.security.stop_recognizing_legacy_password_hashes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist subscribeToKeyguardLockedStatePermPrivFlag()Z
    .registers 3

    .line 385
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.security.subscribe_to_keyguard_locked_state_perm_priv_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unlockedStorageApi()Z
    .registers 3

    .line 392
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "android.security.unlocked_storage_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist wtfBundleDefuse()Z
    .registers 3

    .line 399
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.security.wtf_bundle_defuse"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
