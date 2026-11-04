.class public abstract Lcom/android/internal/listeners/ListenerTransportManager;
.super Ljava/lang/Object;
.source "ListenerTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TTransport::",
        "Lcom/android/internal/listeners/ListenerTransport<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mRegistrations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/WeakReference<",
            "TTTransport;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Z)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-eqz p1, :cond_d

    .line 47
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    goto :goto_14

    .line 49
    :cond_d
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    .line 51
    :goto_14
    return-void
.end method


# virtual methods
.method public final blacklist addListener(Ljava/lang/Object;Lcom/android/internal/listeners/ListenerTransport;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TTTransport;)V"
        }
    .end annotation

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_31

    .line 62
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 63
    if-eqz v1, :cond_14

    .line 64
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/listeners/ListenerTransport;

    goto :goto_15

    .line 66
    :cond_14
    const/4 v1, 0x0

    .line 69
    :goto_15
    if-nez v1, :cond_1b

    .line 70
    invoke-virtual {p0, p2}, Lcom/android/internal/listeners/ListenerTransportManager;->registerTransport(Lcom/android/internal/listeners/ListenerTransport;)V

    goto :goto_21

    .line 72
    :cond_1b
    invoke-virtual {p0, p2, v1}, Lcom/android/internal/listeners/ListenerTransportManager;->registerTransport(Lcom/android/internal/listeners/ListenerTransport;Lcom/android/internal/listeners/ListenerTransport;)V

    .line 73
    invoke-interface {v1}, Lcom/android/internal/listeners/ListenerTransport;->unregister()V

    .line 75
    :goto_21
    iget-object v1, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v0

    .line 79
    nop

    .line 80
    return-void

    .line 76
    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    :try_start_30
    throw p1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_31} :catch_31

    .line 77
    :catch_31
    move-exception p1

    .line 78
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method protected abstract blacklist registerTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTTransport;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected blacklist registerTransport(Lcom/android/internal/listeners/ListenerTransport;Lcom/android/internal/listeners/ListenerTransport;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTTransport;TTTransport;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/internal/listeners/ListenerTransportManager;->registerTransport(Lcom/android/internal/listeners/ListenerTransport;)V

    .line 117
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/internal/listeners/ListenerTransportManager;->unregisterTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_8

    .line 126
    nop

    .line 127
    return-void

    .line 118
    :catch_8
    move-exception p2

    .line 121
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/internal/listeners/ListenerTransportManager;->unregisterTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    .line 124
    goto :goto_11

    .line 122
    :catch_d
    move-exception p1

    .line 123
    invoke-virtual {p2, p1}, Landroid/os/RemoteException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 125
    :goto_11
    throw p2
.end method

.method public final blacklist removeListener(Ljava/lang/Object;)V
    .registers 4

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_21

    .line 90
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 91
    if-eqz p1, :cond_1b

    .line 92
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/listeners/ListenerTransport;

    .line 93
    if-eqz p1, :cond_1b

    .line 94
    invoke-interface {p1}, Lcom/android/internal/listeners/ListenerTransport;->unregister()V

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/listeners/ListenerTransportManager;->unregisterTransport(Lcom/android/internal/listeners/ListenerTransport;)V

    .line 98
    :cond_1b
    monitor-exit v0

    .line 101
    nop

    .line 102
    return-void

    .line 98
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    :try_start_20
    throw p1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_21} :catch_21

    .line 99
    :catch_21
    move-exception p1

    .line 100
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method protected abstract blacklist unregisterTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTTransport;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
