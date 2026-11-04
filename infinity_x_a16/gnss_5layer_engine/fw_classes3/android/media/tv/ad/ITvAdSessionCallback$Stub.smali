.class public abstract Landroid/media/tv/ad/ITvAdSessionCallback$Stub;
.super Landroid/os/Binder;
.source "ITvAdSessionCallback.java"

# interfaces
.implements Landroid/media/tv/ad/ITvAdSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/ITvAdSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/ITvAdSessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onLayoutSurface:I = 0x2

.field static final blacklist TRANSACTION_onRequestCurrentChannelUri:I = 0x4

.field static final blacklist TRANSACTION_onRequestCurrentTvInputId:I = 0x6

.field static final blacklist TRANSACTION_onRequestCurrentVideoBounds:I = 0x3

.field static final blacklist TRANSACTION_onRequestSigning:I = 0x7

.field static final blacklist TRANSACTION_onRequestTrackInfoList:I = 0x5

.field static final blacklist TRANSACTION_onSessionCreated:I = 0x1

.field static final blacklist TRANSACTION_onTvAdSessionData:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "android.media.tv.ad.ITvAdSessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdSessionCallback;
    .registers 3

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_4
    const-string v0, "android.media.tv.ad.ITvAdSessionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/ad/ITvAdSessionCallback;

    if-eqz v1, :cond_13

    .line 69
    check-cast v0, Landroid/media/tv/ad/ITvAdSessionCallback;

    return-object v0

    .line 71
    :cond_13
    new-instance v0, Landroid/media/tv/ad/ITvAdSessionCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 80
    packed-switch p0, :pswitch_data_26

    .line 116
    const/4 p0, 0x0

    return-object p0

    .line 112
    :pswitch_5
    const-string/jumbo p0, "onTvAdSessionData"

    return-object p0

    .line 108
    :pswitch_9
    const-string/jumbo p0, "onRequestSigning"

    return-object p0

    .line 104
    :pswitch_d
    const-string/jumbo p0, "onRequestCurrentTvInputId"

    return-object p0

    .line 100
    :pswitch_11
    const-string/jumbo p0, "onRequestTrackInfoList"

    return-object p0

    .line 96
    :pswitch_15
    const-string/jumbo p0, "onRequestCurrentChannelUri"

    return-object p0

    .line 92
    :pswitch_19
    const-string/jumbo p0, "onRequestCurrentVideoBounds"

    return-object p0

    .line 88
    :pswitch_1d
    const-string/jumbo p0, "onLayoutSurface"

    return-object p0

    .line 84
    :pswitch_21
    const-string/jumbo p0, "onSessionCreated"

    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 75
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 336
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 123
    invoke-static {p1}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 127
    nop

    .line 128
    const-string v0, "android.media.tv.ad.ITvAdSessionCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 129
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 132
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v1

    .line 135
    :cond_17
    packed-switch p1, :pswitch_data_80

    .line 205
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 196
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 198
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->onTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 201
    goto :goto_7f

    .line 182
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 191
    goto :goto_7f

    .line 176
    :pswitch_49
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->onRequestCurrentTvInputId()V

    .line 177
    goto :goto_7f

    .line 171
    :pswitch_4d
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->onRequestTrackInfoList()V

    .line 172
    goto :goto_7f

    .line 166
    :pswitch_51
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->onRequestCurrentChannelUri()V

    .line 167
    goto :goto_7f

    .line 161
    :pswitch_55
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->onRequestCurrentVideoBounds()V

    .line 162
    goto :goto_7f

    .line 148
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->onLayoutSurface(IIII)V

    .line 157
    goto :goto_7f

    .line 140
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/ad/ITvAdSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p1

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, p1}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->onSessionCreated(Landroid/media/tv/ad/ITvAdSession;)V

    .line 143
    nop

    .line 208
    :goto_7f
    return v1

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_70
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
