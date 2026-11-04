.class Landroid/os/ServiceManagerProxy;
.super Ljava/lang/Object;
.source "ServiceManagerNative.java"

# interfaces
.implements Landroid/os/IServiceManager;


# instance fields
.field private greylist mRemote:Landroid/os/IBinder;

.field private blacklist mServiceManager:Landroid/os/IServiceManager;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/os/ServiceManagerProxy;->mRemote:Landroid/os/IBinder;

    .line 53
    nop

    .line 54
    invoke-direct {p0}, Landroid/os/ServiceManagerProxy;->getNativeServiceManager()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    .line 53
    invoke-static {p1}, Landroid/os/IServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;

    move-result-object p1

    iput-object p1, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    .line 55
    return-void
.end method

.method private native blacklist getNativeServiceManager()Landroid/os/IBinder;
.end method


# virtual methods
.method public blacklist addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 87
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1}, Landroid/os/ServiceManagerProxy;->checkService2(Ljava/lang/String;)Landroid/os/Service;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Service;->getServiceWithMetadata()Landroid/os/ServiceWithMetadata;

    move-result-object p1

    iget-object p1, p1, Landroid/os/ServiceWithMetadata;->service:Landroid/os/IBinder;

    return-object p1
.end method

.method public blacklist checkService2(Ljava/lang/String;)Landroid/os/Service;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->checkService2(Ljava/lang/String;)Landroid/os/Service;

    move-result-object p1

    return-object p1
.end method

.method public blacklist checkServiceAccess(Landroid/os/IServiceManager$CallerContext;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IServiceManager;->checkServiceAccess(Landroid/os/IServiceManager$CallerContext;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist getConnectionInfo(Ljava/lang/String;)Landroid/os/ConnectionInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->getConnectionInfo(Ljava/lang/String;)Landroid/os/ConnectionInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist getService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1}, Landroid/os/ServiceManagerProxy;->checkService2(Ljava/lang/String;)Landroid/os/Service;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Service;->getServiceWithMetadata()Landroid/os/ServiceWithMetadata;

    move-result-object p1

    iget-object p1, p1, Landroid/os/ServiceWithMetadata;->service:Landroid/os/IBinder;

    return-object p1
.end method

.method public blacklist getService2(Ljava/lang/String;)Landroid/os/Service;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1}, Landroid/os/ServiceManagerProxy;->checkService2(Ljava/lang/String;)Landroid/os/Service;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0}, Landroid/os/IServiceManager;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUpdatableNames(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->getUpdatableNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist isDeclared(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist listServices(I)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->listServices(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist registerClientCallback(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/IClientCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public blacklist registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V

    .line 96
    return-void
.end method

.method public blacklist tryUnregisterService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public blacklist unregisterForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public blacklist updatableViaApex(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->updatableViaApex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
