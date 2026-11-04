.class public final Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;
.super Ljava/lang/Object;
.source "PerfettoTrace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;,
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Session;
    }
.end annotation


# static fields
.field private static final blacklist PERFETTO_TE_TYPE_COUNTER:I = 0x4

.field private static final blacklist PERFETTO_TE_TYPE_INSTANT:I = 0x3

.field private static final blacklist PERFETTO_TE_TYPE_SLICE_BEGIN:I = 0x1

.field private static final blacklist PERFETTO_TE_TYPE_SLICE_END:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "PerfettoTrace"

.field private static final blacklist sFlowEventId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static blacklist sIsDebug:Z

.field private static final blacklist sNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsNativeMemoryCleaner()Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;
    .registers 1

    sget-object v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->sNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_start_session(Z[B)J
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->native_start_session(Z[B)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_stop_session(J)[B
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->native_stop_session(J)[B

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->sIsDebug:Z

    .line 43
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    invoke-direct {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;-><init>()V

    sput-object v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->sNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->sFlowEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist activateTrigger(Ljava/lang/String;I)V
    .registers 2

    .line 288
    invoke-static {p0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->native_activate_trigger(Ljava/lang/String;I)V

    .line 289
    return-void
.end method

.method public static blacklist begin(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;Ljava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 4

    .line 208
    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->sIsDebug:Z

    invoke-static {v0, p0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->newEvent(ILcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;Z)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p0

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->setEventName(Ljava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p0

    .line 208
    return-object p0
.end method

.method public static blacklist counter(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;D)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 5

    .line 250
    const/4 v0, 0x4

    sget-boolean v1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->sIsDebug:Z

    invoke-static {v0, p0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->newEvent(ILcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;Z)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p0

    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->setCounter(D)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p0

    .line 250
    return-object p0
.end method

.method public static blacklist counter(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;DLjava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 4

    .line 263
    invoke-static {p0, p1, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->counter(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;D)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->usingProcessCounterTrack(Ljava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist counter(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;J)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 5

    .line 228
    const/4 v0, 0x4

    sget-boolean v1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->sIsDebug:Z

    invoke-static {v0, p0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->newEvent(ILcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;Z)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p0

    .line 229
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->setCounter(J)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p0

    .line 228
    return-object p0
.end method

.method public static blacklist counter(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;JLjava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 4

    .line 240
    invoke-static {p0, p1, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->counter(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;J)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->usingProcessCounterTrack(Ljava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist end(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 3

    .line 218
    const/4 v0, 0x2

    sget-boolean v1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->sIsDebug:Z

    invoke-static {v0, p0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->newEvent(ILcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;Z)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getFlowId()I
    .registers 1

    .line 268
    sget-object v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->sFlowEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public static blacklist getGlobalTrackUuid()J
    .registers 2

    .line 273
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static blacklist getProcessTrackUuid()J
    .registers 2

    .line 278
    invoke-static {}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->native_get_process_track_uuid()J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getThreadTrackUuid(J)J
    .registers 2

    .line 283
    invoke-static {p0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->native_get_thread_track_uuid(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist instant(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;Ljava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 4

    .line 197
    const/4 v0, 0x3

    sget-boolean v1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->sIsDebug:Z

    invoke-static {v0, p0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->newEvent(ILcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;Z)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p0

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->setEventName(Ljava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p0

    .line 197
    return-object p0
.end method

.method private static native blacklist native_activate_trigger(Ljava/lang/String;I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_get_process_track_uuid()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_get_thread_track_uuid(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_register(Z)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_start_session(Z[B)J
.end method

.method private static native blacklist native_stop_session(J)[B
.end method

.method public static blacklist register(Z)V
    .registers 1

    .line 293
    invoke-static {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->native_register(Z)V

    .line 294
    return-void
.end method

.method public static blacklist registerWithDebugChecks(Z)V
    .registers 2

    .line 298
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->sIsDebug:Z

    .line 299
    invoke-static {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->register(Z)V

    .line 300
    return-void
.end method
