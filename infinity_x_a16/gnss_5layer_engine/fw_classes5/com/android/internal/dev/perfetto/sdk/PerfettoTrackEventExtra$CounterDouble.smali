.class final Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;
.super Ljava/lang/Object;
.source "PerfettoTrackEventExtra.java"

# interfaces
.implements Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CounterDouble"
.end annotation


# instance fields
.field private final blacklist mExtraPtr:J

.field private final blacklist mPtr:J


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V
    .registers 10

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    invoke-static {}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;->native_init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;->mPtr:J

    .line 219
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;->native_get_extra_ptr(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;->mExtraPtr:J

    .line 220
    iget-wide v4, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;->mPtr:J

    invoke-static {}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;->native_delete()J

    move-result-wide v6

    move-object v3, p0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;->registerNativeAllocation(Ljava/lang/Object;JJ)V

    .line 221
    return-void
.end method

.method private static native blacklist native_delete()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_get_extra_ptr(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_init()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_set_value(JD)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getPtr()J
    .registers 3

    .line 225
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;->mExtraPtr:J

    return-wide v0
.end method

.method public blacklist setValue(D)V
    .registers 5

    .line 229
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;->native_set_value(JD)V

    .line 230
    return-void
.end method
