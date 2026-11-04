.class public abstract Landroid/service/selectiontoolbar/SelectionToolbarRenderService;
.super Landroid/app/Service;
.source "SelectionToolbarRenderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/selectiontoolbar/SelectionToolbarRenderService$OnPasteActionCallback;,
        Landroid/service/selectiontoolbar/SelectionToolbarRenderService$TransferTouchListener;,
        Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;
    }
.end annotation


# static fields
.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.selectiontoolbar.SelectionToolbarRenderService"

.field private static final blacklist TAG:Ljava/lang/String; = "SelectionToolbarRenderService"


# instance fields
.field private final blacklist mInterface:Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;

.field private final blacklist mLock:Ljava/lang/Object;

.field private volatile blacklist mServiceCallback:Landroid/service/selectiontoolbar/ISelectionToolbarRenderServiceCallback;

.field private final blacklist mThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/service/selectiontoolbar/SelectionToolbarRenderService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceCallback(Landroid/service/selectiontoolbar/SelectionToolbarRenderService;Landroid/service/selectiontoolbar/ISelectionToolbarRenderServiceCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;->mServiceCallback:Landroid/service/selectiontoolbar/ISelectionToolbarRenderServiceCallback;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;->mLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Landroid/os/HandlerThread;

    .line 59
    const-class v1, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;->mThread:Landroid/os/HandlerThread;

    .line 72
    new-instance v0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;

    invoke-direct {v0, p0}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;-><init>(Landroid/service/selectiontoolbar/SelectionToolbarRenderService;)V

    iput-object v0, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;->mInterface:Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;

    .line 62
    iget-object v0, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 63
    return-void
.end method


# virtual methods
.method protected final blacklist getToolbarUiExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    .line 145
    const-string v0, "android.service.selectiontoolbar.SelectionToolbarRenderService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 146
    iget-object p1, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;->mInterface:Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;

    invoke-interface {p1}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 148
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.selectiontoolbar.SelectionToolbarRenderService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SelectionToolbarRenderService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract blacklist onDismiss(I)V
.end method

.method public abstract blacklist onHide(I)V
.end method

.method protected blacklist onPasteAction(I)V
    .registers 4

    .line 166
    iget-object v0, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;->mServiceCallback:Landroid/service/selectiontoolbar/ISelectionToolbarRenderServiceCallback;

    .line 167
    const-string v1, "SelectionToolbarRenderService"

    if-nez v0, :cond_d

    .line 168
    const-string/jumbo p1, "onPasteAction(): no server callback"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void

    .line 172
    :cond_d
    :try_start_d
    invoke-interface {v0, p1}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderServiceCallback;->onPasteAction(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    .line 175
    goto :goto_17

    .line 173
    :catch_11
    move-exception p1

    .line 174
    const-string v0, "Failed to notify onPasteAction"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :goto_17
    return-void
.end method

.method public abstract blacklist onShow(ILandroid/view/selectiontoolbar/ShowInfo;Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;)V
.end method

.method public abstract blacklist onUidDied(I)V
.end method

.method protected blacklist transferTouch(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 4

    .line 153
    iget-object v0, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;->mServiceCallback:Landroid/service/selectiontoolbar/ISelectionToolbarRenderServiceCallback;

    .line 154
    if-nez v0, :cond_d

    .line 155
    const-string p1, "SelectionToolbarRenderService"

    const-string/jumbo p2, "transferTouch(): no server callback"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    .line 159
    :cond_d
    :try_start_d
    invoke-interface {v0, p1, p2}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderServiceCallback;->transferTouch(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    .line 162
    goto :goto_12

    .line 160
    :catch_11
    move-exception p1

    .line 163
    :goto_12
    return-void
.end method
