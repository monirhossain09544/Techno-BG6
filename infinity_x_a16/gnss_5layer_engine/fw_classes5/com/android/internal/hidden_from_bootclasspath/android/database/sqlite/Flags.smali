.class public final Lcom/android/internal/hidden_from_bootclasspath/android/database/sqlite/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/database/sqlite/FeatureFlags; = null

.field public static final blacklist FLAG_CONCURRENT_OPEN_HELPER:Ljava/lang/String; = "android.database.sqlite.concurrent_open_helper"

.field public static final blacklist FLAG_NO_CHECKPOINT_ON_FINALIZE:Ljava/lang/String; = "android.database.sqlite.no_checkpoint_on_finalize"

.field public static final blacklist FLAG_REPORT_ACTIVE_DB_CONFIGURATION:Ljava/lang/String; = "android.database.sqlite.report_active_db_configuration"

.field public static final blacklist FLAG_SQLITE_APIS_35:Ljava/lang/String; = "android.database.sqlite.sqlite_apis_35"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/database/sqlite/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/database/sqlite/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/database/sqlite/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/database/sqlite/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist concurrentOpenHelper()Z
    .registers 1

    .line 18
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/database/sqlite/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/database/sqlite/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/database/sqlite/FeatureFlags;->concurrentOpenHelper()Z

    move-result v0

    return v0
.end method

.method public static blacklist noCheckpointOnFinalize()Z
    .registers 1

    .line 24
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/database/sqlite/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/database/sqlite/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/database/sqlite/FeatureFlags;->noCheckpointOnFinalize()Z

    move-result v0

    return v0
.end method

.method public static blacklist reportActiveDbConfiguration()Z
    .registers 1

    .line 30
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/database/sqlite/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/database/sqlite/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/database/sqlite/FeatureFlags;->reportActiveDbConfiguration()Z

    move-result v0

    return v0
.end method

.method public static blacklist sqliteApis35()Z
    .registers 1

    .line 36
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/database/sqlite/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/database/sqlite/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/database/sqlite/FeatureFlags;->sqliteApis35()Z

    move-result v0

    return v0
.end method
