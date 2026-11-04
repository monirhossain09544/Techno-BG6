.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist addBannersToPrivacySensitiveAppsForAaos:Z

.field private static blacklist appPermissionFragmentUsesPreferences:Z

.field private static blacklist archivingReadOnly:Z

.field private static blacklist crossUserRoleEnabled:Z

.field private static blacklist crossUserRoleUxBugfixEnabled:Z

.field private static blacklist declutteredPermissionManagerEnabled:Z

.field private static blacklist defaultAppsRecommendationEnabled:Z

.field private static blacklist enableCoarseFineLocationPromptForAaos:Z

.field private static blacklist enhancedConfirmationBackportEnabled:Z

.field private static blacklist expressiveDesignEnabled:Z

.field private static blacklist fixSafetyCenterTouchTarget:Z

.field private static volatile blacklist isCached:Z

.field private static blacklist odadNotificationsSupported:Z

.field private static blacklist permissionTimelineAttributionLabelFix:Z

.field private static blacklist privateProfileSupported:Z

.field private static blacklist privateProfileTitleApi:Z

.field private static blacklist safetyCenterEnabledNoDeviceConfig:Z

.field private static blacklist safetyCenterIssueOnlyAffectsGroupStatus:Z

.field private static blacklist systemFinancedDeviceController:Z

.field private static blacklist wearComposeMaterial3:Z

.field private static blacklist wearPrivacyDashboardEnabledReadOnly:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->addBannersToPrivacySensitiveAppsForAaos:Z

    .line 12
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->appPermissionFragmentUsesPreferences:Z

    .line 13
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->archivingReadOnly:Z

    .line 14
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleEnabled:Z

    .line 15
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleUxBugfixEnabled:Z

    .line 16
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->declutteredPermissionManagerEnabled:Z

    .line 17
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->defaultAppsRecommendationEnabled:Z

    .line 18
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enableCoarseFineLocationPromptForAaos:Z

    .line 19
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enhancedConfirmationBackportEnabled:Z

    .line 20
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->expressiveDesignEnabled:Z

    .line 21
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->fixSafetyCenterTouchTarget:Z

    .line 22
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->odadNotificationsSupported:Z

    .line 23
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->permissionTimelineAttributionLabelFix:Z

    .line 24
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileSupported:Z

    .line 25
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileTitleApi:Z

    .line 26
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterEnabledNoDeviceConfig:Z

    .line 27
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterIssueOnlyAffectsGroupStatus:Z

    .line 28
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->systemFinancedDeviceController:Z

    .line 29
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearComposeMaterial3:Z

    .line 30
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearPrivacyDashboardEnabledReadOnly:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 7

    .line 33
    const-string v0, "FeatureFlagsImplExport"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "com.android.permission.flags"

    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v2

    .line 34
    sget v3, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v4, 0x36ee81

    const/4 v5, 0x0

    if-lt v3, v4, :cond_13

    move v3, v1

    goto :goto_19

    :cond_13
    const-string v3, "system_financed_device_controller"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_19
    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->systemFinancedDeviceController:Z

    .line 35
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->addBannersToPrivacySensitiveAppsForAaos:Z

    .line 36
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->appPermissionFragmentUsesPreferences:Z

    .line 37
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->archivingReadOnly:Z

    .line 38
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleEnabled:Z

    .line 39
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleUxBugfixEnabled:Z

    .line 40
    const-string v3, "decluttered_permission_manager_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->declutteredPermissionManagerEnabled:Z

    .line 41
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->defaultAppsRecommendationEnabled:Z

    .line 42
    const-string v3, "enable_coarse_fine_location_prompt_for_aaos"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enableCoarseFineLocationPromptForAaos:Z

    .line 43
    const-string v3, "enhanced_confirmation_backport_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enhancedConfirmationBackportEnabled:Z

    .line 44
    const-string v3, "expressive_design_enabled"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->expressiveDesignEnabled:Z

    .line 45
    const-string v3, "fix_safety_center_touch_target"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->fixSafetyCenterTouchTarget:Z

    .line 46
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->odadNotificationsSupported:Z

    .line 47
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->permissionTimelineAttributionLabelFix:Z

    .line 48
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileSupported:Z

    .line 49
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileTitleApi:Z

    .line 50
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterEnabledNoDeviceConfig:Z

    .line 51
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterIssueOnlyAffectsGroupStatus:Z

    .line 52
    const-string v3, "wear_compose_material3"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearComposeMaterial3:Z

    .line 53
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearPrivacyDashboardEnabledReadOnly:Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_65} :catch_6f
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_65} :catch_66

    goto :goto_77

    .line 57
    :catch_66
    move-exception v2

    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 54
    :catch_6f
    move-exception v2

    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_77
    nop

    .line 62
    :goto_78
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    .line 63
    return-void
.end method


# virtual methods
.method public blacklist addBannersToPrivacySensitiveAppsForAaos()Z
    .registers 2

    .line 66
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 67
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 69
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->addBannersToPrivacySensitiveAppsForAaos:Z

    return v0
.end method

.method public blacklist appPermissionFragmentUsesPreferences()Z
    .registers 2

    .line 74
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 75
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 77
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->appPermissionFragmentUsesPreferences:Z

    return v0
.end method

.method public blacklist archivingReadOnly()Z
    .registers 2

    .line 82
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 83
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 85
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->archivingReadOnly:Z

    return v0
.end method

.method public blacklist crossUserRoleEnabled()Z
    .registers 2

    .line 90
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 91
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 93
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleEnabled:Z

    return v0
.end method

.method public blacklist crossUserRoleUxBugfixEnabled()Z
    .registers 2

    .line 98
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 99
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 101
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleUxBugfixEnabled:Z

    return v0
.end method

.method public blacklist declutteredPermissionManagerEnabled()Z
    .registers 2

    .line 106
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 107
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 109
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->declutteredPermissionManagerEnabled:Z

    return v0
.end method

.method public blacklist defaultAppsRecommendationEnabled()Z
    .registers 2

    .line 114
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 115
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 117
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->defaultAppsRecommendationEnabled:Z

    return v0
.end method

.method public blacklist enableCoarseFineLocationPromptForAaos()Z
    .registers 2

    .line 122
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 123
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 125
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enableCoarseFineLocationPromptForAaos:Z

    return v0
.end method

.method public blacklist enhancedConfirmationBackportEnabled()Z
    .registers 2

    .line 130
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 131
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 133
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enhancedConfirmationBackportEnabled:Z

    return v0
.end method

.method public blacklist expressiveDesignEnabled()Z
    .registers 2

    .line 138
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 139
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 141
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->expressiveDesignEnabled:Z

    return v0
.end method

.method public blacklist fixSafetyCenterTouchTarget()Z
    .registers 2

    .line 146
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 147
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 149
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->fixSafetyCenterTouchTarget:Z

    return v0
.end method

.method public blacklist odadNotificationsSupported()Z
    .registers 2

    .line 154
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 155
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 157
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->odadNotificationsSupported:Z

    return v0
.end method

.method public blacklist permissionTimelineAttributionLabelFix()Z
    .registers 2

    .line 162
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 163
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 165
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->permissionTimelineAttributionLabelFix:Z

    return v0
.end method

.method public blacklist privateProfileSupported()Z
    .registers 2

    .line 170
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 171
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 173
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileSupported:Z

    return v0
.end method

.method public blacklist privateProfileTitleApi()Z
    .registers 2

    .line 178
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 179
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 181
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileTitleApi:Z

    return v0
.end method

.method public blacklist safetyCenterEnabledNoDeviceConfig()Z
    .registers 2

    .line 186
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 187
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 189
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterEnabledNoDeviceConfig:Z

    return v0
.end method

.method public blacklist safetyCenterIssueOnlyAffectsGroupStatus()Z
    .registers 2

    .line 194
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 195
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 197
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterIssueOnlyAffectsGroupStatus:Z

    return v0
.end method

.method public blacklist systemFinancedDeviceController()Z
    .registers 2

    .line 202
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 203
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 205
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->systemFinancedDeviceController:Z

    return v0
.end method

.method public blacklist wearComposeMaterial3()Z
    .registers 2

    .line 210
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 211
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 213
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearComposeMaterial3:Z

    return v0
.end method

.method public blacklist wearPrivacyDashboardEnabledReadOnly()Z
    .registers 2

    .line 218
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 219
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 221
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearPrivacyDashboardEnabledReadOnly:Z

    return v0
.end method
