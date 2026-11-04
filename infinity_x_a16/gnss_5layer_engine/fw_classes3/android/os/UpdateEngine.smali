.class public Landroid/os/UpdateEngine;
.super Ljava/lang/Object;
.source "UpdateEngine.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UpdateEngine$AllocateSpaceResult;,
        Landroid/os/UpdateEngine$ErrorCodeConstants;,
        Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;,
        Landroid/os/UpdateEngine$UpdateStatusConstants;,
        Landroid/os/UpdateEngine$ErrorCode;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "UpdateEngine"

.field private static final greylist-max-o UPDATE_ENGINE_SERVICE:Ljava/lang/String; = "android.os.UpdateEngineService"


# instance fields
.field private final greylist-max-o mUpdateEngine:Landroid/os/IUpdateEngine;

.field private greylist-max-o mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

.field private final greylist-max-o mUpdateEngineCallbackLock:Ljava/lang/Object;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

    .line 248
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallbackLock:Ljava/lang/Object;

    .line 254
    nop

    .line 255
    const-string v0, "android.os.UpdateEngineService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 254
    invoke-static {v0}, Landroid/os/IUpdateEngine$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngine;

    move-result-object v0

    iput-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    .line 256
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    if-eqz v0, :cond_1f

    .line 259
    return-void

    .line 257
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to find update_engine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist allocateSpace(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/UpdateEngine$AllocateSpaceResult;
    .registers 7

    .line 597
    new-instance v0, Landroid/os/UpdateEngine$AllocateSpaceResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/UpdateEngine$AllocateSpaceResult;-><init>(Landroid/os/UpdateEngine-IA;)V

    .line 599
    const-wide/16 v1, 0x0

    :try_start_8
    iget-object v3, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v3, p1, p2}, Landroid/os/IUpdateEngine;->allocateSpaceForPayload(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Landroid/os/UpdateEngine$AllocateSpaceResult;->-$$Nest$fputmFreeSpaceRequired(Landroid/os/UpdateEngine$AllocateSpaceResult;J)V

    .line 602
    invoke-static {v0}, Landroid/os/UpdateEngine$AllocateSpaceResult;->-$$Nest$fgetmFreeSpaceRequired(Landroid/os/UpdateEngine$AllocateSpaceResult;)J

    move-result-wide p1

    cmp-long p1, p1, v1

    if-nez p1, :cond_1b

    .line 603
    const/4 p1, 0x0

    goto :goto_1d

    .line 604
    :cond_1b
    const/16 p1, 0x3c

    :goto_1d
    invoke-static {v0, p1}, Landroid/os/UpdateEngine$AllocateSpaceResult;->-$$Nest$fputmErrorCode(Landroid/os/UpdateEngine$AllocateSpaceResult;I)V
    :try_end_20
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_20} :catch_27
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 605
    return-object v0

    .line 610
    :catch_21
    move-exception p1

    .line 611
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 606
    :catch_27
    move-exception p1

    .line 607
    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v0, p1}, Landroid/os/UpdateEngine$AllocateSpaceResult;->-$$Nest$fputmErrorCode(Landroid/os/UpdateEngine$AllocateSpaceResult;I)V

    .line 608
    invoke-static {v0, v1, v2}, Landroid/os/UpdateEngine$AllocateSpaceResult;->-$$Nest$fputmFreeSpaceRequired(Landroid/os/UpdateEngine$AllocateSpaceResult;J)V

    .line 609
    return-object v0
.end method

.method public whitelist applyPayload(Landroid/content/res/AssetFileDescriptor;[Ljava/lang/String;)V
    .registers 10

    .line 371
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 372
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 371
    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Landroid/os/IUpdateEngine;->applyPayloadFd(Landroid/os/ParcelFileDescriptor;JJ[Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 375
    nop

    .line 376
    return-void

    .line 373
    :catch_14
    move-exception v0

    move-object p1, v0

    .line 374
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    .registers 8

    .line 355
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    move-object p0, v0

    invoke-interface/range {p0 .. p6}, Landroid/os/IUpdateEngine;->applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 358
    nop

    .line 359
    return-void

    .line 356
    :catch_8
    move-exception v0

    move-object p1, v0

    .line 357
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist bind(Landroid/os/UpdateEngineCallback;)Z
    .registers 3

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/UpdateEngine;->bind(Landroid/os/UpdateEngineCallback;Landroid/os/Handler;)Z

    move-result p1

    return p1
.end method

.method public whitelist bind(Landroid/os/UpdateEngineCallback;Landroid/os/Handler;)Z
    .registers 5

    .line 267
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_3
    new-instance v1, Landroid/os/UpdateEngine$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/os/UpdateEngine$1;-><init>(Landroid/os/UpdateEngine;Landroid/os/Handler;Landroid/os/UpdateEngineCallback;)V

    iput-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1a

    .line 299
    :try_start_a
    iget-object p1, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    iget-object p2, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

    invoke-interface {p1, p2}, Landroid/os/IUpdateEngine;->bind(Landroid/os/IUpdateEngineCallback;)Z

    move-result p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_14
    .catchall {:try_start_a .. :try_end_12} :catchall_1a

    :try_start_12
    monitor-exit v0

    return p1

    .line 300
    :catch_14
    move-exception p1

    .line 301
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 303
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public whitelist cancel()V
    .registers 2

    .line 389
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->cancel()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 392
    nop

    .line 393
    return-void

    .line 390
    :catch_7
    move-exception v0

    .line 391
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist cleanupAppliedPayload()I
    .registers 3

    .line 674
    new-instance v0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;-><init>(Landroid/os/UpdateEngine-IA;)V

    .line 676
    :try_start_6
    iget-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v1, v0}, Landroid/os/IUpdateEngine;->cleanupSuccessfulUpdate(Landroid/os/IUpdateEngineCallback;)V

    .line 677
    invoke-static {v0}, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->-$$Nest$mgetResult(Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;)I

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    return v0

    .line 678
    :catch_10
    move-exception v0

    .line 679
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist resetShouldSwitchSlotOnReboot()V
    .registers 2

    .line 463
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->resetShouldSwitchSlotOnReboot()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 466
    nop

    .line 467
    return-void

    .line 464
    :catch_7
    move-exception v0

    .line 465
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist resetStatus()V
    .registers 2

    .line 430
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->resetStatus()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 433
    nop

    .line 434
    return-void

    .line 431
    :catch_7
    move-exception v0

    .line 432
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist resume()V
    .registers 2

    .line 412
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->resume()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 415
    nop

    .line 416
    return-void

    .line 413
    :catch_7
    move-exception v0

    .line 414
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist setPerformanceMode(Z)V
    .registers 3

    .line 474
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0, p1}, Landroid/os/IUpdateEngine;->setPerformanceMode(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 477
    nop

    .line 478
    return-void

    .line 475
    :catch_7
    move-exception p1

    .line 476
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setShouldSwitchSlotOnReboot(Ljava/lang/String;)V
    .registers 3

    .line 446
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0, p1}, Landroid/os/IUpdateEngine;->setShouldSwitchSlotOnReboot(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 449
    nop

    .line 450
    return-void

    .line 447
    :catch_7
    move-exception p1

    .line 448
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist suspend()V
    .registers 2

    .line 401
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->suspend()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 404
    nop

    .line 405
    return-void

    .line 402
    :catch_7
    move-exception v0

    .line 403
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist triggerPostinstall(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 696
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0, p1}, Landroid/os/IUpdateEngine;->triggerPostinstall(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 699
    nop

    .line 700
    return-void

    .line 697
    :catch_7
    move-exception p1

    .line 698
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist unbind()Z
    .registers 4

    .line 484
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_3
    iget-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

    if-nez v1, :cond_a

    .line 486
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1d

    const/4 v0, 0x1

    return v0

    .line 489
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    iget-object v2, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

    invoke-interface {v1, v2}, Landroid/os/IUpdateEngine;->unbind(Landroid/os/IUpdateEngineCallback;)Z

    move-result v1

    .line 490
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_17
    .catchall {:try_start_a .. :try_end_15} :catchall_1d

    .line 491
    :try_start_15
    monitor-exit v0

    return v1

    .line 492
    :catch_17
    move-exception v1

    .line 493
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 495
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public whitelist verifyPayloadMetadata(Ljava/lang/String;)Z
    .registers 3

    .line 509
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0, p1}, Landroid/os/IUpdateEngine;->verifyPayloadApplicable(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 510
    :catch_7
    move-exception p1

    .line 511
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
