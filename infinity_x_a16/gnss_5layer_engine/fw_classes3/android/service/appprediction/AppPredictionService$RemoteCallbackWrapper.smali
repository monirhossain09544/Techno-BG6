.class final Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;
.super Ljava/lang/Object;
.source "AppPredictionService.java"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/appprediction/AppPredictionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemoteCallbackWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/os/Bundle;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/os/IRemoteCallback;

.field private final blacklist mOnBinderDied:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/os/IRemoteCallback;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IRemoteCallback;",
            "Ljava/util/function/Consumer<",
            "Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;",
            ">;)V"
        }
    .end annotation

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-object p1, p0, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->mCallback:Landroid/os/IRemoteCallback;

    .line 396
    iput-object p2, p0, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    .line 397
    iget-object p1, p0, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    if-eqz p1, :cond_2f

    .line 399
    :try_start_b
    iget-object p1, p0, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->mCallback:Landroid/os/IRemoteCallback;

    invoke-interface {p1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_16

    .line 402
    goto :goto_2f

    .line 400
    :catch_16
    move-exception p1

    .line 401
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to link to death: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppPredictionService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public blacklist accept(Landroid/os/Bundle;)V
    .registers 4

    .line 415
    :try_start_0
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->mCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_9

    .line 416
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->mCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v0, p1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 420
    :cond_9
    goto :goto_23

    .line 418
    :catch_a
    move-exception p1

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sending result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppPredictionService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_23
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 387
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->accept(Landroid/os/Bundle;)V

    return-void
.end method

.method public whitelist binderDied()V
    .registers 2

    .line 425
    invoke-virtual {p0}, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->destroy()V

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->mCallback:Landroid/os/IRemoteCallback;

    .line 427
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    if-eqz v0, :cond_f

    .line 428
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 430
    :cond_f
    return-void
.end method

.method public blacklist destroy()V
    .registers 3

    .line 407
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->mCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    if-eqz v0, :cond_12

    .line 408
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;->mCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v0}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 410
    :cond_12
    return-void
.end method
