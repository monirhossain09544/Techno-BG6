.class public final Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags; = null

.field public static final blacklist FLAG_DEPRECATE_DPM_SUPERVISION_APIS:Ljava/lang/String; = "android.app.supervision.flags.deprecate_dpm_supervision_apis"

.field public static final blacklist FLAG_ENABLE_APP_APPROVAL:Ljava/lang/String; = "android.app.supervision.flags.enable_app_approval"

.field public static final blacklist FLAG_ENABLE_APP_SERVICE_CONNECTION_CALLBACK:Ljava/lang/String; = "android.app.supervision.flags.enable_app_service_connection_callback"

.field public static final blacklist FLAG_ENABLE_APP_STORE_FILTERS_SCREEN:Ljava/lang/String; = "android.app.supervision.flags.enable_app_store_filters_screen"

.field public static final blacklist FLAG_ENABLE_CONFIRMATION_DIALOG_BYPASS:Ljava/lang/String; = "android.app.supervision.flags.enable_confirmation_dialog_bypass"

.field public static final blacklist FLAG_ENABLE_LOCK_TASK_FEATURE_QUICK_SETTINGS:Ljava/lang/String; = "android.app.supervision.flags.enable_lock_task_feature_quick_settings"

.field public static final blacklist FLAG_ENABLE_REMOVE_POLICIES_ON_SUPERVISION_DISABLE:Ljava/lang/String; = "android.app.supervision.flags.enable_remove_policies_on_supervision_disable"

.field public static final blacklist FLAG_ENABLE_SUPERVISION_APP_SERVICE:Ljava/lang/String; = "android.app.supervision.flags.enable_supervision_app_service"

.field public static final blacklist FLAG_ENABLE_SUPERVISION_PIN_RECOVERY_SCREEN:Ljava/lang/String; = "android.app.supervision.flags.enable_supervision_pin_recovery_screen"

.field public static final blacklist FLAG_ENABLE_SUPERVISION_SETTINGS_SCREEN:Ljava/lang/String; = "android.app.supervision.flags.enable_supervision_settings_screen"

.field public static final blacklist FLAG_ENABLE_SUPERVISION_SETTINGS_UI_UPDATES:Ljava/lang/String; = "android.app.supervision.flags.enable_supervision_settings_ui_updates"

.field public static final blacklist FLAG_ENABLE_SYNC_WITH_DPM:Ljava/lang/String; = "android.app.supervision.flags.enable_sync_with_dpm"

.field public static final blacklist FLAG_ENABLE_WEB_CONTENT_FILTERS_SCREEN:Ljava/lang/String; = "android.app.supervision.flags.enable_web_content_filters_screen"

.field public static final blacklist FLAG_ENABLE_WEB_CONTENT_FILTERS_SCREEN_SEARCH_REDIRECTION:Ljava/lang/String; = "android.app.supervision.flags.enable_web_content_filters_screen_search_redirection"

.field public static final blacklist FLAG_PERSISTENT_SUPERVISION_SETTINGS:Ljava/lang/String; = "android.app.supervision.flags.persistent_supervision_settings"

.field public static final blacklist FLAG_SUPERVISION_API:Ljava/lang/String; = "android.app.supervision.flags.supervision_api"

.field public static final blacklist FLAG_SUPERVISION_API_ON_WEAR:Ljava/lang/String; = "android.app.supervision.flags.supervision_api_on_wear"

.field public static final blacklist FLAG_SUPERVISION_MANAGER_APIS:Ljava/lang/String; = "android.app.supervision.flags.supervision_manager_apis"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 151
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist deprecateDpmSupervisionApis()Z
    .registers 1

    .line 46
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->deprecateDpmSupervisionApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableAppApproval()Z
    .registers 1

    .line 52
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->enableAppApproval()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableAppServiceConnectionCallback()Z
    .registers 1

    .line 58
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->enableAppServiceConnectionCallback()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableAppStoreFiltersScreen()Z
    .registers 1

    .line 64
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->enableAppStoreFiltersScreen()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableConfirmationDialogBypass()Z
    .registers 1

    .line 70
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->enableConfirmationDialogBypass()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableLockTaskFeatureQuickSettings()Z
    .registers 1

    .line 76
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->enableLockTaskFeatureQuickSettings()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableRemovePoliciesOnSupervisionDisable()Z
    .registers 1

    .line 82
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->enableRemovePoliciesOnSupervisionDisable()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableSupervisionAppService()Z
    .registers 1

    .line 88
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->enableSupervisionAppService()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableSupervisionPinRecoveryScreen()Z
    .registers 1

    .line 94
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->enableSupervisionPinRecoveryScreen()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableSupervisionSettingsScreen()Z
    .registers 1

    .line 100
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->enableSupervisionSettingsScreen()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableSupervisionSettingsUiUpdates()Z
    .registers 1

    .line 106
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->enableSupervisionSettingsUiUpdates()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableSyncWithDpm()Z
    .registers 1

    .line 112
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->enableSyncWithDpm()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableWebContentFiltersScreen()Z
    .registers 1

    .line 118
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->enableWebContentFiltersScreen()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableWebContentFiltersScreenSearchRedirection()Z
    .registers 1

    .line 124
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->enableWebContentFiltersScreenSearchRedirection()Z

    move-result v0

    return v0
.end method

.method public static blacklist persistentSupervisionSettings()Z
    .registers 1

    .line 130
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->persistentSupervisionSettings()Z

    move-result v0

    return v0
.end method

.method public static blacklist supervisionApi()Z
    .registers 1

    .line 136
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->supervisionApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist supervisionApiOnWear()Z
    .registers 1

    .line 142
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->supervisionApiOnWear()Z

    move-result v0

    return v0
.end method

.method public static blacklist supervisionManagerApis()Z
    .registers 1

    .line 148
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/FeatureFlags;->supervisionManagerApis()Z

    move-result v0

    return v0
.end method
