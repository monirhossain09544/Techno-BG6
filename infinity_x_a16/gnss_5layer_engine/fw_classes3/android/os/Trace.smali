.class public final Landroid/os/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# static fields
.field public static final greylist-max-o MAX_SECTION_NAME_LEN:I = 0x7f

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Trace"

.field public static final greylist-max-o TRACE_TAG_ACTIVITY_MANAGER:J = 0x40L

.field public static final greylist-max-o TRACE_TAG_ADB:J = 0x400000L

.field public static final whitelist TRACE_TAG_AIDL:J = 0x1000000L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o TRACE_TAG_ALWAYS:J = 0x1L

.field public static final greylist TRACE_TAG_APP:J = 0x1000L

.field public static final greylist-max-o TRACE_TAG_AUDIO:J = 0x100L

.field public static final greylist-max-o TRACE_TAG_BIONIC:J = 0x10000L

.field public static final greylist-max-o TRACE_TAG_CAMERA:J = 0x400L

.field public static final greylist-max-o TRACE_TAG_DALVIK:J = 0x4000L

.field public static final greylist-max-o TRACE_TAG_DATABASE:J = 0x100000L

.field public static final greylist-max-o TRACE_TAG_GRAPHICS:J = 0x2L

.field public static final greylist-max-o TRACE_TAG_HAL:J = 0x800L

.field public static final greylist-max-o TRACE_TAG_INPUT:J = 0x4L

.field public static final greylist-max-o TRACE_TAG_NETWORK:J = 0x200000L
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o TRACE_TAG_NEVER:J = 0x0L

.field public static final blacklist TRACE_TAG_NNAPI:J = 0x2000000L

.field private static final greylist-max-o TRACE_TAG_NOT_READY:J = -0x8000000000000000L

.field public static final greylist-max-o TRACE_TAG_PACKAGE_MANAGER:J = 0x40000L

.field public static final greylist-max-o TRACE_TAG_POWER:J = 0x20000L

.field public static final greylist-max-o TRACE_TAG_RESOURCES:J = 0x2000L

.field public static final blacklist TRACE_TAG_RRO:J = 0x4000000L

.field public static final greylist-max-o TRACE_TAG_RS:J = 0x8000L

.field public static final greylist-max-o TRACE_TAG_SYNC_MANAGER:J = 0x80L

.field public static final greylist-max-o TRACE_TAG_SYSTEM_SERVER:J = 0x80000L

.field public static final blacklist TRACE_TAG_THERMAL:J = 0x8000000L

.field public static final greylist-max-o TRACE_TAG_VIBRATOR:J = 0x800000L

.field public static final greylist-max-o TRACE_TAG_VIDEO:J = 0x200L

.field public static final greylist-max-r TRACE_TAG_VIEW:J = 0x8L

.field public static final greylist-max-o TRACE_TAG_WEBVIEW:J = 0x10L

.field public static final greylist-max-o TRACE_TAG_WINDOW_MANAGER:J = 0x20L

.field private static volatile greylist sEnabledTags:J

.field private static greylist-max-o sZygoteDebugFlags:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 122
    const-wide/high16 v0, -0x8000000000000000L

    sput-wide v0, Landroid/os/Trace;->sEnabledTags:J

    .line 124
    const/4 v0, 0x0

    sput v0, Landroid/os/Trace;->sZygoteDebugFlags:I

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method

.method public static greylist asyncTraceBegin(JLjava/lang/String;I)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 282
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 283
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->nativeAsyncTraceBegin(JLjava/lang/String;I)V

    .line 285
    :cond_9
    return-void
.end method

.method public static greylist asyncTraceEnd(JLjava/lang/String;I)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 304
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 305
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->nativeAsyncTraceEnd(JLjava/lang/String;I)V

    .line 307
    :cond_9
    return-void
.end method

.method public static blacklist asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 386
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 387
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Trace;->nativeAsyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 389
    :cond_9
    return-void
.end method

.method public static blacklist asyncTraceForTrackBegin(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 411
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1, p0, p1, p2}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 412
    return-void
.end method

.method public static blacklist asyncTraceForTrackEnd(JLjava/lang/String;I)V
    .registers 5

    .line 433
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 434
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->nativeAsyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 436
    :cond_9
    return-void
.end method

.method public static blacklist asyncTraceForTrackEnd(Ljava/lang/String;I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 456
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 457
    return-void
.end method

.method public static whitelist beginAsyncSection(Ljava/lang/String;I)V
    .registers 4

    .line 544
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 545
    return-void
.end method

.method public static whitelist beginSection(Ljava/lang/String;)V
    .registers 5

    .line 512
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 513
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_14

    .line 516
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->nativeTraceBegin(JLjava/lang/String;)V

    goto :goto_1d

    .line 514
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "sectionName is too long"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 518
    :cond_1d
    :goto_1d
    return-void
.end method

.method public static whitelist endAsyncSection(Ljava/lang/String;I)V
    .registers 4

    .line 556
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 557
    return-void
.end method

.method public static whitelist endSection()V
    .registers 3

    .line 528
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 529
    invoke-static {v0, v1}, Landroid/os/Trace;->nativeTraceEnd(J)V

    .line 531
    :cond_b
    return-void
.end method

.method public static blacklist instant(JLjava/lang/String;)V
    .registers 4

    .line 467
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 468
    invoke-static {p0, p1, p2}, Landroid/os/Trace;->nativeInstant(JLjava/lang/String;)V

    .line 470
    :cond_9
    return-void
.end method

.method public static blacklist instantForTrack(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 481
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 482
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->nativeInstantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_9
    return-void
.end method

.method public static whitelist isEnabled()Z
    .registers 2

    .line 496
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static greylist isTagEnabled(J)Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 183
    const/4 p0, 0x0

    return p0
.end method

.method private static native greylist-max-o nativeAsyncTraceBegin(JLjava/lang/String;I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeAsyncTraceEnd(JLjava/lang/String;I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeAsyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeAsyncTraceForTrackEnd(JLjava/lang/String;I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeInstant(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeInstantForTrack(JLjava/lang/String;Ljava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist nativeIsTagEnabled(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static blacklist nativeIsTagEnabled$ravenwood(J)Z
    .registers 2

    .line 137
    const/4 p0, 0x0

    return p0
.end method

.method private static native greylist-max-o nativeSetAppTracingAllowed(Z)V
.end method

.method private static blacklist nativeSetAppTracingAllowed$ravenwood(Z)V
    .registers 1

    .line 142
    return-void
.end method

.method private static native greylist-max-o nativeSetTracingEnabled(Z)V
.end method

.method private static blacklist nativeSetTracingEnabled$ravenwood(Z)V
    .registers 1

    .line 146
    return-void
.end method

.method private static native greylist-max-o nativeTraceBegin(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeTraceCounter(JLjava/lang/String;J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeTraceEnd(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static blacklist registerWithPerfetto()V
    .registers 1

    .line 591
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/PerfettoTrace;->register(Z)V

    .line 592
    invoke-static {}, Landroid/os/PerfettoTrace;->registerCategories()V

    .line 593
    return-void
.end method

.method public static greylist setAppTracingAllowed(Z)V
    .registers 1

    .line 213
    invoke-static {p0}, Landroid/os/Trace;->nativeSetAppTracingAllowed(Z)V

    .line 214
    return-void
.end method

.method public static blacklist setCounter(JLjava/lang/String;J)V
    .registers 6

    .line 578
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 579
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Trace;->nativeTraceCounter(JLjava/lang/String;J)V

    .line 581
    :cond_9
    return-void
.end method

.method public static whitelist setCounter(Ljava/lang/String;J)V
    .registers 5

    .line 566
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1, p0, p1, p2}, Landroid/os/Trace;->setCounter(JLjava/lang/String;J)V

    .line 567
    return-void
.end method

.method public static greylist-max-o setTracingEnabled(ZI)V
    .registers 2

    .line 221
    invoke-static {p0}, Landroid/os/Trace;->nativeSetTracingEnabled(Z)V

    .line 222
    sput p1, Landroid/os/Trace;->sZygoteDebugFlags:I

    .line 223
    return-void
.end method

.method public static greylist traceBegin(JLjava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 238
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 239
    invoke-static {p0, p1, p2}, Landroid/os/Trace;->nativeTraceBegin(JLjava/lang/String;)V

    .line 241
    :cond_9
    return-void
.end method

.method public static greylist traceCounter(JLjava/lang/String;I)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 198
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 199
    int-to-long v0, p3

    invoke-static {p0, p1, p2, v0, v1}, Landroid/os/Trace;->nativeTraceCounter(JLjava/lang/String;J)V

    .line 201
    :cond_a
    return-void
.end method

.method public static greylist traceEnd(J)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 254
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 255
    invoke-static {p0, p1}, Landroid/os/Trace;->nativeTraceEnd(J)V

    .line 257
    :cond_9
    return-void
.end method
