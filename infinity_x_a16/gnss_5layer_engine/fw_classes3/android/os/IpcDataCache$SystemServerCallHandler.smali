.class Landroid/os/IpcDataCache$SystemServerCallHandler;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "IpcDataCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IpcDataCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemServerCallHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Query:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/IpcDataCache$QueryHandler<",
        "TQuery;TResult;>;"
    }
.end annotation


# instance fields
.field private final blacklist mHandler:Landroid/os/IpcDataCache$RemoteCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$RemoteCall<",
            "TQuery;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/os/IpcDataCache$RemoteCall;)V
    .registers 2

    .line 592
    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    .line 593
    iput-object p1, p0, Landroid/os/IpcDataCache$SystemServerCallHandler;->mHandler:Landroid/os/IpcDataCache$RemoteCall;

    .line 594
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

    .line 598
    :try_start_0
    iget-object v0, p0, Landroid/os/IpcDataCache$SystemServerCallHandler;->mHandler:Landroid/os/IpcDataCache$RemoteCall;

    invoke-interface {v0, p1}, Landroid/os/IpcDataCache$RemoteCall;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 599
    :catch_7
    move-exception p1

    .line 600
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
