.class public Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;",
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
    .registers 118
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 944
    new-instance v1, Ljava/util/HashSet;

    const-string v114, "com.android.internal.telephony.flags.work_profile_api_split"

    const-string v115, ""

    const-string v2, "com.android.internal.telephony.flags.add_ims_redial_codes_for_emergency_calls"

    const-string v3, "com.android.internal.telephony.flags.add_rat_related_suggested_action_to_ims_registration"

    const-string v4, "com.android.internal.telephony.flags.allow_multi_country_mcc"

    const-string v5, "com.android.internal.telephony.flags.allowed_services"

    const-string v6, "com.android.internal.telephony.flags.ast_skylo_fallback"

    const-string v7, "com.android.internal.telephony.flags.carrier_enabled_satellite_flag"

    const-string v8, "com.android.internal.telephony.flags.carrier_id_from_carrier_identifier"

    const-string v9, "com.android.internal.telephony.flags.carrier_restriction_status"

    const-string v10, "com.android.internal.telephony.flags.carrier_roaming_nb_iot_ntn"

    const-string v11, "com.android.internal.telephony.flags.cat_service_creation_fix"

    const-string v12, "com.android.internal.telephony.flags.cell_identity_for_barring_info"

    const-string v13, "com.android.internal.telephony.flags.cellular_identifier_disclosure_indications"

    const-string v14, "com.android.internal.telephony.flags.cleanup_carrier_app_update_enabled_state_logic"

    const-string v15, "com.android.internal.telephony.flags.clear_cached_ims_phone_number_when_device_lost_ims_registration"

    const-string v16, "com.android.internal.telephony.flags.conference_hold_unhold_changed_to_send_message"

    const-string v17, "com.android.internal.telephony.flags.data_only_cellular_service"

    const-string v18, "com.android.internal.telephony.flags.data_service_check"

    const-string v19, "com.android.internal.telephony.flags.data_service_notify_ims_data_network"

    const-string v20, "com.android.internal.telephony.flags.data_service_user_data_toggle_notify"

    const-string v21, "com.android.internal.telephony.flags.delay_phone_account_registration"

    const-string v22, "com.android.internal.telephony.flags.delete_cdma"

    const-string v23, "com.android.internal.telephony.flags.domain_selection_metrics_enabled"

    const-string v24, "com.android.internal.telephony.flags.duplex_mode_for_ngran"

    const-string v25, "com.android.internal.telephony.flags.dynamic_do_not_ask_again_text"

    const-string v26, "com.android.internal.telephony.flags.dynamic_modem_shutdown"

    const-string v27, "com.android.internal.telephony.flags.emergency_callback_mode_notification"

    const-string v28, "com.android.internal.telephony.flags.emergency_registration_state"

    const-string v29, "com.android.internal.telephony.flags.enable_aead_algorithms"

    const-string v30, "com.android.internal.telephony.flags.enable_multiple_sa_proposals"

    const-string v31, "com.android.internal.telephony.flags.enable_oem_log_sources_collection"

    const-string v32, "com.android.internal.telephony.flags.enable_phone_number_parsing_api"

    const-string v33, "com.android.internal.telephony.flags.enable_rtt_hold_carrier_config"

    const-string v34, "com.android.internal.telephony.flags.enable_wps_check_api_flag"

    const-string v35, "com.android.internal.telephony.flags.enforce_subscription_user_filter"

    const-string v36, "com.android.internal.telephony.flags.esim_available_memory"

    const-string v37, "com.android.internal.telephony.flags.esim_bootstrap_provisioning_flag"

    const-string v38, "com.android.internal.telephony.flags.geofence_enhancement_for_better_ux"

    const-string v39, "com.android.internal.telephony.flags.hangup_active_call_based_on_emergency_call_domain"

    const-string v40, "com.android.internal.telephony.flags.hide_prefer_3g_item"

    const-string v41, "com.android.internal.telephony.flags.ignore_initial_data_stall_recovered"

    const-string v42, "com.android.internal.telephony.flags.ignore_state_details_update_for_domain_reselection"

    const-string v43, "com.android.internal.telephony.flags.ims_resolver_user_aware"

    const-string v44, "com.android.internal.telephony.flags.inactive_data_network_is_not_stalled"

    const-string v45, "com.android.internal.telephony.flags.incall_handover_policy"

    const-string v46, "com.android.internal.telephony.flags.keep_wfc_on_apm"

    const-string v47, "com.android.internal.telephony.flags.limit_raw_table_visibility"

    const-string v48, "com.android.internal.telephony.flags.log_calls_answered_elsewhere"

    const-string v49, "com.android.internal.telephony.flags.log_mms_sms_database_access_info"

    const-string v50, "com.android.internal.telephony.flags.macro_based_opportunistic_networks"

    const-string v51, "com.android.internal.telephony.flags.minimal_telephony_cdm_check_board_api_level"

    const-string v52, "com.android.internal.telephony.flags.mms_disabled_error"

    const-string v53, "com.android.internal.telephony.flags.monitor_carrier_config_change_for_auto_data_switch"

    const-string v54, "com.android.internal.telephony.flags.national_country_code_formatting_for_local_calls"

    const-string v55, "com.android.internal.telephony.flags.network_registration_info_reject_cause"

    const-string v56, "com.android.internal.telephony.flags.network_validation"

    const-string v57, "com.android.internal.telephony.flags.oem_enabled_satellite_flag"

    const-string v58, "com.android.internal.telephony.flags.oem_enabled_satellite_phase_2"

    const-string v59, "com.android.internal.telephony.flags.ons_thread_consolidation"

    const-string v60, "com.android.internal.telephony.flags.optimization_apdu_sender"

    const-string v61, "com.android.internal.telephony.flags.pass_copied_call_state_list"

    const-string v62, "com.android.internal.telephony.flags.pcscf_address"

    const-string v63, "com.android.internal.telephony.flags.perform_cross_stack_redial_check_for_emergency_call"

    const-string v64, "com.android.internal.telephony.flags.power_down_race_fix"

    const-string v65, "com.android.internal.telephony.flags.prevent_system_server_and_phone_deadlock"

    const-string v66, "com.android.internal.telephony.flags.redact_otp_sms"

    const-string v67, "com.android.internal.telephony.flags.redact_otp_sms_api"

    const-string v68, "com.android.internal.telephony.flags.remap_disconnect_cause_sip_request_cancelled"

    const-string v69, "com.android.internal.telephony.flags.remove_country_code_from_local_singapore_calls"

    const-string v70, "com.android.internal.telephony.flags.reset_mobile_network_settings"

    const-string v71, "com.android.internal.telephony.flags.reuse_original_conn_remote_conf_behavior"

    const-string v72, "com.android.internal.telephony.flags.robust_number_verification"

    const-string v73, "com.android.internal.telephony.flags.satellite_25q4_apis"

    const-string v74, "com.android.internal.telephony.flags.satellite_26q2_apis"

    const-string v75, "com.android.internal.telephony.flags.satellite_data_metrics"

    const-string v76, "com.android.internal.telephony.flags.satellite_exit_p2p_session_outside_geofence"

    const-string v77, "com.android.internal.telephony.flags.satellite_improve_multi_thread_design"

    const-string v78, "com.android.internal.telephony.flags.satellite_state_change_listener"

    const-string v79, "com.android.internal.telephony.flags.satellite_system_apis"

    const-string v80, "com.android.internal.telephony.flags.security_algorithms_update_indications"

    const-string v81, "com.android.internal.telephony.flags.send_imsi_key_for_duplicate_sim"

    const-string v82, "com.android.internal.telephony.flags.send_merge_failure_on_handle_conference_failed"

    const-string v83, "com.android.internal.telephony.flags.set_carrier_restriction_status"

    const-string v84, "com.android.internal.telephony.flags.sim_phonebook_cache_fix"

    const-string v85, "com.android.internal.telephony.flags.simultaneous_calling_indications"

    const-string v86, "com.android.internal.telephony.flags.slicing_additional_error_codes"

    const-string v87, "com.android.internal.telephony.flags.sms_mms_deliver_broadcasts_redirect_to_main_user"

    const-string v88, "com.android.internal.telephony.flags.starlink_data_bugfix"

    const-string v89, "com.android.internal.telephony.flags.stop_spamming_emergency_notification"

    const-string v90, "com.android.internal.telephony.flags.subscription_plan_allow_status_and_end_date"

    const-string v91, "com.android.internal.telephony.flags.subscription_user_association_query"

    const-string v92, "com.android.internal.telephony.flags.support_auto_unhold"

    const-string v93, "com.android.internal.telephony.flags.support_carrier_ids_in_geofence"

    const-string v94, "com.android.internal.telephony.flags.support_ims_mmtel_interface"

    const-string v95, "com.android.internal.telephony.flags.support_ims_registration_event_download"

    const-string v96, "com.android.internal.telephony.flags.support_ims_sms_smma"

    const-string v97, "com.android.internal.telephony.flags.support_isim_record"

    const-string v98, "com.android.internal.telephony.flags.support_psim_to_esim_conversion"

    const-string v99, "com.android.internal.telephony.flags.support_slot_switching_2psim_1esim_config"

    const-string v100, "com.android.internal.telephony.flags.support_sms_over_ims_apis"

    const-string v101, "com.android.internal.telephony.flags.support_stk_command_ussd_and_call"

    const-string v102, "com.android.internal.telephony.flags.support_throttle_time_for_deregistration"

    const-string v103, "com.android.internal.telephony.flags.telephony_satellite_apis"

    const-string v104, "com.android.internal.telephony.flags.telephony_satellite_mainline_phase1"

    const-string v105, "com.android.internal.telephony.flags.temporary_failures_in_carrier_messaging_service"

    const-string v106, "com.android.internal.telephony.flags.unregister_sms_broadcast_receiver_from_cat_service"

    const-string v107, "com.android.internal.telephony.flags.update_resource_configuration"

    const-string v108, "com.android.internal.telephony.flags.use_aosp_domain_selection_service"

    const-string v109, "com.android.internal.telephony.flags.use_i18n_for_mcc_mapping"

    const-string v110, "com.android.internal.telephony.flags.use_oem_domain_selection_service"

    const-string v111, "com.android.internal.telephony.flags.vendor_specific_cellular_identifier_disclosure_indications"

    const-string v112, "com.android.internal.telephony.flags.vvm_async_sim_state_handling"

    const-string v113, "com.android.internal.telephony.flags.vzw_ast_skylo_fallback"

    filled-new-array/range {v2 .. v115}, [Ljava/lang/String;

    move-result-object v2

    .line 945
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 17
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 819
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist addImsRedialCodesForEmergencyCalls()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda87;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda87;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.add_ims_redial_codes_for_emergency_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist addRatRelatedSuggestedActionToImsRegistration()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda102;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda102;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.add_rat_related_suggested_action_to_ims_registration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowMultiCountryMcc()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.allow_multi_country_mcc"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowedServices()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.allowed_services"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist astSkyloFallback()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda112;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda112;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.ast_skylo_fallback"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist carrierEnabledSatelliteFlag()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.carrier_enabled_satellite_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist carrierIdFromCarrierIdentifier()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.carrier_id_from_carrier_identifier"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist carrierRestrictionStatus()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.carrier_restriction_status"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist carrierRoamingNbIotNtn()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.carrier_roaming_nb_iot_ntn"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist catServiceCreationFix()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.cat_service_creation_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cellIdentityForBarringInfo()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda89;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda89;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.cell_identity_for_barring_info"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cellularIdentifierDisclosureIndications()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.cellular_identifier_disclosure_indications"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cleanupCarrierAppUpdateEnabledStateLogic()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.cleanup_carrier_app_update_enabled_state_logic"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist clearCachedImsPhoneNumberWhenDeviceLostImsRegistration()Z
    .registers 3

    .line 112
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.clear_cached_ims_phone_number_when_device_lost_ims_registration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist conferenceHoldUnholdChangedToSendMessage()Z
    .registers 3

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda70;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda70;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.conference_hold_unhold_changed_to_send_message"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dataOnlyCellularService()Z
    .registers 3

    .line 126
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.data_only_cellular_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dataServiceCheck()Z
    .registers 3

    .line 133
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda74;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda74;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.data_service_check"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dataServiceNotifyImsDataNetwork()Z
    .registers 3

    .line 140
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.data_service_notify_ims_data_network"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dataServiceUserDataToggleNotify()Z
    .registers 3

    .line 147
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.data_service_user_data_toggle_notify"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist delayPhoneAccountRegistration()Z
    .registers 3

    .line 154
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda106;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda106;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.delay_phone_account_registration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deleteCdma()Z
    .registers 3

    .line 161
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.delete_cdma"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist domainSelectionMetricsEnabled()Z
    .registers 3

    .line 168
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.domain_selection_metrics_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist duplexModeForNgran()Z
    .registers 3

    .line 175
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda103;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda103;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.duplex_mode_for_ngran"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dynamicDoNotAskAgainText()Z
    .registers 3

    .line 182
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda78;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda78;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.dynamic_do_not_ask_again_text"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dynamicModemShutdown()Z
    .registers 3

    .line 189
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.dynamic_modem_shutdown"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist emergencyCallbackModeNotification()Z
    .registers 3

    .line 196
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.emergency_callback_mode_notification"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist emergencyRegistrationState()Z
    .registers 3

    .line 203
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.emergency_registration_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAeadAlgorithms()Z
    .registers 3

    .line 210
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enable_aead_algorithms"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableMultipleSaProposals()Z
    .registers 3

    .line 217
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enable_multiple_sa_proposals"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableOemLogSourcesCollection()Z
    .registers 3

    .line 224
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enable_oem_log_sources_collection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePhoneNumberParsingApi()Z
    .registers 3

    .line 231
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda86;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda86;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enable_phone_number_parsing_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableRttHoldCarrierConfig()Z
    .registers 3

    .line 238
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enable_rtt_hold_carrier_config"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableWpsCheckApiFlag()Z
    .registers 3

    .line 245
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda83;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda83;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enable_wps_check_api_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enforceSubscriptionUserFilter()Z
    .registers 3

    .line 252
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enforce_subscription_user_filter"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist esimAvailableMemory()Z
    .registers 3

    .line 259
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.esim_available_memory"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist esimBootstrapProvisioningFlag()Z
    .registers 3

    .line 266
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda79;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda79;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.esim_bootstrap_provisioning_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist geofenceEnhancementForBetterUx()Z
    .registers 3

    .line 273
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.geofence_enhancement_for_better_ux"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 115
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 827
    const-string v112, "com.android.internal.telephony.flags.vzw_ast_skylo_fallback"

    const-string v113, "com.android.internal.telephony.flags.work_profile_api_split"

    const-string v1, "com.android.internal.telephony.flags.add_ims_redial_codes_for_emergency_calls"

    const-string v2, "com.android.internal.telephony.flags.add_rat_related_suggested_action_to_ims_registration"

    const-string v3, "com.android.internal.telephony.flags.allow_multi_country_mcc"

    const-string v4, "com.android.internal.telephony.flags.allowed_services"

    const-string v5, "com.android.internal.telephony.flags.ast_skylo_fallback"

    const-string v6, "com.android.internal.telephony.flags.carrier_enabled_satellite_flag"

    const-string v7, "com.android.internal.telephony.flags.carrier_id_from_carrier_identifier"

    const-string v8, "com.android.internal.telephony.flags.carrier_restriction_status"

    const-string v9, "com.android.internal.telephony.flags.carrier_roaming_nb_iot_ntn"

    const-string v10, "com.android.internal.telephony.flags.cat_service_creation_fix"

    const-string v11, "com.android.internal.telephony.flags.cell_identity_for_barring_info"

    const-string v12, "com.android.internal.telephony.flags.cellular_identifier_disclosure_indications"

    const-string v13, "com.android.internal.telephony.flags.cleanup_carrier_app_update_enabled_state_logic"

    const-string v14, "com.android.internal.telephony.flags.clear_cached_ims_phone_number_when_device_lost_ims_registration"

    const-string v15, "com.android.internal.telephony.flags.conference_hold_unhold_changed_to_send_message"

    const-string v16, "com.android.internal.telephony.flags.data_only_cellular_service"

    const-string v17, "com.android.internal.telephony.flags.data_service_check"

    const-string v18, "com.android.internal.telephony.flags.data_service_notify_ims_data_network"

    const-string v19, "com.android.internal.telephony.flags.data_service_user_data_toggle_notify"

    const-string v20, "com.android.internal.telephony.flags.delay_phone_account_registration"

    const-string v21, "com.android.internal.telephony.flags.delete_cdma"

    const-string v22, "com.android.internal.telephony.flags.domain_selection_metrics_enabled"

    const-string v23, "com.android.internal.telephony.flags.duplex_mode_for_ngran"

    const-string v24, "com.android.internal.telephony.flags.dynamic_do_not_ask_again_text"

    const-string v25, "com.android.internal.telephony.flags.dynamic_modem_shutdown"

    const-string v26, "com.android.internal.telephony.flags.emergency_callback_mode_notification"

    const-string v27, "com.android.internal.telephony.flags.emergency_registration_state"

    const-string v28, "com.android.internal.telephony.flags.enable_aead_algorithms"

    const-string v29, "com.android.internal.telephony.flags.enable_multiple_sa_proposals"

    const-string v30, "com.android.internal.telephony.flags.enable_oem_log_sources_collection"

    const-string v31, "com.android.internal.telephony.flags.enable_phone_number_parsing_api"

    const-string v32, "com.android.internal.telephony.flags.enable_rtt_hold_carrier_config"

    const-string v33, "com.android.internal.telephony.flags.enable_wps_check_api_flag"

    const-string v34, "com.android.internal.telephony.flags.enforce_subscription_user_filter"

    const-string v35, "com.android.internal.telephony.flags.esim_available_memory"

    const-string v36, "com.android.internal.telephony.flags.esim_bootstrap_provisioning_flag"

    const-string v37, "com.android.internal.telephony.flags.geofence_enhancement_for_better_ux"

    const-string v38, "com.android.internal.telephony.flags.hangup_active_call_based_on_emergency_call_domain"

    const-string v39, "com.android.internal.telephony.flags.hide_prefer_3g_item"

    const-string v40, "com.android.internal.telephony.flags.ignore_initial_data_stall_recovered"

    const-string v41, "com.android.internal.telephony.flags.ignore_state_details_update_for_domain_reselection"

    const-string v42, "com.android.internal.telephony.flags.ims_resolver_user_aware"

    const-string v43, "com.android.internal.telephony.flags.inactive_data_network_is_not_stalled"

    const-string v44, "com.android.internal.telephony.flags.incall_handover_policy"

    const-string v45, "com.android.internal.telephony.flags.keep_wfc_on_apm"

    const-string v46, "com.android.internal.telephony.flags.limit_raw_table_visibility"

    const-string v47, "com.android.internal.telephony.flags.log_calls_answered_elsewhere"

    const-string v48, "com.android.internal.telephony.flags.log_mms_sms_database_access_info"

    const-string v49, "com.android.internal.telephony.flags.macro_based_opportunistic_networks"

    const-string v50, "com.android.internal.telephony.flags.minimal_telephony_cdm_check_board_api_level"

    const-string v51, "com.android.internal.telephony.flags.mms_disabled_error"

    const-string v52, "com.android.internal.telephony.flags.monitor_carrier_config_change_for_auto_data_switch"

    const-string v53, "com.android.internal.telephony.flags.national_country_code_formatting_for_local_calls"

    const-string v54, "com.android.internal.telephony.flags.network_registration_info_reject_cause"

    const-string v55, "com.android.internal.telephony.flags.network_validation"

    const-string v56, "com.android.internal.telephony.flags.oem_enabled_satellite_flag"

    const-string v57, "com.android.internal.telephony.flags.oem_enabled_satellite_phase_2"

    const-string v58, "com.android.internal.telephony.flags.ons_thread_consolidation"

    const-string v59, "com.android.internal.telephony.flags.optimization_apdu_sender"

    const-string v60, "com.android.internal.telephony.flags.pass_copied_call_state_list"

    const-string v61, "com.android.internal.telephony.flags.pcscf_address"

    const-string v62, "com.android.internal.telephony.flags.perform_cross_stack_redial_check_for_emergency_call"

    const-string v63, "com.android.internal.telephony.flags.power_down_race_fix"

    const-string v64, "com.android.internal.telephony.flags.prevent_system_server_and_phone_deadlock"

    const-string v65, "com.android.internal.telephony.flags.redact_otp_sms"

    const-string v66, "com.android.internal.telephony.flags.redact_otp_sms_api"

    const-string v67, "com.android.internal.telephony.flags.remap_disconnect_cause_sip_request_cancelled"

    const-string v68, "com.android.internal.telephony.flags.remove_country_code_from_local_singapore_calls"

    const-string v69, "com.android.internal.telephony.flags.reset_mobile_network_settings"

    const-string v70, "com.android.internal.telephony.flags.reuse_original_conn_remote_conf_behavior"

    const-string v71, "com.android.internal.telephony.flags.robust_number_verification"

    const-string v72, "com.android.internal.telephony.flags.satellite_25q4_apis"

    const-string v73, "com.android.internal.telephony.flags.satellite_26q2_apis"

    const-string v74, "com.android.internal.telephony.flags.satellite_data_metrics"

    const-string v75, "com.android.internal.telephony.flags.satellite_exit_p2p_session_outside_geofence"

    const-string v76, "com.android.internal.telephony.flags.satellite_improve_multi_thread_design"

    const-string v77, "com.android.internal.telephony.flags.satellite_state_change_listener"

    const-string v78, "com.android.internal.telephony.flags.satellite_system_apis"

    const-string v79, "com.android.internal.telephony.flags.security_algorithms_update_indications"

    const-string v80, "com.android.internal.telephony.flags.send_imsi_key_for_duplicate_sim"

    const-string v81, "com.android.internal.telephony.flags.send_merge_failure_on_handle_conference_failed"

    const-string v82, "com.android.internal.telephony.flags.set_carrier_restriction_status"

    const-string v83, "com.android.internal.telephony.flags.sim_phonebook_cache_fix"

    const-string v84, "com.android.internal.telephony.flags.simultaneous_calling_indications"

    const-string v85, "com.android.internal.telephony.flags.slicing_additional_error_codes"

    const-string v86, "com.android.internal.telephony.flags.sms_mms_deliver_broadcasts_redirect_to_main_user"

    const-string v87, "com.android.internal.telephony.flags.starlink_data_bugfix"

    const-string v88, "com.android.internal.telephony.flags.stop_spamming_emergency_notification"

    const-string v89, "com.android.internal.telephony.flags.subscription_plan_allow_status_and_end_date"

    const-string v90, "com.android.internal.telephony.flags.subscription_user_association_query"

    const-string v91, "com.android.internal.telephony.flags.support_auto_unhold"

    const-string v92, "com.android.internal.telephony.flags.support_carrier_ids_in_geofence"

    const-string v93, "com.android.internal.telephony.flags.support_ims_mmtel_interface"

    const-string v94, "com.android.internal.telephony.flags.support_ims_registration_event_download"

    const-string v95, "com.android.internal.telephony.flags.support_ims_sms_smma"

    const-string v96, "com.android.internal.telephony.flags.support_isim_record"

    const-string v97, "com.android.internal.telephony.flags.support_psim_to_esim_conversion"

    const-string v98, "com.android.internal.telephony.flags.support_slot_switching_2psim_1esim_config"

    const-string v99, "com.android.internal.telephony.flags.support_sms_over_ims_apis"

    const-string v100, "com.android.internal.telephony.flags.support_stk_command_ussd_and_call"

    const-string v101, "com.android.internal.telephony.flags.support_throttle_time_for_deregistration"

    const-string v102, "com.android.internal.telephony.flags.telephony_satellite_apis"

    const-string v103, "com.android.internal.telephony.flags.telephony_satellite_mainline_phase1"

    const-string v104, "com.android.internal.telephony.flags.temporary_failures_in_carrier_messaging_service"

    const-string v105, "com.android.internal.telephony.flags.unregister_sms_broadcast_receiver_from_cat_service"

    const-string v106, "com.android.internal.telephony.flags.update_resource_configuration"

    const-string v107, "com.android.internal.telephony.flags.use_aosp_domain_selection_service"

    const-string v108, "com.android.internal.telephony.flags.use_i18n_for_mcc_mapping"

    const-string v109, "com.android.internal.telephony.flags.use_oem_domain_selection_service"

    const-string v110, "com.android.internal.telephony.flags.vendor_specific_cellular_identifier_disclosure_indications"

    const-string v111, "com.android.internal.telephony.flags.vvm_async_sim_state_handling"

    filled-new-array/range {v1 .. v113}, [Ljava/lang/String;

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
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist hangupActiveCallBasedOnEmergencyCallDomain()Z
    .registers 3

    .line 280
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.hangup_active_call_based_on_emergency_call_domain"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hidePrefer3gItem()Z
    .registers 3

    .line 287
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.hide_prefer_3g_item"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreInitialDataStallRecovered()Z
    .registers 3

    .line 294
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.ignore_initial_data_stall_recovered"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreStateDetailsUpdateForDomainReselection()Z
    .registers 3

    .line 301
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda105;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda105;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.ignore_state_details_update_for_domain_reselection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist imsResolverUserAware()Z
    .registers 3

    .line 308
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.ims_resolver_user_aware"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist inactiveDataNetworkIsNotStalled()Z
    .registers 3

    .line 315
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.inactive_data_network_is_not_stalled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist incallHandoverPolicy()Z
    .registers 3

    .line 322
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda93;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda93;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.incall_handover_policy"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 810
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 811
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 812
    const/4 p1, 0x1

    return p1

    .line 814
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist keepWfcOnApm()Z
    .registers 3

    .line 329
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.keep_wfc_on_apm"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist limitRawTableVisibility()Z
    .registers 3

    .line 336
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda90;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda90;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.limit_raw_table_visibility"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist logCallsAnsweredElsewhere()Z
    .registers 3

    .line 343
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda91;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda91;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.log_calls_answered_elsewhere"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist logMmsSmsDatabaseAccessInfo()Z
    .registers 3

    .line 350
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda68;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda68;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.log_mms_sms_database_access_info"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist macroBasedOpportunisticNetworks()Z
    .registers 3

    .line 357
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.macro_based_opportunistic_networks"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist minimalTelephonyCdmCheckBoardApiLevel()Z
    .registers 3

    .line 364
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda110;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda110;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.minimal_telephony_cdm_check_board_api_level"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist mmsDisabledError()Z
    .registers 3

    .line 371
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.mms_disabled_error"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist monitorCarrierConfigChangeForAutoDataSwitch()Z
    .registers 3

    .line 378
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda88;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda88;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.monitor_carrier_config_change_for_auto_data_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nationalCountryCodeFormattingForLocalCalls()Z
    .registers 3

    .line 385
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.national_country_code_formatting_for_local_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist networkRegistrationInfoRejectCause()Z
    .registers 3

    .line 392
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.network_registration_info_reject_cause"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist networkValidation()Z
    .registers 3

    .line 399
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda107;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda107;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.network_validation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist oemEnabledSatelliteFlag()Z
    .registers 3

    .line 406
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.oem_enabled_satellite_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist oemEnabledSatellitePhase2()Z
    .registers 3

    .line 413
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.oem_enabled_satellite_phase_2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist onsThreadConsolidation()Z
    .registers 3

    .line 420
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda84;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda84;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.ons_thread_consolidation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist optimizationApduSender()Z
    .registers 3

    .line 427
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.optimization_apdu_sender"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist passCopiedCallStateList()Z
    .registers 3

    .line 434
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.pass_copied_call_state_list"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist pcscfAddress()Z
    .registers 3

    .line 441
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda95;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda95;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.pcscf_address"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist performCrossStackRedialCheckForEmergencyCall()Z
    .registers 3

    .line 448
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda96;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda96;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.perform_cross_stack_redial_check_for_emergency_call"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist powerDownRaceFix()Z
    .registers 3

    .line 455
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.power_down_race_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist preventSystemServerAndPhoneDeadlock()Z
    .registers 3

    .line 462
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda111;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda111;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.prevent_system_server_and_phone_deadlock"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist redactOtpSms()Z
    .registers 3

    .line 469
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.redact_otp_sms"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist redactOtpSmsApi()Z
    .registers 3

    .line 476
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda72;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda72;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.redact_otp_sms_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist remapDisconnectCauseSipRequestCancelled()Z
    .registers 3

    .line 483
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda75;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda75;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.remap_disconnect_cause_sip_request_cancelled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeCountryCodeFromLocalSingaporeCalls()Z
    .registers 3

    .line 490
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda99;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda99;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.remove_country_code_from_local_singapore_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist resetMobileNetworkSettings()Z
    .registers 3

    .line 497
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda77;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda77;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.reset_mobile_network_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist reuseOriginalConnRemoteConfBehavior()Z
    .registers 3

    .line 504
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda94;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda94;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.reuse_original_conn_remote_conf_behavior"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist robustNumberVerification()Z
    .registers 3

    .line 511
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda92;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda92;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.robust_number_verification"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist satellite25q4Apis()Z
    .registers 3

    .line 518
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.satellite_25q4_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist satellite26q2Apis()Z
    .registers 3

    .line 525
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.satellite_26q2_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist satelliteDataMetrics()Z
    .registers 3

    .line 532
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.satellite_data_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist satelliteExitP2pSessionOutsideGeofence()Z
    .registers 3

    .line 539
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda76;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda76;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.satellite_exit_p2p_session_outside_geofence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist satelliteImproveMultiThreadDesign()Z
    .registers 3

    .line 546
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.satellite_improve_multi_thread_design"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist satelliteStateChangeListener()Z
    .registers 3

    .line 553
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.satellite_state_change_listener"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist satelliteSystemApis()Z
    .registers 3

    .line 560
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.satellite_system_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist securityAlgorithmsUpdateIndications()Z
    .registers 3

    .line 567
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.security_algorithms_update_indications"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sendImsiKeyForDuplicateSim()Z
    .registers 3

    .line 574
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda97;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda97;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.send_imsi_key_for_duplicate_sim"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sendMergeFailureOnHandleConferenceFailed()Z
    .registers 3

    .line 581
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.send_merge_failure_on_handle_conference_failed"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setCarrierRestrictionStatus()Z
    .registers 3

    .line 588
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda71;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda71;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.set_carrier_restriction_status"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist simPhonebookCacheFix()Z
    .registers 3

    .line 595
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda81;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda81;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.sim_phonebook_cache_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist simultaneousCallingIndications()Z
    .registers 3

    .line 602
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.simultaneous_calling_indications"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist slicingAdditionalErrorCodes()Z
    .registers 3

    .line 609
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda69;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda69;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.slicing_additional_error_codes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist smsMmsDeliverBroadcastsRedirectToMainUser()Z
    .registers 3

    .line 616
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda82;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda82;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.sms_mms_deliver_broadcasts_redirect_to_main_user"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist starlinkDataBugfix()Z
    .registers 3

    .line 623
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda100;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda100;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.starlink_data_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist stopSpammingEmergencyNotification()Z
    .registers 3

    .line 630
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.stop_spamming_emergency_notification"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist subscriptionPlanAllowStatusAndEndDate()Z
    .registers 3

    .line 637
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.subscription_plan_allow_status_and_end_date"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist subscriptionUserAssociationQuery()Z
    .registers 3

    .line 644
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.subscription_user_association_query"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportAutoUnhold()Z
    .registers 3

    .line 651
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.support_auto_unhold"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportCarrierIdsInGeofence()Z
    .registers 3

    .line 658
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.support_carrier_ids_in_geofence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportImsMmtelInterface()Z
    .registers 3

    .line 665
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.support_ims_mmtel_interface"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportImsRegistrationEventDownload()Z
    .registers 3

    .line 672
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.support_ims_registration_event_download"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportImsSmsSmma()Z
    .registers 3

    .line 679
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.support_ims_sms_smma"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportIsimRecord()Z
    .registers 3

    .line 686
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda98;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda98;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.support_isim_record"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportPsimToEsimConversion()Z
    .registers 3

    .line 693
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda101;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda101;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.support_psim_to_esim_conversion"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportSlotSwitching2psim1esimConfig()Z
    .registers 3

    .line 700
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.support_slot_switching_2psim_1esim_config"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportSmsOverImsApis()Z
    .registers 3

    .line 707
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda80;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda80;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.support_sms_over_ims_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportStkCommandUssdAndCall()Z
    .registers 3

    .line 714
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.support_stk_command_ussd_and_call"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportThrottleTimeForDeregistration()Z
    .registers 3

    .line 721
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.support_throttle_time_for_deregistration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist telephonySatelliteApis()Z
    .registers 3

    .line 728
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda109;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda109;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.telephony_satellite_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist telephonySatelliteMainlinePhase1()Z
    .registers 3

    .line 735
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda108;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda108;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.telephony_satellite_mainline_phase1"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist temporaryFailuresInCarrierMessagingService()Z
    .registers 3

    .line 742
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda85;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda85;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.temporary_failures_in_carrier_messaging_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unregisterSmsBroadcastReceiverFromCatService()Z
    .registers 3

    .line 749
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda73;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda73;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.unregister_sms_broadcast_receiver_from_cat_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist updateResourceConfiguration()Z
    .registers 3

    .line 756
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.update_resource_configuration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useAospDomainSelectionService()Z
    .registers 3

    .line 763
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.use_aosp_domain_selection_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useI18nForMccMapping()Z
    .registers 3

    .line 770
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.use_i18n_for_mcc_mapping"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useOemDomainSelectionService()Z
    .registers 3

    .line 777
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.use_oem_domain_selection_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist vendorSpecificCellularIdentifierDisclosureIndications()Z
    .registers 3

    .line 784
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda104;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda104;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.vendor_specific_cellular_identifier_disclosure_indications"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist vvmAsyncSimStateHandling()Z
    .registers 3

    .line 791
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.vvm_async_sim_state_handling"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist vzwAstSkyloFallback()Z
    .registers 3

    .line 798
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.vzw_ast_skylo_fallback"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist workProfileApiSplit()Z
    .registers 3

    .line 805
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.work_profile_api_split"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
