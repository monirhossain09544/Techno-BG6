.class final Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterTrack;
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
    name = "CounterTrack"
.end annotation


# instance fields
.field private final blacklist mExtraPtr:J

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPtr:J


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;JLcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V
    .registers 11

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-static {p1, p2, p3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterTrack;->native_init(Ljava/lang/String;J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterTrack;->mPtr:J

    .line 157
    iget-wide p2, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterTrack;->mPtr:J

    invoke-static {p2, p3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterTrack;->native_get_extra_ptr(J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterTrack;->mExtraPtr:J

    .line 158
    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterTrack;->mName:Ljava/lang/String;

    .line 159
    iget-wide v2, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterTrack;->mPtr:J

    invoke-static {}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterTrack;->native_delete()J

    move-result-wide v4

    move-object v1, p0

    move-object v0, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;->registerNativeAllocation(Ljava/lang/Object;JJ)V

    .line 160
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

.method private static native blacklist native_init(Ljava/lang/String;J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterTrack;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPtr()J
    .registers 3

    .line 164
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterTrack;->mExtraPtr:J

    return-wide v0
.end method
