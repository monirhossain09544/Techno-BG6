.class public final Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;
.super Ljava/lang/Object;
.source "SelectionToolbarRenderService.java"

# interfaces
.implements Landroid/service/selectiontoolbar/SelectionToolbarRenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/selectiontoolbar/SelectionToolbarRenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final blacklist mRemoteCallback:Landroid/view/selectiontoolbar/ISelectionToolbarCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$munlinkToDeath(Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->unlinkToDeath()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/selectiontoolbar/ISelectionToolbarCallback;Landroid/os/IBinder$DeathRecipient;)V
    .registers 3

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->mRemoteCallback:Landroid/view/selectiontoolbar/ISelectionToolbarCallback;

    .line 216
    iput-object p2, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 217
    return-void
.end method

.method private blacklist unlinkToDeath()V
    .registers 4

    .line 220
    iget-object v0, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->mRemoteCallback:Landroid/view/selectiontoolbar/ISelectionToolbarCallback;

    invoke-interface {v0}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 221
    return-void
.end method


# virtual methods
.method public blacklist onError(II)V
    .registers 4

    .line 253
    :try_start_0
    iget-object v0, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->mRemoteCallback:Landroid/view/selectiontoolbar/ISelectionToolbarCallback;

    invoke-interface {v0, p1, p2}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback;->onError(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 256
    goto :goto_7

    .line 254
    :catch_6
    move-exception p1

    .line 257
    :goto_7
    return-void
.end method

.method public blacklist onMenuItemClicked(I)V
    .registers 3

    .line 244
    :try_start_0
    iget-object v0, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->mRemoteCallback:Landroid/view/selectiontoolbar/ISelectionToolbarCallback;

    invoke-interface {v0, p1}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback;->onMenuItemClicked(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 247
    goto :goto_7

    .line 245
    :catch_6
    move-exception p1

    .line 248
    :goto_7
    return-void
.end method

.method public blacklist onShown(Landroid/view/selectiontoolbar/WidgetInfo;)V
    .registers 3

    .line 226
    :try_start_0
    iget-object v0, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->mRemoteCallback:Landroid/view/selectiontoolbar/ISelectionToolbarCallback;

    invoke-interface {v0, p1}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback;->onShown(Landroid/view/selectiontoolbar/WidgetInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 229
    goto :goto_7

    .line 227
    :catch_6
    move-exception p1

    .line 230
    :goto_7
    return-void
.end method

.method public blacklist onWidgetUpdated(Landroid/view/selectiontoolbar/WidgetInfo;)V
    .registers 3

    .line 235
    :try_start_0
    iget-object v0, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->mRemoteCallback:Landroid/view/selectiontoolbar/ISelectionToolbarCallback;

    invoke-interface {v0, p1}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback;->onWidgetUpdated(Landroid/view/selectiontoolbar/WidgetInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 238
    goto :goto_7

    .line 236
    :catch_6
    move-exception p1

    .line 239
    :goto_7
    return-void
.end method
