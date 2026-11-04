.class public Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/FeatureFlags;",
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
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 640
    new-instance v1, Ljava/util/HashSet;

    const-string v76, "com.android.server.telecom.flags.voip_dnd_focus"

    const-string v77, ""

    const-string v2, "com.android.server.telecom.flags.add_call_uri_for_missed_calls"

    const-string v3, "com.android.server.telecom.flags.allow_system_apps_resolve_voip_calls"

    const-string v4, "com.android.server.telecom.flags.auto_unhold_on_call_fail"

    const-string v5, "com.android.server.telecom.flags.avoid_disc_on_bt_to_bt_switch"

    const-string v6, "com.android.server.telecom.flags.avoid_logging_more_than_once"

    const-string v7, "com.android.server.telecom.flags.bus_device_is_a_speaker"

    const-string v8, "com.android.server.telecom.flags.business_call_composer"

    const-string v9, "com.android.server.telecom.flags.cache_call_events"

    const-string v10, "com.android.server.telecom.flags.call_connected_indicator_preference"

    const-string v11, "com.android.server.telecom.flags.call_details_get_associated_user_api"

    const-string v12, "com.android.server.telecom.flags.call_details_id_changes"

    const-string v13, "com.android.server.telecom.flags.call_sequencing_call_resume_failed"

    const-string v14, "com.android.server.telecom.flags.call_sequencing_metrics"

    const-string v15, "com.android.server.telecom.flags.cancel_removal_on_emergency_redial"

    const-string v16, "com.android.server.telecom.flags.check_device_type_on_route_change"

    const-string v17, "com.android.server.telecom.flags.cleanup_verify_call_state"

    const-string v18, "com.android.server.telecom.flags.csw_service_interface_is_null"

    const-string v19, "com.android.server.telecom.flags.do_not_send_call_to_null_ics"

    const-string v20, "com.android.server.telecom.flags.dont_notify_missed_calls_when_no_dialer"

    const-string v21, "com.android.server.telecom.flags.dont_timeout_destroyed_calls"

    const-string v22, "com.android.server.telecom.flags.early_binding_to_incall_service"

    const-string v23, "com.android.server.telecom.flags.ecc_wait_for_live_call_disconnect"

    const-string v24, "com.android.server.telecom.flags.echo_abort_transactional_outgoing"

    const-string v25, "com.android.server.telecom.flags.enable_audio_processing_use_case"

    const-string v26, "com.android.server.telecom.flags.enable_call_exception_anom_reports"

    const-string v27, "com.android.server.telecom.flags.enable_incall_service_class_check"

    const-string v28, "com.android.server.telecom.flags.enable_respond_via_sms_manager_async"

    const-string v29, "com.android.server.telecom.flags.enforce_transactional_exclusivity"

    const-string v30, "com.android.server.telecom.flags.ensure_audio_mode_updates_on_foreground_call_change"

    const-string v31, "com.android.server.telecom.flags.filter_voip_call_logs"

    const-string v32, "com.android.server.telecom.flags.fix_session_tree_logging"

    const-string v33, "com.android.server.telecom.flags.get_last_known_cell_identity"

    const-string v34, "com.android.server.telecom.flags.get_registered_phone_accounts"

    const-string v35, "com.android.server.telecom.flags.ignore_bt_broadcast"

    const-string v36, "com.android.server.telecom.flags.integrated_call_logs"

    const-string v37, "com.android.server.telecom.flags.is_in_external_call"

    const-string v38, "com.android.server.telecom.flags.is_using_video_ringback"

    const-string v39, "com.android.server.telecom.flags.keep_bluetooth_devices_cache_updated"

    const-string v40, "com.android.server.telecom.flags.local_voicemail"

    const-string v41, "com.android.server.telecom.flags.maybe_reroute_audio_on_video_state_change"

    const-string v42, "com.android.server.telecom.flags.multi_party_anchor_conf"

    const-string v43, "com.android.server.telecom.flags.postpone_register_to_leaudio"

    const-string v44, "com.android.server.telecom.flags.preserve_call_audio_routing"

    const-string v45, "com.android.server.telecom.flags.prevent_illegal_audio_processing_exit"

    const-string v46, "com.android.server.telecom.flags.prevent_redundant_location_permission_grant_and_revoke"

    const-string v47, "com.android.server.telecom.flags.prevent_self_managed_call_logging"

    const-string v48, "com.android.server.telecom.flags.promote_extra_do_not_log_call_to_system_api"

    const-string v49, "com.android.server.telecom.flags.remotely_hosted_property"

    const-string v50, "com.android.server.telecom.flags.resolve_hidden_dependencies_two"

    const-string v51, "com.android.server.telecom.flags.reuse_original_conn_remote_conf_api"

    const-string v52, "com.android.server.telecom.flags.revert_disconnecting_during_merge"

    const-string v53, "com.android.server.telecom.flags.ringer_vibration_user_aware"

    const-string v54, "com.android.server.telecom.flags.select_phone_account_before_making_room"

    const-string v55, "com.android.server.telecom.flags.send_new_ringing_call_sync"

    const-string v56, "com.android.server.telecom.flags.send_original_number_on_place_call"

    const-string v57, "com.android.server.telecom.flags.set_mute_state"

    const-string v58, "com.android.server.telecom.flags.set_remote_connection_call_id"

    const-string v59, "com.android.server.telecom.flags.skip_filter_phone_account_perform_dnd_filter"

    const-string v60, "com.android.server.telecom.flags.skip_pending_msg_if_communication_device_set"

    const-string v61, "com.android.server.telecom.flags.support_display_name_call_log"

    const-string v62, "com.android.server.telecom.flags.synchronize_conn_state"

    const-string v63, "com.android.server.telecom.flags.telecom_app_label_proxy_hsum_aware"

    const-string v64, "com.android.server.telecom.flags.telecom_main_user_in_block_check"

    const-string v65, "com.android.server.telecom.flags.telecom_main_user_in_get_respond_message_app"

    const-string v66, "com.android.server.telecom.flags.telecom_mainline_blocked_numbers_manager"

    const-string v67, "com.android.server.telecom.flags.telecom_metrics_support"

    const-string v68, "com.android.server.telecom.flags.telecom_resolve_hidden_dependencies"

    const-string v69, "com.android.server.telecom.flags.telephony_has_default_but_telecom_does_not"

    const-string v70, "com.android.server.telecom.flags.transactional_cs_verifier"

    const-string v71, "com.android.server.telecom.flags.transactional_video_state"

    const-string v72, "com.android.server.telecom.flags.unregister_unresolvable_accounts"

    const-string v73, "com.android.server.telecom.flags.use_device_provided_serialized_ringer_vibration"

    const-string v74, "com.android.server.telecom.flags.vibration_accounts_for_main_setting"

    const-string v75, "com.android.server.telecom.flags.voip_app_actions_support"

    filled-new-array/range {v2 .. v77}, [Ljava/lang/String;

    move-result-object v2

    .line 641
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

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
.method public blacklist addCallUriForMissedCalls()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "com.android.server.telecom.flags.add_call_uri_for_missed_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowSystemAppsResolveVoipCalls()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;-><init>()V

    const-string v1, "com.android.server.telecom.flags.allow_system_apps_resolve_voip_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist autoUnholdOnCallFail()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.server.telecom.flags.auto_unhold_on_call_fail"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist avoidDiscOnBtToBtSwitch()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "com.android.server.telecom.flags.avoid_disc_on_bt_to_bt_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist avoidLoggingMoreThanOnce()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.server.telecom.flags.avoid_logging_more_than_once"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist busDeviceIsASpeaker()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.server.telecom.flags.bus_device_is_a_speaker"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist businessCallComposer()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.server.telecom.flags.business_call_composer"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cacheCallEvents()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.server.telecom.flags.cache_call_events"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist callConnectedIndicatorPreference()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.server.telecom.flags.call_connected_indicator_preference"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist callDetailsGetAssociatedUserApi()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.server.telecom.flags.call_details_get_associated_user_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist callDetailsIdChanges()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.server.telecom.flags.call_details_id_changes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist callSequencingCallResumeFailed()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "com.android.server.telecom.flags.call_sequencing_call_resume_failed"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist callSequencingMetrics()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "com.android.server.telecom.flags.call_sequencing_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cancelRemovalOnEmergencyRedial()Z
    .registers 3

    .line 112
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.server.telecom.flags.cancel_removal_on_emergency_redial"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist checkDeviceTypeOnRouteChange()Z
    .registers 3

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.server.telecom.flags.check_device_type_on_route_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cleanupVerifyCallState()Z
    .registers 3

    .line 126
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "com.android.server.telecom.flags.cleanup_verify_call_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cswServiceInterfaceIsNull()Z
    .registers 3

    .line 133
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.server.telecom.flags.csw_service_interface_is_null"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist doNotSendCallToNullIcs()Z
    .registers 3

    .line 140
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "com.android.server.telecom.flags.do_not_send_call_to_null_ics"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dontNotifyMissedCallsWhenNoDialer()Z
    .registers 3

    .line 147
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "com.android.server.telecom.flags.dont_notify_missed_calls_when_no_dialer"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dontTimeoutDestroyedCalls()Z
    .registers 3

    .line 154
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;-><init>()V

    const-string v1, "com.android.server.telecom.flags.dont_timeout_destroyed_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist earlyBindingToIncallService()Z
    .registers 3

    .line 161
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda69;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda69;-><init>()V

    const-string v1, "com.android.server.telecom.flags.early_binding_to_incall_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist eccWaitForLiveCallDisconnect()Z
    .registers 3

    .line 168
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;-><init>()V

    const-string v1, "com.android.server.telecom.flags.ecc_wait_for_live_call_disconnect"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist echoAbortTransactionalOutgoing()Z
    .registers 3

    .line 175
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.server.telecom.flags.echo_abort_transactional_outgoing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAudioProcessingUseCase()Z
    .registers 3

    .line 182
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "com.android.server.telecom.flags.enable_audio_processing_use_case"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCallExceptionAnomReports()Z
    .registers 3

    .line 189
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "com.android.server.telecom.flags.enable_call_exception_anom_reports"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableIncallServiceClassCheck()Z
    .registers 3

    .line 196
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;-><init>()V

    const-string v1, "com.android.server.telecom.flags.enable_incall_service_class_check"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableRespondViaSmsManagerAsync()Z
    .registers 3

    .line 203
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.server.telecom.flags.enable_respond_via_sms_manager_async"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enforceTransactionalExclusivity()Z
    .registers 3

    .line 210
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "com.android.server.telecom.flags.enforce_transactional_exclusivity"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ensureAudioModeUpdatesOnForegroundCallChange()Z
    .registers 3

    .line 217
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.server.telecom.flags.ensure_audio_mode_updates_on_foreground_call_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist filterVoipCallLogs()Z
    .registers 3

    .line 224
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.server.telecom.flags.filter_voip_call_logs"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixSessionTreeLogging()Z
    .registers 3

    .line 231
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;-><init>()V

    const-string v1, "com.android.server.telecom.flags.fix_session_tree_logging"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

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
    const-string v74, "com.android.server.telecom.flags.voip_app_actions_support"

    const-string v75, "com.android.server.telecom.flags.voip_dnd_focus"

    const-string v1, "com.android.server.telecom.flags.add_call_uri_for_missed_calls"

    const-string v2, "com.android.server.telecom.flags.allow_system_apps_resolve_voip_calls"

    const-string v3, "com.android.server.telecom.flags.auto_unhold_on_call_fail"

    const-string v4, "com.android.server.telecom.flags.avoid_disc_on_bt_to_bt_switch"

    const-string v5, "com.android.server.telecom.flags.avoid_logging_more_than_once"

    const-string v6, "com.android.server.telecom.flags.bus_device_is_a_speaker"

    const-string v7, "com.android.server.telecom.flags.business_call_composer"

    const-string v8, "com.android.server.telecom.flags.cache_call_events"

    const-string v9, "com.android.server.telecom.flags.call_connected_indicator_preference"

    const-string v10, "com.android.server.telecom.flags.call_details_get_associated_user_api"

    const-string v11, "com.android.server.telecom.flags.call_details_id_changes"

    const-string v12, "com.android.server.telecom.flags.call_sequencing_call_resume_failed"

    const-string v13, "com.android.server.telecom.flags.call_sequencing_metrics"

    const-string v14, "com.android.server.telecom.flags.cancel_removal_on_emergency_redial"

    const-string v15, "com.android.server.telecom.flags.check_device_type_on_route_change"

    const-string v16, "com.android.server.telecom.flags.cleanup_verify_call_state"

    const-string v17, "com.android.server.telecom.flags.csw_service_interface_is_null"

    const-string v18, "com.android.server.telecom.flags.do_not_send_call_to_null_ics"

    const-string v19, "com.android.server.telecom.flags.dont_notify_missed_calls_when_no_dialer"

    const-string v20, "com.android.server.telecom.flags.dont_timeout_destroyed_calls"

    const-string v21, "com.android.server.telecom.flags.early_binding_to_incall_service"

    const-string v22, "com.android.server.telecom.flags.ecc_wait_for_live_call_disconnect"

    const-string v23, "com.android.server.telecom.flags.echo_abort_transactional_outgoing"

    const-string v24, "com.android.server.telecom.flags.enable_audio_processing_use_case"

    const-string v25, "com.android.server.telecom.flags.enable_call_exception_anom_reports"

    const-string v26, "com.android.server.telecom.flags.enable_incall_service_class_check"

    const-string v27, "com.android.server.telecom.flags.enable_respond_via_sms_manager_async"

    const-string v28, "com.android.server.telecom.flags.enforce_transactional_exclusivity"

    const-string v29, "com.android.server.telecom.flags.ensure_audio_mode_updates_on_foreground_call_change"

    const-string v30, "com.android.server.telecom.flags.filter_voip_call_logs"

    const-string v31, "com.android.server.telecom.flags.fix_session_tree_logging"

    const-string v32, "com.android.server.telecom.flags.get_last_known_cell_identity"

    const-string v33, "com.android.server.telecom.flags.get_registered_phone_accounts"

    const-string v34, "com.android.server.telecom.flags.ignore_bt_broadcast"

    const-string v35, "com.android.server.telecom.flags.integrated_call_logs"

    const-string v36, "com.android.server.telecom.flags.is_in_external_call"

    const-string v37, "com.android.server.telecom.flags.is_using_video_ringback"

    const-string v38, "com.android.server.telecom.flags.keep_bluetooth_devices_cache_updated"

    const-string v39, "com.android.server.telecom.flags.local_voicemail"

    const-string v40, "com.android.server.telecom.flags.maybe_reroute_audio_on_video_state_change"

    const-string v41, "com.android.server.telecom.flags.multi_party_anchor_conf"

    const-string v42, "com.android.server.telecom.flags.postpone_register_to_leaudio"

    const-string v43, "com.android.server.telecom.flags.preserve_call_audio_routing"

    const-string v44, "com.android.server.telecom.flags.prevent_illegal_audio_processing_exit"

    const-string v45, "com.android.server.telecom.flags.prevent_redundant_location_permission_grant_and_revoke"

    const-string v46, "com.android.server.telecom.flags.prevent_self_managed_call_logging"

    const-string v47, "com.android.server.telecom.flags.promote_extra_do_not_log_call_to_system_api"

    const-string v48, "com.android.server.telecom.flags.remotely_hosted_property"

    const-string v49, "com.android.server.telecom.flags.resolve_hidden_dependencies_two"

    const-string v50, "com.android.server.telecom.flags.reuse_original_conn_remote_conf_api"

    const-string v51, "com.android.server.telecom.flags.revert_disconnecting_during_merge"

    const-string v52, "com.android.server.telecom.flags.ringer_vibration_user_aware"

    const-string v53, "com.android.server.telecom.flags.select_phone_account_before_making_room"

    const-string v54, "com.android.server.telecom.flags.send_new_ringing_call_sync"

    const-string v55, "com.android.server.telecom.flags.send_original_number_on_place_call"

    const-string v56, "com.android.server.telecom.flags.set_mute_state"

    const-string v57, "com.android.server.telecom.flags.set_remote_connection_call_id"

    const-string v58, "com.android.server.telecom.flags.skip_filter_phone_account_perform_dnd_filter"

    const-string v59, "com.android.server.telecom.flags.skip_pending_msg_if_communication_device_set"

    const-string v60, "com.android.server.telecom.flags.support_display_name_call_log"

    const-string v61, "com.android.server.telecom.flags.synchronize_conn_state"

    const-string v62, "com.android.server.telecom.flags.telecom_app_label_proxy_hsum_aware"

    const-string v63, "com.android.server.telecom.flags.telecom_main_user_in_block_check"

    const-string v64, "com.android.server.telecom.flags.telecom_main_user_in_get_respond_message_app"

    const-string v65, "com.android.server.telecom.flags.telecom_mainline_blocked_numbers_manager"

    const-string v66, "com.android.server.telecom.flags.telecom_metrics_support"

    const-string v67, "com.android.server.telecom.flags.telecom_resolve_hidden_dependencies"

    const-string v68, "com.android.server.telecom.flags.telephony_has_default_but_telecom_does_not"

    const-string v69, "com.android.server.telecom.flags.transactional_cs_verifier"

    const-string v70, "com.android.server.telecom.flags.transactional_video_state"

    const-string v71, "com.android.server.telecom.flags.unregister_unresolvable_accounts"

    const-string v72, "com.android.server.telecom.flags.use_device_provided_serialized_ringer_vibration"

    const-string v73, "com.android.server.telecom.flags.vibration_accounts_for_main_setting"

    filled-new-array/range {v1 .. v75}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLastKnownCellIdentity()Z
    .registers 3

    .line 238
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.server.telecom.flags.get_last_known_cell_identity"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getRegisteredPhoneAccounts()Z
    .registers 3

    .line 245
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.server.telecom.flags.get_registered_phone_accounts"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

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
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist ignoreBtBroadcast()Z
    .registers 3

    .line 252
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.server.telecom.flags.ignore_bt_broadcast"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist integratedCallLogs()Z
    .registers 3

    .line 259
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.telecom.flags.integrated_call_logs"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 544
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 545
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

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

.method public blacklist isInExternalCall()Z
    .registers 3

    .line 266
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda74;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda74;-><init>()V

    const-string v1, "com.android.server.telecom.flags.is_in_external_call"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isUsingVideoRingback()Z
    .registers 3

    .line 273
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "com.android.server.telecom.flags.is_using_video_ringback"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist keepBluetoothDevicesCacheUpdated()Z
    .registers 3

    .line 280
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.telecom.flags.keep_bluetooth_devices_cache_updated"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist localVoicemail()Z
    .registers 3

    .line 287
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.server.telecom.flags.local_voicemail"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist maybeRerouteAudioOnVideoStateChange()Z
    .registers 3

    .line 294
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "com.android.server.telecom.flags.maybe_reroute_audio_on_video_state_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist multiPartyAnchorConf()Z
    .registers 3

    .line 301
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "com.android.server.telecom.flags.multi_party_anchor_conf"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist postponeRegisterToLeaudio()Z
    .registers 3

    .line 308
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "com.android.server.telecom.flags.postpone_register_to_leaudio"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist preserveCallAudioRouting()Z
    .registers 3

    .line 315
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda70;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda70;-><init>()V

    const-string v1, "com.android.server.telecom.flags.preserve_call_audio_routing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist preventIllegalAudioProcessingExit()Z
    .registers 3

    .line 322
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.server.telecom.flags.prevent_illegal_audio_processing_exit"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist preventRedundantLocationPermissionGrantAndRevoke()Z
    .registers 3

    .line 329
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "com.android.server.telecom.flags.prevent_redundant_location_permission_grant_and_revoke"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist preventSelfManagedCallLogging()Z
    .registers 3

    .line 336
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.server.telecom.flags.prevent_self_managed_call_logging"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist promoteExtraDoNotLogCallToSystemApi()Z
    .registers 3

    .line 343
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.server.telecom.flags.promote_extra_do_not_log_call_to_system_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist remotelyHostedProperty()Z
    .registers 3

    .line 350
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.server.telecom.flags.remotely_hosted_property"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist resolveHiddenDependenciesTwo()Z
    .registers 3

    .line 357
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.server.telecom.flags.resolve_hidden_dependencies_two"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist reuseOriginalConnRemoteConfApi()Z
    .registers 3

    .line 364
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;-><init>()V

    const-string v1, "com.android.server.telecom.flags.reuse_original_conn_remote_conf_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist revertDisconnectingDuringMerge()Z
    .registers 3

    .line 371
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;-><init>()V

    const-string v1, "com.android.server.telecom.flags.revert_disconnecting_during_merge"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ringerVibrationUserAware()Z
    .registers 3

    .line 378
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "com.android.server.telecom.flags.ringer_vibration_user_aware"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist selectPhoneAccountBeforeMakingRoom()Z
    .registers 3

    .line 385
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda72;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda72;-><init>()V

    const-string v1, "com.android.server.telecom.flags.select_phone_account_before_making_room"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sendNewRingingCallSync()Z
    .registers 3

    .line 392
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda71;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda71;-><init>()V

    const-string v1, "com.android.server.telecom.flags.send_new_ringing_call_sync"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sendOriginalNumberOnPlaceCall()Z
    .registers 3

    .line 399
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "com.android.server.telecom.flags.send_original_number_on_place_call"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setMuteState()Z
    .registers 3

    .line 406
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;-><init>()V

    const-string v1, "com.android.server.telecom.flags.set_mute_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setRemoteConnectionCallId()Z
    .registers 3

    .line 413
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "com.android.server.telecom.flags.set_remote_connection_call_id"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist skipFilterPhoneAccountPerformDndFilter()Z
    .registers 3

    .line 420
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "com.android.server.telecom.flags.skip_filter_phone_account_perform_dnd_filter"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist skipPendingMsgIfCommunicationDeviceSet()Z
    .registers 3

    .line 427
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.server.telecom.flags.skip_pending_msg_if_communication_device_set"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportDisplayNameCallLog()Z
    .registers 3

    .line 434
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.server.telecom.flags.support_display_name_call_log"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist synchronizeConnState()Z
    .registers 3

    .line 441
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda73;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda73;-><init>()V

    const-string v1, "com.android.server.telecom.flags.synchronize_conn_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist telecomAppLabelProxyHsumAware()Z
    .registers 3

    .line 448
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telecom_app_label_proxy_hsum_aware"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist telecomMainUserInBlockCheck()Z
    .registers 3

    .line 455
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telecom_main_user_in_block_check"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist telecomMainUserInGetRespondMessageApp()Z
    .registers 3

    .line 462
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telecom_main_user_in_get_respond_message_app"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist telecomMainlineBlockedNumbersManager()Z
    .registers 3

    .line 469
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telecom_mainline_blocked_numbers_manager"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist telecomMetricsSupport()Z
    .registers 3

    .line 476
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telecom_metrics_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist telecomResolveHiddenDependencies()Z
    .registers 3

    .line 483
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telecom_resolve_hidden_dependencies"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist telephonyHasDefaultButTelecomDoesNot()Z
    .registers 3

    .line 490
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telephony_has_default_but_telecom_does_not"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist transactionalCsVerifier()Z
    .registers 3

    .line 497
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "com.android.server.telecom.flags.transactional_cs_verifier"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist transactionalVideoState()Z
    .registers 3

    .line 504
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda68;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda68;-><init>()V

    const-string v1, "com.android.server.telecom.flags.transactional_video_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unregisterUnresolvableAccounts()Z
    .registers 3

    .line 511
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "com.android.server.telecom.flags.unregister_unresolvable_accounts"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useDeviceProvidedSerializedRingerVibration()Z
    .registers 3

    .line 518
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;-><init>()V

    const-string v1, "com.android.server.telecom.flags.use_device_provided_serialized_ringer_vibration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist vibrationAccountsForMainSetting()Z
    .registers 3

    .line 525
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.server.telecom.flags.vibration_accounts_for_main_setting"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist voipAppActionsSupport()Z
    .registers 3

    .line 532
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.server.telecom.flags.voip_app_actions_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist voipDndFocus()Z
    .registers 3

    .line 539
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "com.android.server.telecom.flags.voip_dnd_focus"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
