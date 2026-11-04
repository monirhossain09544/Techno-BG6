.class final Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgBool;
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
    name = "ArgBool"
.end annotation


# instance fields
.field private final blacklist mExtraPtr:J

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPtr:J


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V
    .registers 11

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    invoke-static {p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgBool;->native_init(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgBool;->mPtr:J

    .line 298
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgBool;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgBool;->native_get_extra_ptr(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgBool;->mExtraPtr:J

    .line 299
    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgBool;->mName:Ljava/lang/String;

    .line 300
    iget-wide v4, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgBool;->mPtr:J

    invoke-static {}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgBool;->native_delete()J

    move-result-wide v6

    move-object v3, p0

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;->registerNativeAllocation(Ljava/lang/Object;JJ)V

    .line 301
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

.method private static native blacklist native_set_value(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgBool;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPtr()J
    .registers 3

    .line 305
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgBool;->mExtraPtr:J

    return-wide v0
.end method

.method public blacklist setValue(Z)V
    .registers 4

    .line 313
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgBool;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgBool;->native_set_value(JZ)V

    .line 314
    return-void
.end method
