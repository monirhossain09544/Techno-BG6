.class public final Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/FeatureFlags; = null

.field public static final blacklist FLAG_DEPRECATE_OLD_QUERY_EVENTS_API:Ljava/lang/String; = "android.app.usage.deprecate_old_query_events_api"

.field public static final blacklist FLAG_FILTER_BASED_EVENT_QUERY_API:Ljava/lang/String; = "android.app.usage.filter_based_event_query_api"

.field public static final blacklist FLAG_GET_APP_BYTES_BY_DATA_TYPE_API:Ljava/lang/String; = "android.app.usage.get_app_bytes_by_data_type_api"

.field public static final blacklist FLAG_REPORT_USAGE_STATS_PERMISSION:Ljava/lang/String; = "android.app.usage.report_usage_stats_permission"

.field public static final blacklist FLAG_USER_INTERACTION_TYPE_API:Ljava/lang/String; = "android.app.usage.user_interaction_type_api"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist deprecateOldQueryEventsApi()Z
    .registers 1

    .line 20
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/FeatureFlags;->deprecateOldQueryEventsApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist filterBasedEventQueryApi()Z
    .registers 1

    .line 26
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/FeatureFlags;->filterBasedEventQueryApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist getAppBytesByDataTypeApi()Z
    .registers 1

    .line 32
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/FeatureFlags;->getAppBytesByDataTypeApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist reportUsageStatsPermission()Z
    .registers 1

    .line 38
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/FeatureFlags;->reportUsageStatsPermission()Z

    move-result v0

    return v0
.end method

.method public static blacklist userInteractionTypeApi()Z
    .registers 1

    .line 44
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/usage/FeatureFlags;->userInteractionTypeApi()Z

    move-result v0

    return v0
.end method
