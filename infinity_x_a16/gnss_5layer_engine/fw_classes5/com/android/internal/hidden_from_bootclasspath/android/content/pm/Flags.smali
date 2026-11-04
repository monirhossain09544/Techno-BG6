.class public final Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags; = null

.field public static final blacklist FLAG_ALTERNATIVE_FOR_DEXOPT_CLEANUP:Ljava/lang/String; = "android.content.pm.alternative_for_dexopt_cleanup"

.field public static final blacklist FLAG_ALWAYS_LOAD_PAST_CERTS_V4:Ljava/lang/String; = "android.content.pm.always_load_past_certs_v4"

.field public static final blacklist FLAG_APP_COMPAT_OPTION_16KB:Ljava/lang/String; = "android.content.pm.app_compat_option_16kb"

.field public static final blacklist FLAG_APP_COMPAT_WARNINGS_16KB:Ljava/lang/String; = "android.content.pm.app_compat_warnings_16kb"

.field public static final blacklist FLAG_ARCHIVING:Ljava/lang/String; = "android.content.pm.archiving"

.field public static final blacklist FLAG_ASL_IN_APK_APP_METADATA_SOURCE:Ljava/lang/String; = "android.content.pm.asl_in_apk_app_metadata_source"

.field public static final blacklist FLAG_AUDIO_PLAYBACK_CAPTURE_ALLOWANCE:Ljava/lang/String; = "android.content.pm.audio_playback_capture_allowance"

.field public static final blacklist FLAG_CACHE_QUERY_INTENT_ACTIVITIES_IN_CLIENT_SIDE:Ljava/lang/String; = "android.content.pm.cache_query_intent_activities_in_client_side"

.field public static final blacklist FLAG_CHANGE_LAUNCHER_BADGING:Ljava/lang/String; = "android.content.pm.change_launcher_badging"

.field public static final blacklist FLAG_CLOUD_COMPILATION_PM:Ljava/lang/String; = "android.content.pm.cloud_compilation_pm"

.field public static final blacklist FLAG_CONSOLIDATE_PACKAGE_CHANGED_BROADCASTS:Ljava/lang/String; = "android.content.pm.consolidate_package_changed_broadcasts"

.field public static final blacklist FLAG_DISALLOW_SDK_LIBS_TO_BE_APPS:Ljava/lang/String; = "android.content.pm.disallow_sdk_libs_to_be_apps"

.field public static final blacklist FLAG_EMERGENCY_INSTALL_PERMISSION:Ljava/lang/String; = "android.content.pm.emergency_install_permission"

.field public static final blacklist FLAG_FIX_DUPLICATED_FLAGS:Ljava/lang/String; = "android.content.pm.fix_duplicated_flags"

.field public static final blacklist FLAG_GET_PACKAGE_INFO:Ljava/lang/String; = "android.content.pm.get_package_info"

.field public static final blacklist FLAG_GET_PACKAGE_INFO_WITH_FD:Ljava/lang/String; = "android.content.pm.get_package_info_with_fd"

.field public static final blacklist FLAG_GET_PACKAGE_STORAGE_STATS:Ljava/lang/String; = "android.content.pm.get_package_storage_stats"

.field public static final blacklist FLAG_GET_RESOLVED_APK_PATH:Ljava/lang/String; = "android.content.pm.get_resolved_apk_path"

.field public static final blacklist FLAG_IMPROVE_INSTALL_FREEZE:Ljava/lang/String; = "android.content.pm.improve_install_freeze"

.field public static final blacklist FLAG_INCLUDE_BROADCAST_DEBUG_REASON:Ljava/lang/String; = "android.content.pm.include_broadcast_debug_reason"

.field public static final blacklist FLAG_INCLUDE_FEATURE_FLAGS_IN_PACKAGE_CACHER:Ljava/lang/String; = "android.content.pm.include_feature_flags_in_package_cacher"

.field public static final blacklist FLAG_INTRODUCE_MEDIA_PROCESSING_TYPE:Ljava/lang/String; = "android.content.pm.introduce_media_processing_type"

.field public static final blacklist FLAG_MERGE_PACKAGE_CHANGED_BROADCAST:Ljava/lang/String; = "android.content.pm.merge_package_changed_broadcast"

.field public static final blacklist FLAG_MIN_TARGET_SDK_24:Ljava/lang/String; = "android.content.pm.min_target_sdk_24"

.field public static final blacklist FLAG_PROTECT_SUPERVISION_PACKAGES:Ljava/lang/String; = "android.content.pm.protect_supervision_packages"

.field public static final blacklist FLAG_PROVIDE_INFO_OF_APK_IN_APEX:Ljava/lang/String; = "android.content.pm.provide_info_of_apk_in_apex"

.field public static final blacklist FLAG_QUARANTINED_ENABLED:Ljava/lang/String; = "android.content.pm.quarantined_enabled"

.field public static final blacklist FLAG_READ_INSTALL_INFO:Ljava/lang/String; = "android.content.pm.read_install_info"

.field public static final blacklist FLAG_RECOVERABILITY_DETECTION:Ljava/lang/String; = "android.content.pm.recoverability_detection"

.field public static final blacklist FLAG_RELATIVE_REFERENCE_INTENT_FILTERS:Ljava/lang/String; = "android.content.pm.relative_reference_intent_filters"

.field public static final blacklist FLAG_REMOVE_HIDDEN_MODULE_USAGE:Ljava/lang/String; = "android.content.pm.remove_hidden_module_usage"

.field public static final blacklist FLAG_RESTRICT_NONPRELOADS_SYSTEM_SHAREDUIDS:Ljava/lang/String; = "android.content.pm.restrict_nonpreloads_system_shareduids"

.field public static final blacklist FLAG_ROLLBACK_LIFETIME:Ljava/lang/String; = "android.content.pm.rollback_lifetime"

.field public static final blacklist FLAG_SDK_DEPENDENCY_INSTALLER:Ljava/lang/String; = "android.content.pm.sdk_dependency_installer"

.field public static final blacklist FLAG_SDK_LIB_INDEPENDENCE:Ljava/lang/String; = "android.content.pm.sdk_lib_independence"

.field public static final blacklist FLAG_SET_PRE_VERIFIED_DOMAINS:Ljava/lang/String; = "android.content.pm.set_pre_verified_domains"

.field public static final blacklist FLAG_STAY_STOPPED:Ljava/lang/String; = "android.content.pm.stay_stopped"

.field public static final blacklist FLAG_UID_BASED_PROVIDER_LOOKUP:Ljava/lang/String; = "android.content.pm.uid_based_provider_lookup"

.field public static final blacklist FLAG_USE_ART_SERVICE_V2:Ljava/lang/String; = "android.content.pm.use_art_service_v2"

.field public static final blacklist FLAG_USE_PIA_V2:Ljava/lang/String; = "android.content.pm.use_pia_v2"

.field public static final blacklist FLAG_VERIFICATION_SERVICE:Ljava/lang/String; = "android.content.pm.verification_service"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 335
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist alternativeForDexoptCleanup()Z
    .registers 1

    .line 92
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->alternativeForDexoptCleanup()Z

    move-result v0

    return v0
.end method

.method public static blacklist alwaysLoadPastCertsV4()Z
    .registers 1

    .line 98
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->alwaysLoadPastCertsV4()Z

    move-result v0

    return v0
.end method

.method public static blacklist appCompatOption16kb()Z
    .registers 1

    .line 104
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->appCompatOption16kb()Z

    move-result v0

    return v0
.end method

.method public static blacklist appCompatWarnings16kb()Z
    .registers 1

    .line 110
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->appCompatWarnings16kb()Z

    move-result v0

    return v0
.end method

.method public static blacklist archiving()Z
    .registers 1

    .line 116
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->archiving()Z

    move-result v0

    return v0
.end method

.method public static blacklist aslInApkAppMetadataSource()Z
    .registers 1

    .line 122
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->aslInApkAppMetadataSource()Z

    move-result v0

    return v0
.end method

.method public static blacklist audioPlaybackCaptureAllowance()Z
    .registers 1

    .line 128
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->audioPlaybackCaptureAllowance()Z

    move-result v0

    return v0
.end method

.method public static blacklist cacheQueryIntentActivitiesInClientSide()Z
    .registers 1

    .line 134
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->cacheQueryIntentActivitiesInClientSide()Z

    move-result v0

    return v0
.end method

.method public static blacklist changeLauncherBadging()Z
    .registers 1

    .line 140
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->changeLauncherBadging()Z

    move-result v0

    return v0
.end method

.method public static blacklist cloudCompilationPm()Z
    .registers 1

    .line 146
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->cloudCompilationPm()Z

    move-result v0

    return v0
.end method

.method public static blacklist consolidatePackageChangedBroadcasts()Z
    .registers 1

    .line 152
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->consolidatePackageChangedBroadcasts()Z

    move-result v0

    return v0
.end method

.method public static blacklist disallowSdkLibsToBeApps()Z
    .registers 1

    .line 158
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->disallowSdkLibsToBeApps()Z

    move-result v0

    return v0
.end method

.method public static blacklist emergencyInstallPermission()Z
    .registers 1

    .line 164
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->emergencyInstallPermission()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixDuplicatedFlags()Z
    .registers 1

    .line 170
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->fixDuplicatedFlags()Z

    move-result v0

    return v0
.end method

.method public static blacklist getPackageInfo()Z
    .registers 1

    .line 176
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->getPackageInfo()Z

    move-result v0

    return v0
.end method

.method public static blacklist getPackageInfoWithFd()Z
    .registers 1

    .line 182
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->getPackageInfoWithFd()Z

    move-result v0

    return v0
.end method

.method public static blacklist getPackageStorageStats()Z
    .registers 1

    .line 188
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->getPackageStorageStats()Z

    move-result v0

    return v0
.end method

.method public static blacklist getResolvedApkPath()Z
    .registers 1

    .line 194
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->getResolvedApkPath()Z

    move-result v0

    return v0
.end method

.method public static blacklist improveInstallFreeze()Z
    .registers 1

    .line 200
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->improveInstallFreeze()Z

    move-result v0

    return v0
.end method

.method public static blacklist includeBroadcastDebugReason()Z
    .registers 1

    .line 206
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->includeBroadcastDebugReason()Z

    move-result v0

    return v0
.end method

.method public static blacklist includeFeatureFlagsInPackageCacher()Z
    .registers 1

    .line 212
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->includeFeatureFlagsInPackageCacher()Z

    move-result v0

    return v0
.end method

.method public static blacklist introduceMediaProcessingType()Z
    .registers 1

    .line 218
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->introduceMediaProcessingType()Z

    move-result v0

    return v0
.end method

.method public static blacklist mergePackageChangedBroadcast()Z
    .registers 1

    .line 224
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->mergePackageChangedBroadcast()Z

    move-result v0

    return v0
.end method

.method public static blacklist minTargetSdk24()Z
    .registers 1

    .line 230
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->minTargetSdk24()Z

    move-result v0

    return v0
.end method

.method public static blacklist protectSupervisionPackages()Z
    .registers 1

    .line 236
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->protectSupervisionPackages()Z

    move-result v0

    return v0
.end method

.method public static blacklist provideInfoOfApkInApex()Z
    .registers 1

    .line 242
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->provideInfoOfApkInApex()Z

    move-result v0

    return v0
.end method

.method public static blacklist quarantinedEnabled()Z
    .registers 1

    .line 248
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->quarantinedEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist readInstallInfo()Z
    .registers 1

    .line 254
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->readInstallInfo()Z

    move-result v0

    return v0
.end method

.method public static blacklist recoverabilityDetection()Z
    .registers 1

    .line 260
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->recoverabilityDetection()Z

    move-result v0

    return v0
.end method

.method public static blacklist relativeReferenceIntentFilters()Z
    .registers 1

    .line 266
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->relativeReferenceIntentFilters()Z

    move-result v0

    return v0
.end method

.method public static blacklist removeHiddenModuleUsage()Z
    .registers 1

    .line 272
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->removeHiddenModuleUsage()Z

    move-result v0

    return v0
.end method

.method public static blacklist restrictNonpreloadsSystemShareduids()Z
    .registers 1

    .line 278
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->restrictNonpreloadsSystemShareduids()Z

    move-result v0

    return v0
.end method

.method public static blacklist rollbackLifetime()Z
    .registers 1

    .line 284
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->rollbackLifetime()Z

    move-result v0

    return v0
.end method

.method public static blacklist sdkDependencyInstaller()Z
    .registers 1

    .line 290
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->sdkDependencyInstaller()Z

    move-result v0

    return v0
.end method

.method public static blacklist sdkLibIndependence()Z
    .registers 1

    .line 296
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->sdkLibIndependence()Z

    move-result v0

    return v0
.end method

.method public static blacklist setPreVerifiedDomains()Z
    .registers 1

    .line 302
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->setPreVerifiedDomains()Z

    move-result v0

    return v0
.end method

.method public static blacklist stayStopped()Z
    .registers 1

    .line 308
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->stayStopped()Z

    move-result v0

    return v0
.end method

.method public static blacklist uidBasedProviderLookup()Z
    .registers 1

    .line 314
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->uidBasedProviderLookup()Z

    move-result v0

    return v0
.end method

.method public static blacklist useArtServiceV2()Z
    .registers 1

    .line 320
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->useArtServiceV2()Z

    move-result v0

    return v0
.end method

.method public static blacklist usePiaV2()Z
    .registers 1

    .line 326
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->usePiaV2()Z

    move-result v0

    return v0
.end method

.method public static blacklist verificationService()Z
    .registers 1

    .line 332
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->verificationService()Z

    move-result v0

    return v0
.end method
