.class final Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;
.super Ljava/lang/Object;
.source "PerfettoTrackEventExtra.java"

# interfaces
.implements Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;
.implements Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FieldNested"
.end annotation


# instance fields
.field private final blacklist mFieldPtr:J

.field private final blacklist mPtr:J


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V
    .registers 10

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    invoke-static {}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;->native_init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;->mPtr:J

    .line 570
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;->native_get_extra_ptr(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;->mFieldPtr:J

    .line 571
    iget-wide v4, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;->mPtr:J

    invoke-static {}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;->native_delete()J

    move-result-wide v6

    move-object v3, p0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;->registerNativeAllocation(Ljava/lang/Object;JJ)V

    .line 572
    return-void
.end method

.method private static native blacklist native_add_field(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
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

.method private static native blacklist native_set_id(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist addField(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V
    .registers 6

    .line 581
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;->mPtr:J

    invoke-interface {p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;->getPtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;->native_add_field(JJ)V

    .line 582
    return-void
.end method

.method public blacklist getPtr()J
    .registers 3

    .line 576
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;->mFieldPtr:J

    return-wide v0
.end method

.method public blacklist setId(J)V
    .registers 5

    .line 585
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;->native_set_id(JJ)V

    .line 586
    return-void
.end method
