.class public Landroid/os/SystemVibrator$MultiVibratorStateListener;
.super Ljava/lang/Object;
.source "SystemVibrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiVibratorStateListener"
.end annotation


# instance fields
.field private final blacklist mDelegate:Landroid/os/Vibrator$OnVibratorStateChangedListener;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mInitializedMask:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mVibratingMask:I

.field private final blacklist mVibratorListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/SystemVibrator$SingleVibratorStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$K2An7Yb63Nm4Tfp2PtkYXTEgdnY(Landroid/os/SystemVibrator$MultiVibratorStateListener;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->lambda$onVibrating$0(IZ)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 4

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mLock:Ljava/lang/Object;

    .line 355
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    .line 366
    iput-object p1, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 367
    iput-object p2, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mDelegate:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 368
    return-void
.end method

.method private synthetic blacklist lambda$onVibrating$0(IZ)V
    .registers 10

    .line 418
    iget-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    sub-int/2addr v1, v2

    .line 423
    iget v3, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratingMask:I

    const/4 v4, 0x0

    if-eqz v3, :cond_14

    move v3, v2

    goto :goto_15

    :cond_14
    move v3, v4

    .line 424
    :goto_15
    iget v5, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mInitializedMask:I

    if-ne v5, v1, :cond_1b

    move v5, v2

    goto :goto_1c

    :cond_1b
    move v5, v4

    .line 427
    :goto_1c
    shl-int p1, v2, p1

    .line 428
    iget v6, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mInitializedMask:I

    or-int/2addr v6, p1

    iput v6, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mInitializedMask:I

    .line 431
    iget v6, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratingMask:I

    and-int/2addr v6, p1

    if-eqz v6, :cond_2a

    move v6, v2

    goto :goto_2b

    :cond_2a
    move v6, v4

    .line 432
    :goto_2b
    if-eq v6, p2, :cond_32

    .line 433
    iget p2, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratingMask:I

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratingMask:I

    .line 437
    :cond_32
    iget p1, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratingMask:I

    if-eqz p1, :cond_38

    move p1, v2

    goto :goto_39

    :cond_38
    move p1, v4

    .line 438
    :goto_39
    iget p2, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mInitializedMask:I

    if-ne p2, v1, :cond_3f

    move p2, v2

    goto :goto_40

    :cond_3f
    move p2, v4

    .line 443
    :goto_40
    if-eq v3, p1, :cond_44

    move v1, v2

    goto :goto_45

    :cond_44
    move v1, v4

    .line 444
    :goto_45
    if-eqz p2, :cond_4c

    if-eqz v5, :cond_4b

    if-eqz v1, :cond_4c

    :cond_4b
    goto :goto_4d

    :cond_4c
    move v2, v4

    .line 446
    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_56

    .line 448
    if-eqz v2, :cond_55

    .line 449
    iget-object p2, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mDelegate:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    invoke-interface {p2, p1}, Landroid/os/Vibrator$OnVibratorStateChangedListener;->onVibratorStateChanged(Z)V

    .line 451
    :cond_55
    return-void

    .line 446
    :catchall_56
    move-exception p1

    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p1
.end method


# virtual methods
.method public blacklist hasRegisteredListeners()Z
    .registers 3

    .line 372
    iget-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 374
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public blacklist onVibrating(IZ)V
    .registers 5

    .line 415
    iget-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/SystemVibrator$MultiVibratorStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/SystemVibrator$MultiVibratorStateListener$$ExternalSyntheticLambda0;-><init>(Landroid/os/SystemVibrator$MultiVibratorStateListener;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 452
    return-void
.end method

.method public blacklist register(Landroid/os/VibratorManager;[I)V
    .registers 9

    .line 379
    iget-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    const/4 v1, 0x0

    :goto_4
    :try_start_4
    array-length v2, p2

    if-ge v1, v2, :cond_2e

    .line 381
    aget v2, p2, v1

    .line 382
    new-instance v3, Landroid/os/SystemVibrator$SingleVibratorStateListener;

    invoke-direct {v3, p0, v1}, Landroid/os/SystemVibrator$SingleVibratorStateListener;-><init>(Landroid/os/SystemVibrator$MultiVibratorStateListener;I)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_30

    .line 384
    :try_start_e
    invoke-virtual {p1, v2}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v4

    iget-object v5, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v4, v5, v3}, Landroid/os/Vibrator;->addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    .line 386
    iget-object v4, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_1c} :catch_20
    .catchall {:try_start_e .. :try_end_1c} :catchall_30

    .line 396
    nop

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 387
    :catch_20
    move-exception p2

    .line 389
    :try_start_21
    invoke-virtual {p0, p1}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->unregister(Landroid/os/VibratorManager;)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_24} :catch_25
    .catchall {:try_start_21 .. :try_end_24} :catchall_30

    .line 394
    goto :goto_2d

    .line 390
    :catch_25
    move-exception p1

    .line 391
    :try_start_26
    const-string v1, "Vibrator"

    const-string v2, "Failed to unregister listener while recovering from a failed register call"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    :goto_2d
    throw p2

    .line 398
    :cond_2e
    monitor-exit v0

    .line 399
    return-void

    .line 398
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public blacklist unregister(Landroid/os/VibratorManager;)V
    .registers 6

    .line 403
    iget-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_9
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_28

    .line 405
    iget-object v2, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 406
    iget-object v3, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/SystemVibrator$SingleVibratorStateListener;

    .line 407
    invoke-virtual {p1, v2}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Vibrator;->removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    .line 408
    iget-object v2, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 409
    goto :goto_9

    .line 410
    :cond_28
    monitor-exit v0

    .line 411
    return-void

    .line 410
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p1
.end method
