.class public Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;",
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
    .registers 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 368
    new-instance v1, Ljava/util/HashSet;

    const-string v42, "android.content.pm.verification_service"

    const-string v43, ""

    const-string v2, "android.content.pm.alternative_for_dexopt_cleanup"

    const-string v3, "android.content.pm.always_load_past_certs_v4"

    const-string v4, "android.content.pm.app_compat_option_16kb"

    const-string v5, "android.content.pm.app_compat_warnings_16kb"

    const-string v6, "android.content.pm.archiving"

    const-string v7, "android.content.pm.asl_in_apk_app_metadata_source"

    const-string v8, "android.content.pm.audio_playback_capture_allowance"

    const-string v9, "android.content.pm.cache_query_intent_activities_in_client_side"

    const-string v10, "android.content.pm.change_launcher_badging"

    const-string v11, "android.content.pm.cloud_compilation_pm"

    const-string v12, "android.content.pm.consolidate_package_changed_broadcasts"

    const-string v13, "android.content.pm.disallow_sdk_libs_to_be_apps"

    const-string v14, "android.content.pm.emergency_install_permission"

    const-string v15, "android.content.pm.fix_duplicated_flags"

    const-string v16, "android.content.pm.get_package_info"

    const-string v17, "android.content.pm.get_package_info_with_fd"

    const-string v18, "android.content.pm.get_package_storage_stats"

    const-string v19, "android.content.pm.get_resolved_apk_path"

    const-string v20, "android.content.pm.improve_install_freeze"

    const-string v21, "android.content.pm.include_broadcast_debug_reason"

    const-string v22, "android.content.pm.include_feature_flags_in_package_cacher"

    const-string v23, "android.content.pm.introduce_media_processing_type"

    const-string v24, "android.content.pm.merge_package_changed_broadcast"

    const-string v25, "android.content.pm.min_target_sdk_24"

    const-string v26, "android.content.pm.protect_supervision_packages"

    const-string v27, "android.content.pm.provide_info_of_apk_in_apex"

    const-string v28, "android.content.pm.quarantined_enabled"

    const-string v29, "android.content.pm.read_install_info"

    const-string v30, "android.content.pm.recoverability_detection"

    const-string v31, "android.content.pm.relative_reference_intent_filters"

    const-string v32, "android.content.pm.remove_hidden_module_usage"

    const-string v33, "android.content.pm.restrict_nonpreloads_system_shareduids"

    const-string v34, "android.content.pm.rollback_lifetime"

    const-string v35, "android.content.pm.sdk_dependency_installer"

    const-string v36, "android.content.pm.sdk_lib_independence"

    const-string v37, "android.content.pm.set_pre_verified_domains"

    const-string v38, "android.content.pm.stay_stopped"

    const-string v39, "android.content.pm.uid_based_provider_lookup"

    const-string v40, "android.content.pm.use_art_service_v2"

    const-string v41, "android.content.pm.use_pia_v2"

    filled-new-array/range {v2 .. v43}, [Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 17
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 315
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist alternativeForDexoptCleanup()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.content.pm.alternative_for_dexopt_cleanup"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist alwaysLoadPastCertsV4()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.content.pm.always_load_past_certs_v4"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appCompatOption16kb()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.content.pm.app_compat_option_16kb"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appCompatWarnings16kb()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.content.pm.app_compat_warnings_16kb"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist archiving()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.content.pm.archiving"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist aslInApkAppMetadataSource()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.content.pm.asl_in_apk_app_metadata_source"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist audioPlaybackCaptureAllowance()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.content.pm.audio_playback_capture_allowance"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cacheQueryIntentActivitiesInClientSide()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.content.pm.cache_query_intent_activities_in_client_side"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist changeLauncherBadging()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.content.pm.change_launcher_badging"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cloudCompilationPm()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.content.pm.cloud_compilation_pm"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist consolidatePackageChangedBroadcasts()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.content.pm.consolidate_package_changed_broadcasts"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disallowSdkLibsToBeApps()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.content.pm.disallow_sdk_libs_to_be_apps"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist emergencyInstallPermission()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.content.pm.emergency_install_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixDuplicatedFlags()Z
    .registers 3

    .line 112
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.content.pm.fix_duplicated_flags"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 323
    const-string v40, "android.content.pm.use_pia_v2"

    const-string v41, "android.content.pm.verification_service"

    const-string v1, "android.content.pm.alternative_for_dexopt_cleanup"

    const-string v2, "android.content.pm.always_load_past_certs_v4"

    const-string v3, "android.content.pm.app_compat_option_16kb"

    const-string v4, "android.content.pm.app_compat_warnings_16kb"

    const-string v5, "android.content.pm.archiving"

    const-string v6, "android.content.pm.asl_in_apk_app_metadata_source"

    const-string v7, "android.content.pm.audio_playback_capture_allowance"

    const-string v8, "android.content.pm.cache_query_intent_activities_in_client_side"

    const-string v9, "android.content.pm.change_launcher_badging"

    const-string v10, "android.content.pm.cloud_compilation_pm"

    const-string v11, "android.content.pm.consolidate_package_changed_broadcasts"

    const-string v12, "android.content.pm.disallow_sdk_libs_to_be_apps"

    const-string v13, "android.content.pm.emergency_install_permission"

    const-string v14, "android.content.pm.fix_duplicated_flags"

    const-string v15, "android.content.pm.get_package_info"

    const-string v16, "android.content.pm.get_package_info_with_fd"

    const-string v17, "android.content.pm.get_package_storage_stats"

    const-string v18, "android.content.pm.get_resolved_apk_path"

    const-string v19, "android.content.pm.improve_install_freeze"

    const-string v20, "android.content.pm.include_broadcast_debug_reason"

    const-string v21, "android.content.pm.include_feature_flags_in_package_cacher"

    const-string v22, "android.content.pm.introduce_media_processing_type"

    const-string v23, "android.content.pm.merge_package_changed_broadcast"

    const-string v24, "android.content.pm.min_target_sdk_24"

    const-string v25, "android.content.pm.protect_supervision_packages"

    const-string v26, "android.content.pm.provide_info_of_apk_in_apex"

    const-string v27, "android.content.pm.quarantined_enabled"

    const-string v28, "android.content.pm.read_install_info"

    const-string v29, "android.content.pm.recoverability_detection"

    const-string v30, "android.content.pm.relative_reference_intent_filters"

    const-string v31, "android.content.pm.remove_hidden_module_usage"

    const-string v32, "android.content.pm.restrict_nonpreloads_system_shareduids"

    const-string v33, "android.content.pm.rollback_lifetime"

    const-string v34, "android.content.pm.sdk_dependency_installer"

    const-string v35, "android.content.pm.sdk_lib_independence"

    const-string v36, "android.content.pm.set_pre_verified_domains"

    const-string v37, "android.content.pm.stay_stopped"

    const-string v38, "android.content.pm.uid_based_provider_lookup"

    const-string v39, "android.content.pm.use_art_service_v2"

    filled-new-array/range {v1 .. v41}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackageInfo()Z
    .registers 3

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.content.pm.get_package_info"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getPackageInfoWithFd()Z
    .registers 3

    .line 126
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.content.pm.get_package_info_with_fd"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getPackageStorageStats()Z
    .registers 3

    .line 133
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.content.pm.get_package_storage_stats"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getResolvedApkPath()Z
    .registers 3

    .line 140
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.content.pm.get_resolved_apk_path"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

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
            "Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist improveInstallFreeze()Z
    .registers 3

    .line 147
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.content.pm.improve_install_freeze"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist includeBroadcastDebugReason()Z
    .registers 3

    .line 154
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.content.pm.include_broadcast_debug_reason"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist includeFeatureFlagsInPackageCacher()Z
    .registers 3

    .line 161
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.content.pm.include_feature_flags_in_package_cacher"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist introduceMediaProcessingType()Z
    .registers 3

    .line 168
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.content.pm.introduce_media_processing_type"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 306
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 307
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 308
    const/4 p1, 0x1

    return p1

    .line 310
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist mergePackageChangedBroadcast()Z
    .registers 3

    .line 175
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.content.pm.merge_package_changed_broadcast"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist minTargetSdk24()Z
    .registers 3

    .line 182
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.content.pm.min_target_sdk_24"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist protectSupervisionPackages()Z
    .registers 3

    .line 189
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.content.pm.protect_supervision_packages"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist provideInfoOfApkInApex()Z
    .registers 3

    .line 196
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.content.pm.provide_info_of_apk_in_apex"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist quarantinedEnabled()Z
    .registers 3

    .line 203
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.content.pm.quarantined_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist readInstallInfo()Z
    .registers 3

    .line 210
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.content.pm.read_install_info"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist recoverabilityDetection()Z
    .registers 3

    .line 217
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "android.content.pm.recoverability_detection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist relativeReferenceIntentFilters()Z
    .registers 3

    .line 224
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.content.pm.relative_reference_intent_filters"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeHiddenModuleUsage()Z
    .registers 3

    .line 231
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.content.pm.remove_hidden_module_usage"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist restrictNonpreloadsSystemShareduids()Z
    .registers 3

    .line 238
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.content.pm.restrict_nonpreloads_system_shareduids"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rollbackLifetime()Z
    .registers 3

    .line 245
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "android.content.pm.rollback_lifetime"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sdkDependencyInstaller()Z
    .registers 3

    .line 252
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.content.pm.sdk_dependency_installer"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sdkLibIndependence()Z
    .registers 3

    .line 259
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.content.pm.sdk_lib_independence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setPreVerifiedDomains()Z
    .registers 3

    .line 266
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.content.pm.set_pre_verified_domains"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist stayStopped()Z
    .registers 3

    .line 273
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.content.pm.stay_stopped"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist uidBasedProviderLookup()Z
    .registers 3

    .line 280
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "android.content.pm.uid_based_provider_lookup"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useArtServiceV2()Z
    .registers 3

    .line 287
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.content.pm.use_art_service_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist usePiaV2()Z
    .registers 3

    .line 294
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.content.pm.use_pia_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist verificationService()Z
    .registers 3

    .line 301
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.content.pm.verification_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
