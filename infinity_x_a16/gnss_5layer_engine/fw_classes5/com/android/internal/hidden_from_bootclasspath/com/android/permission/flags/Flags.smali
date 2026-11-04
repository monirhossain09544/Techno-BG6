.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ADD_BANNERS_TO_PRIVACY_SENSITIVE_APPS_FOR_AAOS:Ljava/lang/String; = "com.android.permission.flags.add_banners_to_privacy_sensitive_apps_for_aaos"

.field public static final blacklist FLAG_APP_PERMISSION_FRAGMENT_USES_PREFERENCES:Ljava/lang/String; = "com.android.permission.flags.app_permission_fragment_uses_preferences"

.field public static final blacklist FLAG_ARCHIVING_READ_ONLY:Ljava/lang/String; = "com.android.permission.flags.archiving_read_only"

.field public static final blacklist FLAG_CROSS_USER_ROLE_ENABLED:Ljava/lang/String; = "com.android.permission.flags.cross_user_role_enabled"

.field public static final blacklist FLAG_CROSS_USER_ROLE_UX_BUGFIX_ENABLED:Ljava/lang/String; = "com.android.permission.flags.cross_user_role_ux_bugfix_enabled"

.field public static final blacklist FLAG_DECLUTTERED_PERMISSION_MANAGER_ENABLED:Ljava/lang/String; = "com.android.permission.flags.decluttered_permission_manager_enabled"

.field public static final blacklist FLAG_DEFAULT_APPS_RECOMMENDATION_ENABLED:Ljava/lang/String; = "com.android.permission.flags.default_apps_recommendation_enabled"

.field public static final blacklist FLAG_ENABLE_COARSE_FINE_LOCATION_PROMPT_FOR_AAOS:Ljava/lang/String; = "com.android.permission.flags.enable_coarse_fine_location_prompt_for_aaos"

.field public static final blacklist FLAG_ENHANCED_CONFIRMATION_BACKPORT_ENABLED:Ljava/lang/String; = "com.android.permission.flags.enhanced_confirmation_backport_enabled"

.field public static final blacklist FLAG_EXPRESSIVE_DESIGN_ENABLED:Ljava/lang/String; = "com.android.permission.flags.expressive_design_enabled"

.field public static final blacklist FLAG_FIX_SAFETY_CENTER_TOUCH_TARGET:Ljava/lang/String; = "com.android.permission.flags.fix_safety_center_touch_target"

.field public static final blacklist FLAG_ODAD_NOTIFICATIONS_SUPPORTED:Ljava/lang/String; = "com.android.permission.flags.odad_notifications_supported"

.field public static final blacklist FLAG_PERMISSION_TIMELINE_ATTRIBUTION_LABEL_FIX:Ljava/lang/String; = "com.android.permission.flags.permission_timeline_attribution_label_fix"

.field public static final blacklist FLAG_PRIVATE_PROFILE_SUPPORTED:Ljava/lang/String; = "com.android.permission.flags.private_profile_supported"

.field public static final blacklist FLAG_PRIVATE_PROFILE_TITLE_API:Ljava/lang/String; = "com.android.permission.flags.private_profile_title_api"

.field public static final blacklist FLAG_SAFETY_CENTER_ENABLED_NO_DEVICE_CONFIG:Ljava/lang/String; = "com.android.permission.flags.safety_center_enabled_no_device_config"

.field public static final blacklist FLAG_SAFETY_CENTER_ISSUE_ONLY_AFFECTS_GROUP_STATUS:Ljava/lang/String; = "com.android.permission.flags.safety_center_issue_only_affects_group_status"

.field public static final blacklist FLAG_SYSTEM_FINANCED_DEVICE_CONTROLLER:Ljava/lang/String; = "com.android.permission.flags.system_financed_device_controller"

.field public static final blacklist FLAG_WEAR_COMPOSE_MATERIAL3:Ljava/lang/String; = "com.android.permission.flags.wear_compose_material3"

.field public static final blacklist FLAG_WEAR_PRIVACY_DASHBOARD_ENABLED_READ_ONLY:Ljava/lang/String; = "com.android.permission.flags.wear_privacy_dashboard_enabled_read_only"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 169
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addBannersToPrivacySensitiveAppsForAaos()Z
    .registers 1

    .line 48
    nop

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist appPermissionFragmentUsesPreferences()Z
    .registers 1

    .line 55
    nop

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist archivingReadOnly()Z
    .registers 1

    .line 62
    nop

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist crossUserRoleEnabled()Z
    .registers 1

    .line 69
    nop

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist crossUserRoleUxBugfixEnabled()Z
    .registers 1

    .line 76
    nop

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist declutteredPermissionManagerEnabled()Z
    .registers 1

    .line 83
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;->declutteredPermissionManagerEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist defaultAppsRecommendationEnabled()Z
    .registers 1

    .line 87
    nop

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist enableCoarseFineLocationPromptForAaos()Z
    .registers 1

    .line 94
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;->enableCoarseFineLocationPromptForAaos()Z

    move-result v0

    return v0
.end method

.method public static blacklist enhancedConfirmationBackportEnabled()Z
    .registers 1

    .line 98
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;->enhancedConfirmationBackportEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist expressiveDesignEnabled()Z
    .registers 1

    .line 102
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;->expressiveDesignEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixSafetyCenterTouchTarget()Z
    .registers 1

    .line 106
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;->fixSafetyCenterTouchTarget()Z

    move-result v0

    return v0
.end method

.method public static blacklist odadNotificationsSupported()Z
    .registers 1

    .line 110
    nop

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist permissionTimelineAttributionLabelFix()Z
    .registers 1

    .line 117
    nop

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist privateProfileSupported()Z
    .registers 1

    .line 124
    nop

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist privateProfileTitleApi()Z
    .registers 1

    .line 131
    nop

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist safetyCenterEnabledNoDeviceConfig()Z
    .registers 1

    .line 138
    nop

    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist safetyCenterIssueOnlyAffectsGroupStatus()Z
    .registers 1

    .line 145
    nop

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist systemFinancedDeviceController()Z
    .registers 2

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v1, 0x36ee81

    if-lt v0, v1, :cond_9

    .line 153
    const/4 v0, 0x1

    return v0

    .line 155
    :cond_9
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;->systemFinancedDeviceController()Z

    move-result v0

    return v0
.end method

.method public static blacklist wearComposeMaterial3()Z
    .registers 1

    .line 159
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;->wearComposeMaterial3()Z

    move-result v0

    return v0
.end method

.method public static blacklist wearPrivacyDashboardEnabledReadOnly()Z
    .registers 1

    .line 163
    nop

    .line 164
    const/4 v0, 0x1

    return v0
.end method
