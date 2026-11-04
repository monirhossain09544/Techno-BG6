.class public abstract Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;
.super Landroid/os/Binder;
.source "ITvInteractiveAppSessionCallback.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAdBufferReady:I = 0x8

.field static final blacklist TRANSACTION_onAdRequest:I = 0x1f

.field static final blacklist TRANSACTION_onBiInteractiveAppCreated:I = 0x6

.field static final blacklist TRANSACTION_onBroadcastInfoRequest:I = 0x3

.field static final blacklist TRANSACTION_onCommandRequest:I = 0x9

.field static final blacklist TRANSACTION_onLayoutSurface:I = 0x2

.field static final blacklist TRANSACTION_onRemoveBroadcastInfo:I = 0x4

.field static final blacklist TRANSACTION_onRequestAvailableSpeeds:I = 0x13

.field static final blacklist TRANSACTION_onRequestCertificate:I = 0x1e

.field static final blacklist TRANSACTION_onRequestCurrentChannelLcn:I = 0xe

.field static final blacklist TRANSACTION_onRequestCurrentChannelUri:I = 0xd

.field static final blacklist TRANSACTION_onRequestCurrentTvInputId:I = 0x11

.field static final blacklist TRANSACTION_onRequestCurrentVideoBounds:I = 0xc

.field static final blacklist TRANSACTION_onRequestScheduleRecording:I = 0x17

.field static final blacklist TRANSACTION_onRequestScheduleRecording2:I = 0x18

.field static final blacklist TRANSACTION_onRequestSelectedTrackInfo:I = 0x14

.field static final blacklist TRANSACTION_onRequestSigning:I = 0x1c

.field static final blacklist TRANSACTION_onRequestSigning2:I = 0x1d

.field static final blacklist TRANSACTION_onRequestStartRecording:I = 0x15

.field static final blacklist TRANSACTION_onRequestStopRecording:I = 0x16

.field static final blacklist TRANSACTION_onRequestStreamVolume:I = 0xf

.field static final blacklist TRANSACTION_onRequestTimeShiftMode:I = 0x12

.field static final blacklist TRANSACTION_onRequestTrackInfoList:I = 0x10

.field static final blacklist TRANSACTION_onRequestTvRecordingInfo:I = 0x1a

.field static final blacklist TRANSACTION_onRequestTvRecordingInfoList:I = 0x1b

.field static final blacklist TRANSACTION_onSessionCreated:I = 0x1

.field static final blacklist TRANSACTION_onSessionStateChanged:I = 0x5

.field static final blacklist TRANSACTION_onSetTvRecordingInfo:I = 0x19

.field static final blacklist TRANSACTION_onSetVideoBounds:I = 0xb

.field static final blacklist TRANSACTION_onTeletextAppStateChanged:I = 0x7

.field static final blacklist TRANSACTION_onTimeShiftCommandRequest:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 124
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 125
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
    .registers 3

    .line 133
    if-nez p0, :cond_4

    .line 134
    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_4
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSessionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v1, :cond_13

    .line 138
    check-cast v0, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    return-object v0

    .line 140
    :cond_13
    new-instance v0, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 149
    packed-switch p0, :pswitch_data_82

    .line 277
    const/4 p0, 0x0

    return-object p0

    .line 273
    :pswitch_5
    const-string/jumbo p0, "onAdRequest"

    return-object p0

    .line 269
    :pswitch_9
    const-string/jumbo p0, "onRequestCertificate"

    return-object p0

    .line 265
    :pswitch_d
    const-string/jumbo p0, "onRequestSigning2"

    return-object p0

    .line 261
    :pswitch_11
    const-string/jumbo p0, "onRequestSigning"

    return-object p0

    .line 257
    :pswitch_15
    const-string/jumbo p0, "onRequestTvRecordingInfoList"

    return-object p0

    .line 253
    :pswitch_19
    const-string/jumbo p0, "onRequestTvRecordingInfo"

    return-object p0

    .line 249
    :pswitch_1d
    const-string/jumbo p0, "onSetTvRecordingInfo"

    return-object p0

    .line 245
    :pswitch_21
    const-string/jumbo p0, "onRequestScheduleRecording2"

    return-object p0

    .line 241
    :pswitch_25
    const-string/jumbo p0, "onRequestScheduleRecording"

    return-object p0

    .line 237
    :pswitch_29
    const-string/jumbo p0, "onRequestStopRecording"

    return-object p0

    .line 233
    :pswitch_2d
    const-string/jumbo p0, "onRequestStartRecording"

    return-object p0

    .line 229
    :pswitch_31
    const-string/jumbo p0, "onRequestSelectedTrackInfo"

    return-object p0

    .line 225
    :pswitch_35
    const-string/jumbo p0, "onRequestAvailableSpeeds"

    return-object p0

    .line 221
    :pswitch_39
    const-string/jumbo p0, "onRequestTimeShiftMode"

    return-object p0

    .line 217
    :pswitch_3d
    const-string/jumbo p0, "onRequestCurrentTvInputId"

    return-object p0

    .line 213
    :pswitch_41
    const-string/jumbo p0, "onRequestTrackInfoList"

    return-object p0

    .line 209
    :pswitch_45
    const-string/jumbo p0, "onRequestStreamVolume"

    return-object p0

    .line 205
    :pswitch_49
    const-string/jumbo p0, "onRequestCurrentChannelLcn"

    return-object p0

    .line 201
    :pswitch_4d
    const-string/jumbo p0, "onRequestCurrentChannelUri"

    return-object p0

    .line 197
    :pswitch_51
    const-string/jumbo p0, "onRequestCurrentVideoBounds"

    return-object p0

    .line 193
    :pswitch_55
    const-string/jumbo p0, "onSetVideoBounds"

    return-object p0

    .line 189
    :pswitch_59
    const-string/jumbo p0, "onTimeShiftCommandRequest"

    return-object p0

    .line 185
    :pswitch_5d
    const-string/jumbo p0, "onCommandRequest"

    return-object p0

    .line 181
    :pswitch_61
    const-string/jumbo p0, "onAdBufferReady"

    return-object p0

    .line 177
    :pswitch_65
    const-string/jumbo p0, "onTeletextAppStateChanged"

    return-object p0

    .line 173
    :pswitch_69
    const-string/jumbo p0, "onBiInteractiveAppCreated"

    return-object p0

    .line 169
    :pswitch_6d
    const-string/jumbo p0, "onSessionStateChanged"

    return-object p0

    .line 165
    :pswitch_71
    const-string/jumbo p0, "onRemoveBroadcastInfo"

    return-object p0

    .line 161
    :pswitch_75
    const-string/jumbo p0, "onBroadcastInfoRequest"

    return-object p0

    .line 157
    :pswitch_79
    const-string/jumbo p0, "onLayoutSurface"

    return-object p0

    .line 153
    :pswitch_7d
    const-string/jumbo p0, "onSessionCreated"

    return-object p0

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_7d
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

    .line 1020
    const/16 v0, 0x1e

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 284
    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    nop

    .line 289
    const-string v3, "android.media.tv.interactive.ITvInteractiveAppSessionCallback"

    const/4 v10, 0x1

    if-lt p1, v10, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 290
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_19

    .line 293
    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    return v10

    .line 296
    :cond_19
    move-object/from16 v4, p3

    packed-switch p1, :pswitch_data_202

    .line 575
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 568
    :pswitch_23
    sget-object v1, Landroid/media/tv/AdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/AdRequest;

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onAdRequest(Landroid/media/tv/AdRequest;)V

    .line 571
    goto/16 :goto_201

    .line 558
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {p0, v1, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestCertificate(Ljava/lang/String;I)V

    .line 563
    goto/16 :goto_201

    .line 542
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestSigning2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V

    .line 553
    goto/16 :goto_201

    .line 528
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 532
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 537
    goto/16 :goto_201

    .line 520
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestTvRecordingInfoList(I)V

    .line 523
    goto/16 :goto_201

    .line 512
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestTvRecordingInfo(Ljava/lang/String;)V

    .line 515
    goto/16 :goto_201

    .line 502
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 504
    sget-object v2, Landroid/media/tv/TvRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvRecordingInfo;

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onSetTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V

    .line 507
    goto/16 :goto_201

    .line 482
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 486
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 492
    move-wide v11, v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 494
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Landroid/os/Bundle;

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    move-object v0, p0

    move-wide v6, v11

    invoke-virtual/range {v0 .. v9}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestScheduleRecording2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V

    .line 497
    goto/16 :goto_201

    .line 466
    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 470
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    .line 472
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    .line 474
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 477
    goto/16 :goto_201

    .line 458
    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestStopRecording(Ljava/lang/String;)V

    .line 461
    goto/16 :goto_201

    .line 448
    :pswitch_10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 450
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestStartRecording(Ljava/lang/String;Landroid/net/Uri;)V

    .line 453
    goto/16 :goto_201

    .line 442
    :pswitch_120
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestSelectedTrackInfo()V

    .line 443
    goto/16 :goto_201

    .line 437
    :pswitch_125
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestAvailableSpeeds()V

    .line 438
    goto/16 :goto_201

    .line 432
    :pswitch_12a
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestTimeShiftMode()V

    .line 433
    goto/16 :goto_201

    .line 427
    :pswitch_12f
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestCurrentTvInputId()V

    .line 428
    goto/16 :goto_201

    .line 422
    :pswitch_134
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestTrackInfoList()V

    .line 423
    goto/16 :goto_201

    .line 417
    :pswitch_139
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestStreamVolume()V

    .line 418
    goto/16 :goto_201

    .line 412
    :pswitch_13e
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestCurrentChannelLcn()V

    .line 413
    goto/16 :goto_201

    .line 407
    :pswitch_143
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestCurrentChannelUri()V

    .line 408
    goto/16 :goto_201

    .line 402
    :pswitch_148
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestCurrentVideoBounds()V

    .line 403
    goto/16 :goto_201

    .line 395
    :pswitch_14d
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onSetVideoBounds(Landroid/graphics/Rect;)V

    .line 398
    goto/16 :goto_201

    .line 385
    :pswitch_15d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 387
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onTimeShiftCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 390
    goto/16 :goto_201

    .line 375
    :pswitch_171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 377
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 380
    goto/16 :goto_201

    .line 367
    :pswitch_185
    sget-object v1, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/AdBuffer;

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onAdBufferReady(Landroid/media/tv/AdBuffer;)V

    .line 370
    goto :goto_201

    .line 359
    :pswitch_194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onTeletextAppStateChanged(I)V

    .line 362
    goto :goto_201

    .line 349
    :pswitch_19f
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;)V

    .line 354
    goto :goto_201

    .line 339
    :pswitch_1b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onSessionStateChanged(II)V

    .line 344
    goto :goto_201

    .line 331
    :pswitch_1c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRemoveBroadcastInfo(I)V

    .line 334
    goto :goto_201

    .line 323
    :pswitch_1cc
    sget-object v1, Landroid/media/tv/BroadcastInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/BroadcastInfoRequest;

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;)V

    .line 326
    goto :goto_201

    .line 309
    :pswitch_1db
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onLayoutSurface(IIII)V

    .line 318
    goto :goto_201

    .line 301
    :pswitch_1f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onSessionCreated(Landroid/media/tv/interactive/ITvInteractiveAppSession;)V

    .line 304
    nop

    .line 578
    :goto_201
    return v10

    :pswitch_data_202
    .packed-switch 0x1
        :pswitch_1f2
        :pswitch_1db
        :pswitch_1cc
        :pswitch_1c1
        :pswitch_1b2
        :pswitch_19f
        :pswitch_194
        :pswitch_185
        :pswitch_171
        :pswitch_15d
        :pswitch_14d
        :pswitch_148
        :pswitch_143
        :pswitch_13e
        :pswitch_139
        :pswitch_134
        :pswitch_12f
        :pswitch_12a
        :pswitch_125
        :pswitch_120
        :pswitch_10c
        :pswitch_100
        :pswitch_d4
        :pswitch_a4
        :pswitch_90
        :pswitch_84
        :pswitch_78
        :pswitch_60
        :pswitch_43
        :pswitch_33
        :pswitch_23
    .end packed-switch
.end method
