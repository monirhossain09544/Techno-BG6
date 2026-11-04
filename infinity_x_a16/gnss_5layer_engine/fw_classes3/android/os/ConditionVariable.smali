.class public Landroid/os/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# instance fields
.field private volatile greylist-max-o mCondition:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z

    .line 43
    return-void
.end method

.method public constructor whitelist <init>(Z)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean p1, p0, Landroid/os/ConditionVariable;->mCondition:Z

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist block()V
    .registers 2

    .line 95
    monitor-enter p0

    .line 96
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_b

    .line 98
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 101
    :goto_8
    goto :goto_1

    .line 100
    :catch_9
    move-exception v0

    goto :goto_8

    .line 103
    :cond_b
    :try_start_b
    monitor-exit p0

    .line 104
    return-void

    .line 103
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_d

    throw v0
.end method

.method public whitelist block(J)Z
    .registers 6

    .line 123
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_27

    .line 124
    monitor-enter p0

    .line 125
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 126
    add-long/2addr p1, v0

    .line 127
    :goto_c
    iget-boolean v2, p0, Landroid/os/ConditionVariable;->mCondition:Z
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_24

    if-nez v2, :cond_20

    cmp-long v2, v0, p1

    if-gez v2, :cond_20

    .line 129
    sub-long v0, p1, v0

    :try_start_16
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a
    .catchall {:try_start_16 .. :try_end_19} :catchall_24

    .line 132
    goto :goto_1b

    .line 131
    :catch_1a
    move-exception v0

    .line 133
    :goto_1b
    :try_start_1b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_c

    .line 135
    :cond_20
    iget-boolean p1, p0, Landroid/os/ConditionVariable;->mCondition:Z

    monitor-exit p0

    return p1

    .line 136
    :catchall_24
    move-exception p1

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_24

    throw p1

    .line 138
    :cond_27
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    .line 139
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist close()V
    .registers 2

    .line 82
    monitor-enter p0

    .line 83
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z

    .line 84
    monitor-exit p0

    .line 85
    return-void

    .line 84
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public whitelist open()V
    .registers 3

    .line 65
    monitor-enter p0

    .line 66
    :try_start_1
    iget-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z

    .line 67
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/ConditionVariable;->mCondition:Z

    .line 68
    if-nez v0, :cond_b

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 71
    :cond_b
    monitor-exit p0

    .line 72
    return-void

    .line 71
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method
