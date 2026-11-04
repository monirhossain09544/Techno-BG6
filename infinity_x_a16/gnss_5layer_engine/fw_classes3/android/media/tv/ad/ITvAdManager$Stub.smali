.class public abstract Landroid/media/tv/ad/ITvAdManager$Stub;
.super Landroid/os/Binder;
.source "ITvAdManager.java"

# interfaces
.implements Landroid/media/tv/ad/ITvAdManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/ITvAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/ITvAdManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createMediaView:I = 0x13

.field static final blacklist TRANSACTION_createSession:I = 0x3

.field static final blacklist TRANSACTION_dispatchSurfaceChanged:I = 0x9

.field static final blacklist TRANSACTION_getTvAdServiceList:I = 0x1

.field static final blacklist TRANSACTION_notifyError:I = 0xf

.field static final blacklist TRANSACTION_notifyTvInputSessionData:I = 0x16

.field static final blacklist TRANSACTION_notifyTvMessage:I = 0x10

.field static final blacklist TRANSACTION_registerCallback:I = 0x11

.field static final blacklist TRANSACTION_relayoutMediaView:I = 0x14

.field static final blacklist TRANSACTION_releaseSession:I = 0x4

.field static final blacklist TRANSACTION_removeMediaView:I = 0x15

.field static final blacklist TRANSACTION_resetAdService:I = 0x7

.field static final blacklist TRANSACTION_sendAppLinkCommand:I = 0x2

.field static final blacklist TRANSACTION_sendCurrentChannelUri:I = 0xb

.field static final blacklist TRANSACTION_sendCurrentTvInputId:I = 0xd

.field static final blacklist TRANSACTION_sendCurrentVideoBounds:I = 0xa

.field static final blacklist TRANSACTION_sendSigningResult:I = 0xe

.field static final blacklist TRANSACTION_sendTrackInfoList:I = 0xc

.field static final blacklist TRANSACTION_setSurface:I = 0x8

.field static final blacklist TRANSACTION_startAdService:I = 0x5

.field static final blacklist TRANSACTION_stopAdService:I = 0x6

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x12


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 98
    const-string v0, "android.media.tv.ad.ITvAdManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ad/ITvAdManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdManager;
    .registers 3

    .line 106
    if-nez p0, :cond_4

    .line 107
    const/4 p0, 0x0

    return-object p0

    .line 109
    :cond_4
    const-string v0, "android.media.tv.ad.ITvAdManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/ad/ITvAdManager;

    if-eqz v1, :cond_13

    .line 111
    check-cast v0, Landroid/media/tv/ad/ITvAdManager;

    return-object v0

    .line 113
    :cond_13
    new-instance v0, Landroid/media/tv/ad/ITvAdManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/ITvAdManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 122
    packed-switch p0, :pswitch_data_5a

    .line 214
    const/4 p0, 0x0

    return-object p0

    .line 210
    :pswitch_5
    const-string/jumbo p0, "notifyTvInputSessionData"

    return-object p0

    .line 206
    :pswitch_9
    const-string/jumbo p0, "removeMediaView"

    return-object p0

    .line 202
    :pswitch_d
    const-string/jumbo p0, "relayoutMediaView"

    return-object p0

    .line 198
    :pswitch_11
    const-string p0, "createMediaView"

    return-object p0

    .line 194
    :pswitch_14
    const-string/jumbo p0, "unregisterCallback"

    return-object p0

    .line 190
    :pswitch_18
    const-string/jumbo p0, "registerCallback"

    return-object p0

    .line 186
    :pswitch_1c
    const-string/jumbo p0, "notifyTvMessage"

    return-object p0

    .line 182
    :pswitch_20
    const-string/jumbo p0, "notifyError"

    return-object p0

    .line 178
    :pswitch_24
    const-string/jumbo p0, "sendSigningResult"

    return-object p0

    .line 174
    :pswitch_28
    const-string/jumbo p0, "sendCurrentTvInputId"

    return-object p0

    .line 170
    :pswitch_2c
    const-string/jumbo p0, "sendTrackInfoList"

    return-object p0

    .line 166
    :pswitch_30
    const-string/jumbo p0, "sendCurrentChannelUri"

    return-object p0

    .line 162
    :pswitch_34
    const-string/jumbo p0, "sendCurrentVideoBounds"

    return-object p0

    .line 158
    :pswitch_38
    const-string p0, "dispatchSurfaceChanged"

    return-object p0

    .line 154
    :pswitch_3b
    const-string/jumbo p0, "setSurface"

    return-object p0

    .line 150
    :pswitch_3f
    const-string/jumbo p0, "resetAdService"

    return-object p0

    .line 146
    :pswitch_43
    const-string/jumbo p0, "stopAdService"

    return-object p0

    .line 142
    :pswitch_47
    const-string/jumbo p0, "startAdService"

    return-object p0

    .line 138
    :pswitch_4b
    const-string/jumbo p0, "releaseSession"

    return-object p0

    .line 134
    :pswitch_4f
    const-string p0, "createSession"

    return-object p0

    .line 130
    :pswitch_52
    const-string/jumbo p0, "sendAppLinkCommand"

    return-object p0

    .line 126
    :pswitch_56
    const-string p0, "getTvAdServiceList"

    return-object p0

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_56
        :pswitch_52
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_38
        :pswitch_34
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

    .line 117
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 947
    const/16 v0, 0x15

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 221
    invoke-static {p1}, Landroid/media/tv/ad/ITvAdManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 225
    nop

    .line 226
    const-string v3, "android.media.tv.ad.ITvAdManager"

    const/4 v6, 0x1

    if-lt p1, v6, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 227
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 230
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    return v6

    .line 233
    :cond_17
    packed-switch p1, :pswitch_data_24e

    .line 524
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 510
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 514
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/media/tv/ad/ITvAdManager$Stub;->notifyTvInputSessionData(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    goto/16 :goto_24c

    .line 499
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {p0, v1, v3}, Landroid/media/tv/ad/ITvAdManager$Stub;->removeMediaView(Landroid/os/IBinder;I)V

    .line 504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    goto/16 :goto_24c

    .line 486
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 488
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/tv/ad/ITvAdManager$Stub;->relayoutMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    goto/16 :goto_24c

    .line 471
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 475
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/media/tv/ad/ITvAdManager$Stub;->createMediaView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    goto/16 :goto_24c

    .line 460
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/tv/ad/ITvAdManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdManagerCallback;

    move-result-object v1

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {p0, v1, v3}, Landroid/media/tv/ad/ITvAdManager$Stub;->unregisterCallback(Landroid/media/tv/ad/ITvAdManagerCallback;I)V

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    goto/16 :goto_24c

    .line 449
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/tv/ad/ITvAdManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdManagerCallback;

    move-result-object v1

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {p0, v1, v3}, Landroid/media/tv/ad/ITvAdManager$Stub;->registerCallback(Landroid/media/tv/ad/ITvAdManagerCallback;I)V

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    goto/16 :goto_24c

    .line 434
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 438
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/media/tv/ad/ITvAdManager$Stub;->notifyTvMessage(Landroid/os/IBinder;ILandroid/os/Bundle;I)V

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    goto/16 :goto_24c

    .line 419
    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 423
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/media/tv/ad/ITvAdManager$Stub;->notifyError(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    goto/16 :goto_24c

    .line 404
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/media/tv/ad/ITvAdManager$Stub;->sendSigningResult(Landroid/os/IBinder;Ljava/lang/String;[BI)V

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    goto/16 :goto_24c

    .line 391
    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/tv/ad/ITvAdManager$Stub;->sendCurrentTvInputId(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    goto/16 :goto_24c

    .line 378
    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 380
    sget-object v3, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/tv/ad/ITvAdManager$Stub;->sendTrackInfoList(Landroid/os/IBinder;Ljava/util/List;I)V

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    goto/16 :goto_24c

    .line 365
    :pswitch_142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 367
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/tv/ad/ITvAdManager$Stub;->sendCurrentChannelUri(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    goto/16 :goto_24c

    .line 352
    :pswitch_15d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 354
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/tv/ad/ITvAdManager$Stub;->sendCurrentVideoBounds(Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    goto/16 :goto_24c

    .line 335
    :pswitch_178
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/ad/ITvAdManager$Stub;->dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    goto/16 :goto_24c

    .line 322
    :pswitch_198
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 324
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ad/ITvAdManager$Stub;->setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    goto/16 :goto_24c

    .line 311
    :pswitch_1b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ad/ITvAdManager$Stub;->resetAdService(Landroid/os/IBinder;I)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    goto/16 :goto_24c

    .line 300
    :pswitch_1c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ad/ITvAdManager$Stub;->stopAdService(Landroid/os/IBinder;I)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    goto/16 :goto_24c

    .line 289
    :pswitch_1d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ad/ITvAdManager$Stub;->startAdService(Landroid/os/IBinder;I)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    goto :goto_24c

    .line 278
    :pswitch_1eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ad/ITvAdManager$Stub;->releaseSession(Landroid/os/IBinder;I)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    goto :goto_24c

    .line 261
    :pswitch_1fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/tv/ad/ITvAdClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/ad/ITvAdManager$Stub;->createSession(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Ljava/lang/String;II)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    goto :goto_24c

    .line 248
    :pswitch_220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 250
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ad/ITvAdManager$Stub;->sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    goto :goto_24c

    .line 238
    :pswitch_23a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v1}, Landroid/media/tv/ad/ITvAdManager$Stub;->getTvAdServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 243
    nop

    .line 527
    :goto_24c
    return v6

    nop

    :pswitch_data_24e
    .packed-switch 0x1
        :pswitch_23a
        :pswitch_220
        :pswitch_1fd
        :pswitch_1eb
        :pswitch_1d9
        :pswitch_1c6
        :pswitch_1b3
        :pswitch_198
        :pswitch_178
        :pswitch_15d
        :pswitch_142
        :pswitch_129
        :pswitch_112
        :pswitch_f7
        :pswitch_d8
        :pswitch_b9
        :pswitch_a2
        :pswitch_8b
        :pswitch_6c
        :pswitch_51
        :pswitch_3e
        :pswitch_1f
    .end packed-switch
.end method
