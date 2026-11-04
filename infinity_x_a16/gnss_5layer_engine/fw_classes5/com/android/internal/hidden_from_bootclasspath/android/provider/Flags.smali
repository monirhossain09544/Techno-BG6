.class public final Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags; = null

.field public static final blacklist FLAG_ALLOW_CONFIG_MAXIMUM_CALL_LOG_ENTRIES_PER_SIM:Ljava/lang/String; = "android.provider.allow_config_maximum_call_log_entries_per_sim"

.field public static final blacklist FLAG_ENABLE_DOCUMENTS_TRASH_API:Ljava/lang/String; = "android.provider.enable_documents_trash_api"

.field public static final blacklist FLAG_EXPOSE_SYSTEM_UPDATE_SETTINGS:Ljava/lang/String; = "android.provider.expose_system_update_settings"

.field public static final blacklist FLAG_LAUNCHER_DATA_ACCESS:Ljava/lang/String; = "android.provider.launcher_data_access"

.field public static final blacklist FLAG_NEW_ACCOUNT_ATTRIBUTES_API_ENABLED:Ljava/lang/String; = "android.provider.new_account_attributes_api_enabled"

.field public static final blacklist FLAG_NEW_DEFAULT_ACCOUNT_API_ENABLED:Ljava/lang/String; = "android.provider.new_default_account_api_enabled"

.field public static final blacklist FLAG_REDUCE_BINDER_TRANSACTION_SIZE_FOR_GET_ALL_PROPERTIES:Ljava/lang/String; = "android.provider.reduce_binder_transaction_size_for_get_all_properties"

.field public static final blacklist FLAG_SYSTEM_REGIONAL_PREFERENCES_API_ENABLED:Ljava/lang/String; = "android.provider.system_regional_preferences_api_enabled"

.field public static final blacklist FLAG_SYSTEM_SETTINGS_DEFAULT:Ljava/lang/String; = "android.provider.system_settings_default"

.field public static final blacklist FLAG_USER_KEYS:Ljava/lang/String; = "android.provider.user_keys"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 87
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist allowConfigMaximumCallLogEntriesPerSim()Z
    .registers 1

    .line 30
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;->allowConfigMaximumCallLogEntriesPerSim()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableDocumentsTrashApi()Z
    .registers 1

    .line 36
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;->enableDocumentsTrashApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist exposeSystemUpdateSettings()Z
    .registers 1

    .line 42
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;->exposeSystemUpdateSettings()Z

    move-result v0

    return v0
.end method

.method public static blacklist launcherDataAccess()Z
    .registers 1

    .line 48
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;->launcherDataAccess()Z

    move-result v0

    return v0
.end method

.method public static blacklist newAccountAttributesApiEnabled()Z
    .registers 1

    .line 54
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;->newAccountAttributesApiEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist newDefaultAccountApiEnabled()Z
    .registers 1

    .line 60
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;->newDefaultAccountApiEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist reduceBinderTransactionSizeForGetAllProperties()Z
    .registers 1

    .line 66
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;->reduceBinderTransactionSizeForGetAllProperties()Z

    move-result v0

    return v0
.end method

.method public static blacklist systemRegionalPreferencesApiEnabled()Z
    .registers 1

    .line 72
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;->systemRegionalPreferencesApiEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist systemSettingsDefault()Z
    .registers 1

    .line 78
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;->systemSettingsDefault()Z

    move-result v0

    return v0
.end method

.method public static blacklist userKeys()Z
    .registers 1

    .line 84
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;->userKeys()Z

    move-result v0

    return v0
.end method
