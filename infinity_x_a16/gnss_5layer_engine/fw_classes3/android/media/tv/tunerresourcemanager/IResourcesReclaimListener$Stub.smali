.class public abstract Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub;
.super Landroid/os/Binder;
.source "IResourcesReclaimListener.java"

# interfaces
.implements Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onReclaimResources:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "android.media.tv.tunerresourcemanager.IResourcesReclaimListener"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;
    .registers 3

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_4
    const-string v0, "android.media.tv.tunerresourcemanager.IResourcesReclaimListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    if-eqz v1, :cond_13

    .line 55
    check-cast v0, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    return-object v0

    .line 57
    :cond_13
    new-instance v0, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 61
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    nop

    .line 66
    const-string v0, "android.media.tv.tunerresourcemanager.IResourcesReclaimListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 67
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 70
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return v1

    .line 73
    :cond_17
    packed-switch p1, :pswitch_data_28

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 77
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub;->onReclaimResources()V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    nop

    .line 86
    return v1

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
