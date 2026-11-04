.class final Landroid/service/smartspace/SmartspaceService$CallbackWrapper;
.super Ljava/lang/Object;
.source "SmartspaceService.java"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/smartspace/SmartspaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/List<",
        "Landroid/app/smartspace/SmartspaceTarget;",
        ">;>;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/app/smartspace/ISmartspaceCallback;

.field private final blacklist mOnBinderDied:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/app/smartspace/ISmartspaceCallback;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/smartspace/ISmartspaceCallback;",
            "Ljava/util/function/Consumer<",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ">;)V"
        }
    .end annotation

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    .line 291
    iput-object p2, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    .line 292
    iget-object p1, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    if-eqz p1, :cond_2f

    .line 294
    :try_start_b
    iget-object p1, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    invoke-interface {p1}, Landroid/app/smartspace/ISmartspaceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_16

    .line 297
    goto :goto_2f

    .line 295
    :catch_16
    move-exception p1

    .line 296
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to link to death: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmartspaceService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
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

    .line 282
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->accept(Ljava/util/List;)V

    return-void
.end method

.method public blacklist accept(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceTarget;",
            ">;)V"
        }
    .end annotation

    .line 312
    :try_start_0
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    if-eqz v0, :cond_e

    .line 317
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Landroid/app/smartspace/ISmartspaceCallback;->onResult(Landroid/content/pm/ParceledListSlice;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 321
    :cond_e
    goto :goto_28

    .line 319
    :catch_f
    move-exception p1

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sending result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmartspaceService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_28
    return-void
.end method

.method public whitelist binderDied()V
    .registers 2

    .line 336
    invoke-virtual {p0}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->destroy()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    .line 338
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    if-eqz v0, :cond_f

    .line 339
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 341
    :cond_f
    return-void
.end method

.method public blacklist destroy()V
    .registers 4

    .line 326
    :try_start_0
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    if-eqz v0, :cond_12

    .line 327
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    invoke-interface {v0}, Landroid/app/smartspace/ISmartspaceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_12
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_12} :catch_13

    .line 331
    :cond_12
    goto :goto_2c

    .line 329
    :catch_13
    move-exception v0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error trying to unlink to death:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartspaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_2c
    return-void
.end method

.method public blacklist isCallback(Landroid/app/smartspace/ISmartspaceCallback;)Z
    .registers 3

    .line 302
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    if-nez v0, :cond_d

    .line 303
    const-string p1, "SmartspaceService"

    const-string v0, "Callback is null, likely the binder has died."

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 p1, 0x0

    return p1

    .line 306
    :cond_d
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    invoke-interface {v0}, Landroid/app/smartspace/ISmartspaceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/app/smartspace/ISmartspaceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
