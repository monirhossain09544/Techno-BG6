.class public final Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/FeatureFlags; = null

.field public static final blacklist FLAG_CONFIG_PARAMETERS:Ljava/lang/String; = "android.app.contextualsearch.flags.config_parameters"

.field public static final blacklist FLAG_CONTEXTUAL_SEARCH_MEDIA_PROJECTION:Ljava/lang/String; = "android.app.contextualsearch.flags.contextual_search_media_projection"

.field public static final blacklist FLAG_CONTEXTUAL_SEARCH_PREVENT_SELF_CAPTURE:Ljava/lang/String; = "android.app.contextualsearch.flags.contextual_search_prevent_self_capture"

.field public static final blacklist FLAG_ENABLE_SERVICE:Ljava/lang/String; = "android.app.contextualsearch.flags.enable_service"

.field public static final blacklist FLAG_ENABLE_TOKEN_REFRESH:Ljava/lang/String; = "android.app.contextualsearch.flags.enable_token_refresh"

.field public static final blacklist FLAG_ENABLE_VIS_ASSIST_STRUCTURE_UI_HINT:Ljava/lang/String; = "android.app.contextualsearch.flags.enable_vis_assist_structure_ui_hint"

.field public static final blacklist FLAG_INCLUDE_AUDIO_PLAYING_STATUS:Ljava/lang/String; = "android.app.contextualsearch.flags.include_audio_playing_status"

.field public static final blacklist FLAG_MULTI_WINDOW_SCREEN_CONTEXT:Ljava/lang/String; = "android.app.contextualsearch.flags.multi_window_screen_context"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist configParameters()Z
    .registers 1

    .line 26
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/FeatureFlags;->configParameters()Z

    move-result v0

    return v0
.end method

.method public static blacklist contextualSearchMediaProjection()Z
    .registers 1

    .line 32
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/FeatureFlags;->contextualSearchMediaProjection()Z

    move-result v0

    return v0
.end method

.method public static blacklist contextualSearchPreventSelfCapture()Z
    .registers 1

    .line 38
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/FeatureFlags;->contextualSearchPreventSelfCapture()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableService()Z
    .registers 1

    .line 44
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/FeatureFlags;->enableService()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableTokenRefresh()Z
    .registers 1

    .line 50
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/FeatureFlags;->enableTokenRefresh()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableVisAssistStructureUiHint()Z
    .registers 1

    .line 56
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/FeatureFlags;->enableVisAssistStructureUiHint()Z

    move-result v0

    return v0
.end method

.method public static blacklist includeAudioPlayingStatus()Z
    .registers 1

    .line 62
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/FeatureFlags;->includeAudioPlayingStatus()Z

    move-result v0

    return v0
.end method

.method public static blacklist multiWindowScreenContext()Z
    .registers 1

    .line 68
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/contextualsearch/flags/FeatureFlags;->multiWindowScreenContext()Z

    move-result v0

    return v0
.end method
