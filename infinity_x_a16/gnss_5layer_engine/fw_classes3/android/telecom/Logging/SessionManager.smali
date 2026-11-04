.class public Landroid/telecom/Logging/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/SessionManager$ICurrentThreadId;,
        Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;,
        Landroid/telecom/Logging/SessionManager$ISessionListener;,
        Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_SESSION_TIMEOUT_MS:J = 0x7530L

.field private static final blacklist LOGGING_TAG:Ljava/lang/String; = "Logging"

.field private static final blacklist SESSION_ID_ROLLOVER_THRESHOLD:J = 0x40000L

.field private static final blacklist TIMEOUTS_PREFIX:Ljava/lang/String; = "telecom."


# instance fields
.field private final blacklist mCleanStaleSessions:Ljava/lang/Runnable;

.field private blacklist mContext:Landroid/content/Context;

.field public blacklist mCurrentThreadId:Landroid/telecom/Logging/SessionManager$ICurrentThreadId;

.field private final blacklist mSessionCleanupHandler:Landroid/os/Handler;

.field private blacklist mSessionCleanupTimeoutMs:Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;

.field private final blacklist mSessionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Logging/SessionManager$ISessionListener;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telecom/Logging/Session;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist sCodeEntryCounter:I


# direct methods
.method public static synthetic blacklist $r8$lambda$ShRbsmqP5ukuHE4CQ22dtsB1994(Landroid/telecom/Logging/SessionManager;)J
    .registers 3

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->lambda$new$0()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic blacklist $r8$lambda$qM999J409cPNGRVH-qVvIoe3kAo(Landroid/telecom/Logging/SessionManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->lambda$new$1()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCurrentThreadId:Landroid/telecom/Logging/SessionManager$ICurrentThreadId;

    .line 80
    new-instance v0, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/Logging/SessionManager;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupTimeoutMs:Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    .line 110
    new-instance v0, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/Logging/SessionManager;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    .line 111
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Runnable;)V
    .registers 4

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCurrentThreadId:Landroid/telecom/Logging/SessionManager$ICurrentThreadId;

    .line 80
    new-instance v0, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/Logging/SessionManager;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupTimeoutMs:Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    .line 115
    iput-object p1, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    .line 116
    return-void
.end method

.method private blacklist cleanupSessionTreeAndNotify(Landroid/telecom/Logging/Session;)V
    .registers 8

    .line 356
    if-nez p1, :cond_3

    return-void

    .line 357
    :cond_3
    nop

    .line 360
    :goto_4
    if-eqz p1, :cond_72

    .line 361
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->isSessionCompleted()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getChildSessions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_71

    .line 365
    :cond_17
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    .line 366
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/telecom/Logging/Session;->setParentSession(Landroid/telecom/Logging/Session;)V

    .line 371
    const/4 v1, 0x0

    if-nez v0, :cond_28

    .line 372
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_28
    if-eqz v0, :cond_32

    .line 373
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_30
    const/4 v2, 0x1

    goto :goto_33

    :cond_32
    move v2, v1

    .line 374
    :goto_33
    if-eqz v0, :cond_38

    invoke-virtual {v0, p1}, Landroid/telecom/Logging/Session;->removeChild(Landroid/telecom/Logging/Session;)V

    .line 375
    :cond_38
    if-eqz v2, :cond_6e

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 377
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getExecutionStartTimeMilliseconds()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "END_SESSION (dur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "Logging"

    invoke-static {v5, v4, v1}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v3}, Landroid/telecom/Logging/SessionManager;->notifySessionCompleteListeners(Ljava/lang/String;J)V

    .line 382
    :cond_6e
    nop

    .line 383
    move-object p1, v0

    goto :goto_4

    .line 363
    :cond_71
    :goto_71
    return-void

    .line 384
    :cond_72
    return-void
.end method

.method private blacklist getBase64Encoding(I)Ljava/lang/String;
    .registers 4

    .line 419
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 420
    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 421
    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getCallingThreadId()I
    .registers 2

    .line 425
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCurrentThreadId:Landroid/telecom/Logging/SessionManager$ICurrentThreadId;

    invoke-interface {v0}, Landroid/telecom/Logging/SessionManager$ICurrentThreadId;->get()I

    move-result v0

    return v0
.end method

.method private blacklist getCleanupTimeout(Landroid/content/Context;)J
    .registers 6

    .line 464
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 465
    nop

    .line 467
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    .line 465
    const-string/jumbo v1, "telecom.stale_session_cleanup_timeout_millis"

    const-wide/16 v2, 0x7530

    invoke-static {p1, v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized blacklist getNextSessionID()Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 406
    :try_start_1
    iget v0, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x40000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_24

    .line 408
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->restartSessionCounter()V

    .line 409
    iget v0, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 411
    :cond_24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telecom/Logging/SessionManager;->getBase64Encoding(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    monitor-exit p0

    return-object v0

    .line 405
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private blacklist getSessionCleanupTimeoutMs()J
    .registers 3

    .line 119
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupTimeoutMs:Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;

    invoke-interface {v0}, Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private synthetic blacklist lambda$new$0()J
    .registers 3

    .line 83
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 84
    const-wide/16 v0, 0x7530

    return-wide v0

    .line 86
    :cond_7
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/telecom/Logging/SessionManager;->getCleanupTimeout(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method private synthetic blacklist lambda$new$1()V
    .registers 3

    .line 110
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getSessionCleanupTimeoutMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telecom/Logging/SessionManager;->cleanupStaleSessions(J)V

    return-void
.end method

.method private blacklist notifySessionCompleteListeners(Ljava/lang/String;J)V
    .registers 7

    .line 387
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    monitor-enter v0

    .line 388
    :try_start_3
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/SessionManager$ISessionListener;

    .line 389
    invoke-interface {v2, p1, p2, p3}, Landroid/telecom/Logging/SessionManager$ISessionListener;->sessionComplete(Ljava/lang/String;J)V

    .line 390
    goto :goto_9

    .line 391
    :cond_19
    monitor-exit v0

    .line 392
    return-void

    .line 391
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method private blacklist resetStaleSessionTimer()V
    .registers 6

    .line 124
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    if-nez v0, :cond_5

    return-void

    .line 125
    :cond_5
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    monitor-enter v0

    .line 126
    :try_start_8
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 127
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    .line 128
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getSessionCleanupTimeoutMs()J

    move-result-wide v3

    .line 127
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    :cond_1d
    monitor-exit v0

    .line 131
    return-void

    .line 130
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private declared-synchronized blacklist restartSessionCounter()V
    .registers 2

    monitor-enter p0

    .line 415
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 416
    monitor-exit p0

    return-void

    .line 414
    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method


# virtual methods
.method public declared-synchronized blacklist cancelSubsession(Landroid/telecom/Logging/Session;)V
    .registers 4

    monitor-enter p0

    .line 280
    if-nez p1, :cond_5

    .line 281
    monitor-exit p0

    return-void

    .line 284
    :cond_5
    const-wide/16 v0, -0x1

    :try_start_7
    invoke-virtual {p1, v0, v1}, Landroid/telecom/Logging/Session;->markSessionCompleted(J)V

    .line 285
    invoke-direct {p0, p1}, Landroid/telecom/Logging/SessionManager;->cleanupSessionTreeAndNotify(Landroid/telecom/Logging/Session;)V
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_f

    .line 286
    monitor-exit p0

    return-void

    .line 279
    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized blacklist cleanupStaleSessions(J)V
    .registers 13

    monitor-enter p0

    .line 430
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stale Sessions Cleaned:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    nop

    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 437
    iget-object v3, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    .line 438
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    .line 439
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 440
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Logging/Session;

    .line 441
    invoke-virtual {v6}, Landroid/telecom/Logging/Session;->getExecutionStartTimeMilliseconds()J

    move-result-wide v7

    sub-long v7, v1, v7

    .line 442
    cmp-long v9, v7, p1

    if-lez v9, :cond_52

    .line 443
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 444
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 447
    const-string v5, "ms] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v6}, Landroid/telecom/Logging/Session;->printFullSessionTree()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const/4 v5, 0x1

    .line 451
    :cond_52
    goto :goto_19

    .line 452
    :cond_53
    if-eqz v5, :cond_61

    .line 453
    const-string p1, "Logging"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6a

    .line 455
    :cond_61
    const-string p1, "Logging"

    const-string p2, "No stale logging sessions needed to be cleaned..."

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_6c

    .line 457
    :goto_6a
    monitor-exit p0

    return-void

    .line 429
    :catchall_6c
    move-exception p1

    :try_start_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw p1
.end method

.method public declared-synchronized blacklist continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 294
    if-nez p1, :cond_5

    .line 295
    monitor-exit p0

    return-void

    .line 297
    :cond_5
    :try_start_5
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->resetStaleSessionTimer()V

    .line 298
    invoke-virtual {p1, p2}, Landroid/telecom/Logging/Session;->setShortMethodName(Ljava/lang/String;)V

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/telecom/Logging/Session;->setExecutionStartTimeMs(J)V

    .line 300
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    .line 301
    const/4 v1, 0x0

    if-nez v0, :cond_35

    .line 302
    const-string p1, "Logging"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log.continueSession was called with no session active for method "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_6e

    .line 304
    monitor-exit p0

    return-void

    .line 307
    :cond_35
    :try_start_35
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result p1

    if-nez p1, :cond_52

    .line 309
    const-string p1, "Logging"

    const-string p2, "CONTINUE_SUBSESSION"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6c

    .line 311
    :cond_52
    const-string p1, "Logging"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONTINUE_SUBSESSION (Invisible Subsession) with Method "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6c
    .catchall {:try_start_35 .. :try_end_6c} :catchall_6e

    .line 314
    :goto_6c
    monitor-exit p0

    return-void

    .line 293
    :catchall_6e
    move-exception p1

    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p1
.end method

.method public blacklist createSubsession()Landroid/telecom/Logging/Session;
    .registers 2

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Logging/SessionManager;->createSubsession(Z)Landroid/telecom/Logging/Session;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized blacklist createSubsession(Z)Landroid/telecom/Logging/Session;
    .registers 12

    monitor-enter p0

    .line 229
    :try_start_1
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 230
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session;

    .line 231
    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 232
    const-string p1, "Logging"

    const-string v0, "Log.createSubsession was called with no session active."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_54

    .line 234
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 237
    :cond_20
    :try_start_20
    new-instance v2, Landroid/telecom/Logging/Session;

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getNextChildId()Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 239
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    move v7, p1

    invoke-direct/range {v2 .. v9}, Landroid/telecom/Logging/Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;)V

    .line 240
    invoke-virtual {v0, v2}, Landroid/telecom/Logging/Session;->addChild(Landroid/telecom/Logging/Session;)V

    .line 241
    invoke-virtual {v2, v0}, Landroid/telecom/Logging/Session;->setParentSession(Landroid/telecom/Logging/Session;)V

    .line 243
    if-nez v7, :cond_49

    .line 244
    const-string p1, "Logging"

    const-string v0, "CREATE_SUBSESSION"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_52

    .line 246
    :cond_49
    const-string p1, "Logging"

    const-string v0, "CREATE_SUBSESSION (Invisible subsession)"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_52
    .catchall {:try_start_20 .. :try_end_52} :catchall_54

    .line 249
    :goto_52
    monitor-exit p0

    return-object v2

    .line 228
    :catchall_54
    move-exception v0

    move-object p1, v0

    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_54

    throw p1
.end method

.method public declared-synchronized blacklist endSession()V
    .registers 8

    monitor-enter p0

    .line 321
    :try_start_1
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 322
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 323
    const/4 v2, 0x0

    if-nez v1, :cond_1f

    .line 324
    const-string v0, "Logging"

    const-string v1, "Log.endSession was called with no session active."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_9e

    .line 325
    monitor-exit p0

    return-void

    .line 328
    :cond_1f
    :try_start_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/telecom/Logging/Session;->markSessionCompleted(J)V

    .line 329
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result v3

    if-nez v3, :cond_51

    .line 330
    const-string v3, "Logging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "END_SUBSESSION (dur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 331
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getLocalExecutionTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mS)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 330
    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_75

    .line 333
    :cond_51
    const-string v3, "Logging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "END_SUBSESSION (Invisible Subsession) (dur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 334
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getLocalExecutionTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 333
    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    :goto_75
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v2

    .line 339
    iget-object v3, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-direct {p0, v1}, Landroid/telecom/Logging/SessionManager;->cleanupSessionTreeAndNotify(Landroid/telecom/Logging/Session;)V

    .line 343
    if-eqz v2, :cond_9c

    invoke-virtual {v2}, Landroid/telecom/Logging/Session;->isSessionCompleted()Z

    move-result v3

    if-nez v3, :cond_9c

    .line 344
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 345
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9c
    .catchall {:try_start_1f .. :try_end_9c} :catchall_9e

    .line 347
    :cond_9c
    monitor-exit p0

    return-void

    .line 320
    :catchall_9e
    move-exception v0

    :try_start_9f
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw v0
.end method

.method public declared-synchronized blacklist getExternalSession()Landroid/telecom/Logging/Session$Info;
    .registers 2

    monitor-enter p0

    .line 253
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Landroid/telecom/Logging/SessionManager;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 253
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized blacklist getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;
    .registers 4

    monitor-enter p0

    .line 264
    :try_start_1
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 265
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session;

    .line 266
    if-nez v0, :cond_20

    .line 267
    const-string p1, "Logging"

    const-string v0, "Log.getExternalSession was called with no session active."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_26

    .line 269
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 271
    :cond_20
    :try_start_20
    invoke-virtual {v0, p1}, Landroid/telecom/Logging/Session;->getExternalInfo(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-object p1

    .line 263
    :catchall_26
    move-exception p1

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public blacklist getSessionId()Ljava/lang/String;
    .registers 3

    .line 395
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session;

    .line 396
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_17
    const-string v0, ""

    :goto_19
    return-object v0
.end method

.method public blacklist registerSessionListener(Landroid/telecom/Logging/SessionManager$ISessionListener;)V
    .registers 4

    .line 400
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    monitor-enter v0

    .line 401
    :try_start_3
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    monitor-exit v0

    .line 403
    return-void

    .line 402
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .registers 2

    .line 106
    iput-object p1, p0, Landroid/telecom/Logging/SessionManager;->mContext:Landroid/content/Context;

    .line 107
    return-void
.end method

.method public declared-synchronized blacklist startExternalSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V
    .registers 14

    monitor-enter p0

    .line 178
    if-nez p1, :cond_5

    .line 179
    monitor-exit p0

    return-void

    .line 182
    :cond_5
    :try_start_5
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 183
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 184
    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 187
    const-string p1, "Logging"

    const-string/jumbo p2, "trying to start an external session with a session already active."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_68

    .line 189
    monitor-exit p0

    return-void

    .line 193
    :cond_24
    :try_start_24
    new-instance v3, Landroid/telecom/Logging/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "E-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Landroid/telecom/Logging/Session$Info;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Landroid/telecom/Logging/Session$Info;->methodPath:Ljava/lang/String;

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v10, p1, Landroid/telecom/Logging/Session$Info;->ownerInfo:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v10}, Landroid/telecom/Logging/Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;)V

    .line 198
    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/telecom/Logging/Session;->markSessionCompleted(J)V

    .line 201
    iget-object p1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string p1, "Logging"

    const-string v0, "START_EXTERNAL_SESSION"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p0}, Landroid/telecom/Logging/SessionManager;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    .line 205
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Logging/SessionManager;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_24 .. :try_end_66} :catchall_68

    .line 206
    monitor-exit p0

    return-void

    .line 177
    :catchall_68
    move-exception v0

    move-object p1, v0

    :try_start_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_68

    throw p1
.end method

.method public declared-synchronized blacklist startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 141
    if-nez p1, :cond_7

    .line 142
    :try_start_3
    invoke-virtual {p0, p2, p3}, Landroid/telecom/Logging/SessionManager;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 144
    :cond_7
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Logging/SessionManager;->startExternalSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 146
    :goto_a
    monitor-exit p0

    return-void

    .line 140
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized blacklist startSession(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    monitor-enter p0

    .line 154
    :try_start_1
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->resetStaleSessionTimer()V

    .line 155
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 156
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 159
    if-eqz v1, :cond_20

    .line 160
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/telecom/Logging/SessionManager;->createSubsession(Z)Landroid/telecom/Logging/Session;

    move-result-object p2

    .line 161
    invoke-virtual {p0, p2, p1}, Landroid/telecom/Logging/SessionManager;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_46

    .line 162
    monitor-exit p0

    return-void

    .line 164
    :cond_20
    :try_start_20
    new-instance v1, Landroid/telecom/Logging/Session;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getNextSessionID()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Landroid/telecom/Logging/Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;)V

    .line 166
    iget-object p1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string p1, "Logging"

    const-string p2, "START_SESSION"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_44
    .catchall {:try_start_20 .. :try_end_44} :catchall_46

    .line 168
    monitor-exit p0

    return-void

    .line 153
    :catchall_46
    move-exception v0

    move-object p1, v0

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_46

    throw p1
.end method
