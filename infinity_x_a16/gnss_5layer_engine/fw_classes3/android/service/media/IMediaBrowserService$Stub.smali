.class public abstract Landroid/service/media/IMediaBrowserService$Stub;
.super Landroid/os/Binder;
.source "IMediaBrowserService.java"

# interfaces
.implements Landroid/service/media/IMediaBrowserService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/IMediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/media/IMediaBrowserService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.media.IMediaBrowserService"

.field static final greylist-max-o TRANSACTION_addSubscription:I = 0x6

.field static final greylist-max-o TRANSACTION_addSubscriptionDeprecated:I = 0x3

.field static final greylist-max-o TRANSACTION_connect:I = 0x1

.field static final greylist-max-o TRANSACTION_disconnect:I = 0x2

.field static final greylist-max-o TRANSACTION_getMediaItem:I = 0x5

.field static final greylist-max-o TRANSACTION_removeSubscription:I = 0x7

.field static final greylist-max-o TRANSACTION_removeSubscriptionDeprecated:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "android.service.media.IMediaBrowserService"

    invoke-virtual {p0, p0, v0}, Landroid/service/media/IMediaBrowserService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserService;
    .registers 3

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_4
    const-string v0, "android.service.media.IMediaBrowserService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/media/IMediaBrowserService;

    if-eqz v1, :cond_13

    .line 66
    check-cast v0, Landroid/service/media/IMediaBrowserService;

    return-object v0

    .line 68
    :cond_13
    new-instance v0, Landroid/service/media/IMediaBrowserService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/media/IMediaBrowserService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 77
    packed-switch p0, :pswitch_data_1c

    .line 109
    const/4 p0, 0x0

    return-object p0

    .line 105
    :pswitch_5
    const-string/jumbo p0, "removeSubscription"

    return-object p0

    .line 101
    :pswitch_9
    const-string p0, "addSubscription"

    return-object p0

    .line 97
    :pswitch_c
    const-string p0, "getMediaItem"

    return-object p0

    .line 93
    :pswitch_f
    const-string/jumbo p0, "removeSubscriptionDeprecated"

    return-object p0

    .line 89
    :pswitch_13
    const-string p0, "addSubscriptionDeprecated"

    return-object p0

    .line 85
    :pswitch_16
    const-string p0, "disconnect"

    return-object p0

    .line 81
    :pswitch_19
    const-string p0, "connect"

    return-object p0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 72
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 338
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 116
    invoke-static {p1}, Landroid/service/media/IMediaBrowserService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 120
    nop

    .line 121
    const-string v0, "android.service.media.IMediaBrowserService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 122
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v1

    .line 128
    :cond_17
    packed-switch p1, :pswitch_data_c2

    .line 210
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 199
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object p4

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/media/IMediaBrowserService$Stub;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 206
    goto/16 :goto_c1

    .line 185
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    .line 189
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v0

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/service/media/IMediaBrowserService$Stub;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 194
    goto :goto_c1

    .line 173
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 175
    sget-object p3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/ResultReceiver;

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object p4

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/media/IMediaBrowserService$Stub;->getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 180
    goto :goto_c1

    .line 163
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object p3

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, p1, p3}, Landroid/service/media/IMediaBrowserService$Stub;->removeSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 168
    goto :goto_c1

    .line 153
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object p3

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, p1, p3}, Landroid/service/media/IMediaBrowserService$Stub;->addSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 158
    goto :goto_c1

    .line 145
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object p1

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, p1}, Landroid/service/media/IMediaBrowserService$Stub;->disconnect(Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 148
    goto :goto_c1

    .line 133
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 135
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object p4

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/media/IMediaBrowserService$Stub;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 140
    nop

    .line 213
    :goto_c1
    return v1

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_a6
        :pswitch_97
        :pswitch_84
        :pswitch_71
        :pswitch_56
        :pswitch_37
        :pswitch_1f
    .end packed-switch
.end method
