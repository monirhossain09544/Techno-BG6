.class public abstract Landroid/media/tv/ad/ITvAdClient$Stub;
.super Landroid/os/Binder;
.source "ITvAdClient.java"

# interfaces
.implements Landroid/media/tv/ad/ITvAdClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/ITvAdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/ITvAdClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onLayoutSurface:I = 0x3

.field static final blacklist TRANSACTION_onRequestCurrentChannelUri:I = 0x5

.field static final blacklist TRANSACTION_onRequestCurrentTvInputId:I = 0x7

.field static final blacklist TRANSACTION_onRequestCurrentVideoBounds:I = 0x4

.field static final blacklist TRANSACTION_onRequestSigning:I = 0x8

.field static final blacklist TRANSACTION_onRequestTrackInfoList:I = 0x6

.field static final blacklist TRANSACTION_onSessionCreated:I = 0x1

.field static final blacklist TRANSACTION_onSessionReleased:I = 0x2

.field static final blacklist TRANSACTION_onTvAdSessionData:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "android.media.tv.ad.ITvAdClient"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ad/ITvAdClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdClient;
    .registers 3

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_4
    const-string v0, "android.media.tv.ad.ITvAdClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/ad/ITvAdClient;

    if-eqz v1, :cond_13

    .line 72
    check-cast v0, Landroid/media/tv/ad/ITvAdClient;

    return-object v0

    .line 74
    :cond_13
    new-instance v0, Landroid/media/tv/ad/ITvAdClient$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/ITvAdClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 83
    packed-switch p0, :pswitch_data_2a

    .line 123
    const/4 p0, 0x0

    return-object p0

    .line 119
    :pswitch_5
    const-string/jumbo p0, "onTvAdSessionData"

    return-object p0

    .line 115
    :pswitch_9
    const-string/jumbo p0, "onRequestSigning"

    return-object p0

    .line 111
    :pswitch_d
    const-string/jumbo p0, "onRequestCurrentTvInputId"

    return-object p0

    .line 107
    :pswitch_11
    const-string/jumbo p0, "onRequestTrackInfoList"

    return-object p0

    .line 103
    :pswitch_15
    const-string/jumbo p0, "onRequestCurrentChannelUri"

    return-object p0

    .line 99
    :pswitch_19
    const-string/jumbo p0, "onRequestCurrentVideoBounds"

    return-object p0

    .line 95
    :pswitch_1d
    const-string/jumbo p0, "onLayoutSurface"

    return-object p0

    .line 91
    :pswitch_21
    const-string/jumbo p0, "onSessionReleased"

    return-object p0

    .line 87
    :pswitch_25
    const-string/jumbo p0, "onSessionCreated"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_25
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

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 398
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 130
    invoke-static {p1}, Landroid/media/tv/ad/ITvAdClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    nop

    .line 135
    const-string v3, "android.media.tv.ad.ITvAdClient"

    const/4 v6, 0x1

    if-lt p1, v6, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 136
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 139
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v6

    .line 142
    :cond_17
    packed-switch p1, :pswitch_data_c2

    .line 244
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 233
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 235
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/tv/ad/ITvAdClient$Stub;->onTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 240
    goto/16 :goto_c1

    .line 217
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/ad/ITvAdClient$Stub;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 228
    goto :goto_c1

    .line 209
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v1}, Landroid/media/tv/ad/ITvAdClient$Stub;->onRequestCurrentTvInputId(I)V

    .line 212
    goto :goto_c1

    .line 201
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v1}, Landroid/media/tv/ad/ITvAdClient$Stub;->onRequestTrackInfoList(I)V

    .line 204
    goto :goto_c1

    .line 193
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v1}, Landroid/media/tv/ad/ITvAdClient$Stub;->onRequestCurrentChannelUri(I)V

    .line 196
    goto :goto_c1

    .line 185
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v1}, Landroid/media/tv/ad/ITvAdClient$Stub;->onRequestCurrentVideoBounds(I)V

    .line 188
    goto :goto_c1

    .line 169
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/ad/ITvAdClient$Stub;->onLayoutSurface(IIIII)V

    .line 180
    goto :goto_c1

    .line 161
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v1}, Landroid/media/tv/ad/ITvAdClient$Stub;->onSessionReleased(I)V

    .line 164
    goto :goto_c1

    .line 147
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 151
    sget-object v3, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputChannel;

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/ad/ITvAdClient$Stub;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 156
    nop

    .line 247
    :goto_c1
    return v6

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_a6
        :pswitch_9b
        :pswitch_7f
        :pswitch_74
        :pswitch_69
        :pswitch_5e
        :pswitch_53
        :pswitch_37
        :pswitch_1f
    .end packed-switch
.end method
