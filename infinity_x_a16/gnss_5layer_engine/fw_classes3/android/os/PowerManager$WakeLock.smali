.class public final Landroid/os/PowerManager$WakeLock;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WakeLock"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/os/IWakeLockCallback;

.field private final blacklist mDisplayId:I

.field private greylist-max-o mExternalCount:I

.field private greylist mFlags:I

.field private greylist-max-o mHeld:Z

.field private greylist-max-o mHistoryTag:Ljava/lang/String;

.field private greylist-max-o mInternalCount:I

.field private blacklist mListener:Landroid/os/PowerManager$WakeLockStateListener;

.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private greylist-max-o mRefCounted:Z

.field private final greylist-max-o mReleaser:Ljava/lang/Runnable;

.field private greylist mTag:Ljava/lang/String;

.field private blacklist mTagHash:I

.field private final greylist-max-o mToken:Landroid/os/IBinder;

.field private greylist-max-o mWorkSource:Landroid/os/WorkSource;

.field final synthetic blacklist this$0:Landroid/os/PowerManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$QWdBfVqCdIPYrotXUyakZ1mm-zk(Landroid/os/PowerManager$WakeLock;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/PowerManager$WakeLock;->lambda$wrap$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RwtpXTw3OcP0u90jAvwad4Ar2Tg(Landroid/os/PowerManager$WakeLock;)V
    .registers 1

    invoke-direct {p0}, Landroid/os/PowerManager$WakeLock;->lambda$new$0()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/PowerManager;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 4328
    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4318
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    .line 4326
    new-instance p1, Landroid/os/PowerManager$WakeLock$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroid/os/PowerManager$WakeLock$$ExternalSyntheticLambda0;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    .line 4329
    iput p2, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    .line 4330
    iput-object p3, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    .line 4331
    iget-object p1, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Landroid/os/PowerManager$WakeLock;->mTagHash:I

    .line 4332
    iput-object p4, p0, Landroid/os/PowerManager$WakeLock;->mPackageName:Ljava/lang/String;

    .line 4333
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    .line 4334
    iput p5, p0, Landroid/os/PowerManager$WakeLock;->mDisplayId:I

    .line 4335
    return-void
.end method

.method private greylist-max-o acquireLocked()V
    .registers 12

    .line 4403
    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    .line 4404
    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mExternalCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/PowerManager$WakeLock;->mExternalCount:I

    .line 4405
    iget-boolean v0, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    if-ne v0, v1, :cond_42

    .line 4412
    :cond_13
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4413
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    iget v2, p0, Landroid/os/PowerManager$WakeLock;->mTagHash:I

    const-wide/32 v3, 0x20000

    const-string v5, "WakeLocks"

    invoke-static {v3, v4, v5, v0, v2}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 4416
    :try_start_28
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v2, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    iget v4, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    iget-object v5, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    iget-object v6, p0, Landroid/os/PowerManager$WakeLock;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v8, p0, Landroid/os/PowerManager$WakeLock;->mHistoryTag:Ljava/lang/String;

    iget v9, p0, Landroid/os/PowerManager$WakeLock;->mDisplayId:I

    iget-object v10, p0, Landroid/os/PowerManager$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    invoke-interface/range {v2 .. v10}, Landroid/os/IPowerManager;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;ILandroid/os/IWakeLockCallback;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3f} :catch_43

    .line 4420
    nop

    .line 4421
    iput-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    .line 4423
    :cond_42
    return-void

    .line 4418
    :catch_43
    move-exception v0

    .line 4419
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private synthetic blacklist lambda$new$0()V
    .registers 2

    .line 4326
    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V

    return-void
.end method

.method private synthetic blacklist lambda$wrap$1(Ljava/lang/Runnable;)V
    .registers 2

    .line 4617
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 4619
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4620
    nop

    .line 4621
    return-void

    .line 4619
    :catchall_8
    move-exception p1

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4620
    throw p1
.end method


# virtual methods
.method public whitelist acquire()V
    .registers 3

    .line 4380
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4381
    :try_start_3
    invoke-direct {p0}, Landroid/os/PowerManager$WakeLock;->acquireLocked()V

    .line 4382
    monitor-exit v0

    .line 4383
    return-void

    .line 4382
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public whitelist acquire(J)V
    .registers 6

    .line 4396
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4397
    :try_start_3
    invoke-direct {p0}, Landroid/os/PowerManager$WakeLock;->acquireLocked()V

    .line 4398
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4399
    monitor-exit v0

    .line 4400
    return-void

    .line 4399
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 4581
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4582
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 4583
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    const-wide v2, 0x10900000001L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4584
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mPackageName:Ljava/lang/String;

    const-wide v2, 0x10900000002L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4585
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    const-wide v2, 0x10800000003L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4586
    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    const-wide v2, 0x10500000004L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4587
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_3d

    .line 4588
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    const-wide v2, 0x10b00000005L

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/WorkSource;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4590
    :cond_3d
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4591
    monitor-exit v0

    .line 4592
    return-void

    .line 4591
    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p1
.end method

.method protected whitelist test-api finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4339
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4340
    :try_start_3
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    if-eqz v1, :cond_3c

    .line 4341
    const-string v1, "PowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeLock finalized while still held: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4342
    const-string v1, "WakeLocks"

    iget v2, p0, Landroid/os/PowerManager$WakeLock;->mTagHash:I

    const-wide/32 v3, 0x20000

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_3e

    .line 4345
    :try_start_2b
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->releaseWakeLock(Landroid/os/IBinder;I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_35} :catch_36
    .catchall {:try_start_2b .. :try_end_35} :catchall_3e

    .line 4348
    goto :goto_3c

    .line 4346
    :catch_36
    move-exception v1

    .line 4347
    :try_start_37
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4350
    :cond_3c
    :goto_3c
    monitor-exit v0

    .line 4351
    return-void

    .line 4350
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public greylist-max-o getTag()Ljava/lang/String;
    .registers 2

    .line 4545
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isHeld()Z
    .registers 3

    .line 4484
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4485
    :try_start_3
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    monitor-exit v0

    return v1

    .line 4486
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist release()V
    .registers 2

    .line 4434
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 4435
    return-void
.end method

.method public whitelist release(I)V
    .registers 7

    .line 4450
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4451
    :try_start_3
    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    if-lez v1, :cond_d

    .line 4454
    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    .line 4456
    :cond_d
    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-nez v1, :cond_18

    .line 4457
    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mExternalCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/os/PowerManager$WakeLock;->mExternalCount:I

    .line 4459
    :cond_18
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    if-eqz v1, :cond_20

    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    if-nez v1, :cond_4b

    .line 4460
    :cond_20
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4461
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    if-eqz v1, :cond_4b

    .line 4462
    const-string v1, "WakeLocks"

    iget v2, p0, Landroid/os/PowerManager$WakeLock;->mTagHash:I

    const-wide/32 v3, 0x20000

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_71

    .line 4465
    :try_start_37
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/os/IPowerManager;->releaseWakeLock(Landroid/os/IBinder;I)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_40} :catch_45
    .catchall {:try_start_37 .. :try_end_40} :catchall_71

    .line 4468
    nop

    .line 4469
    const/4 p1, 0x0

    :try_start_42
    iput-boolean p1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    goto :goto_4b

    .line 4466
    :catch_45
    move-exception p1

    .line 4467
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4472
    :cond_4b
    :goto_4b
    iget-boolean p1, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    if-eqz p1, :cond_6f

    iget p1, p0, Landroid/os/PowerManager$WakeLock;->mExternalCount:I

    if-ltz p1, :cond_54

    goto :goto_6f

    .line 4473
    :cond_54
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock under-locked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4475
    :cond_6f
    :goto_6f
    monitor-exit v0

    .line 4476
    return-void

    .line 4475
    :catchall_71
    move-exception p1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_42 .. :try_end_73} :catchall_71

    throw p1
.end method

.method public greylist-max-o setHistoryTag(Ljava/lang/String;)V
    .registers 2

    .line 4550
    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 4551
    return-void
.end method

.method public whitelist setReferenceCounted(Z)V
    .registers 3

    .line 4367
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4368
    :try_start_3
    iput-boolean p1, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    .line 4369
    monitor-exit v0

    .line 4370
    return-void

    .line 4369
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public whitelist setStateListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$WakeLockStateListener;)V
    .registers 5

    .line 4632
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4633
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4634
    :try_start_8
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mListener:Landroid/os/PowerManager$WakeLockStateListener;

    if-eq p2, v1, :cond_31

    .line 4635
    iput-object p2, p0, Landroid/os/PowerManager$WakeLock;->mListener:Landroid/os/PowerManager$WakeLockStateListener;

    .line 4636
    if-eqz p2, :cond_18

    .line 4637
    new-instance v1, Landroid/os/PowerManager$WakeLock$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/PowerManager$WakeLock$1;-><init>(Landroid/os/PowerManager$WakeLock;Ljava/util/concurrent/Executor;Landroid/os/PowerManager$WakeLockStateListener;)V

    iput-object v1, p0, Landroid/os/PowerManager$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    goto :goto_1b

    .line 4650
    :cond_18
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    .line 4652
    :goto_1b
    iget-boolean p1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_33

    if-eqz p1, :cond_31

    .line 4654
    :try_start_1f
    iget-object p1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object p1, p1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object p2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    invoke-interface {p1, p2, v1}, Landroid/os/IPowerManager;->updateWakeLockCallback(Landroid/os/IBinder;Landroid/os/IWakeLockCallback;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2a} :catch_2b
    .catchall {:try_start_1f .. :try_end_2a} :catchall_33

    .line 4657
    goto :goto_31

    .line 4655
    :catch_2b
    move-exception p1

    .line 4656
    :try_start_2c
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4660
    :cond_31
    :goto_31
    monitor-exit v0

    .line 4661
    return-void

    .line 4660
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_33

    throw p1
.end method

.method public greylist-max-o setTag(Ljava/lang/String;)V
    .registers 2

    .line 4539
    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    .line 4540
    iget-object p1, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Landroid/os/PowerManager$WakeLock;->mTagHash:I

    .line 4541
    return-void
.end method

.method public greylist-max-o setUnimportantForLogging(Z)V
    .registers 3

    .line 4555
    if-eqz p1, :cond_a

    iget p1, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    iput p1, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    goto :goto_12

    .line 4556
    :cond_a
    iget p1, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    const v0, -0x40000001    # -1.9999999f

    and-int/2addr p1, v0

    iput p1, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    .line 4557
    :goto_12
    return-void
.end method

.method public whitelist setWorkSource(Landroid/os/WorkSource;)V
    .registers 6

    .line 4508
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4509
    const/4 v1, 0x0

    if-eqz p1, :cond_10

    :try_start_6
    invoke-virtual {p1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4510
    move-object p1, v1

    goto :goto_10

    .line 4534
    :catchall_e
    move-exception p1

    goto :goto_55

    .line 4514
    :cond_10
    :goto_10
    const/4 v2, 0x1

    if-nez p1, :cond_1d

    .line 4515
    iget-object p1, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz p1, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p1, 0x0

    move v2, p1

    .line 4516
    :goto_1a
    iput-object v1, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_39

    .line 4517
    :cond_1d
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-nez v1, :cond_2a

    .line 4518
    nop

    .line 4519
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v1, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_39

    .line 4521
    :cond_2a
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4522
    xor-int/lit8 v2, v1, 0x1

    if-nez v1, :cond_39

    .line 4523
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 4527
    :cond_39
    :goto_39
    if-eqz v2, :cond_53

    iget-boolean p1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z
    :try_end_3d
    .catchall {:try_start_6 .. :try_end_3d} :catchall_e

    if-eqz p1, :cond_53

    .line 4529
    :try_start_3f
    iget-object p1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object p1, p1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3}, Landroid/os/IPowerManager;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_4c} :catch_4d
    .catchall {:try_start_3f .. :try_end_4c} :catchall_e

    .line 4532
    goto :goto_53

    .line 4530
    :catch_4d
    move-exception p1

    .line 4531
    :try_start_4e
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4534
    :cond_53
    :goto_53
    monitor-exit v0

    .line 4535
    return-void

    .line 4534
    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_e

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 4572
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4573
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4574
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " held="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", refCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 4573
    return-object v1

    .line 4576
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public blacklist updateUids([I)V
    .registers 5

    .line 4561
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4563
    :try_start_3
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/os/IPowerManager;->updateWakeLockUids(Landroid/os/IBinder;[I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_11
    .catchall {:try_start_3 .. :try_end_c} :catchall_f

    .line 4566
    nop

    .line 4567
    :try_start_d
    monitor-exit v0

    .line 4568
    return-void

    .line 4567
    :catchall_f
    move-exception p1

    goto :goto_17

    .line 4564
    :catch_11
    move-exception p1

    .line 4565
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4567
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_f

    throw p1
.end method

.method public greylist-max-o wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 3

    .line 4614
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4615
    new-instance v0, Landroid/os/PowerManager$WakeLock$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/os/PowerManager$WakeLock$$ExternalSyntheticLambda1;-><init>(Landroid/os/PowerManager$WakeLock;Ljava/lang/Runnable;)V

    return-object v0
.end method
