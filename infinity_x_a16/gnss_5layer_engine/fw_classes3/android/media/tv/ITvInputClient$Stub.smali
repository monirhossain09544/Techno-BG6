.class public abstract Landroid/media/tv/ITvInputClient$Stub;
.super Landroid/os/Binder;
.source "ITvInputClient.java"

# interfaces
.implements Landroid/media/tv/ITvInputClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputClient$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputClient"

.field static final blacklist TRANSACTION_onAdBufferConsumed:I = 0x1d

.field static final blacklist TRANSACTION_onAdResponse:I = 0x1c

.field static final blacklist TRANSACTION_onAitInfoUpdated:I = 0x12

.field static final blacklist TRANSACTION_onAudioPresentationSelected:I = 0x6

.field static final blacklist TRANSACTION_onAudioPresentationsChanged:I = 0x5

.field static final blacklist TRANSACTION_onAvailableSpeeds:I = 0x16

.field static final blacklist TRANSACTION_onBroadcastInfoResponse:I = 0x1b

.field static final greylist-max-o TRANSACTION_onChannelRetuned:I = 0x4

.field static final greylist-max-o TRANSACTION_onContentAllowed:I = 0xc

.field static final greylist-max-o TRANSACTION_onContentBlocked:I = 0xd

.field static final blacklist TRANSACTION_onCueingMessageAvailability:I = 0x14

.field static final greylist-max-o TRANSACTION_onError:I = 0x1a

.field static final greylist-max-o TRANSACTION_onLayoutSurface:I = 0xe

.field static final greylist-max-o TRANSACTION_onRecordingStopped:I = 0x19

.field static final greylist-max-o TRANSACTION_onSessionCreated:I = 0x1

.field static final greylist-max-o TRANSACTION_onSessionEvent:I = 0x3

.field static final greylist-max-o TRANSACTION_onSessionReleased:I = 0x2

.field static final blacklist TRANSACTION_onSignalStrength:I = 0x13

.field static final greylist-max-o TRANSACTION_onTimeShiftCurrentPositionChanged:I = 0x11

.field static final blacklist TRANSACTION_onTimeShiftMode:I = 0x15

.field static final greylist-max-o TRANSACTION_onTimeShiftStartPositionChanged:I = 0x10

.field static final greylist-max-o TRANSACTION_onTimeShiftStatusChanged:I = 0xf

.field static final greylist-max-o TRANSACTION_onTrackSelected:I = 0x8

.field static final greylist-max-o TRANSACTION_onTracksChanged:I = 0x7

.field static final greylist-max-o TRANSACTION_onTuned:I = 0x18

.field static final blacklist TRANSACTION_onTvInputSessionData:I = 0x1e

.field static final blacklist TRANSACTION_onTvMessage:I = 0x17

.field static final greylist-max-o TRANSACTION_onVideoAvailable:I = 0x9

.field static final blacklist TRANSACTION_onVideoFreezeUpdated:I = 0xb

.field static final greylist-max-o TRANSACTION_onVideoUnavailable:I = 0xa


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 124
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 125
    const-string v0, "android.media.tv.ITvInputClient"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputClient;
    .registers 3

    .line 133
    if-nez p0, :cond_4

    .line 134
    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_4
    const-string v0, "android.media.tv.ITvInputClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/ITvInputClient;

    if-eqz v1, :cond_13

    .line 138
    check-cast v0, Landroid/media/tv/ITvInputClient;

    return-object v0

    .line 140
    :cond_13
    new-instance v0, Landroid/media/tv/ITvInputClient$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/ITvInputClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 149
    packed-switch p0, :pswitch_data_7e

    .line 273
    const/4 p0, 0x0

    return-object p0

    .line 269
    :pswitch_5
    const-string/jumbo p0, "onTvInputSessionData"

    return-object p0

    .line 265
    :pswitch_9
    const-string/jumbo p0, "onAdBufferConsumed"

    return-object p0

    .line 261
    :pswitch_d
    const-string/jumbo p0, "onAdResponse"

    return-object p0

    .line 257
    :pswitch_11
    const-string/jumbo p0, "onBroadcastInfoResponse"

    return-object p0

    .line 253
    :pswitch_15
    const-string/jumbo p0, "onError"

    return-object p0

    .line 249
    :pswitch_19
    const-string/jumbo p0, "onRecordingStopped"

    return-object p0

    .line 245
    :pswitch_1d
    const-string/jumbo p0, "onTuned"

    return-object p0

    .line 241
    :pswitch_21
    const-string/jumbo p0, "onTvMessage"

    return-object p0

    .line 237
    :pswitch_25
    const-string/jumbo p0, "onAvailableSpeeds"

    return-object p0

    .line 233
    :pswitch_29
    const-string/jumbo p0, "onTimeShiftMode"

    return-object p0

    .line 229
    :pswitch_2d
    const-string/jumbo p0, "onCueingMessageAvailability"

    return-object p0

    .line 225
    :pswitch_31
    const-string/jumbo p0, "onSignalStrength"

    return-object p0

    .line 221
    :pswitch_35
    const-string/jumbo p0, "onAitInfoUpdated"

    return-object p0

    .line 217
    :pswitch_39
    const-string/jumbo p0, "onTimeShiftCurrentPositionChanged"

    return-object p0

    .line 213
    :pswitch_3d
    const-string/jumbo p0, "onTimeShiftStartPositionChanged"

    return-object p0

    .line 209
    :pswitch_41
    const-string/jumbo p0, "onTimeShiftStatusChanged"

    return-object p0

    .line 205
    :pswitch_45
    const-string/jumbo p0, "onLayoutSurface"

    return-object p0

    .line 201
    :pswitch_49
    const-string/jumbo p0, "onContentBlocked"

    return-object p0

    .line 197
    :pswitch_4d
    const-string/jumbo p0, "onContentAllowed"

    return-object p0

    .line 193
    :pswitch_51
    const-string/jumbo p0, "onVideoFreezeUpdated"

    return-object p0

    .line 189
    :pswitch_55
    const-string/jumbo p0, "onVideoUnavailable"

    return-object p0

    .line 185
    :pswitch_59
    const-string/jumbo p0, "onVideoAvailable"

    return-object p0

    .line 181
    :pswitch_5d
    const-string/jumbo p0, "onTrackSelected"

    return-object p0

    .line 177
    :pswitch_61
    const-string/jumbo p0, "onTracksChanged"

    return-object p0

    .line 173
    :pswitch_65
    const-string/jumbo p0, "onAudioPresentationSelected"

    return-object p0

    .line 169
    :pswitch_69
    const-string/jumbo p0, "onAudioPresentationsChanged"

    return-object p0

    .line 165
    :pswitch_6d
    const-string/jumbo p0, "onChannelRetuned"

    return-object p0

    .line 161
    :pswitch_71
    const-string/jumbo p0, "onSessionEvent"

    return-object p0

    .line 157
    :pswitch_75
    const-string/jumbo p0, "onSessionReleased"

    return-object p0

    .line 153
    :pswitch_79
    const-string/jumbo p0, "onSessionCreated"

    return-object p0

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_79
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

    .line 144
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1066
    const/16 v0, 0x1d

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 280
    invoke-static {p1}, Landroid/media/tv/ITvInputClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    nop

    .line 285
    const-string v0, "android.media.tv.ITvInputClient"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 286
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 289
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    return v1

    .line 292
    :cond_17
    packed-switch p1, :pswitch_data_256

    .line 610
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 599
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 601
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {p0, p1, p3, p4}, Landroid/media/tv/ITvInputClient$Stub;->onTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 606
    goto/16 :goto_254

    .line 589
    :pswitch_38
    sget-object p1, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/AdBuffer;

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 593
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputClient$Stub;->onAdBufferConsumed(Landroid/media/tv/AdBuffer;I)V

    .line 594
    goto/16 :goto_254

    .line 579
    :pswitch_4c
    sget-object p1, Landroid/media/tv/AdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/AdResponse;

    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 583
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputClient$Stub;->onAdResponse(Landroid/media/tv/AdResponse;I)V

    .line 584
    goto/16 :goto_254

    .line 569
    :pswitch_60
    sget-object p1, Landroid/media/tv/BroadcastInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/BroadcastInfoResponse;

    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputClient$Stub;->onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;I)V

    .line 574
    goto/16 :goto_254

    .line 559
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 563
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputClient$Stub;->onError(II)V

    .line 564
    goto/16 :goto_254

    .line 549
    :pswitch_84
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputClient$Stub;->onRecordingStopped(Landroid/net/Uri;I)V

    .line 554
    goto/16 :goto_254

    .line 539
    :pswitch_98
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputClient$Stub;->onTuned(Landroid/net/Uri;I)V

    .line 544
    goto/16 :goto_254

    .line 527
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 529
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 532
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {p0, p1, p3, p4}, Landroid/media/tv/ITvInputClient$Stub;->onTvMessage(ILandroid/os/Bundle;I)V

    .line 534
    goto/16 :goto_254

    .line 517
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputClient$Stub;->onAvailableSpeeds([FI)V

    .line 522
    goto/16 :goto_254

    .line 507
    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputClient$Stub;->onTimeShiftMode(II)V

    .line 512
    goto/16 :goto_254

    .line 497
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputClient$Stub;->onCueingMessageAvailability(ZI)V

    .line 502
    goto/16 :goto_254

    .line 487
    :pswitch_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputClient$Stub;->onSignalStrength(II)V

    .line 492
    goto/16 :goto_254

    .line 477
    :pswitch_104
    sget-object p1, Landroid/media/tv/AitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/AitInfo;

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputClient$Stub;->onAitInfoUpdated(Landroid/media/tv/AitInfo;I)V

    .line 482
    goto/16 :goto_254

    .line 467
    :pswitch_118
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {p0, p3, p4, p1}, Landroid/media/tv/ITvInputClient$Stub;->onTimeShiftCurrentPositionChanged(JI)V

    .line 472
    goto/16 :goto_254

    .line 457
    :pswitch_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-virtual {p0, p3, p4, p1}, Landroid/media/tv/ITvInputClient$Stub;->onTimeShiftStartPositionChanged(JI)V

    .line 462
    goto/16 :goto_254

    .line 447
    :pswitch_138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputClient$Stub;->onTimeShiftStatusChanged(II)V

    .line 452
    goto/16 :goto_254

    .line 431
    :pswitch_148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/media/tv/ITvInputClient$Stub;->onLayoutSurface(IIIII)V

    .line 442
    goto/16 :goto_254

    .line 421
    :pswitch_165
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputClient$Stub;->onContentBlocked(Ljava/lang/String;I)V

    .line 426
    goto/16 :goto_254

    .line 413
    :pswitch_176
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputClient$Stub;->onContentAllowed(I)V

    .line 416
    goto/16 :goto_254

    .line 403
    :pswitch_183
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputClient$Stub;->onVideoFreezeUpdated(ZI)V

    .line 408
    goto/16 :goto_254

    .line 393
    :pswitch_194
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputClient$Stub;->onVideoUnavailable(II)V

    .line 398
    goto/16 :goto_254

    .line 385
    :pswitch_1a5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputClient$Stub;->onVideoAvailable(I)V

    .line 388
    goto/16 :goto_254

    .line 373
    :pswitch_1b2
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, p1, p3, p4}, Landroid/media/tv/ITvInputClient$Stub;->onTrackSelected(ILjava/lang/String;I)V

    .line 380
    goto/16 :goto_254

    .line 363
    :pswitch_1c7
    move-object v2, p0

    sget-object p1, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputClient$Stub;->onTracksChanged(Ljava/util/List;I)V

    .line 368
    goto/16 :goto_254

    .line 351
    :pswitch_1da
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, p1, p3, p4}, Landroid/media/tv/ITvInputClient$Stub;->onAudioPresentationSelected(III)V

    .line 358
    goto :goto_254

    .line 341
    :pswitch_1ee
    move-object v2, p0

    sget-object p1, Landroid/media/AudioPresentation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputClient$Stub;->onAudioPresentationsChanged(Ljava/util/List;I)V

    .line 346
    goto :goto_254

    .line 331
    :pswitch_200
    move-object v2, p0

    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputClient$Stub;->onChannelRetuned(Landroid/net/Uri;I)V

    .line 336
    goto :goto_254

    .line 319
    :pswitch_214
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 321
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, p1, p3, p4}, Landroid/media/tv/ITvInputClient$Stub;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 326
    goto :goto_254

    .line 311
    :pswitch_22c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputClient$Stub;->onSessionReleased(I)V

    .line 314
    goto :goto_254

    .line 297
    :pswitch_238
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    .line 301
    sget-object p4, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/InputChannel;

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/media/tv/ITvInputClient$Stub;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 306
    nop

    .line 613
    :goto_254
    return v1

    nop

    :pswitch_data_256
    .packed-switch 0x1
        :pswitch_238
        :pswitch_22c
        :pswitch_214
        :pswitch_200
        :pswitch_1ee
        :pswitch_1da
        :pswitch_1c7
        :pswitch_1b2
        :pswitch_1a5
        :pswitch_194
        :pswitch_183
        :pswitch_176
        :pswitch_165
        :pswitch_148
        :pswitch_138
        :pswitch_128
        :pswitch_118
        :pswitch_104
        :pswitch_f4
        :pswitch_e4
        :pswitch_d4
        :pswitch_c4
        :pswitch_ac
        :pswitch_98
        :pswitch_84
        :pswitch_74
        :pswitch_60
        :pswitch_4c
        :pswitch_38
        :pswitch_20
    .end packed-switch
.end method
