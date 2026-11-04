.class public abstract Landroid/media/tv/ITvRemoteProvider$Stub;
.super Landroid/os/Binder;
.source "ITvRemoteProvider.java"

# interfaces
.implements Landroid/media/tv/ITvRemoteProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvRemoteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvRemoteProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvRemoteProvider"

.field static final greylist-max-o TRANSACTION_onInputBridgeConnected:I = 0x2

.field static final greylist-max-o TRANSACTION_setRemoteServiceInputSink:I = 0x1


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.media.tv.ITvRemoteProvider"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvRemoteProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvRemoteProvider;
    .registers 3

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_4
    const-string v0, "android.media.tv.ITvRemoteProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/ITvRemoteProvider;

    if-eqz v1, :cond_13

    .line 47
    check-cast v0, Landroid/media/tv/ITvRemoteProvider;

    return-object v0

    .line 49
    :cond_13
    new-instance v0, Landroid/media/tv/ITvRemoteProvider$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/ITvRemoteProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 58
    packed-switch p0, :pswitch_data_e

    .line 70
    const/4 p0, 0x0

    return-object p0

    .line 66
    :pswitch_5
    const-string/jumbo p0, "onInputBridgeConnected"

    return-object p0

    .line 62
    :pswitch_9
    const-string/jumbo p0, "setRemoteServiceInputSink"

    return-object p0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 77
    invoke-static {p1}, Landroid/media/tv/ITvRemoteProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 81
    nop

    .line 82
    const-string v0, "android.media.tv.ITvRemoteProvider"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 83
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 86
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return v1

    .line 89
    :cond_17
    packed-switch p1, :pswitch_data_3a

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 102
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvRemoteProvider$Stub;->onInputBridgeConnected(Landroid/os/IBinder;)V

    .line 105
    goto :goto_39

    .line 94
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvRemoteServiceInput;

    move-result-object p1

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 96
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvRemoteProvider$Stub;->setRemoteServiceInputSink(Landroid/media/tv/ITvRemoteServiceInput;)V

    .line 97
    nop

    .line 112
    :goto_39
    return v1

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
