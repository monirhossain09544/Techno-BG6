.class public abstract Landroid/media/tv/extension/event/IEventDownloadSession$Stub;
.super Landroid/os/Binder;
.source "IEventDownloadSession.java"

# interfaces
.implements Landroid/media/tv/extension/event/IEventDownloadSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/event/IEventDownloadSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/event/IEventDownloadSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancel:I = 0x5

.field static final blacklist TRANSACTION_isBarkerOrSequentialDownloadByServiceRecord:I = 0x2

.field static final blacklist TRANSACTION_isBarkerOrSequentialDownloadByServiceType:I = 0x1

.field static final blacklist TRANSACTION_release:I = 0x6

.field static final blacklist TRANSACTION_setActiveWindowChannelInfo:I = 0x4

.field static final blacklist TRANSACTION_startTuningMultiplex:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "android.media.tv.extension.event.IEventDownloadSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/event/IEventDownloadSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/event/IEventDownloadSession;
    .registers 3

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_4
    const-string v0, "android.media.tv.extension.event.IEventDownloadSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/event/IEventDownloadSession;

    if-eqz v1, :cond_13

    .line 67
    check-cast v0, Landroid/media/tv/extension/event/IEventDownloadSession;

    return-object v0

    .line 69
    :cond_13
    new-instance v0, Landroid/media/tv/extension/event/IEventDownloadSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/event/IEventDownloadSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 78
    packed-switch p0, :pswitch_data_1a

    .line 106
    const/4 p0, 0x0

    return-object p0

    .line 102
    :pswitch_5
    const-string/jumbo p0, "release"

    return-object p0

    .line 98
    :pswitch_9
    const-string p0, "cancel"

    return-object p0

    .line 94
    :pswitch_c
    const-string/jumbo p0, "setActiveWindowChannelInfo"

    return-object p0

    .line 90
    :pswitch_10
    const-string/jumbo p0, "startTuningMultiplex"

    return-object p0

    .line 86
    :pswitch_14
    const-string p0, "isBarkerOrSequentialDownloadByServiceRecord"

    return-object p0

    .line 82
    :pswitch_17
    const-string p0, "isBarkerOrSequentialDownloadByServiceType"

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 73
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 309
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 113
    invoke-static {p1}, Landroid/media/tv/extension/event/IEventDownloadSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 117
    nop

    .line 118
    const-string v0, "android.media.tv.extension.event.IEventDownloadSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 119
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 122
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v1

    .line 125
    :cond_17
    packed-switch p1, :pswitch_data_7e

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 173
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/tv/extension/event/IEventDownloadSession$Stub;->release()V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    goto :goto_7d

    .line 167
    :pswitch_26
    invoke-virtual {p0}, Landroid/media/tv/extension/event/IEventDownloadSession$Stub;->cancel()V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_7d

    .line 159
    :pswitch_2d
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/Uri;

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/event/IEventDownloadSession$Stub;->setActiveWindowChannelInfo([Landroid/net/Uri;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_7d

    .line 150
    :pswitch_3f
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/event/IEventDownloadSession$Stub;->startTuningMultiplex(Landroid/net/Uri;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    goto :goto_7d

    .line 140
    :pswitch_51
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/event/IEventDownloadSession$Stub;->isBarkerOrSequentialDownloadByServiceRecord(Landroid/os/Bundle;)I

    move-result p1

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    goto :goto_7d

    .line 130
    :pswitch_67
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/event/IEventDownloadSession$Stub;->isBarkerOrSequentialDownloadByServiceType(Landroid/os/Bundle;)I

    move-result p1

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    nop

    .line 182
    :goto_7d
    return v1

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_67
        :pswitch_51
        :pswitch_3f
        :pswitch_2d
        :pswitch_26
        :pswitch_1f
    .end packed-switch
.end method
