.class public interface abstract Landroid/proximity/IProximityProviderService;
.super Ljava/lang/Object;
.source "IProximityProviderService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/proximity/IProximityProviderService$Stub;,
        Landroid/proximity/IProximityProviderService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.proximity.IProximityProviderService"


# virtual methods
.method public abstract blacklist anyWatchNearby(Landroid/proximity/RangingParams;Landroid/proximity/IProximityResultCallback;)Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isProximityCheckingAvailable()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isProximityCheckingSupported()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
