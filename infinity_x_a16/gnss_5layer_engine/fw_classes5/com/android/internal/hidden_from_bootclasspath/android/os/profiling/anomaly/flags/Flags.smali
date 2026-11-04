.class public final Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ANOMALY_DETECTOR_CORE:Ljava/lang/String; = "android.os.profiling.anomaly.flags.anomaly_detector_core"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist anomalyDetectorCore()Z
    .registers 1

    .line 10
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/FeatureFlags;->anomalyDetectorCore()Z

    move-result v0

    return v0
.end method
