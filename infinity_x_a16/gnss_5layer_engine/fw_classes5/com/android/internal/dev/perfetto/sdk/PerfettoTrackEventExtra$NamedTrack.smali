.class final Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$NamedTrack;
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
    name = "NamedTrack"
.end annotation


# instance fields
.field private final blacklist mExtraPtr:J

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPtr:J


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;JLcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V
    .registers 11

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-static {}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;->-$$Nest$sfgetsNamedTrackId()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$NamedTrack;->native_init(JLjava/lang/String;J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$NamedTrack;->mPtr:J

    .line 126
    iget-wide p2, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$NamedTrack;->mPtr:J

    invoke-static {p2, p3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$NamedTrack;->native_get_extra_ptr(J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$NamedTrack;->mExtraPtr:J

    .line 127
    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$NamedTrack;->mName:Ljava/lang/String;

    .line 128
    iget-wide v2, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$NamedTrack;->mPtr:J

    invoke-static {}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$NamedTrack;->native_delete()J

    move-result-wide v4

    move-object v1, p0

    move-object v0, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;->registerNativeAllocation(Ljava/lang/Object;JJ)V

    .line 129
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

.method private static native blacklist native_init(JLjava/lang/String;J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$NamedTrack;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPtr()J
    .registers 3

    .line 133
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$NamedTrack;->mExtraPtr:J

    return-wide v0
.end method
