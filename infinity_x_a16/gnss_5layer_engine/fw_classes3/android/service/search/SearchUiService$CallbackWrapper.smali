.class final Landroid/service/search/SearchUiService$CallbackWrapper;
.super Ljava/lang/Object;
.source "SearchUiService.java"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/search/SearchUiService;
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
        "Landroid/app/search/SearchTarget;",
        ">;>;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/app/search/ISearchCallback;

.field private final blacklist mOnBinderDied:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/service/search/SearchUiService$CallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/app/search/ISearchCallback;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/search/ISearchCallback;",
            "Ljava/util/function/Consumer<",
            "Landroid/service/search/SearchUiService$CallbackWrapper;",
            ">;)V"
        }
    .end annotation

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Landroid/service/search/SearchUiService$CallbackWrapper;->mCallback:Landroid/app/search/ISearchCallback;

    .line 297
    iput-object p2, p0, Landroid/service/search/SearchUiService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    .line 298
    iget-object p1, p0, Landroid/service/search/SearchUiService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    if-eqz p1, :cond_2f

    .line 300
    :try_start_b
    iget-object p1, p0, Landroid/service/search/SearchUiService$CallbackWrapper;->mCallback:Landroid/app/search/ISearchCallback;

    invoke-interface {p1}, Landroid/app/search/ISearchCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_16

    .line 303
    goto :goto_2f

    .line 301
    :catch_16
    move-exception p1

    .line 302
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to link to death:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SearchUiService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
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

    .line 288
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/service/search/SearchUiService$CallbackWrapper;->accept(Ljava/util/List;)V

    return-void
.end method

.method public blacklist accept(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/search/SearchTarget;",
            ">;)V"
        }
    .end annotation

    .line 319
    :try_start_0
    iget-object v0, p0, Landroid/service/search/SearchUiService$CallbackWrapper;->mCallback:Landroid/app/search/ISearchCallback;

    if-eqz v0, :cond_e

    .line 323
    iget-object v0, p0, Landroid/service/search/SearchUiService$CallbackWrapper;->mCallback:Landroid/app/search/ISearchCallback;

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Landroid/app/search/ISearchCallback;->onResult(Landroid/content/pm/ParceledListSlice;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 327
    :cond_e
    goto :goto_28

    .line 325
    :catch_f
    move-exception p1

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sending result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SearchUiService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_28
    return-void
.end method

.method public whitelist binderDied()V
    .registers 2

    .line 338
    invoke-virtual {p0}, Landroid/service/search/SearchUiService$CallbackWrapper;->destroy()V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/search/SearchUiService$CallbackWrapper;->mCallback:Landroid/app/search/ISearchCallback;

    .line 340
    iget-object v0, p0, Landroid/service/search/SearchUiService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    if-eqz v0, :cond_f

    .line 341
    iget-object v0, p0, Landroid/service/search/SearchUiService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 343
    :cond_f
    return-void
.end method

.method public blacklist destroy()V
    .registers 3

    .line 331
    iget-object v0, p0, Landroid/service/search/SearchUiService$CallbackWrapper;->mCallback:Landroid/app/search/ISearchCallback;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/service/search/SearchUiService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    if-eqz v0, :cond_12

    .line 332
    iget-object v0, p0, Landroid/service/search/SearchUiService$CallbackWrapper;->mCallback:Landroid/app/search/ISearchCallback;

    invoke-interface {v0}, Landroid/app/search/ISearchCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 334
    :cond_12
    return-void
.end method

.method public blacklist isCallback(Landroid/app/search/ISearchCallback;)Z
    .registers 3

    .line 308
    iget-object v0, p0, Landroid/service/search/SearchUiService$CallbackWrapper;->mCallback:Landroid/app/search/ISearchCallback;

    if-nez v0, :cond_d

    .line 309
    const-string p1, "SearchUiService"

    const-string v0, "Callback is null, likely the binder has died."

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 p1, 0x0

    return p1

    .line 312
    :cond_d
    iget-object v0, p0, Landroid/service/search/SearchUiService$CallbackWrapper;->mCallback:Landroid/app/search/ISearchCallback;

    invoke-interface {v0}, Landroid/app/search/ISearchCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/app/search/ISearchCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
