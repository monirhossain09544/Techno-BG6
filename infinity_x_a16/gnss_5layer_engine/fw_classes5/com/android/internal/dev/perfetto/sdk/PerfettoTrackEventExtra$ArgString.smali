.class final Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgString;
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
    name = "ArgString"
.end annotation


# instance fields
.field private final blacklist mExtraPtr:J

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPtr:J


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V
    .registers 11

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    invoke-static {p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgString;->native_init(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgString;->mPtr:J

    .line 382
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgString;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgString;->native_get_extra_ptr(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgString;->mExtraPtr:J

    .line 383
    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgString;->mName:Ljava/lang/String;

    .line 384
    iget-wide v4, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgString;->mPtr:J

    invoke-static {}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgString;->native_delete()J

    move-result-wide v6

    move-object v3, p0

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;->registerNativeAllocation(Ljava/lang/Object;JJ)V

    .line 385
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

.method private static native blacklist native_init(Ljava/lang/String;)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_set_value(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 393
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgString;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPtr()J
    .registers 3

    .line 389
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgString;->mExtraPtr:J

    return-wide v0
.end method

.method public blacklist setValue(Ljava/lang/String;)V
    .registers 4

    .line 397
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgString;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgString;->native_set_value(JLjava/lang/String;)V

    .line 398
    return-void
.end method
