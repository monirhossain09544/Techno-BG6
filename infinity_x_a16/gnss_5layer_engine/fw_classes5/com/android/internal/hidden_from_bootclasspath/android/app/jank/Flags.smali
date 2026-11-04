.class public final Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/FeatureFlags; = null

.field public static final blacklist FLAG_DETAILED_APP_JANK_METRICS_API:Ljava/lang/String; = "android.app.jank.detailed_app_jank_metrics_api"

.field public static final blacklist FLAG_DETAILED_APP_JANK_METRICS_LOGGING_ENABLED:Ljava/lang/String; = "android.app.jank.detailed_app_jank_metrics_logging_enabled"

.field public static final blacklist FLAG_INSTRUMENT_LISTVIEW_SCROLL_STATES:Ljava/lang/String; = "android.app.jank.instrument_listview_scroll_states"

.field public static final blacklist FLAG_INSTRUMENT_SCROLLVIEW_SCROLL_STATES:Ljava/lang/String; = "android.app.jank.instrument_scrollview_scroll_states"

.field public static final blacklist FLAG_VIEWROOT_CHOREOGRAPHER:Ljava/lang/String; = "android.app.jank.viewroot_choreographer"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist detailedAppJankMetricsApi()Z
    .registers 1

    .line 20
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/FeatureFlags;->detailedAppJankMetricsApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist detailedAppJankMetricsLoggingEnabled()Z
    .registers 1

    .line 26
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/FeatureFlags;->detailedAppJankMetricsLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist instrumentListviewScrollStates()Z
    .registers 1

    .line 32
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/FeatureFlags;->instrumentListviewScrollStates()Z

    move-result v0

    return v0
.end method

.method public static blacklist instrumentScrollviewScrollStates()Z
    .registers 1

    .line 38
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/FeatureFlags;->instrumentScrollviewScrollStates()Z

    move-result v0

    return v0
.end method

.method public static blacklist viewrootChoreographer()Z
    .registers 1

    .line 44
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/FeatureFlags;->viewrootChoreographer()Z

    move-result v0

    return v0
.end method
