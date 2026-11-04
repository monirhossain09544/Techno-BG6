.class public abstract Landroid/media/tv/ITvInputManager$Stub;
.super Landroid/os/Binder;
.source "ITvInputManager.java"

# interfaces
.implements Landroid/media/tv/ITvInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputManager"

.field static final greylist-max-o TRANSACTION_acquireTvInputHardware:I = 0x38

.field static final greylist-max-o TRANSACTION_addBlockedRating:I = 0xe

.field static final blacklist TRANSACTION_addHardwareDevice:I = 0x41

.field static final greylist-max-o TRANSACTION_captureFrame:I = 0x3b

.field static final greylist-max-o TRANSACTION_createOverlayView:I = 0x1f

.field static final greylist-max-o TRANSACTION_createSession:I = 0x10

.field static final greylist-max-o TRANSACTION_dispatchSurfaceChanged:I = 0x17

.field static final blacklist TRANSACTION_getAvailableExtensionInterfaceNames:I = 0x5

.field static final greylist-max-o TRANSACTION_getAvailableTvStreamConfigList:I = 0x3a

.field static final greylist-max-o TRANSACTION_getBlockedRatings:I = 0xd

.field static final blacklist TRANSACTION_getClientPid:I = 0x12

.field static final blacklist TRANSACTION_getClientPriority:I = 0x13

.field static final blacklist TRANSACTION_getClientUserId:I = 0x14

.field static final blacklist TRANSACTION_getCurrentTunedInfos:I = 0x2a

.field static final greylist-max-o TRANSACTION_getDvbDeviceList:I = 0x3d

.field static final blacklist TRANSACTION_getExtensionInterface:I = 0x6

.field static final greylist-max-o TRANSACTION_getHardwareList:I = 0x37

.field static final greylist-max-o TRANSACTION_getTvContentRatingSystemList:I = 0x7

.field static final greylist-max-o TRANSACTION_getTvInputInfo:I = 0x2

.field static final greylist-max-o TRANSACTION_getTvInputList:I = 0x1

.field static final greylist-max-o TRANSACTION_getTvInputState:I = 0x4

.field static final greylist-max-o TRANSACTION_isParentalControlsEnabled:I = 0xa

.field static final greylist-max-o TRANSACTION_isRatingBlocked:I = 0xc

.field static final greylist-max-o TRANSACTION_isSingleSessionActive:I = 0x3c

.field static final blacklist TRANSACTION_notifyAdBufferReady:I = 0x34

.field static final blacklist TRANSACTION_notifyTvAdSessionData:I = 0x44

.field static final blacklist TRANSACTION_notifyTvMessage:I = 0x35

.field static final greylist-max-o TRANSACTION_openDvbDevice:I = 0x3e

.field static final blacklist TRANSACTION_pauseRecording:I = 0x2d

.field static final greylist-max-o TRANSACTION_registerCallback:I = 0x8

.field static final greylist-max-o TRANSACTION_relayoutOverlayView:I = 0x20

.field static final greylist-max-o TRANSACTION_releaseSession:I = 0x11

.field static final greylist-max-o TRANSACTION_releaseTvInputHardware:I = 0x39

.field static final greylist-max-o TRANSACTION_removeBlockedRating:I = 0xf

.field static final blacklist TRANSACTION_removeBroadcastInfo:I = 0x32

.field static final blacklist TRANSACTION_removeHardwareDevice:I = 0x42

.field static final greylist-max-o TRANSACTION_removeOverlayView:I = 0x21

.field static final blacklist TRANSACTION_requestAd:I = 0x33

.field static final blacklist TRANSACTION_requestBroadcastInfo:I = 0x31

.field static final greylist-max-o TRANSACTION_requestChannelBrowsable:I = 0x40

.field static final blacklist TRANSACTION_resumePlayback:I = 0x2f

.field static final blacklist TRANSACTION_resumeRecording:I = 0x2e

.field static final blacklist TRANSACTION_selectAudioPresentation:I = 0x1c

.field static final greylist-max-o TRANSACTION_selectTrack:I = 0x1b

.field static final greylist-max-o TRANSACTION_sendAppPrivateCommand:I = 0x1e

.field static final greylist-max-o TRANSACTION_sendTvInputNotifyIntent:I = 0x3f

.field static final greylist-max-o TRANSACTION_setCaptionEnabled:I = 0x1a

.field static final blacklist TRANSACTION_setInteractiveAppNotificationEnabled:I = 0x1d

.field static final greylist-max-o TRANSACTION_setMainSession:I = 0x15

.field static final greylist-max-o TRANSACTION_setParentalControlsEnabled:I = 0xb

.field static final greylist-max-o TRANSACTION_setSurface:I = 0x16

.field static final blacklist TRANSACTION_setTvMessageEnabled:I = 0x36

.field static final blacklist TRANSACTION_setVideoFrozen:I = 0x43

.field static final greylist-max-o TRANSACTION_setVolume:I = 0x18

.field static final greylist-max-o TRANSACTION_startRecording:I = 0x2b

.field static final blacklist TRANSACTION_stopPlayback:I = 0x30

.field static final greylist-max-o TRANSACTION_stopRecording:I = 0x2c

.field static final greylist-max-o TRANSACTION_timeShiftEnablePositionTracking:I = 0x29

.field static final greylist-max-o TRANSACTION_timeShiftPause:I = 0x24

.field static final greylist-max-o TRANSACTION_timeShiftPlay:I = 0x23

.field static final greylist-max-o TRANSACTION_timeShiftResume:I = 0x25

.field static final greylist-max-o TRANSACTION_timeShiftSeekTo:I = 0x26

.field static final blacklist TRANSACTION_timeShiftSetMode:I = 0x28

.field static final greylist-max-o TRANSACTION_timeShiftSetPlaybackParams:I = 0x27

.field static final greylist-max-o TRANSACTION_tune:I = 0x19

.field static final greylist-max-o TRANSACTION_unblockContent:I = 0x22

.field static final greylist-max-o TRANSACTION_unregisterCallback:I = 0x9

.field static final greylist-max-o TRANSACTION_updateTvInputInfo:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 265
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 266
    const-string v0, "android.media.tv.ITvInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManager;
    .registers 3

    .line 274
    if-nez p0, :cond_4

    .line 275
    const/4 p0, 0x0

    return-object p0

    .line 277
    :cond_4
    const-string v0, "android.media.tv.ITvInputManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/ITvInputManager;

    if-eqz v1, :cond_13

    .line 279
    check-cast v0, Landroid/media/tv/ITvInputManager;

    return-object v0

    .line 281
    :cond_13
    new-instance v0, Landroid/media/tv/ITvInputManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 290
    packed-switch p0, :pswitch_data_fe

    .line 566
    const/4 p0, 0x0

    return-object p0

    .line 562
    :pswitch_5
    const-string/jumbo p0, "notifyTvAdSessionData"

    return-object p0

    .line 558
    :pswitch_9
    const-string/jumbo p0, "setVideoFrozen"

    return-object p0

    .line 554
    :pswitch_d
    const-string/jumbo p0, "removeHardwareDevice"

    return-object p0

    .line 550
    :pswitch_11
    const-string p0, "addHardwareDevice"

    return-object p0

    .line 546
    :pswitch_14
    const-string/jumbo p0, "requestChannelBrowsable"

    return-object p0

    .line 542
    :pswitch_18
    const-string/jumbo p0, "sendTvInputNotifyIntent"

    return-object p0

    .line 538
    :pswitch_1c
    const-string/jumbo p0, "openDvbDevice"

    return-object p0

    .line 534
    :pswitch_20
    const-string p0, "getDvbDeviceList"

    return-object p0

    .line 530
    :pswitch_23
    const-string p0, "isSingleSessionActive"

    return-object p0

    .line 526
    :pswitch_26
    const-string p0, "captureFrame"

    return-object p0

    .line 522
    :pswitch_29
    const-string p0, "getAvailableTvStreamConfigList"

    return-object p0

    .line 518
    :pswitch_2c
    const-string/jumbo p0, "releaseTvInputHardware"

    return-object p0

    .line 514
    :pswitch_30
    const-string p0, "acquireTvInputHardware"

    return-object p0

    .line 510
    :pswitch_33
    const-string p0, "getHardwareList"

    return-object p0

    .line 506
    :pswitch_36
    const-string/jumbo p0, "setTvMessageEnabled"

    return-object p0

    .line 502
    :pswitch_3a
    const-string/jumbo p0, "notifyTvMessage"

    return-object p0

    .line 498
    :pswitch_3e
    const-string/jumbo p0, "notifyAdBufferReady"

    return-object p0

    .line 494
    :pswitch_42
    const-string/jumbo p0, "requestAd"

    return-object p0

    .line 490
    :pswitch_46
    const-string/jumbo p0, "removeBroadcastInfo"

    return-object p0

    .line 486
    :pswitch_4a
    const-string/jumbo p0, "requestBroadcastInfo"

    return-object p0

    .line 482
    :pswitch_4e
    const-string/jumbo p0, "stopPlayback"

    return-object p0

    .line 478
    :pswitch_52
    const-string/jumbo p0, "resumePlayback"

    return-object p0

    .line 474
    :pswitch_56
    const-string/jumbo p0, "resumeRecording"

    return-object p0

    .line 470
    :pswitch_5a
    const-string/jumbo p0, "pauseRecording"

    return-object p0

    .line 466
    :pswitch_5e
    const-string/jumbo p0, "stopRecording"

    return-object p0

    .line 462
    :pswitch_62
    const-string/jumbo p0, "startRecording"

    return-object p0

    .line 458
    :pswitch_66
    const-string p0, "getCurrentTunedInfos"

    return-object p0

    .line 454
    :pswitch_69
    const-string/jumbo p0, "timeShiftEnablePositionTracking"

    return-object p0

    .line 450
    :pswitch_6d
    const-string/jumbo p0, "timeShiftSetMode"

    return-object p0

    .line 446
    :pswitch_71
    const-string/jumbo p0, "timeShiftSetPlaybackParams"

    return-object p0

    .line 442
    :pswitch_75
    const-string/jumbo p0, "timeShiftSeekTo"

    return-object p0

    .line 438
    :pswitch_79
    const-string/jumbo p0, "timeShiftResume"

    return-object p0

    .line 434
    :pswitch_7d
    const-string/jumbo p0, "timeShiftPause"

    return-object p0

    .line 430
    :pswitch_81
    const-string/jumbo p0, "timeShiftPlay"

    return-object p0

    .line 426
    :pswitch_85
    const-string/jumbo p0, "unblockContent"

    return-object p0

    .line 422
    :pswitch_89
    const-string/jumbo p0, "removeOverlayView"

    return-object p0

    .line 418
    :pswitch_8d
    const-string/jumbo p0, "relayoutOverlayView"

    return-object p0

    .line 414
    :pswitch_91
    const-string p0, "createOverlayView"

    return-object p0

    .line 410
    :pswitch_94
    const-string/jumbo p0, "sendAppPrivateCommand"

    return-object p0

    .line 406
    :pswitch_98
    const-string/jumbo p0, "setInteractiveAppNotificationEnabled"

    return-object p0

    .line 402
    :pswitch_9c
    const-string/jumbo p0, "selectAudioPresentation"

    return-object p0

    .line 398
    :pswitch_a0
    const-string/jumbo p0, "selectTrack"

    return-object p0

    .line 394
    :pswitch_a4
    const-string/jumbo p0, "setCaptionEnabled"

    return-object p0

    .line 390
    :pswitch_a8
    const-string/jumbo p0, "tune"

    return-object p0

    .line 386
    :pswitch_ac
    const-string/jumbo p0, "setVolume"

    return-object p0

    .line 382
    :pswitch_b0
    const-string p0, "dispatchSurfaceChanged"

    return-object p0

    .line 378
    :pswitch_b3
    const-string/jumbo p0, "setSurface"

    return-object p0

    .line 374
    :pswitch_b7
    const-string/jumbo p0, "setMainSession"

    return-object p0

    .line 370
    :pswitch_bb
    const-string p0, "getClientUserId"

    return-object p0

    .line 366
    :pswitch_be
    const-string p0, "getClientPriority"

    return-object p0

    .line 362
    :pswitch_c1
    const-string p0, "getClientPid"

    return-object p0

    .line 358
    :pswitch_c4
    const-string/jumbo p0, "releaseSession"

    return-object p0

    .line 354
    :pswitch_c8
    const-string p0, "createSession"

    return-object p0

    .line 350
    :pswitch_cb
    const-string/jumbo p0, "removeBlockedRating"

    return-object p0

    .line 346
    :pswitch_cf
    const-string p0, "addBlockedRating"

    return-object p0

    .line 342
    :pswitch_d2
    const-string p0, "getBlockedRatings"

    return-object p0

    .line 338
    :pswitch_d5
    const-string p0, "isRatingBlocked"

    return-object p0

    .line 334
    :pswitch_d8
    const-string/jumbo p0, "setParentalControlsEnabled"

    return-object p0

    .line 330
    :pswitch_dc
    const-string p0, "isParentalControlsEnabled"

    return-object p0

    .line 326
    :pswitch_df
    const-string/jumbo p0, "unregisterCallback"

    return-object p0

    .line 322
    :pswitch_e3
    const-string/jumbo p0, "registerCallback"

    return-object p0

    .line 318
    :pswitch_e7
    const-string p0, "getTvContentRatingSystemList"

    return-object p0

    .line 314
    :pswitch_ea
    const-string p0, "getExtensionInterface"

    return-object p0

    .line 310
    :pswitch_ed
    const-string p0, "getAvailableExtensionInterfaceNames"

    return-object p0

    .line 306
    :pswitch_f0
    const-string p0, "getTvInputState"

    return-object p0

    .line 302
    :pswitch_f3
    const-string/jumbo p0, "updateTvInputInfo"

    return-object p0

    .line 298
    :pswitch_f7
    const-string p0, "getTvInputInfo"

    return-object p0

    .line 294
    :pswitch_fa
    const-string p0, "getTvInputList"

    return-object p0

    nop

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_fa
        :pswitch_f7
        :pswitch_f3
        :pswitch_f0
        :pswitch_ed
        :pswitch_ea
        :pswitch_e7
        :pswitch_e3
        :pswitch_df
        :pswitch_dc
        :pswitch_d8
        :pswitch_d5
        :pswitch_d2
        :pswitch_cf
        :pswitch_cb
        :pswitch_c8
        :pswitch_c4
        :pswitch_c1
        :pswitch_be
        :pswitch_bb
        :pswitch_b7
        :pswitch_b3
        :pswitch_b0
        :pswitch_ac
        :pswitch_a8
        :pswitch_a4
        :pswitch_a0
        :pswitch_9c
        :pswitch_98
        :pswitch_94
        :pswitch_91
        :pswitch_8d
        :pswitch_89
        :pswitch_85
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_71
        :pswitch_6d
        :pswitch_69
        :pswitch_66
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
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

    .line 285
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2722
    const/16 v0, 0x43

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 573
    invoke-static {p1}, Landroid/media/tv/ITvInputManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 577
    nop

    .line 578
    const-string v0, "android.media.tv.ITvInputManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 579
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 582
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 583
    return v1

    .line 585
    :cond_17
    packed-switch p1, :pswitch_data_6bc

    .line 1431
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1417
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1419
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1421
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1424
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1425
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/media/tv/ITvInputManager$Stub;->notifyTvAdSessionData(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1427
    goto/16 :goto_6bb

    .line 1404
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1406
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1409
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1410
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/ITvInputManager$Stub;->setVideoFrozen(Landroid/os/IBinder;ZI)V

    .line 1411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    goto/16 :goto_6bb

    .line 1395
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1396
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1397
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputManager$Stub;->removeHardwareDevice(I)V

    .line 1398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1399
    goto/16 :goto_6bb

    .line 1386
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1387
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1388
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputManager$Stub;->addHardwareDevice(I)V

    .line 1389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1390
    goto/16 :goto_6bb

    .line 1375
    :pswitch_74
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 1377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1378
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1379
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->requestChannelBrowsable(Landroid/net/Uri;I)V

    .line 1380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1381
    goto/16 :goto_6bb

    .line 1364
    :pswitch_8b
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 1366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1367
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1368
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->sendTvInputNotifyIntent(Landroid/content/Intent;I)V

    .line 1369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    goto/16 :goto_6bb

    .line 1352
    :pswitch_a2
    sget-object p1, Landroid/media/tv/DvbDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/DvbDeviceInfo;

    .line 1354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1355
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1356
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 1357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1358
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1359
    goto/16 :goto_6bb

    .line 1344
    :pswitch_bd
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub;->getDvbDeviceList()Ljava/util/List;

    move-result-object p1

    .line 1345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1346
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1347
    goto/16 :goto_6bb

    .line 1335
    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1336
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1337
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputManager$Stub;->isSingleSessionActive(I)Z

    move-result p1

    .line 1338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1340
    goto/16 :goto_6bb

    .line 1319
    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1321
    sget-object p4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/Surface;

    .line 1323
    sget-object v0, Landroid/media/tv/TvStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvStreamConfig;

    .line 1325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1326
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1327
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/media/tv/ITvInputManager$Stub;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z

    move-result p1

    .line 1328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1330
    goto/16 :goto_6bb

    .line 1307
    :pswitch_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1310
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1311
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 1312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1314
    goto/16 :goto_6bb

    .line 1294
    :pswitch_11a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1296
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/media/tv/ITvInputHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputHardware;

    move-result-object p4

    .line 1298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1299
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1300
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/ITvInputManager$Stub;->releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V

    .line 1301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1302
    goto/16 :goto_6bb

    .line 1274
    :pswitch_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1276
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/ITvInputHardwareCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputHardwareCallback;

    move-result-object v4

    .line 1278
    sget-object p1, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/media/tv/TvInputInfo;

    .line 1280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1282
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1285
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1286
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/media/tv/ITvInputManager$Stub;->acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;ILjava/lang/String;I)Landroid/media/tv/ITvInputHardware;

    move-result-object p1

    .line 1287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1289
    goto/16 :goto_6bb

    .line 1266
    :pswitch_166
    move-object v2, p0

    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub;->getHardwareList()Ljava/util/List;

    move-result-object p1

    .line 1267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1268
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1269
    goto/16 :goto_6bb

    .line 1252
    :pswitch_173
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1256
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1259
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1260
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/media/tv/ITvInputManager$Stub;->setTvMessageEnabled(Landroid/os/IBinder;IZI)V

    .line 1261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    goto/16 :goto_6bb

    .line 1237
    :pswitch_18f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1241
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1244
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1245
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/media/tv/ITvInputManager$Stub;->notifyTvMessage(Landroid/os/IBinder;ILandroid/os/Bundle;I)V

    .line 1246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    goto/16 :goto_6bb

    .line 1224
    :pswitch_1af
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1226
    sget-object p4, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/tv/AdBuffer;

    .line 1228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1229
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1230
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/ITvInputManager$Stub;->notifyAdBufferReady(Landroid/os/IBinder;Landroid/media/tv/AdBuffer;I)V

    .line 1231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    goto/16 :goto_6bb

    .line 1211
    :pswitch_1cb
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1213
    sget-object p4, Landroid/media/tv/AdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/tv/AdRequest;

    .line 1215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1216
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1217
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/ITvInputManager$Stub;->requestAd(Landroid/os/IBinder;Landroid/media/tv/AdRequest;I)V

    .line 1218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    goto/16 :goto_6bb

    .line 1198
    :pswitch_1e7
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1203
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1204
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/ITvInputManager$Stub;->removeBroadcastInfo(Landroid/os/IBinder;II)V

    .line 1205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    goto/16 :goto_6bb

    .line 1185
    :pswitch_1ff
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1187
    sget-object p4, Landroid/media/tv/BroadcastInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/tv/BroadcastInfoRequest;

    .line 1189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1190
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1191
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/ITvInputManager$Stub;->requestBroadcastInfo(Landroid/os/IBinder;Landroid/media/tv/BroadcastInfoRequest;I)V

    .line 1192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    goto/16 :goto_6bb

    .line 1172
    :pswitch_21b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1177
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1178
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/ITvInputManager$Stub;->stopPlayback(Landroid/os/IBinder;II)V

    .line 1179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    goto/16 :goto_6bb

    .line 1161
    :pswitch_233
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1164
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1165
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->resumePlayback(Landroid/os/IBinder;I)V

    .line 1166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    goto/16 :goto_6bb

    .line 1148
    :pswitch_247
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1150
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 1152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1153
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1154
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/ITvInputManager$Stub;->resumeRecording(Landroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 1155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    goto/16 :goto_6bb

    .line 1135
    :pswitch_263
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1137
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 1139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1141
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/ITvInputManager$Stub;->pauseRecording(Landroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 1142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    goto/16 :goto_6bb

    .line 1124
    :pswitch_27f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1127
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1128
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->stopRecording(Landroid/os/IBinder;I)V

    .line 1129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    goto/16 :goto_6bb

    .line 1109
    :pswitch_293
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1111
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    .line 1113
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/media/tv/ITvInputManager$Stub;->startRecording(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V

    .line 1118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    goto/16 :goto_6bb

    .line 1099
    :pswitch_2b7
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1100
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1101
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputManager$Stub;->getCurrentTunedInfos(I)Ljava/util/List;

    move-result-object p1

    .line 1102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1104
    goto/16 :goto_6bb

    .line 1086
    :pswitch_2cb
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1088
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1090
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1091
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1092
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V

    .line 1093
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    goto/16 :goto_6bb

    .line 1073
    :pswitch_2e3
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1075
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1077
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1078
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1079
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftSetMode(Landroid/os/IBinder;II)V

    .line 1080
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    goto/16 :goto_6bb

    .line 1060
    :pswitch_2fb
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1062
    sget-object p4, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/PlaybackParams;

    .line 1064
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1065
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1066
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V

    .line 1067
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    goto/16 :goto_6bb

    .line 1047
    :pswitch_317
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1049
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1051
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1052
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    invoke-virtual {p0, p1, v3, v4, p4}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftSeekTo(Landroid/os/IBinder;JI)V

    .line 1054
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    goto/16 :goto_6bb

    .line 1036
    :pswitch_32f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1038
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1039
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1040
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftResume(Landroid/os/IBinder;I)V

    .line 1041
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    goto/16 :goto_6bb

    .line 1025
    :pswitch_343
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1027
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1028
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftPause(Landroid/os/IBinder;I)V

    .line 1030
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    goto/16 :goto_6bb

    .line 1012
    :pswitch_357
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1014
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    .line 1016
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1017
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1018
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftPlay(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 1019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    goto/16 :goto_6bb

    .line 999
    :pswitch_373
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1003
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1004
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1005
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/ITvInputManager$Stub;->unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 1006
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    goto/16 :goto_6bb

    .line 988
    :pswitch_38b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 990
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 991
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 992
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->removeOverlayView(Landroid/os/IBinder;I)V

    .line 993
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    goto/16 :goto_6bb

    .line 975
    :pswitch_39f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 977
    sget-object p4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    .line 979
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 980
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 981
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/ITvInputManager$Stub;->relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 982
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    goto/16 :goto_6bb

    .line 960
    :pswitch_3bb
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 962
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 964
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 966
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 967
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/media/tv/ITvInputManager$Stub;->createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    goto/16 :goto_6bb

    .line 945
    :pswitch_3db
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 947
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 949
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 951
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 952
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 953
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/media/tv/ITvInputManager$Stub;->sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 954
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    goto/16 :goto_6bb

    .line 932
    :pswitch_3fb
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 934
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 936
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 937
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 938
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/ITvInputManager$Stub;->setInteractiveAppNotificationEnabled(Landroid/os/IBinder;ZI)V

    .line 939
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    goto/16 :goto_6bb

    .line 917
    :pswitch_413
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 919
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 921
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 923
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 924
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 925
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/media/tv/ITvInputManager$Stub;->selectAudioPresentation(Landroid/os/IBinder;III)V

    .line 926
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    goto/16 :goto_6bb

    .line 902
    :pswitch_42f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 904
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 906
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 908
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 909
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 910
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/media/tv/ITvInputManager$Stub;->selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V

    .line 911
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    goto/16 :goto_6bb

    .line 889
    :pswitch_44b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 891
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 893
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 894
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 895
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/ITvInputManager$Stub;->setCaptionEnabled(Landroid/os/IBinder;ZI)V

    .line 896
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    goto/16 :goto_6bb

    .line 874
    :pswitch_463
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 876
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    .line 878
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 880
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 882
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/media/tv/ITvInputManager$Stub;->tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V

    .line 883
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    goto/16 :goto_6bb

    .line 861
    :pswitch_487
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 863
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p4

    .line 865
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 866
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 867
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/ITvInputManager$Stub;->setVolume(Landroid/os/IBinder;FI)V

    .line 868
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    goto/16 :goto_6bb

    .line 844
    :pswitch_49f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 846
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 848
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 852
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 853
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual/range {v2 .. v7}, Landroid/media/tv/ITvInputManager$Stub;->dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    goto/16 :goto_6bb

    .line 831
    :pswitch_4bf
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 833
    sget-object p4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/Surface;

    .line 835
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 836
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 837
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/ITvInputManager$Stub;->setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V

    .line 838
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    goto/16 :goto_6bb

    .line 820
    :pswitch_4db
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 822
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 823
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 824
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->setMainSession(Landroid/os/IBinder;I)V

    .line 825
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    goto/16 :goto_6bb

    .line 810
    :pswitch_4ef
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 811
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputManager$Stub;->getClientUserId(Ljava/lang/String;)I

    move-result p1

    .line 813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    goto/16 :goto_6bb

    .line 798
    :pswitch_503
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 800
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 801
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->getClientPriority(ILjava/lang/String;)I

    move-result p1

    .line 803
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    goto/16 :goto_6bb

    .line 788
    :pswitch_51b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 789
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 790
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputManager$Stub;->getClientPid(Ljava/lang/String;)I

    move-result p1

    .line 791
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    goto/16 :goto_6bb

    .line 777
    :pswitch_52f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 779
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 780
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 781
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->releaseSession(Landroid/os/IBinder;I)V

    .line 782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    goto/16 :goto_6bb

    .line 758
    :pswitch_543
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/ITvInputClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputClient;

    move-result-object v3

    .line 760
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 762
    sget-object p1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/content/AttributionSource;

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 766
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 768
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 769
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 770
    invoke-virtual/range {v2 .. v8}, Landroid/media/tv/ITvInputManager$Stub;->createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/content/AttributionSource;ZII)V

    .line 771
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    goto/16 :goto_6bb

    .line 747
    :pswitch_570
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 749
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 750
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 751
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->removeBlockedRating(Ljava/lang/String;I)V

    .line 752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    goto/16 :goto_6bb

    .line 736
    :pswitch_584
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 738
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 739
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 740
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->addBlockedRating(Ljava/lang/String;I)V

    .line 741
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    goto/16 :goto_6bb

    .line 726
    :pswitch_598
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 727
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputManager$Stub;->getBlockedRatings(I)Ljava/util/List;

    move-result-object p1

    .line 729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 731
    goto/16 :goto_6bb

    .line 714
    :pswitch_5ac
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->isRatingBlocked(Ljava/lang/String;I)Z

    move-result p1

    .line 719
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 721
    goto/16 :goto_6bb

    .line 703
    :pswitch_5c4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 705
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 707
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->setParentalControlsEnabled(ZI)V

    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    goto/16 :goto_6bb

    .line 693
    :pswitch_5d8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 694
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 695
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputManager$Stub;->isParentalControlsEnabled(I)Z

    move-result p1

    .line 696
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 698
    goto/16 :goto_6bb

    .line 682
    :pswitch_5ec
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/ITvInputManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManagerCallback;

    move-result-object p1

    .line 684
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 685
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->unregisterCallback(Landroid/media/tv/ITvInputManagerCallback;I)V

    .line 687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    goto/16 :goto_6bb

    .line 671
    :pswitch_604
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/ITvInputManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManagerCallback;

    move-result-object p1

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 674
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V

    .line 676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    goto/16 :goto_6bb

    .line 661
    :pswitch_61c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 662
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 663
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputManager$Stub;->getTvContentRatingSystemList(I)Ljava/util/List;

    move-result-object p1

    .line 664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 666
    goto/16 :goto_6bb

    .line 647
    :pswitch_630
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 649
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 652
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 653
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/ITvInputManager$Stub;->getExtensionInterface(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object p1

    .line 654
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 656
    goto/16 :goto_6bb

    .line 635
    :pswitch_64c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 637
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 639
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->getAvailableExtensionInterfaceNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 640
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 642
    goto :goto_6bb

    .line 623
    :pswitch_663
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->getTvInputState(Ljava/lang/String;I)I

    move-result p1

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    goto :goto_6bb

    .line 612
    :pswitch_67a
    move-object v2, p0

    sget-object p1, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/TvInputInfo;

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->updateTvInputInfo(Landroid/media/tv/TvInputInfo;I)V

    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    goto :goto_6bb

    .line 600
    :pswitch_691
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 604
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputManager$Stub;->getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;

    move-result-object p1

    .line 605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 607
    goto :goto_6bb

    .line 590
    :pswitch_6a8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputManager$Stub;->getTvInputList(I)Ljava/util/List;

    move-result-object p1

    .line 593
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 595
    nop

    .line 1434
    :goto_6bb
    return v1

    :pswitch_data_6bc
    .packed-switch 0x1
        :pswitch_6a8
        :pswitch_691
        :pswitch_67a
        :pswitch_663
        :pswitch_64c
        :pswitch_630
        :pswitch_61c
        :pswitch_604
        :pswitch_5ec
        :pswitch_5d8
        :pswitch_5c4
        :pswitch_5ac
        :pswitch_598
        :pswitch_584
        :pswitch_570
        :pswitch_543
        :pswitch_52f
        :pswitch_51b
        :pswitch_503
        :pswitch_4ef
        :pswitch_4db
        :pswitch_4bf
        :pswitch_49f
        :pswitch_487
        :pswitch_463
        :pswitch_44b
        :pswitch_42f
        :pswitch_413
        :pswitch_3fb
        :pswitch_3db
        :pswitch_3bb
        :pswitch_39f
        :pswitch_38b
        :pswitch_373
        :pswitch_357
        :pswitch_343
        :pswitch_32f
        :pswitch_317
        :pswitch_2fb
        :pswitch_2e3
        :pswitch_2cb
        :pswitch_2b7
        :pswitch_293
        :pswitch_27f
        :pswitch_263
        :pswitch_247
        :pswitch_233
        :pswitch_21b
        :pswitch_1ff
        :pswitch_1e7
        :pswitch_1cb
        :pswitch_1af
        :pswitch_18f
        :pswitch_173
        :pswitch_166
        :pswitch_135
        :pswitch_11a
        :pswitch_103
        :pswitch_dc
        :pswitch_c9
        :pswitch_bd
        :pswitch_a2
        :pswitch_8b
        :pswitch_74
        :pswitch_65
        :pswitch_56
        :pswitch_3f
        :pswitch_20
    .end packed-switch
.end method
