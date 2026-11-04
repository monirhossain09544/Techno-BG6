.class public abstract Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;
.super Landroid/os/Binder;
.source "ITvInteractiveAppClient.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAdBufferReady:I = 0x9

.field static final blacklist TRANSACTION_onAdRequest:I = 0x20

.field static final blacklist TRANSACTION_onBiInteractiveAppCreated:I = 0x7

.field static final blacklist TRANSACTION_onBroadcastInfoRequest:I = 0x4

.field static final blacklist TRANSACTION_onCommandRequest:I = 0xa

.field static final blacklist TRANSACTION_onLayoutSurface:I = 0x3

.field static final blacklist TRANSACTION_onRemoveBroadcastInfo:I = 0x5

.field static final blacklist TRANSACTION_onRequestAvailableSpeeds:I = 0x15

.field static final blacklist TRANSACTION_onRequestCertificate:I = 0x1f

.field static final blacklist TRANSACTION_onRequestCurrentChannelLcn:I = 0xf

.field static final blacklist TRANSACTION_onRequestCurrentChannelUri:I = 0xe

.field static final blacklist TRANSACTION_onRequestCurrentTvInputId:I = 0x13

.field static final blacklist TRANSACTION_onRequestCurrentVideoBounds:I = 0xd

.field static final blacklist TRANSACTION_onRequestScheduleRecording:I = 0x18

.field static final blacklist TRANSACTION_onRequestScheduleRecording2:I = 0x19

.field static final blacklist TRANSACTION_onRequestSelectedTrackInfo:I = 0x12

.field static final blacklist TRANSACTION_onRequestSigning:I = 0x1d

.field static final blacklist TRANSACTION_onRequestSigning2:I = 0x1e

.field static final blacklist TRANSACTION_onRequestStartRecording:I = 0x16

.field static final blacklist TRANSACTION_onRequestStopRecording:I = 0x17

.field static final blacklist TRANSACTION_onRequestStreamVolume:I = 0x10

.field static final blacklist TRANSACTION_onRequestTimeShiftMode:I = 0x14

.field static final blacklist TRANSACTION_onRequestTrackInfoList:I = 0x11

.field static final blacklist TRANSACTION_onRequestTvRecordingInfo:I = 0x1b

.field static final blacklist TRANSACTION_onRequestTvRecordingInfoList:I = 0x1c

.field static final blacklist TRANSACTION_onSessionCreated:I = 0x1

.field static final blacklist TRANSACTION_onSessionReleased:I = 0x2

.field static final blacklist TRANSACTION_onSessionStateChanged:I = 0x6

.field static final blacklist TRANSACTION_onSetTvRecordingInfo:I = 0x1a

.field static final blacklist TRANSACTION_onSetVideoBounds:I = 0xc

.field static final blacklist TRANSACTION_onTeletextAppStateChanged:I = 0x8

.field static final blacklist TRANSACTION_onTimeShiftCommandRequest:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 127
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 128
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppClient"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppClient;
    .registers 3

    .line 136
    if-nez p0, :cond_4

    .line 137
    const/4 p0, 0x0

    return-object p0

    .line 139
    :cond_4
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/interactive/ITvInteractiveAppClient;

    if-eqz v1, :cond_13

    .line 141
    check-cast v0, Landroid/media/tv/interactive/ITvInteractiveAppClient;

    return-object v0

    .line 143
    :cond_13
    new-instance v0, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 152
    packed-switch p0, :pswitch_data_86

    .line 284
    const/4 p0, 0x0

    return-object p0

    .line 280
    :pswitch_5
    const-string/jumbo p0, "onAdRequest"

    return-object p0

    .line 276
    :pswitch_9
    const-string/jumbo p0, "onRequestCertificate"

    return-object p0

    .line 272
    :pswitch_d
    const-string/jumbo p0, "onRequestSigning2"

    return-object p0

    .line 268
    :pswitch_11
    const-string/jumbo p0, "onRequestSigning"

    return-object p0

    .line 264
    :pswitch_15
    const-string/jumbo p0, "onRequestTvRecordingInfoList"

    return-object p0

    .line 260
    :pswitch_19
    const-string/jumbo p0, "onRequestTvRecordingInfo"

    return-object p0

    .line 256
    :pswitch_1d
    const-string/jumbo p0, "onSetTvRecordingInfo"

    return-object p0

    .line 252
    :pswitch_21
    const-string/jumbo p0, "onRequestScheduleRecording2"

    return-object p0

    .line 248
    :pswitch_25
    const-string/jumbo p0, "onRequestScheduleRecording"

    return-object p0

    .line 244
    :pswitch_29
    const-string/jumbo p0, "onRequestStopRecording"

    return-object p0

    .line 240
    :pswitch_2d
    const-string/jumbo p0, "onRequestStartRecording"

    return-object p0

    .line 236
    :pswitch_31
    const-string/jumbo p0, "onRequestAvailableSpeeds"

    return-object p0

    .line 232
    :pswitch_35
    const-string/jumbo p0, "onRequestTimeShiftMode"

    return-object p0

    .line 228
    :pswitch_39
    const-string/jumbo p0, "onRequestCurrentTvInputId"

    return-object p0

    .line 224
    :pswitch_3d
    const-string/jumbo p0, "onRequestSelectedTrackInfo"

    return-object p0

    .line 220
    :pswitch_41
    const-string/jumbo p0, "onRequestTrackInfoList"

    return-object p0

    .line 216
    :pswitch_45
    const-string/jumbo p0, "onRequestStreamVolume"

    return-object p0

    .line 212
    :pswitch_49
    const-string/jumbo p0, "onRequestCurrentChannelLcn"

    return-object p0

    .line 208
    :pswitch_4d
    const-string/jumbo p0, "onRequestCurrentChannelUri"

    return-object p0

    .line 204
    :pswitch_51
    const-string/jumbo p0, "onRequestCurrentVideoBounds"

    return-object p0

    .line 200
    :pswitch_55
    const-string/jumbo p0, "onSetVideoBounds"

    return-object p0

    .line 196
    :pswitch_59
    const-string/jumbo p0, "onTimeShiftCommandRequest"

    return-object p0

    .line 192
    :pswitch_5d
    const-string/jumbo p0, "onCommandRequest"

    return-object p0

    .line 188
    :pswitch_61
    const-string/jumbo p0, "onAdBufferReady"

    return-object p0

    .line 184
    :pswitch_65
    const-string/jumbo p0, "onTeletextAppStateChanged"

    return-object p0

    .line 180
    :pswitch_69
    const-string/jumbo p0, "onBiInteractiveAppCreated"

    return-object p0

    .line 176
    :pswitch_6d
    const-string/jumbo p0, "onSessionStateChanged"

    return-object p0

    .line 172
    :pswitch_71
    const-string/jumbo p0, "onRemoveBroadcastInfo"

    return-object p0

    .line 168
    :pswitch_75
    const-string/jumbo p0, "onBroadcastInfoRequest"

    return-object p0

    .line 164
    :pswitch_79
    const-string/jumbo p0, "onLayoutSurface"

    return-object p0

    .line 160
    :pswitch_7d
    const-string/jumbo p0, "onSessionReleased"

    return-object p0

    .line 156
    :pswitch_81
    const-string/jumbo p0, "onSessionCreated"

    return-object p0

    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_81
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

    .line 147
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1156
    const/16 v0, 0x1f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 291
    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 296
    const-string v3, "android.media.tv.interactive.ITvInteractiveAppClient"

    const/4 v11, 0x1

    if-lt v1, v11, :cond_11

    const v4, 0xffffff

    if-gt v1, v4, :cond_11

    .line 297
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    :cond_11
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1c

    .line 300
    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    return v11

    .line 303
    :cond_1c
    move-object/from16 v4, p3

    packed-switch v1, :pswitch_data_2d8

    .line 665
    move-object v9, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 656
    :pswitch_27
    sget-object v1, Landroid/media/tv/AdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/AdRequest;

    .line 658
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 659
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {p0, v1, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onAdRequest(Landroid/media/tv/AdRequest;I)V

    .line 661
    goto/16 :goto_2d7

    .line 644
    :pswitch_3b
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 646
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 648
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 649
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 650
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCertificate(Ljava/lang/String;II)V

    .line 651
    goto/16 :goto_2d7

    .line 626
    :pswitch_4f
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 636
    move-object/from16 v7, p2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 637
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestSigning2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BI)V

    .line 639
    goto/16 :goto_2d7

    .line 610
    :pswitch_72
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 612
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 614
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 616
    invoke-virtual {v7}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 618
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 619
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 621
    goto/16 :goto_2d7

    .line 600
    :pswitch_90
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 602
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 603
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 604
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestTvRecordingInfoList(II)V

    .line 605
    goto/16 :goto_2d7

    .line 590
    :pswitch_a1
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 592
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 593
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestTvRecordingInfo(Ljava/lang/String;I)V

    .line 595
    goto/16 :goto_2d7

    .line 578
    :pswitch_b2
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 580
    sget-object v2, Landroid/media/tv/TvRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvRecordingInfo;

    .line 582
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 583
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSetTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;I)V

    .line 585
    goto/16 :goto_2d7

    .line 556
    :pswitch_cb
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 558
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 560
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 562
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 564
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 566
    move-wide v9, v8

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 568
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 570
    move-object v12, v6

    move-wide v13, v9

    move-object v9, v7

    move-wide v6, v13

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 571
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    move-object v0, p0

    move-object v9, v12

    invoke-virtual/range {v0 .. v10}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestScheduleRecording2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;I)V

    .line 573
    goto/16 :goto_2d7

    .line 538
    :pswitch_103
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 540
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 542
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    .line 544
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    .line 546
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 548
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 549
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;I)V

    .line 551
    goto/16 :goto_2d7

    .line 528
    :pswitch_134
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 530
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 531
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestStopRecording(Ljava/lang/String;I)V

    .line 533
    goto/16 :goto_2d7

    .line 516
    :pswitch_145
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 518
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 520
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 521
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestStartRecording(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 523
    goto/16 :goto_2d7

    .line 508
    :pswitch_15e
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 509
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestAvailableSpeeds(I)V

    .line 511
    goto/16 :goto_2d7

    .line 500
    :pswitch_16b
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 501
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestTimeShiftMode(I)V

    .line 503
    goto/16 :goto_2d7

    .line 492
    :pswitch_178
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 493
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 494
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCurrentTvInputId(I)V

    .line 495
    goto/16 :goto_2d7

    .line 484
    :pswitch_185
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 485
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestSelectedTrackInfo(I)V

    .line 487
    goto/16 :goto_2d7

    .line 476
    :pswitch_192
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 477
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestTrackInfoList(I)V

    .line 479
    goto/16 :goto_2d7

    .line 468
    :pswitch_19f
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 469
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestStreamVolume(I)V

    .line 471
    goto/16 :goto_2d7

    .line 460
    :pswitch_1ac
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 461
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCurrentChannelLcn(I)V

    .line 463
    goto/16 :goto_2d7

    .line 452
    :pswitch_1b9
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 453
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCurrentChannelUri(I)V

    .line 455
    goto/16 :goto_2d7

    .line 444
    :pswitch_1c6
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 445
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCurrentVideoBounds(I)V

    .line 447
    goto/16 :goto_2d7

    .line 434
    :pswitch_1d3
    move-object v9, v2

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 436
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 437
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSetVideoBounds(Landroid/graphics/Rect;I)V

    .line 439
    goto/16 :goto_2d7

    .line 422
    :pswitch_1e8
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 424
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 426
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 427
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onTimeShiftCommandRequest(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 429
    goto/16 :goto_2d7

    .line 410
    :pswitch_201
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 412
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 414
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 415
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onCommandRequest(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 417
    goto/16 :goto_2d7

    .line 400
    :pswitch_21a
    move-object v9, v2

    sget-object v1, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/AdBuffer;

    .line 402
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 403
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onAdBufferReady(Landroid/media/tv/AdBuffer;I)V

    .line 405
    goto/16 :goto_2d7

    .line 390
    :pswitch_22f
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 392
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 393
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onTeletextAppStateChanged(II)V

    .line 395
    goto/16 :goto_2d7

    .line 378
    :pswitch_240
    move-object v9, v2

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 380
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 382
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 383
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 385
    goto/16 :goto_2d7

    .line 366
    :pswitch_259
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 368
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 370
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 371
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSessionStateChanged(III)V

    .line 373
    goto/16 :goto_2d7

    .line 356
    :pswitch_26e
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 358
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 359
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRemoveBroadcastInfo(II)V

    .line 361
    goto :goto_2d7

    .line 346
    :pswitch_27e
    move-object v9, v2

    sget-object v1, Landroid/media/tv/BroadcastInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/BroadcastInfoRequest;

    .line 348
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 349
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;I)V

    .line 351
    goto :goto_2d7

    .line 330
    :pswitch_292
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 332
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 334
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 336
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 338
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 339
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onLayoutSurface(IIIII)V

    .line 341
    goto :goto_2d7

    .line 322
    :pswitch_2af
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 323
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSessionReleased(I)V

    .line 325
    goto :goto_2d7

    .line 308
    :pswitch_2bb
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 312
    sget-object v3, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputChannel;

    .line 314
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 315
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 317
    nop

    .line 668
    :goto_2d7
    return v11

    :pswitch_data_2d8
    .packed-switch 0x1
        :pswitch_2bb
        :pswitch_2af
        :pswitch_292
        :pswitch_27e
        :pswitch_26e
        :pswitch_259
        :pswitch_240
        :pswitch_22f
        :pswitch_21a
        :pswitch_201
        :pswitch_1e8
        :pswitch_1d3
        :pswitch_1c6
        :pswitch_1b9
        :pswitch_1ac
        :pswitch_19f
        :pswitch_192
        :pswitch_185
        :pswitch_178
        :pswitch_16b
        :pswitch_15e
        :pswitch_145
        :pswitch_134
        :pswitch_103
        :pswitch_cb
        :pswitch_b2
        :pswitch_a1
        :pswitch_90
        :pswitch_72
        :pswitch_4f
        :pswitch_3b
        :pswitch_27
    .end packed-switch
.end method
