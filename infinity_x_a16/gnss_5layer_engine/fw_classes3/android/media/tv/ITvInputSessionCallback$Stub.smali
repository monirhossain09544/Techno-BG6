.class public abstract Landroid/media/tv/ITvInputSessionCallback$Stub;
.super Landroid/os/Binder;
.source "ITvInputSessionCallback.java"

# interfaces
.implements Landroid/media/tv/ITvInputSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputSessionCallback"

.field static final blacklist TRANSACTION_onAdBufferConsumed:I = 0x1b

.field static final blacklist TRANSACTION_onAdResponse:I = 0x1a

.field static final blacklist TRANSACTION_onAitInfoUpdated:I = 0x11

.field static final blacklist TRANSACTION_onAudioPresentationSelected:I = 0x5

.field static final blacklist TRANSACTION_onAudioPresentationsChanged:I = 0x4

.field static final blacklist TRANSACTION_onAvailableSpeeds:I = 0x15

.field static final blacklist TRANSACTION_onBroadcastInfoResponse:I = 0x19

.field static final greylist-max-o TRANSACTION_onChannelRetuned:I = 0x3

.field static final greylist-max-o TRANSACTION_onContentAllowed:I = 0xb

.field static final greylist-max-o TRANSACTION_onContentBlocked:I = 0xc

.field static final blacklist TRANSACTION_onCueingMessageAvailability:I = 0x13

.field static final greylist-max-o TRANSACTION_onError:I = 0x18

.field static final greylist-max-o TRANSACTION_onLayoutSurface:I = 0xd

.field static final greylist-max-o TRANSACTION_onRecordingStopped:I = 0x17

.field static final greylist-max-o TRANSACTION_onSessionCreated:I = 0x1

.field static final greylist-max-o TRANSACTION_onSessionEvent:I = 0x2

.field static final blacklist TRANSACTION_onSignalStrength:I = 0x12

.field static final greylist-max-o TRANSACTION_onTimeShiftCurrentPositionChanged:I = 0x10

.field static final blacklist TRANSACTION_onTimeShiftMode:I = 0x14

.field static final greylist-max-o TRANSACTION_onTimeShiftStartPositionChanged:I = 0xf

.field static final greylist-max-o TRANSACTION_onTimeShiftStatusChanged:I = 0xe

.field static final greylist-max-o TRANSACTION_onTrackSelected:I = 0x7

.field static final greylist-max-o TRANSACTION_onTracksChanged:I = 0x6

.field static final greylist-max-o TRANSACTION_onTuned:I = 0x16

.field static final blacklist TRANSACTION_onTvInputSessionData:I = 0x1d

.field static final blacklist TRANSACTION_onTvMessage:I = 0x1c

.field static final greylist-max-o TRANSACTION_onVideoAvailable:I = 0x8

.field static final blacklist TRANSACTION_onVideoFreezeUpdated:I = 0xa

.field static final greylist-max-o TRANSACTION_onVideoUnavailable:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 122
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 123
    const-string v0, "android.media.tv.ITvInputSessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputSessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSessionCallback;
    .registers 3

    .line 131
    if-nez p0, :cond_4

    .line 132
    const/4 p0, 0x0

    return-object p0

    .line 134
    :cond_4
    const-string v0, "android.media.tv.ITvInputSessionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/ITvInputSessionCallback;

    if-eqz v1, :cond_13

    .line 136
    check-cast v0, Landroid/media/tv/ITvInputSessionCallback;

    return-object v0

    .line 138
    :cond_13
    new-instance v0, Landroid/media/tv/ITvInputSessionCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/ITvInputSessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 147
    packed-switch p0, :pswitch_data_7a

    .line 267
    const/4 p0, 0x0

    return-object p0

    .line 263
    :pswitch_5
    const-string/jumbo p0, "onTvInputSessionData"

    return-object p0

    .line 259
    :pswitch_9
    const-string/jumbo p0, "onTvMessage"

    return-object p0

    .line 255
    :pswitch_d
    const-string/jumbo p0, "onAdBufferConsumed"

    return-object p0

    .line 251
    :pswitch_11
    const-string/jumbo p0, "onAdResponse"

    return-object p0

    .line 247
    :pswitch_15
    const-string/jumbo p0, "onBroadcastInfoResponse"

    return-object p0

    .line 243
    :pswitch_19
    const-string/jumbo p0, "onError"

    return-object p0

    .line 239
    :pswitch_1d
    const-string/jumbo p0, "onRecordingStopped"

    return-object p0

    .line 235
    :pswitch_21
    const-string/jumbo p0, "onTuned"

    return-object p0

    .line 231
    :pswitch_25
    const-string/jumbo p0, "onAvailableSpeeds"

    return-object p0

    .line 227
    :pswitch_29
    const-string/jumbo p0, "onTimeShiftMode"

    return-object p0

    .line 223
    :pswitch_2d
    const-string/jumbo p0, "onCueingMessageAvailability"

    return-object p0

    .line 219
    :pswitch_31
    const-string/jumbo p0, "onSignalStrength"

    return-object p0

    .line 215
    :pswitch_35
    const-string/jumbo p0, "onAitInfoUpdated"

    return-object p0

    .line 211
    :pswitch_39
    const-string/jumbo p0, "onTimeShiftCurrentPositionChanged"

    return-object p0

    .line 207
    :pswitch_3d
    const-string/jumbo p0, "onTimeShiftStartPositionChanged"

    return-object p0

    .line 203
    :pswitch_41
    const-string/jumbo p0, "onTimeShiftStatusChanged"

    return-object p0

    .line 199
    :pswitch_45
    const-string/jumbo p0, "onLayoutSurface"

    return-object p0

    .line 195
    :pswitch_49
    const-string/jumbo p0, "onContentBlocked"

    return-object p0

    .line 191
    :pswitch_4d
    const-string/jumbo p0, "onContentAllowed"

    return-object p0

    .line 187
    :pswitch_51
    const-string/jumbo p0, "onVideoFreezeUpdated"

    return-object p0

    .line 183
    :pswitch_55
    const-string/jumbo p0, "onVideoUnavailable"

    return-object p0

    .line 179
    :pswitch_59
    const-string/jumbo p0, "onVideoAvailable"

    return-object p0

    .line 175
    :pswitch_5d
    const-string/jumbo p0, "onTrackSelected"

    return-object p0

    .line 171
    :pswitch_61
    const-string/jumbo p0, "onTracksChanged"

    return-object p0

    .line 167
    :pswitch_65
    const-string/jumbo p0, "onAudioPresentationSelected"

    return-object p0

    .line 163
    :pswitch_69
    const-string/jumbo p0, "onAudioPresentationsChanged"

    return-object p0

    .line 159
    :pswitch_6d
    const-string/jumbo p0, "onChannelRetuned"

    return-object p0

    .line 155
    :pswitch_71
    const-string/jumbo p0, "onSessionEvent"

    return-object p0

    .line 151
    :pswitch_75
    const-string/jumbo p0, "onSessionCreated"

    return-object p0

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_75
        :pswitch_71
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
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

    .line 142
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 948
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 274
    invoke-static {p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 278
    nop

    .line 279
    const-string v0, "android.media.tv.ITvInputSessionCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 280
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 283
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    return v1

    .line 286
    :cond_17
    packed-switch p1, :pswitch_data_1ba

    .line 534
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 525
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 527
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 530
    goto/16 :goto_1b9

    .line 515
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 517
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTvMessage(ILandroid/os/Bundle;)V

    .line 520
    goto/16 :goto_1b9

    .line 507
    :pswitch_47
    sget-object p1, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/AdBuffer;

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onAdBufferConsumed(Landroid/media/tv/AdBuffer;)V

    .line 510
    goto/16 :goto_1b9

    .line 499
    :pswitch_57
    sget-object p1, Landroid/media/tv/AdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/AdResponse;

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onAdResponse(Landroid/media/tv/AdResponse;)V

    .line 502
    goto/16 :goto_1b9

    .line 491
    :pswitch_67
    sget-object p1, Landroid/media/tv/BroadcastInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/BroadcastInfoResponse;

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V

    .line 494
    goto/16 :goto_1b9

    .line 483
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 485
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onError(I)V

    .line 486
    goto/16 :goto_1b9

    .line 475
    :pswitch_83
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onRecordingStopped(Landroid/net/Uri;)V

    .line 478
    goto/16 :goto_1b9

    .line 467
    :pswitch_93
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTuned(Landroid/net/Uri;)V

    .line 470
    goto/16 :goto_1b9

    .line 459
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onAvailableSpeeds([F)V

    .line 462
    goto/16 :goto_1b9

    .line 451
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTimeShiftMode(I)V

    .line 454
    goto/16 :goto_1b9

    .line 443
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onCueingMessageAvailability(Z)V

    .line 446
    goto/16 :goto_1b9

    .line 435
    :pswitch_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onSignalStrength(I)V

    .line 438
    goto/16 :goto_1b9

    .line 427
    :pswitch_d3
    sget-object p1, Landroid/media/tv/AitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/AitInfo;

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 429
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onAitInfoUpdated(Landroid/media/tv/AitInfo;)V

    .line 430
    goto/16 :goto_1b9

    .line 419
    :pswitch_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {p0, p3, p4}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTimeShiftCurrentPositionChanged(J)V

    .line 422
    goto/16 :goto_1b9

    .line 411
    :pswitch_ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    invoke-virtual {p0, p3, p4}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTimeShiftStartPositionChanged(J)V

    .line 414
    goto/16 :goto_1b9

    .line 403
    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTimeShiftStatusChanged(I)V

    .line 406
    goto/16 :goto_1b9

    .line 389
    :pswitch_107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onLayoutSurface(IIII)V

    .line 398
    goto/16 :goto_1b9

    .line 381
    :pswitch_11f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onContentBlocked(Ljava/lang/String;)V

    .line 384
    goto/16 :goto_1b9

    .line 375
    :pswitch_12b
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onContentAllowed()V

    .line 376
    goto/16 :goto_1b9

    .line 368
    :pswitch_130
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onVideoFreezeUpdated(Z)V

    .line 371
    goto/16 :goto_1b9

    .line 360
    :pswitch_13c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onVideoUnavailable(I)V

    .line 363
    goto/16 :goto_1b9

    .line 354
    :pswitch_148
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onVideoAvailable()V

    .line 355
    goto :goto_1b9

    .line 345
    :pswitch_14c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTrackSelected(ILjava/lang/String;)V

    .line 350
    goto :goto_1b9

    .line 337
    :pswitch_15b
    sget-object p1, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTracksChanged(Ljava/util/List;)V

    .line 340
    goto :goto_1b9

    .line 327
    :pswitch_168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onAudioPresentationSelected(II)V

    .line 332
    goto :goto_1b9

    .line 319
    :pswitch_177
    sget-object p1, Landroid/media/AudioPresentation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onAudioPresentationsChanged(Ljava/util/List;)V

    .line 322
    goto :goto_1b9

    .line 311
    :pswitch_184
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onChannelRetuned(Landroid/net/Uri;)V

    .line 314
    goto :goto_1b9

    .line 301
    :pswitch_193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 303
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 306
    goto :goto_1b9

    .line 291
    :pswitch_1a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/ITvInputSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V

    .line 296
    nop

    .line 537
    :goto_1b9
    return v1

    :pswitch_data_1ba
    .packed-switch 0x1
        :pswitch_1a6
        :pswitch_193
        :pswitch_184
        :pswitch_177
        :pswitch_168
        :pswitch_15b
        :pswitch_14c
        :pswitch_148
        :pswitch_13c
        :pswitch_130
        :pswitch_12b
        :pswitch_11f
        :pswitch_107
        :pswitch_fb
        :pswitch_ef
        :pswitch_e3
        :pswitch_d3
        :pswitch_c7
        :pswitch_bb
        :pswitch_af
        :pswitch_a3
        :pswitch_93
        :pswitch_83
        :pswitch_77
        :pswitch_67
        :pswitch_57
        :pswitch_47
        :pswitch_33
        :pswitch_1f
    .end packed-switch
.end method
