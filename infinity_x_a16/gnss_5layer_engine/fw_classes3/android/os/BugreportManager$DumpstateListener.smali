.class final Landroid/os/BugreportManager$DumpstateListener;
.super Landroid/os/IDumpstateListener$Stub;
.source "BugreportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BugreportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DumpstateListener"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/os/BugreportManager$BugreportCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mIsConsentDeferred:Z

.field private final blacklist mIsScreenshotRequested:Z

.field final synthetic blacklist this$0:Landroid/os/BugreportManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$O77GmYGqky7qv_V90Z4LcGi5Xzg(Landroid/os/BugreportManager$DumpstateListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onProgress$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Ou_q5GHxol4VMrSoB665MiupE8w(Landroid/os/BugreportManager$DumpstateListener;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onScreenshotTaken$4(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PV0u_XFWxqc6JVZ65jJHL0lXcn0(Landroid/os/BugreportManager$DumpstateListener;)V
    .registers 1

    invoke-direct {p0}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onUiIntensiveBugreportDumpsFinished$5()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_A2H6-GN7uCYIIFDdpoU0KbTT_I(Landroid/os/BugreportManager$DumpstateListener;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onFinished$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cwuMcIzx5eYpM25eem1LtOPsHzU(Landroid/os/BugreportManager$DumpstateListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onError$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$g6yCoaLv53Y3QCBGoi4kKlwuXuc(Landroid/os/BugreportManager$DumpstateListener;)V
    .registers 1

    invoke-direct {p0}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onFinished$3()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/BugreportManager;Ljava/util/concurrent/Executor;Landroid/os/BugreportManager$BugreportCallback;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
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

    .line 437
    iput-object p1, p0, Landroid/os/BugreportManager$DumpstateListener;->this$0:Landroid/os/BugreportManager;

    invoke-direct {p0}, Landroid/os/IDumpstateListener$Stub;-><init>()V

    .line 438
    iput-object p2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 439
    iput-object p3, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    .line 440
    iput-boolean p4, p0, Landroid/os/BugreportManager$DumpstateListener;->mIsScreenshotRequested:Z

    .line 441
    iput-boolean p5, p0, Landroid/os/BugreportManager$DumpstateListener;->mIsConsentDeferred:Z

    .line 442
    return-void
.end method

.method private synthetic blacklist lambda$onError$1(I)V
    .registers 3

    .line 458
    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    invoke-virtual {v0, p1}, Landroid/os/BugreportManager$BugreportCallback;->onError(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onFinished$2(Ljava/lang/String;)V
    .registers 3

    .line 469
    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    invoke-virtual {v0, p1}, Landroid/os/BugreportManager$BugreportCallback;->onFinished(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onFinished$3()V
    .registers 2

    .line 471
    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    invoke-virtual {v0}, Landroid/os/BugreportManager$BugreportCallback;->onFinished()V

    return-void
.end method

.method private synthetic blacklist lambda$onProgress$0(I)V
    .registers 3

    .line 448
    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/os/BugreportManager$BugreportCallback;->onProgress(F)V

    return-void
.end method

.method private synthetic blacklist lambda$onScreenshotTaken$4(Z)V
    .registers 4

    .line 488
    if-eqz p1, :cond_6

    .line 489
    const p1, 0x10401c4

    goto :goto_9

    .line 490
    :cond_6
    const p1, 0x10401c3

    .line 491
    :goto_9
    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener;->this$0:Landroid/os/BugreportManager;

    invoke-static {v0}, Landroid/os/BugreportManager;->-$$Nest$fgetmContext(Landroid/os/BugreportManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 492
    return-void
.end method

.method private synthetic blacklist lambda$onUiIntensiveBugreportDumpsFinished$5()V
    .registers 2

    .line 499
    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    invoke-virtual {v0}, Landroid/os/BugreportManager$BugreportCallback;->onEarlyReportFinished()V

    return-void
.end method


# virtual methods
.method public blacklist onError(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 458
    :try_start_4
    iget-object v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda1;-><init>(Landroid/os/BugreportManager$DumpstateListener;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 460
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 461
    nop

    .line 462
    return-void

    .line 460
    :catchall_13
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 461
    throw p1
.end method

.method public blacklist onFinished(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 466
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 468
    :try_start_4
    iget-boolean v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mIsConsentDeferred:Z

    if-eqz v2, :cond_13

    .line 469
    iget-object v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda2;-><init>(Landroid/os/BugreportManager$DumpstateListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1d

    .line 471
    :cond_13
    iget-object p1, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda3;-><init>(Landroid/os/BugreportManager$DumpstateListener;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_22

    .line 474
    :goto_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 475
    nop

    .line 476
    return-void

    .line 474
    :catchall_22
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 475
    throw p1
.end method

.method public blacklist onProgress(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 448
    :try_start_4
    iget-object v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda0;-><init>(Landroid/os/BugreportManager$DumpstateListener;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 450
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 451
    nop

    .line 452
    return-void

    .line 450
    :catchall_13
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 451
    throw p1
.end method

.method public blacklist onScreenshotTaken(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    iget-boolean v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mIsScreenshotRequested:Z

    if-nez v0, :cond_5

    .line 481
    return-void

    .line 484
    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 485
    new-instance v1, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda5;-><init>(Landroid/os/BugreportManager$DumpstateListener;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 493
    return-void
.end method

.method public blacklist onUiIntensiveBugreportDumpsFinished()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 497
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 499
    :try_start_4
    iget-object v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda4;-><init>(Landroid/os/BugreportManager$DumpstateListener;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 501
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 502
    nop

    .line 503
    return-void

    .line 501
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 502
    throw v2
.end method
