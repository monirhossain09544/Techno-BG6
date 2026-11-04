.class public final Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist anomalyDetectorCore:Z

.field private static volatile blacklist isCached:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/FeatureFlagsImpl;->anomalyDetectorCore:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 5

    .line 14
    const-string v0, "FeatureFlagsImplExport"

    :try_start_2
    const-string v1, "android.os.profiling.anomaly.flags"

    invoke-static {v1}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v1

    .line 15
    const-string v2, "anomaly_detector_core"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/FeatureFlagsImpl;->anomalyDetectorCore:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_1b
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_23

    .line 19
    :catch_12
    move-exception v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 16
    :catch_1b
    move-exception v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :goto_23
    nop

    .line 24
    :goto_24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/FeatureFlagsImpl;->isCached:Z

    .line 25
    return-void
.end method


# virtual methods
.method public blacklist anomalyDetectorCore()Z
    .registers 2

    .line 28
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 29
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/FeatureFlagsImpl;->init()V

    .line 31
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/FeatureFlagsImpl;->anomalyDetectorCore:Z

    return v0
.end method
