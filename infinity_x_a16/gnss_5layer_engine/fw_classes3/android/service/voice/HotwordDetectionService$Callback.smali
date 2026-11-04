.class public final Landroid/service/voice/HotwordDetectionService$Callback;
.super Ljava/lang/Object;
.source "HotwordDetectionService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/HotwordDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Callback"
.end annotation


# instance fields
.field private final blacklist mRemoteCallback:Landroid/service/voice/IDspHotwordDetectionCallback;


# direct methods
.method private constructor blacklist <init>(Landroid/service/voice/IDspHotwordDetectionCallback;)V
    .registers 2

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p1, p0, Landroid/service/voice/HotwordDetectionService$Callback;->mRemoteCallback:Landroid/service/voice/IDspHotwordDetectionCallback;

    .line 417
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/HotwordDetectionService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/voice/HotwordDetectionService$Callback;-><init>(Landroid/service/voice/IDspHotwordDetectionCallback;)V

    return-void
.end method


# virtual methods
.method public whitelist onDetected(Landroid/service/voice/HotwordDetectedResult;)V
    .registers 4

    .line 426
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-virtual {p1}, Landroid/service/voice/HotwordDetectedResult;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-static {v0}, Landroid/service/voice/HotwordDetectedResult;->getParcelableSize(Landroid/os/Parcelable;)I

    move-result v0

    .line 429
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxBundleSize()I

    move-result v1

    if-gt v0, v1, :cond_18

    goto :goto_3b

    .line 430
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The bundle size of result is larger than max bundle size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxBundleSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") of HotwordDetectedResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 436
    :cond_3b
    :goto_3b
    :try_start_3b
    iget-object v0, p0, Landroid/service/voice/HotwordDetectionService$Callback;->mRemoteCallback:Landroid/service/voice/IDspHotwordDetectionCallback;

    invoke-interface {v0, p1}, Landroid/service/voice/IDspHotwordDetectionCallback;->onDetected(Landroid/service/voice/HotwordDetectedResult;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_42

    .line 439
    nop

    .line 440
    return-void

    .line 437
    :catch_42
    move-exception p1

    .line 438
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 3

    .line 452
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :try_start_3
    iget-object v0, p0, Landroid/service/voice/HotwordDetectionService$Callback;->mRemoteCallback:Landroid/service/voice/IDspHotwordDetectionCallback;

    invoke-interface {v0, p1}, Landroid/service/voice/IDspHotwordDetectionCallback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 457
    nop

    .line 458
    return-void

    .line 455
    :catch_a
    move-exception p1

    .line 456
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
