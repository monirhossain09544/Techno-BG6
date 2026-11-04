.class public Landroid/os/HandlerThread;
.super Ljava/lang/Thread;
.source "HandlerThread.java"


# instance fields
.field private volatile blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private volatile greylist-max-o mHandler:Landroid/os/Handler;

.field greylist-max-o mLooper:Landroid/os/Looper;

.field greylist-max-o mPriority:I

.field greylist-max-o mTid:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 87
    const/4 p1, -0x1

    iput p1, p0, Landroid/os/HandlerThread;->mTid:I

    .line 94
    const/4 p1, 0x0

    iput p1, p0, Landroid/os/HandlerThread;->mPriority:I

    .line 95
    invoke-virtual {p0}, Landroid/os/HandlerThread;->onCreated()V

    .line 96
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 3

    .line 105
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 87
    const/4 p1, -0x1

    iput p1, p0, Landroid/os/HandlerThread;->mTid:I

    .line 106
    iput p2, p0, Landroid/os/HandlerThread;->mPriority:I

    .line 107
    invoke-virtual {p0}, Landroid/os/HandlerThread;->onCreated()V

    .line 108
    return-void
.end method


# virtual methods
.method public whitelist getLooper()Landroid/os/Looper;
    .registers 3

    .line 150
    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_8

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 154
    :cond_8
    nop

    .line 157
    monitor-enter p0

    const/4 v0, 0x0

    .line 158
    :goto_b
    :try_start_b
    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_2a

    if-nez v1, :cond_1d

    .line 160
    :try_start_15
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_19
    .catchall {:try_start_15 .. :try_end_18} :catchall_2a

    .line 163
    goto :goto_b

    .line 161
    :catch_19
    move-exception v0

    .line 162
    nop

    .line 163
    const/4 v0, 0x1

    goto :goto_b

    .line 165
    :cond_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_2a

    .line 171
    if-eqz v0, :cond_27

    .line 172
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 175
    :cond_27
    iget-object v0, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;

    return-object v0

    .line 165
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public blacklist getThreadExecutor()Ljava/util/concurrent/Executor;
    .registers 3

    .line 196
    iget-object v0, p0, Landroid/os/HandlerThread;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_f

    .line 197
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/os/HandlerThread;->mExecutor:Ljava/util/concurrent/Executor;

    .line 199
    :cond_f
    iget-object v0, p0, Landroid/os/HandlerThread;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public greylist-max-o getThreadHandler()Landroid/os/Handler;
    .registers 3

    .line 184
    iget-object v0, p0, Landroid/os/HandlerThread;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 185
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/os/HandlerThread;->mHandler:Landroid/os/Handler;

    .line 187
    :cond_f
    iget-object v0, p0, Landroid/os/HandlerThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public whitelist getThreadId()I
    .registers 2

    .line 267
    iget v0, p0, Landroid/os/HandlerThread;->mTid:I

    return v0
.end method

.method protected blacklist onCreated()V
    .registers 1

    .line 113
    return-void
.end method

.method protected blacklist onCreated$ravenwood()V
    .registers 2

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 120
    return-void
.end method

.method protected whitelist onLooperPrepared()V
    .registers 1

    .line 127
    return-void
.end method

.method public whitelist quit()Z
    .registers 2

    .line 225
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_b

    .line 227
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 228
    const/4 v0, 0x1

    return v0

    .line 230
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist quitSafely()Z
    .registers 2

    .line 255
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_b

    .line 257
    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 258
    const/4 v0, 0x1

    return v0

    .line 260
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api run()V
    .registers 2

    .line 131
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    .line 132
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 133
    monitor-enter p0

    .line 134
    :try_start_a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 136
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_23

    .line 137
    iget v0, p0, Landroid/os/HandlerThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 138
    invoke-virtual {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 139
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    .line 141
    return-void

    .line 136
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method
