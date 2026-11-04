.class public Landroid/media/tv/watchdogmanager/ITvWatchdogService$Default;
.super Ljava/lang/Object;
.source "ITvWatchdogService.java"

# interfaces
.implements Landroid/media/tv/watchdogmanager/ITvWatchdogService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/watchdogmanager/ITvWatchdogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addResourceOveruseListener(ILandroid/media/tv/watchdogmanager/IResourceOveruseListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist addResourceOveruseListenerForSystem(ILandroid/media/tv/watchdogmanager/IResourceOveruseListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllResourceOveruseStats(III)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/media/tv/watchdogmanager/ResourceOveruseStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getPackageKillableStatesAsUser(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/tv/watchdogmanager/PackageKillableState;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getResourceOveruseConfigurations(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getResourceOveruseStats(II)Landroid/media/tv/watchdogmanager/ResourceOveruseStats;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getResourceOveruseStatsForUserPackage(Ljava/lang/String;Landroid/os/UserHandle;II)Landroid/media/tv/watchdogmanager/ResourceOveruseStats;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist removeResourceOveruseListener(Landroid/media/tv/watchdogmanager/IResourceOveruseListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist removeResourceOveruseListenerForSystem(Landroid/media/tv/watchdogmanager/IResourceOveruseListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist setKillablePackageAsUser(Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist setResourceOveruseConfigurations(Ljava/util/List;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 p1, 0x0

    return p1
.end method
