.class public final Lcom/android/internal/os/BackgroundThread;
.super Landroid/os/HandlerThread;
.source "BackgroundThread.java"


# static fields
.field private static final blacklist SLOW_DELIVERY_THRESHOLD_MS:J = 0x7530L

.field private static final blacklist SLOW_DISPATCH_THRESHOLD_MS:J = 0x2710L

.field private static volatile blacklist sHandler:Landroid/os/Handler;

.field private static volatile blacklist sHandlerExecutor:Landroid/os/HandlerExecutor;

.field private static volatile blacklist sInstance:Lcom/android/internal/os/BackgroundThread;


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 44
    const-string v0, "android.bg"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 45
    return-void
.end method

.method private static blacklist ensureThreadReady()V
    .registers 6

    .line 56
    sget-object v0, Lcom/android/internal/os/BackgroundThread;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 57
    return-void

    .line 59
    :cond_5
    const-class v0, Lcom/android/internal/os/BackgroundThread;

    monitor-enter v0

    .line 60
    :try_start_8
    sget-object v1, Lcom/android/internal/os/BackgroundThread;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_33

    .line 61
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->ensureThreadStartedLocked()V

    .line 63
    sget-object v1, Lcom/android/internal/os/BackgroundThread;->sInstance:Lcom/android/internal/os/BackgroundThread;

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 64
    const-wide/32 v2, 0x80000

    invoke-virtual {v1, v2, v3}, Landroid/os/Looper;->setTraceTag(J)V

    .line 65
    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 67
    new-instance v2, Landroid/os/Handler;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v1, v5, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;ZZ)V

    .line 69
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/android/internal/os/BackgroundThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 71
    sput-object v2, Lcom/android/internal/os/BackgroundThread;->sHandler:Landroid/os/Handler;

    .line 73
    :cond_33
    monitor-exit v0

    .line 74
    return-void

    .line 73
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_35

    throw v1
.end method

.method private static blacklist ensureThreadStartedLocked()V
    .registers 1

    .line 48
    sget-object v0, Lcom/android/internal/os/BackgroundThread;->sInstance:Lcom/android/internal/os/BackgroundThread;

    if-nez v0, :cond_10

    .line 49
    new-instance v0, Lcom/android/internal/os/BackgroundThread;

    invoke-direct {v0}, Lcom/android/internal/os/BackgroundThread;-><init>()V

    sput-object v0, Lcom/android/internal/os/BackgroundThread;->sInstance:Lcom/android/internal/os/BackgroundThread;

    .line 50
    sget-object v0, Lcom/android/internal/os/BackgroundThread;->sInstance:Lcom/android/internal/os/BackgroundThread;

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->start()V

    .line 52
    :cond_10
    return-void
.end method

.method public static blacklist get()Lcom/android/internal/os/BackgroundThread;
    .registers 1

    .line 89
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->ensureThreadReady()V

    .line 90
    sget-object v0, Lcom/android/internal/os/BackgroundThread;->sInstance:Lcom/android/internal/os/BackgroundThread;

    return-object v0
.end method

.method public static blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 101
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->ensureThreadReady()V

    .line 102
    sget-object v0, Lcom/android/internal/os/BackgroundThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    return-object v0
.end method

.method public static blacklist getHandler()Landroid/os/Handler;
    .registers 1

    .line 95
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->ensureThreadReady()V

    .line 96
    sget-object v0, Lcom/android/internal/os/BackgroundThread;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static blacklist startIfNeeded()V
    .registers 2

    .line 80
    sget-object v0, Lcom/android/internal/os/BackgroundThread;->sInstance:Lcom/android/internal/os/BackgroundThread;

    if-nez v0, :cond_f

    .line 81
    const-class v0, Lcom/android/internal/os/BackgroundThread;

    monitor-enter v0

    .line 82
    :try_start_7
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->ensureThreadStartedLocked()V

    .line 83
    monitor-exit v0

    goto :goto_f

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v1

    .line 85
    :cond_f
    :goto_f
    return-void
.end method
