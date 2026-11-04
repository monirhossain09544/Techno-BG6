.class final Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;
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
    name = "Proto"
.end annotation


# instance fields
.field private final blacklist mExtraPtr:J

.field private final blacklist mPtr:J


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V
    .registers 10

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    invoke-static {}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;->native_init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;->mPtr:J

    .line 422
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;->native_get_extra_ptr(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;->mExtraPtr:J

    .line 423
    iget-wide v4, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;->mPtr:J

    invoke-static {}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;->native_delete()J

    move-result-wide v6

    move-object v3, p0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;->registerNativeAllocation(Ljava/lang/Object;JJ)V

    .line 424
    return-void
.end method

.method private static native blacklist native_add_field(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_clear_fields(J)V
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


# virtual methods
.method public blacklist addField(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V
    .registers 6

    .line 433
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;->mPtr:J

    invoke-interface {p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;->getPtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;->native_add_field(JJ)V

    .line 434
    return-void
.end method

.method public blacklist clearFields()V
    .registers 3

    .line 437
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;->native_clear_fields(J)V

    .line 438
    return-void
.end method

.method public blacklist getPtr()J
    .registers 3

    .line 428
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;->mExtraPtr:J

    return-wide v0
.end method
