.class public abstract Landroid/media/tv/extension/cam/ICamProfileInterface$Stub;
.super Landroid/os/Binder;
.source "ICamProfileInterface.java"

# interfaces
.implements Landroid/media/tv/extension/cam/ICamProfileInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/cam/ICamProfileInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/ICamProfileInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCamServiceUpdateInfo:I = 0x1

.field static final blacklist TRANSACTION_requestResendProfileInfoBroadcastACON:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.media.tv.extension.cam.ICamProfileInterface"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/cam/ICamProfileInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamProfileInterface;
    .registers 3

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_4
    const-string v0, "android.media.tv.extension.cam.ICamProfileInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/cam/ICamProfileInterface;

    if-eqz v1, :cond_13

    .line 50
    check-cast v0, Landroid/media/tv/extension/cam/ICamProfileInterface;

    return-object v0

    .line 52
    :cond_13
    new-instance v0, Landroid/media/tv/extension/cam/ICamProfileInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/cam/ICamProfileInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 61
    packed-switch p0, :pswitch_data_c

    .line 73
    const/4 p0, 0x0

    return-object p0

    .line 69
    :pswitch_5
    const-string/jumbo p0, "requestResendProfileInfoBroadcastACON"

    return-object p0

    .line 65
    :pswitch_9
    const-string p0, "getCamServiceUpdateInfo"

    return-object p0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 80
    invoke-static {p1}, Landroid/media/tv/extension/cam/ICamProfileInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    nop

    .line 85
    const-string v0, "android.media.tv.extension.cam.ICamProfileInterface"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 86
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 89
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return v1

    .line 92
    :cond_17
    packed-switch p1, :pswitch_data_3a

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 106
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/tv/extension/cam/ICamProfileInterface$Stub;->requestResendProfileInfoBroadcastACON()V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    goto :goto_38

    .line 97
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 99
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/cam/ICamProfileInterface$Stub;->getCamServiceUpdateInfo(I)Landroid/os/Bundle;

    move-result-object p1

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 102
    nop

    .line 115
    :goto_38
    return v1

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_1f
    .end packed-switch
.end method
