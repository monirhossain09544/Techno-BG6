.class Landroid/os/AsyncTask$2;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 11

    .line 234
    const-string p2, "AsyncTask"

    const-string v0, "Exceeded ThreadPoolExecutor pool size"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    monitor-enter p0

    .line 238
    :try_start_8
    invoke-static {}, Landroid/os/AsyncTask;->-$$Nest$sfgetsBackupExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p2

    if-nez p2, :cond_34

    .line 239
    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {p2}, Landroid/os/AsyncTask;->-$$Nest$sfputsBackupExecutorQueue(Ljava/util/concurrent/LinkedBlockingQueue;)V

    .line 240
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/AsyncTask;->-$$Nest$sfgetsBackupExecutorQueue()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v6

    invoke-static {}, Landroid/os/AsyncTask;->-$$Nest$sfgetsThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-wide/16 v3, 0x3

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->-$$Nest$sfputsBackupExecutor(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 243
    invoke-static {}, Landroid/os/AsyncTask;->-$$Nest$sfgetsBackupExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 245
    :cond_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3d

    .line 246
    invoke-static {}, Landroid/os/AsyncTask;->-$$Nest$sfgetsBackupExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 247
    return-void

    .line 245
    :catchall_3d
    move-exception v0

    move-object p1, v0

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3d

    throw p1
.end method
