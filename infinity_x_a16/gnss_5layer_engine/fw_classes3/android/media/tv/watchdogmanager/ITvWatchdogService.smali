.class public interface abstract Landroid/media/tv/watchdogmanager/ITvWatchdogService;
.super Ljava/lang/Object;
.source "ITvWatchdogService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/watchdogmanager/ITvWatchdogService$Stub;,
        Landroid/media/tv/watchdogmanager/ITvWatchdogService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.watchdogmanager.ITvWatchdogService"


# virtual methods
.method public abstract blacklist addResourceOveruseListener(ILandroid/media/tv/watchdogmanager/IResourceOveruseListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist addResourceOveruseListenerForSystem(ILandroid/media/tv/watchdogmanager/IResourceOveruseListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getAllResourceOveruseStats(III)Ljava/util/List;
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
.end method

.method public abstract blacklist getPackageKillableStatesAsUser(Landroid/os/UserHandle;)Ljava/util/List;
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
.end method

.method public abstract blacklist getResourceOveruseConfigurations(I)Ljava/util/List;
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
.end method

.method public abstract blacklist getResourceOveruseStats(II)Landroid/media/tv/watchdogmanager/ResourceOveruseStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getResourceOveruseStatsForUserPackage(Ljava/lang/String;Landroid/os/UserHandle;II)Landroid/media/tv/watchdogmanager/ResourceOveruseStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeResourceOveruseListener(Landroid/media/tv/watchdogmanager/IResourceOveruseListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeResourceOveruseListenerForSystem(Landroid/media/tv/watchdogmanager/IResourceOveruseListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setKillablePackageAsUser(Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setResourceOveruseConfigurations(Ljava/util/List;I)I
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
.end method
