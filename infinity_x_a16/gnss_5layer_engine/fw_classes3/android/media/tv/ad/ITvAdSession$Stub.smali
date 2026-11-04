.class public abstract Landroid/media/tv/ad/ITvAdSession$Stub;
.super Landroid/os/Binder;
.source "ITvAdSession.java"

# interfaces
.implements Landroid/media/tv/ad/ITvAdSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/ITvAdSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/ITvAdSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createMediaView:I = 0xe

.field static final blacklist TRANSACTION_dispatchSurfaceChanged:I = 0x6

.field static final blacklist TRANSACTION_notifyError:I = 0xc

.field static final blacklist TRANSACTION_notifyTvInputSessionData:I = 0x11

.field static final blacklist TRANSACTION_notifyTvMessage:I = 0xd

.field static final blacklist TRANSACTION_relayoutMediaView:I = 0xf

.field static final blacklist TRANSACTION_release:I = 0x1

.field static final blacklist TRANSACTION_removeMediaView:I = 0x10

.field static final blacklist TRANSACTION_resetAdService:I = 0x4

.field static final blacklist TRANSACTION_sendCurrentChannelUri:I = 0x8

.field static final blacklist TRANSACTION_sendCurrentTvInputId:I = 0xa

.field static final blacklist TRANSACTION_sendCurrentVideoBounds:I = 0x7

.field static final blacklist TRANSACTION_sendSigningResult:I = 0xb

.field static final blacklist TRANSACTION_sendTrackInfoList:I = 0x9

.field static final blacklist TRANSACTION_setSurface:I = 0x5

.field static final blacklist TRANSACTION_startAdService:I = 0x2

.field static final blacklist TRANSACTION_stopAdService:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 82
    const-string v0, "android.media.tv.ad.ITvAdSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ad/ITvAdSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdSession;
    .registers 3

    .line 90
    if-nez p0, :cond_4

    .line 91
    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_4
    const-string v0, "android.media.tv.ad.ITvAdSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/ad/ITvAdSession;

    if-eqz v1, :cond_13

    .line 95
    check-cast v0, Landroid/media/tv/ad/ITvAdSession;

    return-object v0

    .line 97
    :cond_13
    new-instance v0, Landroid/media/tv/ad/ITvAdSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/ITvAdSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 106
    packed-switch p0, :pswitch_data_48

    .line 178
    const/4 p0, 0x0

    return-object p0

    .line 174
    :pswitch_5
    const-string/jumbo p0, "notifyTvInputSessionData"

    return-object p0

    .line 170
    :pswitch_9
    const-string/jumbo p0, "removeMediaView"

    return-object p0

    .line 166
    :pswitch_d
    const-string/jumbo p0, "relayoutMediaView"

    return-object p0

    .line 162
    :pswitch_11
    const-string p0, "createMediaView"

    return-object p0

    .line 158
    :pswitch_14
    const-string/jumbo p0, "notifyTvMessage"

    return-object p0

    .line 154
    :pswitch_18
    const-string/jumbo p0, "notifyError"

    return-object p0

    .line 150
    :pswitch_1c
    const-string/jumbo p0, "sendSigningResult"

    return-object p0

    .line 146
    :pswitch_20
    const-string/jumbo p0, "sendCurrentTvInputId"

    return-object p0

    .line 142
    :pswitch_24
    const-string/jumbo p0, "sendTrackInfoList"

    return-object p0

    .line 138
    :pswitch_28
    const-string/jumbo p0, "sendCurrentChannelUri"

    return-object p0

    .line 134
    :pswitch_2c
    const-string/jumbo p0, "sendCurrentVideoBounds"

    return-object p0

    .line 130
    :pswitch_30
    const-string p0, "dispatchSurfaceChanged"

    return-object p0

    .line 126
    :pswitch_33
    const-string/jumbo p0, "setSurface"

    return-object p0

    .line 122
    :pswitch_37
    const-string/jumbo p0, "resetAdService"

    return-object p0

    .line 118
    :pswitch_3b
    const-string/jumbo p0, "stopAdService"

    return-object p0

    .line 114
    :pswitch_3f
    const-string/jumbo p0, "startAdService"

    return-object p0

    .line 110
    :pswitch_43
    const-string/jumbo p0, "release"

    return-object p0

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 101
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 583
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 185
    invoke-static {p1}, Landroid/media/tv/ad/ITvAdSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 189
    nop

    .line 190
    const-string v0, "android.media.tv.ad.ITvAdSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 191
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 194
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    return v1

    .line 197
    :cond_17
    packed-switch p1, :pswitch_data_fc

    .line 336
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 327
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 329
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ad/ITvAdSession$Stub;->notifyTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 332
    goto/16 :goto_fb

    .line 321
    :pswitch_33
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSession$Stub;->removeMediaView()V

    .line 322
    goto/16 :goto_fb

    .line 314
    :pswitch_38
    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, p1}, Landroid/media/tv/ad/ITvAdSession$Stub;->relayoutMediaView(Landroid/graphics/Rect;)V

    .line 317
    goto/16 :goto_fb

    .line 304
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 306
    sget-object p3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ad/ITvAdSession$Stub;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 309
    goto/16 :goto_fb

    .line 294
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 296
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ad/ITvAdSession$Stub;->notifyTvMessage(ILandroid/os/Bundle;)V

    .line 299
    goto/16 :goto_fb

    .line 284
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 286
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ad/ITvAdSession$Stub;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 289
    goto/16 :goto_fb

    .line 274
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p3

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ad/ITvAdSession$Stub;->sendSigningResult(Ljava/lang/String;[B)V

    .line 279
    goto :goto_fb

    .line 266
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, p1}, Landroid/media/tv/ad/ITvAdSession$Stub;->sendCurrentTvInputId(Ljava/lang/String;)V

    .line 269
    goto :goto_fb

    .line 258
    :pswitch_9e
    sget-object p1, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, p1}, Landroid/media/tv/ad/ITvAdSession$Stub;->sendTrackInfoList(Ljava/util/List;)V

    .line 261
    goto :goto_fb

    .line 250
    :pswitch_ab
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, p1}, Landroid/media/tv/ad/ITvAdSession$Stub;->sendCurrentChannelUri(Landroid/net/Uri;)V

    .line 253
    goto :goto_fb

    .line 242
    :pswitch_ba
    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, p1}, Landroid/media/tv/ad/ITvAdSession$Stub;->sendCurrentVideoBounds(Landroid/graphics/Rect;)V

    .line 245
    goto :goto_fb

    .line 230
    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, p1, p3, p4}, Landroid/media/tv/ad/ITvAdSession$Stub;->dispatchSurfaceChanged(III)V

    .line 237
    goto :goto_fb

    .line 222
    :pswitch_dc
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, p1}, Landroid/media/tv/ad/ITvAdSession$Stub;->setSurface(Landroid/view/Surface;)V

    .line 225
    goto :goto_fb

    .line 216
    :pswitch_eb
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSession$Stub;->resetAdService()V

    .line 217
    goto :goto_fb

    .line 211
    :pswitch_ef
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSession$Stub;->stopAdService()V

    .line 212
    goto :goto_fb

    .line 206
    :pswitch_f3
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSession$Stub;->startAdService()V

    .line 207
    goto :goto_fb

    .line 201
    :pswitch_f7
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSession$Stub;->release()V

    .line 202
    nop

    .line 339
    :goto_fb
    return v1

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_f7
        :pswitch_f3
        :pswitch_ef
        :pswitch_eb
        :pswitch_dc
        :pswitch_c9
        :pswitch_ba
        :pswitch_ab
        :pswitch_9e
        :pswitch_93
        :pswitch_84
        :pswitch_70
        :pswitch_5c
        :pswitch_48
        :pswitch_38
        :pswitch_33
        :pswitch_1f
    .end packed-switch
.end method
