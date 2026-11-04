.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/FeatureFlags; = null

.field public static final blacklist FLAG_DEBUG_STORE_ENABLED:Ljava/lang/String; = "com.android.internal.os.debug_store_enabled"

.field public static final blacklist FLAG_PRE_WATCHDOG_THROTTLE_THREAD_DUMP:Ljava/lang/String; = "com.android.internal.os.pre_watchdog_throttle_thread_dump"

.field public static final blacklist FLAG_RAVENWOOD_FLAG_RO_1:Ljava/lang/String; = "com.android.internal.os.ravenwood_flag_ro_1"

.field public static final blacklist FLAG_RAVENWOOD_FLAG_RO_2:Ljava/lang/String; = "com.android.internal.os.ravenwood_flag_ro_2"

.field public static final blacklist FLAG_RAVENWOOD_FLAG_RW_1:Ljava/lang/String; = "com.android.internal.os.ravenwood_flag_rw_1"

.field public static final blacklist FLAG_RAVENWOOD_FLAG_RW_2:Ljava/lang/String; = "com.android.internal.os.ravenwood_flag_rw_2"

.field public static final blacklist FLAG_ZYGOTE_EARLY_FIFO_BOOST:Ljava/lang/String; = "com.android.internal.os.zygote_early_fifo_boost"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist debugStoreEnabled()Z
    .registers 1

    .line 24
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/FeatureFlags;->debugStoreEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist preWatchdogThrottleThreadDump()Z
    .registers 1

    .line 30
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/FeatureFlags;->preWatchdogThrottleThreadDump()Z

    move-result v0

    return v0
.end method

.method public static blacklist ravenwoodFlagRo1()Z
    .registers 1

    .line 36
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/FeatureFlags;->ravenwoodFlagRo1()Z

    move-result v0

    return v0
.end method

.method public static blacklist ravenwoodFlagRo2()Z
    .registers 1

    .line 42
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/FeatureFlags;->ravenwoodFlagRo2()Z

    move-result v0

    return v0
.end method

.method public static blacklist ravenwoodFlagRw1()Z
    .registers 1

    .line 48
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/FeatureFlags;->ravenwoodFlagRw1()Z

    move-result v0

    return v0
.end method

.method public static blacklist ravenwoodFlagRw2()Z
    .registers 1

    .line 54
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/FeatureFlags;->ravenwoodFlagRw2()Z

    move-result v0

    return v0
.end method

.method public static blacklist zygoteEarlyFifoBoost()Z
    .registers 1

    .line 60
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/FeatureFlags;->zygoteEarlyFifoBoost()Z

    move-result v0

    return v0
.end method
