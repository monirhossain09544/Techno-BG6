.class public final Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/tracing/FeatureFlags; = null

.field public static final blacklist FLAG_IMETRACKER_PROTOLOG:Ljava/lang/String; = "android.tracing.imetracker_protolog"

.field public static final blacklist FLAG_NATIVE_PROTO_LOGGING:Ljava/lang/String; = "android.tracing.native_proto_logging"

.field public static final blacklist FLAG_PERFETTO_WM_DUMP_CTS:Ljava/lang/String; = "android.tracing.perfetto_wm_dump_cts"

.field public static final blacklist FLAG_PERFETTO_WM_TRACING:Ljava/lang/String; = "android.tracing.perfetto_wm_tracing"

.field public static final blacklist FLAG_PROTOLOG_AUTO_CLEAR_INCREMENTAL_STATE:Ljava/lang/String; = "android.tracing.protolog_auto_clear_incremental_state"

.field public static final blacklist FLAG_SYSUI_LARGE_PERFETTO_SHMEM_BUFFER:Ljava/lang/String; = "android.tracing.sysui_large_perfetto_shmem_buffer"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/tracing/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist imetrackerProtolog()Z
    .registers 1

    .line 22
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/tracing/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/FeatureFlags;->imetrackerProtolog()Z

    move-result v0

    return v0
.end method

.method public static blacklist nativeProtoLogging()Z
    .registers 1

    .line 28
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/tracing/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/FeatureFlags;->nativeProtoLogging()Z

    move-result v0

    return v0
.end method

.method public static blacklist perfettoWmDumpCts()Z
    .registers 1

    .line 34
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/tracing/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/FeatureFlags;->perfettoWmDumpCts()Z

    move-result v0

    return v0
.end method

.method public static blacklist perfettoWmTracing()Z
    .registers 1

    .line 40
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/tracing/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/FeatureFlags;->perfettoWmTracing()Z

    move-result v0

    return v0
.end method

.method public static blacklist protologAutoClearIncrementalState()Z
    .registers 1

    .line 46
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/tracing/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/FeatureFlags;->protologAutoClearIncrementalState()Z

    move-result v0

    return v0
.end method

.method public static blacklist sysuiLargePerfettoShmemBuffer()Z
    .registers 1

    .line 52
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/tracing/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/FeatureFlags;->sysuiLargePerfettoShmemBuffer()Z

    move-result v0

    return v0
.end method
