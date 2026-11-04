.class Landroid/service/chooser/ChooserSession$ChooserSessionImpl;
.super Landroid/service/chooser/IChooserControllerCallback$Stub;
.source "ChooserSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/chooser/ChooserSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChooserSessionImpl"
.end annotation


# instance fields
.field private final blacklist mBounds:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mChooserController:Landroid/service/chooser/IChooserController;

.field private blacklist mChooserControllerLinkToDeath:Landroid/os/IBinder$DeathRecipient;

.field private final blacklist mListenerLock:Ljava/lang/Object;

.field private blacklist mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/service/chooser/ChooserSession$StateListener;",
            "Landroid/service/chooser/ChooserSession$UpdateListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mState:I

.field private final blacklist mStateLock:Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist $r8$lambda$7YUAsLJUBSIL2P5-xKybL12Z_ak(Landroid/service/chooser/ChooserSession$ChooserSessionImpl;ILandroid/service/chooser/ChooserSession$StateListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->lambda$registerChooserController$0(ILandroid/service/chooser/ChooserSession$StateListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m1qg5A3uRAB8i9VVnvWkJTdqfu0(Landroid/service/chooser/ChooserSession$ChooserSessionImpl;Landroid/service/chooser/IChooserController;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->lambda$createDeathRecipient$4(Landroid/service/chooser/IChooserController;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pdLsqRaSKFSUJbq7mQb90NAm8Qo(Landroid/service/chooser/ChooserSession$ChooserSessionImpl;Landroid/graphics/Rect;Landroid/service/chooser/ChooserSession$StateListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->lambda$onBoundsChanged$1(Landroid/graphics/Rect;Landroid/service/chooser/ChooserSession$StateListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBounds(Landroid/service/chooser/ChooserSession$ChooserSessionImpl;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    iget-object p0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mBounds:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 231
    invoke-direct {p0}, Landroid/service/chooser/IChooserControllerCallback$Stub;-><init>()V

    .line 232
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mListenerLock:Ljava/lang/Object;

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mListenerMap:Ljava/util/Map;

    .line 236
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mStateLock:Ljava/lang/Object;

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mState:I

    .line 247
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mBounds:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/chooser/ChooserSession-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;-><init>()V

    return-void
.end method

.method private static blacklist areEqual(Landroid/service/chooser/IChooserController;Landroid/service/chooser/IChooserController;)Z
    .registers 2

    .line 472
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 473
    const/4 p0, 0x1

    return p0

    .line 475
    :cond_6
    if-eqz p0, :cond_18

    if-nez p1, :cond_b

    goto :goto_18

    .line 478
    :cond_b
    invoke-interface {p0}, Landroid/service/chooser/IChooserController;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p1}, Landroid/service/chooser/IChooserController;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 476
    :cond_18
    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist connectController(Landroid/service/chooser/IChooserController;)V
    .registers 4

    .line 424
    iput-object p1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mChooserController:Landroid/service/chooser/IChooserController;

    .line 425
    invoke-direct {p0, p1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->createDeathRecipient(Landroid/service/chooser/IChooserController;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    iput-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mChooserControllerLinkToDeath:Landroid/os/IBinder$DeathRecipient;

    .line 427
    :try_start_8
    invoke-interface {p1}, Landroid/service/chooser/IChooserController;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mChooserControllerLinkToDeath:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    .line 432
    goto :goto_19

    .line 428
    :catch_13
    move-exception p1

    .line 430
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mChooserController:Landroid/service/chooser/IChooserController;

    .line 431
    iput-object p1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mChooserControllerLinkToDeath:Landroid/os/IBinder$DeathRecipient;

    .line 433
    :goto_19
    return-void
.end method

.method private blacklist createDeathRecipient(Landroid/service/chooser/IChooserController;)Landroid/os/IBinder$DeathRecipient;
    .registers 3

    .line 436
    new-instance v0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda4;-><init>(Landroid/service/chooser/ChooserSession$ChooserSessionImpl;Landroid/service/chooser/IChooserController;)V

    return-object v0
.end method

.method private blacklist disconnectCurrentController()V
    .registers 3

    .line 414
    iget-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mChooserController:Landroid/service/chooser/IChooserController;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mChooserControllerLinkToDeath:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_13

    .line 415
    iget-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mChooserController:Landroid/service/chooser/IChooserController;

    .line 416
    invoke-interface {v0}, Landroid/service/chooser/IChooserController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mChooserControllerLinkToDeath:Landroid/os/IBinder$DeathRecipient;

    .line 415
    invoke-static {v0, v1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->safeUnlinkToDeath(Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    .line 418
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mChooserController:Landroid/service/chooser/IChooserController;

    .line 419
    iput-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mChooserControllerLinkToDeath:Landroid/os/IBinder$DeathRecipient;

    .line 420
    return-void
.end method

.method private blacklist doClose(Z)V
    .registers 6

    .line 396
    iget-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_3
    iget v1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 398
    :goto_b
    iput v2, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mState:I

    .line 399
    if-nez p1, :cond_19

    iget-object v2, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mChooserController:Landroid/service/chooser/IChooserController;

    if-eqz v2, :cond_19

    .line 400
    iget-object v2, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mChooserController:Landroid/service/chooser/IChooserController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->safeUpdateChooserIntent(Landroid/service/chooser/IChooserController;Landroid/content/Intent;)V

    .line 402
    :cond_19
    invoke-direct {p0}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->disconnectCurrentController()V

    .line 403
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_37

    .line 404
    if-eqz v1, :cond_29

    if-eqz p1, :cond_29

    .line 405
    new-instance p1, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p0, p1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->notifyListeners(Ljava/util/function/Consumer;)V

    .line 407
    :cond_29
    iget-object p1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mListenerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 408
    :try_start_2c
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mListenerMap:Ljava/util/Map;

    .line 409
    monitor-exit p1

    .line 410
    return-void

    .line 409
    :catchall_34
    move-exception v0

    monitor-exit p1
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_34

    throw v0

    .line 403
    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1
.end method

.method private blacklist isActive()Z
    .registers 4

    .line 370
    iget-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_3
    iget v1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    monitor-exit v0

    return v1

    .line 372
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private synthetic blacklist lambda$createDeathRecipient$4(Landroid/service/chooser/IChooserController;)V
    .registers 4

    .line 437
    const-string v0, "ChooserSession"

    const-string v1, "chooser died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    nop

    .line 439
    iget-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_b
    iget-object v1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mChooserController:Landroid/service/chooser/IChooserController;

    invoke-static {v1, p1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->areEqual(Landroid/service/chooser/IChooserController;Landroid/service/chooser/IChooserController;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1b

    .line 442
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mChooserController:Landroid/service/chooser/IChooserController;

    .line 443
    iput-object p1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mChooserControllerLinkToDeath:Landroid/os/IBinder$DeathRecipient;

    .line 444
    move p1, v1

    goto :goto_1c

    .line 440
    :cond_1b
    const/4 p1, 0x0

    .line 446
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_23

    .line 447
    if-eqz p1, :cond_22

    .line 448
    invoke-direct {p0, v1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->doClose(Z)V

    .line 450
    :cond_22
    return-void

    .line 446
    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method static synthetic blacklist lambda$doClose$3(Landroid/service/chooser/ChooserSession$StateListener;)V
    .registers 2

    .line 405
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/service/chooser/ChooserSession$StateListener;->onStateChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyListeners$2(Landroid/service/chooser/ChooserSession$UpdateListenerWrapper;Ljava/util/function/Consumer;)V
    .registers 3

    .line 384
    iget-object v0, p0, Landroid/service/chooser/ChooserSession$UpdateListenerWrapper;->isSubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 385
    iget-object p0, p0, Landroid/service/chooser/ChooserSession$UpdateListenerWrapper;->listener:Landroid/service/chooser/ChooserSession$StateListener;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 387
    :cond_d
    return-void
.end method

.method private synthetic blacklist lambda$onBoundsChanged$1(Landroid/graphics/Rect;Landroid/service/chooser/ChooserSession$StateListener;)V
    .registers 4

    .line 295
    invoke-direct {p0}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 296
    invoke-interface {p2, p1}, Landroid/service/chooser/ChooserSession$StateListener;->onBoundsChanged(Landroid/graphics/Rect;)V

    .line 298
    :cond_9
    return-void
.end method

.method private synthetic blacklist lambda$registerChooserController$0(ILandroid/service/chooser/ChooserSession$StateListener;)V
    .registers 4

    .line 284
    invoke-direct {p0}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 285
    invoke-interface {p2, p1}, Landroid/service/chooser/ChooserSession$StateListener;->onStateChanged(I)V

    .line 287
    :cond_9
    return-void
.end method

.method private blacklist notifyListeners(Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/chooser/ChooserSession$StateListener;",
            ">;)V"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_3
    iget-object v1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 379
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_33

    .line 380
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 382
    :try_start_e
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/chooser/ChooserSession$UpdateListenerWrapper;

    .line 383
    iget-object v4, v1, Landroid/service/chooser/ChooserSession$UpdateListenerWrapper;->executor:Ljava/util/concurrent/Executor;

    new-instance v5, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1, p1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda2;-><init>(Landroid/service/chooser/ChooserSession$UpdateListenerWrapper;Ljava/util/function/Consumer;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_2e

    .line 388
    goto :goto_12

    .line 390
    :cond_29
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 391
    nop

    .line 392
    return-void

    .line 390
    :catchall_2e
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 391
    throw p1

    .line 379
    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1
.end method

.method private static blacklist safeUnlinkToDeath(Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V
    .registers 3

    .line 464
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, p1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    .line 467
    goto :goto_d

    .line 465
    :catch_5
    move-exception p0

    .line 466
    const-string p1, "ChooserSession"

    const-string v0, "Failed to unlink to death"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    :goto_d
    return-void
.end method

.method private static blacklist safeUpdateChooserIntent(Landroid/service/chooser/IChooserController;Landroid/content/Intent;)V
    .registers 2

    .line 456
    :try_start_0
    invoke-interface {p0, p1}, Landroid/service/chooser/IChooserController;->updateIntent(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 459
    goto :goto_5

    .line 457
    :catch_4
    move-exception p0

    .line 460
    :goto_5
    return-void
.end method


# virtual methods
.method public blacklist addStateListener(Ljava/util/concurrent/Executor;Landroid/service/chooser/ChooserSession$StateListener;)V
    .registers 6

    .line 351
    iget-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_3
    iget-object v1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 353
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mListenerMap:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mListenerMap:Ljava/util/Map;

    .line 354
    iget-object v1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mListenerMap:Ljava/util/Map;

    new-instance v2, Landroid/service/chooser/ChooserSession$UpdateListenerWrapper;

    invoke-direct {v2, p2, p1}, Landroid/service/chooser/ChooserSession$UpdateListenerWrapper;-><init>(Landroid/service/chooser/ChooserSession$StateListener;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_1e
    monitor-exit v0

    .line 357
    return-void

    .line 356
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public blacklist close()V
    .registers 2

    .line 307
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->doClose(Z)V

    .line 308
    return-void
.end method

.method public blacklist getChooserController()Landroid/service/chooser/IChooserController;
    .registers 3

    .line 345
    iget-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_3
    iget-object v1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mChooserController:Landroid/service/chooser/IChooserController;

    monitor-exit v0

    return-object v1

    .line 347
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getState()I
    .registers 3

    .line 338
    iget-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    iget v1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mState:I

    monitor-exit v0

    return v1

    .line 340
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist onBoundsChanged(Landroid/graphics/Rect;)V
    .registers 3

    .line 293
    iget-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mBounds:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 294
    new-instance v0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda0;-><init>(Landroid/service/chooser/ChooserSession$ChooserSessionImpl;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->notifyListeners(Ljava/util/function/Consumer;)V

    .line 299
    return-void
.end method

.method public blacklist onClosed()V
    .registers 2

    .line 303
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->doClose(Z)V

    .line 304
    return-void
.end method

.method public blacklist registerChooserController(Landroid/service/chooser/IChooserController;)V
    .registers 5

    .line 252
    if-nez p1, :cond_d

    .line 253
    const-string p1, "ChooserSession"

    const-string v0, "Received null controller, closing the session"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->onClosed()V

    .line 255
    return-void

    .line 257
    :cond_d
    const-string v0, "ChooserSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIntentUpdater; state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", chooserController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    nop

    .line 263
    iget-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_36
    iget v1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 265
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->safeUpdateChooserIntent(Landroid/service/chooser/IChooserController;Landroid/content/Intent;)V

    .line 266
    monitor-exit v0

    return-void

    .line 268
    :cond_41
    iget-object v1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mChooserController:Landroid/service/chooser/IChooserController;

    invoke-static {v1, p1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->areEqual(Landroid/service/chooser/IChooserController;Landroid/service/chooser/IChooserController;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 269
    monitor-exit v0

    return-void

    .line 271
    :cond_4b
    invoke-direct {p0}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->disconnectCurrentController()V

    .line 272
    invoke-direct {p0, p1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->connectController(Landroid/service/chooser/IChooserController;)V

    .line 273
    iget-object p1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mChooserController:Landroid/service/chooser/IChooserController;

    const/4 v1, 0x1

    if-nez p1, :cond_59

    .line 274
    iput v2, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mState:I

    .line 275
    goto :goto_61

    .line 276
    :cond_59
    iget p1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mState:I

    if-nez p1, :cond_60

    .line 277
    iput v1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mState:I

    .line 278
    goto :goto_61

    .line 276
    :cond_60
    const/4 v1, 0x0

    .line 280
    :goto_61
    iget p1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mState:I

    .line 281
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_36 .. :try_end_64} :catchall_6f

    .line 282
    if-eqz v1, :cond_6e

    .line 283
    new-instance v0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda1;-><init>(Landroid/service/chooser/ChooserSession$ChooserSessionImpl;I)V

    invoke-direct {p0, v0}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->notifyListeners(Ljava/util/function/Consumer;)V

    .line 289
    :cond_6e
    return-void

    .line 281
    :catchall_6f
    move-exception p1

    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw p1
.end method

.method public blacklist removeStateListener(Landroid/service/chooser/ChooserSession$StateListener;)V
    .registers 5

    .line 360
    iget-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_3
    iget-object v1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 362
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mListenerMap:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mListenerMap:Ljava/util/Map;

    .line 363
    iget-object v1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/chooser/ChooserSession$UpdateListenerWrapper;

    .line 364
    iget-object p1, p1, Landroid/service/chooser/ChooserSession$UpdateListenerWrapper;->isSubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 366
    :cond_22
    monitor-exit v0

    .line 367
    return-void

    .line 366
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public blacklist setMinimized(Z)V
    .registers 3

    .line 311
    invoke-virtual {p0}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->getChooserController()Landroid/service/chooser/IChooserController;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_17

    .line 314
    :try_start_6
    invoke-interface {v0, p1}, Landroid/service/chooser/IChooserController;->setMinimized(Z)V
    :try_end_9
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_9} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 319
    :goto_9
    goto :goto_17

    .line 317
    :catch_a
    move-exception p1

    .line 318
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 315
    :catch_11
    move-exception p1

    .line 316
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->doClose(Z)V

    goto :goto_9

    .line 321
    :cond_17
    :goto_17
    return-void
.end method

.method public blacklist setTargetsEnabled(Z)V
    .registers 3

    .line 324
    invoke-virtual {p0}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->getChooserController()Landroid/service/chooser/IChooserController;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_17

    .line 327
    :try_start_6
    invoke-interface {v0, p1}, Landroid/service/chooser/IChooserController;->setTargetsEnabled(Z)V
    :try_end_9
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_9} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 332
    :goto_9
    goto :goto_17

    .line 330
    :catch_a
    move-exception p1

    .line 331
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 328
    :catch_11
    move-exception p1

    .line 329
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->doClose(Z)V

    goto :goto_9

    .line 334
    :cond_17
    :goto_17
    return-void
.end method
