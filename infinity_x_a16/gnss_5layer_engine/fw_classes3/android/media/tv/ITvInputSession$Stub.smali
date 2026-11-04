.class public abstract Landroid/media/tv/ITvInputSession$Stub;
.super Landroid/os/Binder;
.source "ITvInputSession.java"

# interfaces
.implements Landroid/media/tv/ITvInputSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputSession"

.field static final greylist-max-o TRANSACTION_appPrivateCommand:I = 0xb

.field static final greylist-max-o TRANSACTION_createOverlayView:I = 0xc

.field static final greylist-max-o TRANSACTION_dispatchSurfaceChanged:I = 0x4

.field static final blacklist TRANSACTION_notifyAdBufferReady:I = 0x20

.field static final blacklist TRANSACTION_notifyTvAdSessionData:I = 0x24

.field static final blacklist TRANSACTION_notifyTvMessage:I = 0x21

.field static final blacklist TRANSACTION_pauseRecording:I = 0x1b

.field static final greylist-max-o TRANSACTION_relayoutOverlayView:I = 0xd

.field static final greylist-max-o TRANSACTION_release:I = 0x1

.field static final blacklist TRANSACTION_removeBroadcastInfo:I = 0x1e

.field static final greylist-max-o TRANSACTION_removeOverlayView:I = 0xe

.field static final blacklist TRANSACTION_requestAd:I = 0x1f

.field static final blacklist TRANSACTION_requestBroadcastInfo:I = 0x1d

.field static final blacklist TRANSACTION_resumePlayback:I = 0x17

.field static final blacklist TRANSACTION_resumeRecording:I = 0x1c

.field static final blacklist TRANSACTION_selectAudioPresentation:I = 0x8

.field static final greylist-max-o TRANSACTION_selectTrack:I = 0x9

.field static final greylist-max-o TRANSACTION_setCaptionEnabled:I = 0x7

.field static final blacklist TRANSACTION_setInteractiveAppNotificationEnabled:I = 0xa

.field static final greylist-max-o TRANSACTION_setMain:I = 0x2

.field static final greylist-max-o TRANSACTION_setSurface:I = 0x3

.field static final blacklist TRANSACTION_setTvMessageEnabled:I = 0x22

.field static final blacklist TRANSACTION_setVideoFrozen:I = 0x23

.field static final greylist-max-o TRANSACTION_setVolume:I = 0x5

.field static final greylist-max-o TRANSACTION_startRecording:I = 0x19

.field static final blacklist TRANSACTION_stopPlayback:I = 0x18

.field static final greylist-max-o TRANSACTION_stopRecording:I = 0x1a

.field static final greylist-max-o TRANSACTION_timeShiftEnablePositionTracking:I = 0x16

.field static final greylist-max-o TRANSACTION_timeShiftPause:I = 0x11

.field static final greylist-max-o TRANSACTION_timeShiftPlay:I = 0x10

.field static final greylist-max-o TRANSACTION_timeShiftResume:I = 0x12

.field static final greylist-max-o TRANSACTION_timeShiftSeekTo:I = 0x13

.field static final blacklist TRANSACTION_timeShiftSetMode:I = 0x15

.field static final greylist-max-o TRANSACTION_timeShiftSetPlaybackParams:I = 0x14

.field static final greylist-max-o TRANSACTION_tune:I = 0x6

.field static final greylist-max-o TRANSACTION_unblockContent:I = 0xf


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 145
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 146
    const-string v0, "android.media.tv.ITvInputSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSession;
    .registers 3

    .line 154
    if-nez p0, :cond_4

    .line 155
    const/4 p0, 0x0

    return-object p0

    .line 157
    :cond_4
    const-string v0, "android.media.tv.ITvInputSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_13

    .line 159
    check-cast v0, Landroid/media/tv/ITvInputSession;

    return-object v0

    .line 161
    :cond_13
    new-instance v0, Landroid/media/tv/ITvInputSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/ITvInputSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 170
    packed-switch p0, :pswitch_data_92

    .line 318
    const/4 p0, 0x0

    return-object p0

    .line 314
    :pswitch_5
    const-string/jumbo p0, "notifyTvAdSessionData"

    return-object p0

    .line 310
    :pswitch_9
    const-string/jumbo p0, "setVideoFrozen"

    return-object p0

    .line 306
    :pswitch_d
    const-string/jumbo p0, "setTvMessageEnabled"

    return-object p0

    .line 302
    :pswitch_11
    const-string/jumbo p0, "notifyTvMessage"

    return-object p0

    .line 298
    :pswitch_15
    const-string/jumbo p0, "notifyAdBufferReady"

    return-object p0

    .line 294
    :pswitch_19
    const-string/jumbo p0, "requestAd"

    return-object p0

    .line 290
    :pswitch_1d
    const-string/jumbo p0, "removeBroadcastInfo"

    return-object p0

    .line 286
    :pswitch_21
    const-string/jumbo p0, "requestBroadcastInfo"

    return-object p0

    .line 282
    :pswitch_25
    const-string/jumbo p0, "resumeRecording"

    return-object p0

    .line 278
    :pswitch_29
    const-string/jumbo p0, "pauseRecording"

    return-object p0

    .line 274
    :pswitch_2d
    const-string/jumbo p0, "stopRecording"

    return-object p0

    .line 270
    :pswitch_31
    const-string/jumbo p0, "startRecording"

    return-object p0

    .line 266
    :pswitch_35
    const-string/jumbo p0, "stopPlayback"

    return-object p0

    .line 262
    :pswitch_39
    const-string/jumbo p0, "resumePlayback"

    return-object p0

    .line 258
    :pswitch_3d
    const-string/jumbo p0, "timeShiftEnablePositionTracking"

    return-object p0

    .line 254
    :pswitch_41
    const-string/jumbo p0, "timeShiftSetMode"

    return-object p0

    .line 250
    :pswitch_45
    const-string/jumbo p0, "timeShiftSetPlaybackParams"

    return-object p0

    .line 246
    :pswitch_49
    const-string/jumbo p0, "timeShiftSeekTo"

    return-object p0

    .line 242
    :pswitch_4d
    const-string/jumbo p0, "timeShiftResume"

    return-object p0

    .line 238
    :pswitch_51
    const-string/jumbo p0, "timeShiftPause"

    return-object p0

    .line 234
    :pswitch_55
    const-string/jumbo p0, "timeShiftPlay"

    return-object p0

    .line 230
    :pswitch_59
    const-string/jumbo p0, "unblockContent"

    return-object p0

    .line 226
    :pswitch_5d
    const-string/jumbo p0, "removeOverlayView"

    return-object p0

    .line 222
    :pswitch_61
    const-string/jumbo p0, "relayoutOverlayView"

    return-object p0

    .line 218
    :pswitch_65
    const-string p0, "createOverlayView"

    return-object p0

    .line 214
    :pswitch_68
    const-string p0, "appPrivateCommand"

    return-object p0

    .line 210
    :pswitch_6b
    const-string/jumbo p0, "setInteractiveAppNotificationEnabled"

    return-object p0

    .line 206
    :pswitch_6f
    const-string/jumbo p0, "selectTrack"

    return-object p0

    .line 202
    :pswitch_73
    const-string/jumbo p0, "selectAudioPresentation"

    return-object p0

    .line 198
    :pswitch_77
    const-string/jumbo p0, "setCaptionEnabled"

    return-object p0

    .line 194
    :pswitch_7b
    const-string/jumbo p0, "tune"

    return-object p0

    .line 190
    :pswitch_7f
    const-string/jumbo p0, "setVolume"

    return-object p0

    .line 186
    :pswitch_83
    const-string p0, "dispatchSurfaceChanged"

    return-object p0

    .line 182
    :pswitch_86
    const-string/jumbo p0, "setSurface"

    return-object p0

    .line 178
    :pswitch_8a
    const-string/jumbo p0, "setMain"

    return-object p0

    .line 174
    :pswitch_8e
    const-string/jumbo p0, "release"

    return-object p0

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_8a
        :pswitch_86
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_68
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

    .line 165
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1139
    const/16 v0, 0x23

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 325
    invoke-static {p1}, Landroid/media/tv/ITvInputSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 329
    nop

    .line 330
    const-string v0, "android.media.tv.ITvInputSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 331
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 334
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    return v1

    .line 337
    :cond_17
    packed-switch p1, :pswitch_data_20e

    .line 633
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 624
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 626
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 628
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputSession$Stub;->notifyTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 629
    goto/16 :goto_20c

    .line 616
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSession$Stub;->setVideoFrozen(Z)V

    .line 619
    goto/16 :goto_20c

    .line 606
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputSession$Stub;->setTvMessageEnabled(IZ)V

    .line 611
    goto/16 :goto_20c

    .line 596
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 598
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputSession$Stub;->notifyTvMessage(ILandroid/os/Bundle;)V

    .line 601
    goto/16 :goto_20c

    .line 588
    :pswitch_63
    sget-object p1, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/AdBuffer;

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSession$Stub;->notifyAdBufferReady(Landroid/media/tv/AdBuffer;)V

    .line 591
    goto/16 :goto_20c

    .line 580
    :pswitch_73
    sget-object p1, Landroid/media/tv/AdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/AdRequest;

    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSession$Stub;->requestAd(Landroid/media/tv/AdRequest;)V

    .line 583
    goto/16 :goto_20c

    .line 572
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 573
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSession$Stub;->removeBroadcastInfo(I)V

    .line 575
    goto/16 :goto_20c

    .line 564
    :pswitch_8f
    sget-object p1, Landroid/media/tv/BroadcastInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/BroadcastInfoRequest;

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 566
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSession$Stub;->requestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V

    .line 567
    goto/16 :goto_20c

    .line 556
    :pswitch_9f
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSession$Stub;->resumeRecording(Landroid/os/Bundle;)V

    .line 559
    goto/16 :goto_20c

    .line 548
    :pswitch_af
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSession$Stub;->pauseRecording(Landroid/os/Bundle;)V

    .line 551
    goto/16 :goto_20c

    .line 542
    :pswitch_bf
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->stopRecording()V

    .line 543
    goto/16 :goto_20c

    .line 533
    :pswitch_c4
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 535
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputSession$Stub;->startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 538
    goto/16 :goto_20c

    .line 525
    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSession$Stub;->stopPlayback(I)V

    .line 528
    goto/16 :goto_20c

    .line 519
    :pswitch_e8
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->resumePlayback()V

    .line 520
    goto/16 :goto_20c

    .line 512
    :pswitch_ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftEnablePositionTracking(Z)V

    .line 515
    goto/16 :goto_20c

    .line 504
    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSetMode(I)V

    .line 507
    goto/16 :goto_20c

    .line 496
    :pswitch_105
    sget-object p1, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/PlaybackParams;

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 498
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 499
    goto/16 :goto_20c

    .line 488
    :pswitch_115
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, p3, p4}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSeekTo(J)V

    .line 491
    goto/16 :goto_20c

    .line 482
    :pswitch_121
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftResume()V

    .line 483
    goto/16 :goto_20c

    .line 477
    :pswitch_126
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftPause()V

    .line 478
    goto/16 :goto_20c

    .line 470
    :pswitch_12b
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftPlay(Landroid/net/Uri;)V

    .line 473
    goto/16 :goto_20c

    .line 462
    :pswitch_13b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSession$Stub;->unblockContent(Ljava/lang/String;)V

    .line 465
    goto/16 :goto_20c

    .line 456
    :pswitch_147
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->removeOverlayView()V

    .line 457
    goto/16 :goto_20c

    .line 449
    :pswitch_14c
    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSession$Stub;->relayoutOverlayView(Landroid/graphics/Rect;)V

    .line 452
    goto/16 :goto_20c

    .line 439
    :pswitch_15c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 441
    sget-object p3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputSession$Stub;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 444
    goto/16 :goto_20c

    .line 429
    :pswitch_170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 431
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputSession$Stub;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 434
    goto/16 :goto_20c

    .line 421
    :pswitch_184
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSession$Stub;->setInteractiveAppNotificationEnabled(Z)V

    .line 424
    goto/16 :goto_20c

    .line 411
    :pswitch_190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputSession$Stub;->selectTrack(ILjava/lang/String;)V

    .line 416
    goto :goto_20c

    .line 401
    :pswitch_19f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputSession$Stub;->selectAudioPresentation(II)V

    .line 406
    goto :goto_20c

    .line 393
    :pswitch_1ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSession$Stub;->setCaptionEnabled(Z)V

    .line 396
    goto :goto_20c

    .line 383
    :pswitch_1b9
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 385
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputSession$Stub;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 388
    goto :goto_20c

    .line 375
    :pswitch_1d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSession$Stub;->setVolume(F)V

    .line 378
    goto :goto_20c

    .line 363
    :pswitch_1db
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, p1, p3, p4}, Landroid/media/tv/ITvInputSession$Stub;->dispatchSurfaceChanged(III)V

    .line 370
    goto :goto_20c

    .line 355
    :pswitch_1ee
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSession$Stub;->setSurface(Landroid/view/Surface;)V

    .line 358
    goto :goto_20c

    .line 347
    :pswitch_1fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputSession$Stub;->setMain(Z)V

    .line 350
    goto :goto_20c

    .line 341
    :pswitch_208
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->release()V

    .line 342
    nop

    .line 636
    :goto_20c
    return v1

    nop

    :pswitch_data_20e
    .packed-switch 0x1
        :pswitch_208
        :pswitch_1fd
        :pswitch_1ee
        :pswitch_1db
        :pswitch_1d0
        :pswitch_1b9
        :pswitch_1ae
        :pswitch_19f
        :pswitch_190
        :pswitch_184
        :pswitch_170
        :pswitch_15c
        :pswitch_14c
        :pswitch_147
        :pswitch_13b
        :pswitch_12b
        :pswitch_126
        :pswitch_121
        :pswitch_115
        :pswitch_105
        :pswitch_f9
        :pswitch_ed
        :pswitch_e8
        :pswitch_dc
        :pswitch_c4
        :pswitch_bf
        :pswitch_af
        :pswitch_9f
        :pswitch_8f
        :pswitch_83
        :pswitch_73
        :pswitch_63
        :pswitch_4f
        :pswitch_3f
        :pswitch_33
        :pswitch_1f
    .end packed-switch
.end method
