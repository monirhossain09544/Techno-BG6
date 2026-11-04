.class public abstract Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;
.super Landroid/os/Binder;
.source "IMediaBrowserServiceCallbacks.java"

# interfaces
.implements Landroid/service/media/IMediaBrowserServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/IMediaBrowserServiceCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/media/IMediaBrowserServiceCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.media.IMediaBrowserServiceCallbacks"

.field static final greylist-max-o TRANSACTION_onConnect:I = 0x1

.field static final greylist-max-o TRANSACTION_onConnectFailed:I = 0x2

.field static final blacklist TRANSACTION_onDisconnect:I = 0x4

.field static final greylist-max-o TRANSACTION_onLoadChildren:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "android.service.media.IMediaBrowserServiceCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;
    .registers 3

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_4
    const-string v0, "android.service.media.IMediaBrowserServiceCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/media/IMediaBrowserServiceCallbacks;

    if-eqz v1, :cond_13

    .line 70
    check-cast v0, Landroid/service/media/IMediaBrowserServiceCallbacks;

    return-object v0

    .line 72
    :cond_13
    new-instance v0, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 81
    packed-switch p0, :pswitch_data_16

    .line 101
    const/4 p0, 0x0

    return-object p0

    .line 97
    :pswitch_5
    const-string/jumbo p0, "onDisconnect"

    return-object p0

    .line 93
    :pswitch_9
    const-string/jumbo p0, "onLoadChildren"

    return-object p0

    .line 89
    :pswitch_d
    const-string/jumbo p0, "onConnectFailed"

    return-object p0

    .line 85
    :pswitch_11
    const-string/jumbo p0, "onConnect"

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 76
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 251
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 108
    invoke-static {p1}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 112
    nop

    .line 113
    const-string v0, "android.service.media.IMediaBrowserServiceCallbacks"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 117
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v1

    .line 120
    :cond_17
    packed-switch p1, :pswitch_data_5e

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 153
    :pswitch_1f
    invoke-virtual {p0}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->onDisconnect()V

    .line 154
    goto :goto_5d

    .line 142
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 144
    sget-object p3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ParceledListSlice;

    .line 146
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->onLoadChildren(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V

    .line 149
    goto :goto_5d

    .line 136
    :pswitch_3e
    invoke-virtual {p0}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->onConnectFailed()V

    .line 137
    goto :goto_5d

    .line 125
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 127
    sget-object p3, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/session/MediaSession$Token;

    .line 129
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V

    .line 132
    nop

    .line 161
    :goto_5d
    return v1

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3e
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
