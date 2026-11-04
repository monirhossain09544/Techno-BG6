.class public abstract Landroid/media/tv/extension/scan/ILcnV2ChannelList$Stub;
.super Landroid/os/Binder;
.source "ILcnV2ChannelList.java"

# interfaces
.implements Landroid/media/tv/extension/scan/ILcnV2ChannelList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/scan/ILcnV2ChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/ILcnV2ChannelList$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getLcnV2ChannelLists:I = 0x1

.field static final blacklist TRANSACTION_setLcnV2ChannelList:I = 0x2

.field static final blacklist TRANSACTION_setListener:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.media.tv.extension.scan.ILcnV2ChannelList"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/scan/ILcnV2ChannelList$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scan/ILcnV2ChannelList;
    .registers 3

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_4
    const-string v0, "android.media.tv.extension.scan.ILcnV2ChannelList"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/scan/ILcnV2ChannelList;

    if-eqz v1, :cond_13

    .line 61
    check-cast v0, Landroid/media/tv/extension/scan/ILcnV2ChannelList;

    return-object v0

    .line 63
    :cond_13
    new-instance v0, Landroid/media/tv/extension/scan/ILcnV2ChannelList$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/scan/ILcnV2ChannelList$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 72
    packed-switch p0, :pswitch_data_10

    .line 88
    const/4 p0, 0x0

    return-object p0

    .line 84
    :pswitch_5
    const-string/jumbo p0, "setListener"

    return-object p0

    .line 80
    :pswitch_9
    const-string/jumbo p0, "setLcnV2ChannelList"

    return-object p0

    .line 76
    :pswitch_d
    const-string p0, "getLcnV2ChannelLists"

    return-object p0

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 221
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 95
    invoke-static {p1}, Landroid/media/tv/extension/scan/ILcnV2ChannelList$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 99
    nop

    .line 100
    const-string v0, "android.media.tv.extension.scan.ILcnV2ChannelList"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 107
    :cond_17
    packed-switch p1, :pswitch_data_58

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 129
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/extension/scan/ILcnV2ChannelListListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scan/ILcnV2ChannelListListener;

    move-result-object p1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/scan/ILcnV2ChannelList$Stub;->setListener(Landroid/media/tv/extension/scan/ILcnV2ChannelListListener;)I

    move-result p1

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    goto :goto_56

    .line 119
    :pswitch_35
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/scan/ILcnV2ChannelList$Stub;->setLcnV2ChannelList(Landroid/os/Bundle;)I

    move-result p1

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    goto :goto_56

    .line 111
    :pswitch_4b
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/ILcnV2ChannelList$Stub;->getLcnV2ChannelLists()[Landroid/os/Bundle;

    move-result-object p1

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 114
    nop

    .line 141
    :goto_56
    return v1

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_35
        :pswitch_1f
    .end packed-switch
.end method
