.class Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;
.super Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub;
.source "SelectionToolbarRenderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/selectiontoolbar/SelectionToolbarRenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/service/selectiontoolbar/SelectionToolbarRenderService;


# direct methods
.method public static synthetic blacklist $r8$lambda$J6PtF95fOzKCj_pQSU8mbKX65TI(Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;->lambda$onShow$0(I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/selectiontoolbar/SelectionToolbarRenderService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;->this$0:Landroid/service/selectiontoolbar/SelectionToolbarRenderService;

    invoke-direct {p0}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub;-><init>()V

    .line 79
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;->mCache:Landroid/util/SparseArray;

    return-void
.end method

.method private synthetic blacklist lambda$onShow$0(I)V
    .registers 4

    .line 96
    iget-object v0, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;->this$0:Landroid/service/selectiontoolbar/SelectionToolbarRenderService;

    invoke-static {v0}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;->-$$Nest$fgetmLock(Landroid/service/selectiontoolbar/SelectionToolbarRenderService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 97
    :try_start_7
    iget-object v1, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 98
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 99
    invoke-virtual {p0, p1}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;->onUidDied(I)V

    .line 100
    return-void

    .line 98
    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method


# virtual methods
.method public blacklist onConnected(Landroid/os/IBinder;)V
    .registers 3

    .line 84
    iget-object v0, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;->this$0:Landroid/service/selectiontoolbar/SelectionToolbarRenderService;

    invoke-static {p1}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/selectiontoolbar/ISelectionToolbarRenderServiceCallback;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;->-$$Nest$fputmServiceCallback(Landroid/service/selectiontoolbar/SelectionToolbarRenderService;Landroid/service/selectiontoolbar/ISelectionToolbarRenderServiceCallback;)V

    .line 86
    return-void
.end method

.method public blacklist onDismiss(I)V
    .registers 4

    .line 124
    iget-object v0, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;->this$0:Landroid/service/selectiontoolbar/SelectionToolbarRenderService;

    invoke-static {v0}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;->-$$Nest$fgetmLock(Landroid/service/selectiontoolbar/SelectionToolbarRenderService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 125
    :try_start_7
    iget-object v1, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;->this$0:Landroid/service/selectiontoolbar/SelectionToolbarRenderService;

    invoke-virtual {v1, p1}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;->onDismiss(I)V

    .line 126
    iget-object v1, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;->mCache:Landroid/util/SparseArray;

    .line 127
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;

    .line 128
    if-eqz p1, :cond_19

    .line 129
    invoke-static {p1}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;->-$$Nest$munlinkToDeath(Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;)V

    .line 131
    :cond_19
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public blacklist onHide(I)V
    .registers 4

    .line 117
    iget-object v0, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;->this$0:Landroid/service/selectiontoolbar/SelectionToolbarRenderService;

    invoke-static {v0}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;->-$$Nest$fgetmLock(Landroid/service/selectiontoolbar/SelectionToolbarRenderService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 118
    :try_start_7
    iget-object v1, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;->this$0:Landroid/service/selectiontoolbar/SelectionToolbarRenderService;

    invoke-virtual {v1, p1}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;->onHide(I)V

    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public blacklist onShow(ILandroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V
    .registers 8

    .line 91
    iget-object v0, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;->this$0:Landroid/service/selectiontoolbar/SelectionToolbarRenderService;

    invoke-static {v0}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;->-$$Nest$fgetmLock(Landroid/service/selectiontoolbar/SelectionToolbarRenderService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 92
    :try_start_7
    iget-object v1, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_3b

    .line 93
    if-nez v1, :cond_34

    .line 95
    :try_start_11
    new-instance v1, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1$$ExternalSyntheticLambda0;-><init>(Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;I)V

    .line 101
    invoke-interface {p3}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 102
    new-instance v2, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;

    invoke-direct {v2, p3, v1}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;-><init>(Landroid/view/selectiontoolbar/ISelectionToolbarCallback;Landroid/os/IBinder$DeathRecipient;)V

    .line 104
    iget-object p3, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_28} :catch_2a
    .catchall {:try_start_11 .. :try_end_28} :catchall_3b

    .line 108
    move-object v1, v2

    goto :goto_34

    .line 105
    :catch_2a
    move-exception p1

    .line 106
    :try_start_2b
    const-string p1, "SelectionToolbarRenderService"

    const-string p2, "ISelectionToolbarCallback has already died"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    monitor-exit v0

    return-void

    .line 110
    :cond_34
    :goto_34
    iget-object p3, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;->this$0:Landroid/service/selectiontoolbar/SelectionToolbarRenderService;

    invoke-virtual {p3, p1, p2, v1}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;->onShow(ILandroid/view/selectiontoolbar/ShowInfo;Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;)V

    .line 112
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public blacklist onUidDied(I)V
    .registers 4

    .line 136
    iget-object v0, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;->this$0:Landroid/service/selectiontoolbar/SelectionToolbarRenderService;

    invoke-static {v0}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;->-$$Nest$fgetmLock(Landroid/service/selectiontoolbar/SelectionToolbarRenderService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 137
    :try_start_7
    iget-object v1, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;->this$0:Landroid/service/selectiontoolbar/SelectionToolbarRenderService;

    invoke-virtual {v1, p1}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService;->onUidDied(I)V

    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method
