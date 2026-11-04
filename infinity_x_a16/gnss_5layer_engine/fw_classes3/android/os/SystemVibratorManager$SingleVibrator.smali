.class final Landroid/os/SystemVibratorManager$SingleVibrator;
.super Landroid/os/Vibrator;
.source "SystemVibratorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemVibratorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SingleVibrator"
.end annotation


# instance fields
.field private final blacklist mVibratorId:[I

.field private final blacklist mVibratorInfo:Landroid/os/VibratorInfo;

.field final synthetic blacklist this$0:Landroid/os/SystemVibratorManager;


# direct methods
.method constructor blacklist <init>(Landroid/os/SystemVibratorManager;Landroid/os/VibratorInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 323
    iput-object p1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 324
    iput-object p2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 325
    iget-object p1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getId()I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorId:[I

    .line 326
    return-void
.end method


# virtual methods
.method public whitelist addVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 3

    .line 401
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmContext(Landroid/os/SystemVibratorManager;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_13

    .line 403
    const-string p1, "VibratorManager"

    const-string v0, "Failed to add vibrate state listener; no vibrator context."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void

    .line 406
    :cond_13
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmContext(Landroid/os/SystemVibratorManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/SystemVibratorManager$SingleVibrator;->addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    .line 407
    return-void
.end method

.method public whitelist addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 6

    .line 413
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    if-nez v0, :cond_33

    .line 416
    const-string p1, "VibratorManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to add vibrate state listener to vibrator "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 417
    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "; no vibrator service."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 416
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void

    .line 421
    :cond_33
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmLock(Landroid/os/SystemVibratorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 423
    :try_start_3a
    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v1}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 424
    const-string p1, "VibratorManager"

    const-string p2, "Listener already registered."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3a .. :try_end_4e} :catchall_96

    return-void

    .line 428
    :cond_4f
    :try_start_4f
    new-instance v1, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;

    invoke-direct {v1, p2, p1}, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;-><init>(Landroid/os/Vibrator$OnVibratorStateChangedListener;Ljava/util/concurrent/Executor;)V

    .line 430
    iget-object p1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {p1}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object p1

    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    move-result v2

    invoke-interface {p1, v2, v1}, Landroid/os/IVibratorManagerService;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result p1

    if-nez p1, :cond_86

    .line 431
    const-string p1, "VibratorManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to add vibrate state listener to vibrator "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 432
    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 431
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_84} :catch_90
    .catchall {:try_start_4f .. :try_end_84} :catchall_96

    .line 433
    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_96

    return-void

    .line 435
    :cond_86
    :try_start_86
    iget-object p1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {p1}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_8f} :catch_90
    .catchall {:try_start_86 .. :try_end_8f} :catchall_96

    .line 438
    goto :goto_94

    .line 436
    :catch_90
    move-exception p1

    .line 437
    :try_start_91
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 439
    :goto_94
    monitor-exit v0

    .line 440
    return-void

    .line 439
    :catchall_96
    move-exception p1

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_91 .. :try_end_98} :catchall_96

    throw p1
.end method

.method public whitelist areVendorSessionsSupported()Z
    .registers 3

    .line 345
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/SystemVibratorManager;->hasCapabilities(I)Z

    move-result v0

    return v0
.end method

.method public whitelist cancel()V
    .registers 2

    .line 376
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-virtual {v0}, Landroid/os/SystemVibratorManager;->cancel()V

    .line 377
    return-void
.end method

.method public blacklist cancel(I)V
    .registers 3

    .line 381
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-virtual {v0, p1}, Landroid/os/SystemVibratorManager;->cancel(I)V

    .line 382
    return-void
.end method

.method public blacklist getInfo()Landroid/os/VibratorInfo;
    .registers 2

    .line 330
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    return-object v0
.end method

.method public whitelist hasAmplitudeControl()Z
    .registers 2

    .line 340
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->hasAmplitudeControl()Z

    move-result v0

    return v0
.end method

.method public whitelist hasVibrator()Z
    .registers 2

    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isVibrating()Z
    .registers 4

    .line 386
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to check status of vibrator "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; no vibrator service."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VibratorManager"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return v1

    .line 392
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/os/IVibratorManagerService;->isVibrating(I)Z

    move-result v0
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_3e} :catch_3f

    return v0

    .line 393
    :catch_3f
    move-exception v0

    .line 394
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 396
    return v1
.end method

.method public blacklist performHapticFeedback(IILjava/lang/String;II)V
    .registers 7

    .line 370
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/os/SystemVibratorManager;->performHapticFeedback(IILjava/lang/String;II)V

    .line 372
    return-void
.end method

.method public whitelist removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 6

    .line 444
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    if-nez v0, :cond_30

    .line 446
    const-string p1, "VibratorManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to remove vibrate state listener from vibrator "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 447
    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; no vibrator service."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void

    .line 450
    :cond_30
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmLock(Landroid/os/SystemVibratorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 452
    :try_start_37
    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v1}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 453
    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v1}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;
    :try_end_4f
    .catchall {:try_start_37 .. :try_end_4f} :catchall_91

    .line 455
    :try_start_4f
    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v2}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v2

    iget-object v3, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1}, Landroid/os/IVibratorManagerService;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v1

    if-nez v1, :cond_81

    .line 457
    const-string p1, "VibratorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove vibrate state listener from vibrator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 458
    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 457
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_7f} :catch_8b
    .catchall {:try_start_4f .. :try_end_7f} :catchall_91

    .line 459
    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_91

    return-void

    .line 461
    :cond_81
    :try_start_81
    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v1}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_8a} :catch_8b
    .catchall {:try_start_81 .. :try_end_8a} :catchall_91

    .line 464
    goto :goto_8f

    .line 462
    :catch_8b
    move-exception p1

    .line 463
    :try_start_8c
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 466
    :cond_8f
    :goto_8f
    monitor-exit v0

    .line 467
    return-void

    .line 466
    :catchall_91
    move-exception p1

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_91

    throw p1
.end method

.method public blacklist setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    .registers 12

    .line 351
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 352
    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p4}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object p4

    .line 353
    invoke-virtual {p4}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v4

    .line 354
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/os/SystemVibratorManager;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z

    move-result p1

    return p1
.end method

.method public whitelist startVendorSession(Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/vibrator/VendorVibrationSession$Callback;)V
    .registers 13

    .line 473
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorId:[I

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/SystemVibratorManager;->startVendorSession([ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/vibrator/VendorVibrationSession$Callback;)V

    .line 475
    return-void
.end method

.method public blacklist vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    .registers 12

    .line 361
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 362
    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object p3

    .line 363
    invoke-virtual {p3}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v3

    .line 364
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/os/SystemVibratorManager;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 365
    return-void
.end method
