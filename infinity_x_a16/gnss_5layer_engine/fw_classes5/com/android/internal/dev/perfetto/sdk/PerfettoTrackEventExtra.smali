.class final Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;
.super Ljava/lang/Object;
.source "PerfettoTrackEventExtra.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;,
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;,
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldString;,
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldDouble;,
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldInt64;,
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;,
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgString;,
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgDouble;,
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgBool;,
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgInt64;,
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;,
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterInt64;,
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterTrack;,
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$NamedTrack;,
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;,
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldContainer;
    }
.end annotation


# static fields
.field private static final blacklist sNamedTrackId:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final blacklist mPtr:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsNamedTrackId()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    sget-object v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;->sNamedTrackId:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;->sNamedTrackId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V
    .registers 10

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;->native_init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;->mPtr:J

    .line 35
    iget-wide v4, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;->mPtr:J

    invoke-static {}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;->native_delete()J

    move-result-wide v6

    move-object v3, p0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;->registerNativeAllocation(Ljava/lang/Object;JJ)V

    .line 36
    return-void
.end method

.method private static native blacklist native_add_arg(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_clear_args(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_delete()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native blacklist native_emit(IJLjava/lang/String;J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_init()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist addPerfettoPointer(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V
    .registers 6

    .line 45
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;->mPtr:J

    invoke-interface {p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;->getPtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;->native_add_arg(JJ)V

    .line 46
    return-void
.end method

.method public blacklist getPtr()J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;->mPtr:J

    return-wide v0
.end method

.method public blacklist reset()V
    .registers 3

    .line 50
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;->native_clear_args(J)V

    .line 51
    return-void
.end method
