.class Landroid/os/IpcDataCache$2;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "IpcDataCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/IpcDataCache$QueryHandler<",
        "TQuery;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$bypass:Landroid/os/IpcDataCache$BypassCall;

.field final synthetic blacklist val$remoteCall:Landroid/os/IpcDataCache$RemoteCall;


# direct methods
.method constructor blacklist <init>(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V
    .registers 3

    .line 638
    iput-object p1, p0, Landroid/os/IpcDataCache$2;->val$remoteCall:Landroid/os/IpcDataCache$RemoteCall;

    iput-object p2, p0, Landroid/os/IpcDataCache$2;->val$bypass:Landroid/os/IpcDataCache$BypassCall;

    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    .line 642
    :try_start_0
    iget-object v0, p0, Landroid/os/IpcDataCache$2;->val$remoteCall:Landroid/os/IpcDataCache$RemoteCall;

    invoke-interface {v0, p1}, Landroid/os/IpcDataCache$RemoteCall;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 643
    :catch_7
    move-exception p1

    .line 644
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist shouldBypassCache(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)Z"
        }
    .end annotation

    .line 650
    iget-object v0, p0, Landroid/os/IpcDataCache$2;->val$bypass:Landroid/os/IpcDataCache$BypassCall;

    invoke-interface {v0, p1}, Landroid/os/IpcDataCache$BypassCall;->apply(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
