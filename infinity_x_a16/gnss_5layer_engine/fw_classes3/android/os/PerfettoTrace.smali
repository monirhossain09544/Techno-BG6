.class public final Landroid/os/PerfettoTrace;
.super Ljava/lang/Object;
.source "PerfettoTrace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PerfettoTrace$Category;,
        Landroid/os/PerfettoTrace$Session;
    }
.end annotation


# static fields
.field private static final blacklist IS_FLAG_ENABLED:Z

.field public static final blacklist IS_USE_SDK_TRACING_API_V3:Z

.field public static final blacklist MQ_CATEGORY:Landroid/os/PerfettoTrace$Category;

.field public static final blacklist MQ_CATEGORY_V3:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;

.field private static final blacklist PERFETTO_TE_TYPE_COUNTER:I = 0x4

.field private static final blacklist PERFETTO_TE_TYPE_INSTANT:I = 0x3

.field private static final blacklist PERFETTO_TE_TYPE_SLICE_BEGIN:I = 0x1

.field private static final blacklist PERFETTO_TE_TYPE_SLICE_END:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "PerfettoTrace"

.field private static final blacklist sAttemptedSystemRegistration:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final blacklist sFlowEventId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetIS_FLAG_ENABLED()Z
    .registers 1

    sget-boolean v0, Landroid/os/PerfettoTrace;->IS_FLAG_ENABLED:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_start_session(Z[B)J
    .registers 2

    invoke-static {p0, p1}, Landroid/os/PerfettoTrace;->native_start_session(Z[B)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_stop_session(J)[B
    .registers 2

    invoke-static {p0, p1}, Landroid/os/PerfettoTrace;->native_stop_session(J)[B

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 52
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->perfettoSdkTracingV2()Z

    move-result v0

    sput-boolean v0, Landroid/os/PerfettoTrace;->IS_FLAG_ENABLED:Z

    .line 56
    sget-boolean v0, Landroid/os/PerfettoTrace;->IS_FLAG_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 57
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->perfettoSdkTracingV3()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    sput-boolean v0, Landroid/os/PerfettoTrace;->IS_USE_SDK_TRACING_API_V3:Z

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/os/PerfettoTrace;->sAttemptedSystemRegistration:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/os/PerfettoTrace;->sFlowEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    new-instance v0, Landroid/os/PerfettoTrace$Category;

    const-string v1, "mq"

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrace$Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/PerfettoTrace;->MQ_CATEGORY:Landroid/os/PerfettoTrace$Category;

    .line 70
    invoke-static {}, Landroid/os/PerfettoTrace;->getMqCategoryV3()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;

    move-result-object v0

    sput-object v0, Landroid/os/PerfettoTrace;->MQ_CATEGORY_V3:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist activateTrigger(Ljava/lang/String;I)V
    .registers 3

    .line 389
    sget-boolean v0, Landroid/os/PerfettoTrace;->IS_FLAG_ENABLED:Z

    if-nez v0, :cond_5

    .line 390
    return-void

    .line 392
    :cond_5
    invoke-static {p0, p1}, Landroid/os/PerfettoTrace;->native_activate_trigger(Ljava/lang/String;I)V

    .line 393
    return-void
.end method

.method public static blacklist begin(Landroid/os/PerfettoTrace$Category;Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 4

    .line 288
    invoke-virtual {p0}, Landroid/os/PerfettoTrace$Category;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->builder(Z)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 289
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->init(ILandroid/os/PerfettoTrace$Category;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    .line 290
    invoke-virtual {p0, p1}, Landroid/os/PerfettoTrackEventExtra$Builder;->setEventName(Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    .line 288
    return-object p0
.end method

.method public static blacklist counter(Landroid/os/PerfettoTrace$Category;D)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 5

    .line 334
    invoke-virtual {p0}, Landroid/os/PerfettoTrace$Category;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->builder(Z)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 335
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->init(ILandroid/os/PerfettoTrace$Category;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    .line 336
    invoke-virtual {p0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$Builder;->setCounter(D)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    .line 334
    return-object p0
.end method

.method public static blacklist counter(Landroid/os/PerfettoTrace$Category;DLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 4

    .line 348
    invoke-static {p0, p1, p2}, Landroid/os/PerfettoTrace;->counter(Landroid/os/PerfettoTrace$Category;D)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingProcessCounterTrack(Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist counter(Landroid/os/PerfettoTrace$Category;J)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 5

    .line 310
    invoke-virtual {p0}, Landroid/os/PerfettoTrace$Category;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->builder(Z)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 311
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->init(ILandroid/os/PerfettoTrace$Category;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    .line 312
    invoke-virtual {p0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$Builder;->setCounter(J)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    .line 310
    return-object p0
.end method

.method public static blacklist counter(Landroid/os/PerfettoTrace$Category;JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 4

    .line 324
    invoke-static {p0, p1, p2}, Landroid/os/PerfettoTrace;->counter(Landroid/os/PerfettoTrace$Category;J)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingProcessCounterTrack(Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist end(Landroid/os/PerfettoTrace$Category;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 3

    .line 299
    invoke-virtual {p0}, Landroid/os/PerfettoTrace$Category;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->builder(Z)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 300
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->init(ILandroid/os/PerfettoTrace$Category;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    .line 299
    return-object p0
.end method

.method public static blacklist getAttempedSystemRegistration()Z
    .registers 1

    .line 424
    sget-object v0, Landroid/os/PerfettoTrace;->sAttemptedSystemRegistration:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static blacklist getFlowId()I
    .registers 1

    .line 355
    sget-object v0, Landroid/os/PerfettoTrace;->sFlowEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public static blacklist getGlobalTrackUuid()J
    .registers 2

    .line 362
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static blacklist getMqCategoryV3()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;
    .registers 2

    .line 75
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;

    const-string v1, "mq"

    invoke-direct {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist getProcessTrackUuid()J
    .registers 2

    .line 369
    sget-boolean v0, Landroid/os/PerfettoTrace;->IS_FLAG_ENABLED:Z

    if-nez v0, :cond_7

    .line 370
    const-wide/16 v0, 0x0

    return-wide v0

    .line 372
    :cond_7
    invoke-static {}, Landroid/os/PerfettoTrace;->native_get_process_track_uuid()J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getThreadTrackUuid(J)J
    .registers 3

    .line 379
    sget-boolean v0, Landroid/os/PerfettoTrace;->IS_FLAG_ENABLED:Z

    if-nez v0, :cond_7

    .line 380
    const-wide/16 p0, 0x0

    return-wide p0

    .line 382
    :cond_7
    invoke-static {p0, p1}, Landroid/os/PerfettoTrace;->native_get_thread_track_uuid(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist instant(Landroid/os/PerfettoTrace$Category;Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 4

    .line 276
    invoke-virtual {p0}, Landroid/os/PerfettoTrace$Category;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->builder(Z)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 277
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->init(ILandroid/os/PerfettoTrace$Category;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    .line 278
    invoke-virtual {p0, p1}, Landroid/os/PerfettoTrackEventExtra$Builder;->setEventName(Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    .line 276
    return-object p0
.end method

.method public static blacklist isMQCategoryEnabled()Z
    .registers 1

    .line 85
    sget-boolean v0, Landroid/os/PerfettoTrace;->IS_USE_SDK_TRACING_API_V3:Z

    if-eqz v0, :cond_b

    .line 86
    sget-object v0, Landroid/os/PerfettoTrace;->MQ_CATEGORY_V3:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;

    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->isEnabled()Z

    move-result v0

    return v0

    .line 88
    :cond_b
    sget-object v0, Landroid/os/PerfettoTrace;->MQ_CATEGORY:Landroid/os/PerfettoTrace$Category;

    invoke-virtual {v0}, Landroid/os/PerfettoTrace$Category;->isEnabled()Z

    move-result v0

    return v0
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

.method private static blacklist native_stop_session$ravenwood(J)[B
    .registers 2

    .line 266
    const/4 p0, 0x1

    new-array p0, p0, [B

    return-object p0
.end method

.method public static blacklist register(Z)V
    .registers 3

    .line 398
    if-nez p0, :cond_8

    .line 399
    sget-object v0, Landroid/os/PerfettoTrace;->sAttemptedSystemRegistration:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 401
    :cond_8
    sget-boolean v0, Landroid/os/PerfettoTrace;->IS_USE_SDK_TRACING_API_V3:Z

    if-eqz v0, :cond_10

    .line 402
    invoke-static {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->register(Z)V

    goto :goto_13

    .line 404
    :cond_10
    invoke-static {p0}, Landroid/os/PerfettoTrace;->native_register(Z)V

    .line 406
    :goto_13
    return-void
.end method

.method public static blacklist registerCategories()V
    .registers 1

    .line 411
    sget-boolean v0, Landroid/os/PerfettoTrace;->IS_USE_SDK_TRACING_API_V3:Z

    if-eqz v0, :cond_a

    .line 412
    sget-object v0, Landroid/os/PerfettoTrace;->MQ_CATEGORY_V3:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;

    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->register()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;

    goto :goto_f

    .line 414
    :cond_a
    sget-object v0, Landroid/os/PerfettoTrace;->MQ_CATEGORY:Landroid/os/PerfettoTrace$Category;

    invoke-virtual {v0}, Landroid/os/PerfettoTrace$Category;->register()Landroid/os/PerfettoTrace$Category;

    .line 416
    :goto_f
    return-void
.end method
