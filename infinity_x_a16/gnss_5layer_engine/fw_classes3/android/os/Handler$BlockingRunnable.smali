.class final Landroid/os/Handler$BlockingRunnable;
.super Ljava/lang/Object;
.source "Handler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockingRunnable"
.end annotation


# instance fields
.field private greylist-max-o mDone:Z

.field private final greylist-max-o mTask:Ljava/lang/Runnable;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 1089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1090
    iput-object p1, p0, Landroid/os/Handler$BlockingRunnable;->mTask:Ljava/lang/Runnable;

    .line 1091
    return-void
.end method


# virtual methods
.method public greylist-max-o postAndWait(Landroid/os/Handler;J)Z
    .registers 9

    .line 1106
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 1107
    return v0

    .line 1110
    :cond_8
    monitor-enter p0

    .line 1111
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_2b

    .line 1112
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p2

    .line 1113
    :goto_14
    iget-boolean p1, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    if-nez p1, :cond_2a

    .line 1114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long p1, v3, p1

    .line 1115
    cmp-long p3, p1, v1

    if-gtz p3, :cond_24

    .line 1116
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_38

    return v0

    .line 1119
    :cond_24
    :try_start_24
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_27} :catch_28
    .catchall {:try_start_24 .. :try_end_27} :catchall_38

    .line 1121
    goto :goto_29

    .line 1120
    :catch_28
    move-exception p1

    .line 1122
    :goto_29
    goto :goto_14

    .line 1123
    :cond_2a
    goto :goto_35

    .line 1124
    :cond_2b
    :goto_2b
    :try_start_2b
    iget-boolean p1, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_38

    if-nez p1, :cond_35

    .line 1126
    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_33
    .catchall {:try_start_2f .. :try_end_32} :catchall_38

    .line 1128
    :goto_32
    goto :goto_2b

    .line 1127
    :catch_33
    move-exception p1

    goto :goto_32

    .line 1131
    :cond_35
    :goto_35
    :try_start_35
    monitor-exit p0

    .line 1132
    const/4 p1, 0x1

    return p1

    .line 1131
    :catchall_38
    move-exception p1

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public whitelist test-api run()V
    .registers 3

    .line 1096
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Landroid/os/Handler$BlockingRunnable;->mTask:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    .line 1098
    monitor-enter p0

    .line 1099
    :try_start_7
    iput-boolean v0, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    .line 1100
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1101
    monitor-exit p0

    .line 1102
    nop

    .line 1103
    return-void

    .line 1101
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0

    .line 1098
    :catchall_12
    move-exception v1

    monitor-enter p0

    .line 1099
    :try_start_14
    iput-boolean v0, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    .line 1100
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1101
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1b

    .line 1102
    throw v1

    .line 1101
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method
