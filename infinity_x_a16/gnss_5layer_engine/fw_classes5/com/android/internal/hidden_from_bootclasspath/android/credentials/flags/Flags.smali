.class public final Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags; = null

.field public static final blacklist FLAG_CLEAR_CREDENTIALS_FIX_ENABLED:Ljava/lang/String; = "android.credentials.flags.clear_credentials_fix_enabled"

.field public static final blacklist FLAG_CLEAR_SESSION_ENABLED:Ljava/lang/String; = "android.credentials.flags.clear_session_enabled"

.field public static final blacklist FLAG_CONFIGURABLE_SELECTOR_UI_ENABLED:Ljava/lang/String; = "android.credentials.flags.configurable_selector_ui_enabled"

.field public static final blacklist FLAG_HYBRID_FILTER_OPT_FIX_ENABLED:Ljava/lang/String; = "android.credentials.flags.hybrid_filter_opt_fix_enabled"

.field public static final blacklist FLAG_IS_CREDMAN_SETTINGS_EXPRESSIVE_DESIGN:Ljava/lang/String; = "android.credentials.flags.is_credman_settings_expressive_design"

.field public static final blacklist FLAG_METRIC_BUGFIXES_CONTINUED:Ljava/lang/String; = "android.credentials.flags.metric_bugfixes_continued"

.field public static final blacklist FLAG_NEW_FRAMEWORK_METRICS:Ljava/lang/String; = "android.credentials.flags.new_framework_metrics"

.field public static final blacklist FLAG_NEW_SETTINGS_INTENTS:Ljava/lang/String; = "android.credentials.flags.new_settings_intents"

.field public static final blacklist FLAG_PACKAGE_UPDATE_FIX_ENABLED:Ljava/lang/String; = "android.credentials.flags.package_update_fix_enabled"

.field public static final blacklist FLAG_PROPAGATE_USER_CONTEXT_FOR_INTENT_CREATION:Ljava/lang/String; = "android.credentials.flags.propagate_user_context_for_intent_creation"

.field public static final blacklist FLAG_SAFEGUARD_CANDIDATE_CREDENTIALS_API_CALLER:Ljava/lang/String; = "android.credentials.flags.safeguard_candidate_credentials_api_caller"

.field public static final blacklist FLAG_SETTINGS_ACTIVITY_ENABLED:Ljava/lang/String; = "android.credentials.flags.settings_activity_enabled"

.field public static final blacklist FLAG_SETTINGS_W_FIXES:Ljava/lang/String; = "android.credentials.flags.settings_w_fixes"

.field public static final blacklist FLAG_TTL_FIX_ENABLED:Ljava/lang/String; = "android.credentials.flags.ttl_fix_enabled"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist clearCredentialsFixEnabled()Z
    .registers 1

    .line 38
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->clearCredentialsFixEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist clearSessionEnabled()Z
    .registers 1

    .line 44
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->clearSessionEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist configurableSelectorUiEnabled()Z
    .registers 1

    .line 50
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->configurableSelectorUiEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist hybridFilterOptFixEnabled()Z
    .registers 1

    .line 56
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->hybridFilterOptFixEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist isCredmanSettingsExpressiveDesign()Z
    .registers 1

    .line 62
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->isCredmanSettingsExpressiveDesign()Z

    move-result v0

    return v0
.end method

.method public static blacklist metricBugfixesContinued()Z
    .registers 1

    .line 68
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->metricBugfixesContinued()Z

    move-result v0

    return v0
.end method

.method public static blacklist newFrameworkMetrics()Z
    .registers 1

    .line 74
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->newFrameworkMetrics()Z

    move-result v0

    return v0
.end method

.method public static blacklist newSettingsIntents()Z
    .registers 1

    .line 80
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->newSettingsIntents()Z

    move-result v0

    return v0
.end method

.method public static blacklist packageUpdateFixEnabled()Z
    .registers 1

    .line 86
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->packageUpdateFixEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist propagateUserContextForIntentCreation()Z
    .registers 1

    .line 92
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->propagateUserContextForIntentCreation()Z

    move-result v0

    return v0
.end method

.method public static blacklist safeguardCandidateCredentialsApiCaller()Z
    .registers 1

    .line 98
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->safeguardCandidateCredentialsApiCaller()Z

    move-result v0

    return v0
.end method

.method public static blacklist settingsActivityEnabled()Z
    .registers 1

    .line 104
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->settingsActivityEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist settingsWFixes()Z
    .registers 1

    .line 110
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->settingsWFixes()Z

    move-result v0

    return v0
.end method

.method public static blacklist ttlFixEnabled()Z
    .registers 1

    .line 116
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->ttlFixEnabled()Z

    move-result v0

    return v0
.end method
