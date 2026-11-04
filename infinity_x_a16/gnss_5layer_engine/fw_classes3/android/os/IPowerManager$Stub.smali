.class public abstract Landroid/os/IPowerManager$Stub;
.super Landroid/os/Binder;
.source "IPowerManager.java"

# interfaces
.implements Landroid/os/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManager"

.field static final blacklist TRANSACTION_acquireLowPowerStandbyPorts:I = 0x31

.field static final greylist-max-r TRANSACTION_acquireWakeLock:I = 0x1

.field static final blacklist TRANSACTION_acquireWakeLockAsync:I = 0x3c

.field static final greylist-max-o TRANSACTION_acquireWakeLockWithUid:I = 0x2

.field static final blacklist TRANSACTION_addScreenTimeoutPolicyListener:I = 0xc

.field static final blacklist TRANSACTION_areAutoPowerSaveModesEnabled:I = 0x17

.field static final greylist-max-o TRANSACTION_boostScreenBrightness:I = 0x3b

.field static final greylist-max-o TRANSACTION_crash:I = 0x37

.field static final blacklist TRANSACTION_forceLowPowerStandbyActive:I = 0x2b

.field static final blacklist TRANSACTION_forceSuspend:I = 0x48

.field static final blacklist TRANSACTION_getActiveLowPowerStandbyPorts:I = 0x33

.field static final blacklist TRANSACTION_getBatteryDischargePrediction:I = 0x23

.field static final blacklist TRANSACTION_getBrightnessConstraint:I = 0x14

.field static final blacklist TRANSACTION_getFullPowerSavePolicy:I = 0x1c

.field static final greylist-max-o TRANSACTION_getLastShutdownReason:I = 0x38

.field static final blacklist TRANSACTION_getLastSleepReason:I = 0x39

.field static final blacklist TRANSACTION_getLowPowerStandbyPolicy:I = 0x2d

.field static final blacklist TRANSACTION_getPowerSaveModeTrigger:I = 0x21

.field static final greylist-max-o TRANSACTION_getPowerSaveState:I = 0x19

.field static final greylist-max-r TRANSACTION_goToSleep:I = 0x11

.field static final blacklist TRANSACTION_goToSleepWithDisplayId:I = 0x12

.field static final blacklist TRANSACTION_isAmbientDisplayAvailable:I = 0x42

.field static final blacklist TRANSACTION_isAmbientDisplaySuppressed:I = 0x46

.field static final blacklist TRANSACTION_isAmbientDisplaySuppressedForToken:I = 0x45

.field static final blacklist TRANSACTION_isAmbientDisplaySuppressedForTokenByApp:I = 0x47

.field static final blacklist TRANSACTION_isBatteryDischargePredictionPersonalized:I = 0x24

.field static final blacklist TRANSACTION_isBatterySaverSupported:I = 0x1b

.field static final greylist-max-o TRANSACTION_isDeviceIdleMode:I = 0x25

.field static final blacklist TRANSACTION_isDisplayInteractive:I = 0x16

.field static final blacklist TRANSACTION_isExemptFromLowPowerStandby:I = 0x2e

.field static final blacklist TRANSACTION_isFeatureAllowedInLowPowerStandby:I = 0x30

.field static final greylist-max-o TRANSACTION_isInteractive:I = 0x15

.field static final greylist-max-o TRANSACTION_isLightDeviceIdleMode:I = 0x26

.field static final blacklist TRANSACTION_isLowPowerStandbyEnabled:I = 0x28

.field static final blacklist TRANSACTION_isLowPowerStandbySupported:I = 0x27

.field static final greylist-max-o TRANSACTION_isPowerSaveMode:I = 0x18

.field static final blacklist TRANSACTION_isReasonAllowedInLowPowerStandby:I = 0x2f

.field static final greylist-max-o TRANSACTION_isScreenBrightnessBoosted:I = 0x3f

.field static final greylist-max-o TRANSACTION_isWakeLockLevelSupported:I = 0xa

.field static final blacklist TRANSACTION_isWakeLockLevelSupportedWithDisplayId:I = 0xb

.field static final greylist-max-o TRANSACTION_nap:I = 0x13

.field static final greylist-max-o TRANSACTION_reboot:I = 0x34

.field static final blacklist TRANSACTION_rebootCustom:I = 0x49

.field static final greylist-max-o TRANSACTION_rebootSafeMode:I = 0x35

.field static final blacklist TRANSACTION_releaseLowPowerStandbyPorts:I = 0x32

.field static final greylist-max-o TRANSACTION_releaseWakeLock:I = 0x3

.field static final blacklist TRANSACTION_releaseWakeLockAsync:I = 0x3d

.field static final blacklist TRANSACTION_removeScreenTimeoutPolicyListener:I = 0xd

.field static final blacklist TRANSACTION_setAdaptivePowerSaveEnabled:I = 0x20

.field static final blacklist TRANSACTION_setAdaptivePowerSavePolicy:I = 0x1f

.field static final greylist-max-o TRANSACTION_setAttentionLight:I = 0x40

.field static final blacklist TRANSACTION_setBatteryDischargePrediction:I = 0x22

.field static final greylist-max-o TRANSACTION_setDozeAfterScreenOff:I = 0x41

.field static final blacklist TRANSACTION_setDynamicPowerSaveHint:I = 0x1e

.field static final blacklist TRANSACTION_setFullPowerSavePolicy:I = 0x1d

.field static final blacklist TRANSACTION_setKeyboardVisibility:I = 0x4a

.field static final blacklist TRANSACTION_setLowPowerStandbyActiveDuringMaintenance:I = 0x2a

.field static final blacklist TRANSACTION_setLowPowerStandbyEnabled:I = 0x29

.field static final blacklist TRANSACTION_setLowPowerStandbyPolicy:I = 0x2c

.field static final blacklist TRANSACTION_setPowerBoost:I = 0x5

.field static final blacklist TRANSACTION_setPowerMode:I = 0x6

.field static final blacklist TRANSACTION_setPowerModeChecked:I = 0x7

.field static final blacklist TRANSACTION_setPowerSaveModeEnabled:I = 0x1a

.field static final greylist-max-o TRANSACTION_setStayOnSetting:I = 0x3a

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x36

.field static final blacklist TRANSACTION_suppressAmbientDisplay:I = 0x43

.field static final blacklist TRANSACTION_suppressAmbientDisplayBehavior:I = 0x44

.field static final blacklist TRANSACTION_updateWakeLockCallback:I = 0x9

.field static final greylist-max-o TRANSACTION_updateWakeLockUids:I = 0x4

.field static final blacklist TRANSACTION_updateWakeLockUidsAsync:I = 0x3e

.field static final greylist-max-o TRANSACTION_updateWakeLockWorkSource:I = 0x8

.field static final greylist-max-o TRANSACTION_userActivity:I = 0xe

.field static final greylist-max-o TRANSACTION_wakeUp:I = 0xf

.field static final blacklist TRANSACTION_wakeUpWithDisplayId:I = 0x10

.field static final blacklist TRANSACTION_wakeUpWithProximityCheck:I = 0x4b


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 302
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 303
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
    .registers 3

    .line 311
    if-nez p0, :cond_4

    .line 312
    const/4 p0, 0x0

    return-object p0

    .line 314
    :cond_4
    const-string v0, "android.os.IPowerManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IPowerManager;

    if-eqz v1, :cond_13

    .line 316
    check-cast v0, Landroid/os/IPowerManager;

    return-object v0

    .line 318
    :cond_13
    new-instance v0, Landroid/os/IPowerManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 327
    packed-switch p0, :pswitch_data_108

    .line 631
    const/4 p0, 0x0

    return-object p0

    .line 627
    :pswitch_5
    const-string/jumbo p0, "wakeUpWithProximityCheck"

    return-object p0

    .line 623
    :pswitch_9
    const-string/jumbo p0, "setKeyboardVisibility"

    return-object p0

    .line 619
    :pswitch_d
    const-string/jumbo p0, "rebootCustom"

    return-object p0

    .line 615
    :pswitch_11
    const-string p0, "forceSuspend"

    return-object p0

    .line 611
    :pswitch_14
    const-string p0, "isAmbientDisplaySuppressedForTokenByApp"

    return-object p0

    .line 607
    :pswitch_17
    const-string p0, "isAmbientDisplaySuppressed"

    return-object p0

    .line 603
    :pswitch_1a
    const-string p0, "isAmbientDisplaySuppressedForToken"

    return-object p0

    .line 599
    :pswitch_1d
    const-string/jumbo p0, "suppressAmbientDisplayBehavior"

    return-object p0

    .line 595
    :pswitch_21
    const-string/jumbo p0, "suppressAmbientDisplay"

    return-object p0

    .line 591
    :pswitch_25
    const-string p0, "isAmbientDisplayAvailable"

    return-object p0

    .line 587
    :pswitch_28
    const-string/jumbo p0, "setDozeAfterScreenOff"

    return-object p0

    .line 583
    :pswitch_2c
    const-string/jumbo p0, "setAttentionLight"

    return-object p0

    .line 579
    :pswitch_30
    const-string p0, "isScreenBrightnessBoosted"

    return-object p0

    .line 575
    :pswitch_33
    const-string/jumbo p0, "updateWakeLockUidsAsync"

    return-object p0

    .line 571
    :pswitch_37
    const-string/jumbo p0, "releaseWakeLockAsync"

    return-object p0

    .line 567
    :pswitch_3b
    const-string p0, "acquireWakeLockAsync"

    return-object p0

    .line 563
    :pswitch_3e
    const-string p0, "boostScreenBrightness"

    return-object p0

    .line 559
    :pswitch_41
    const-string/jumbo p0, "setStayOnSetting"

    return-object p0

    .line 555
    :pswitch_45
    const-string p0, "getLastSleepReason"

    return-object p0

    .line 551
    :pswitch_48
    const-string p0, "getLastShutdownReason"

    return-object p0

    .line 547
    :pswitch_4b
    const-string p0, "crash"

    return-object p0

    .line 543
    :pswitch_4e
    const-string/jumbo p0, "shutdown"

    return-object p0

    .line 539
    :pswitch_52
    const-string/jumbo p0, "rebootSafeMode"

    return-object p0

    .line 535
    :pswitch_56
    const-string/jumbo p0, "reboot"

    return-object p0

    .line 531
    :pswitch_5a
    const-string p0, "getActiveLowPowerStandbyPorts"

    return-object p0

    .line 527
    :pswitch_5d
    const-string/jumbo p0, "releaseLowPowerStandbyPorts"

    return-object p0

    .line 523
    :pswitch_61
    const-string p0, "acquireLowPowerStandbyPorts"

    return-object p0

    .line 519
    :pswitch_64
    const-string p0, "isFeatureAllowedInLowPowerStandby"

    return-object p0

    .line 515
    :pswitch_67
    const-string p0, "isReasonAllowedInLowPowerStandby"

    return-object p0

    .line 511
    :pswitch_6a
    const-string p0, "isExemptFromLowPowerStandby"

    return-object p0

    .line 507
    :pswitch_6d
    const-string p0, "getLowPowerStandbyPolicy"

    return-object p0

    .line 503
    :pswitch_70
    const-string/jumbo p0, "setLowPowerStandbyPolicy"

    return-object p0

    .line 499
    :pswitch_74
    const-string p0, "forceLowPowerStandbyActive"

    return-object p0

    .line 495
    :pswitch_77
    const-string/jumbo p0, "setLowPowerStandbyActiveDuringMaintenance"

    return-object p0

    .line 491
    :pswitch_7b
    const-string/jumbo p0, "setLowPowerStandbyEnabled"

    return-object p0

    .line 487
    :pswitch_7f
    const-string p0, "isLowPowerStandbyEnabled"

    return-object p0

    .line 483
    :pswitch_82
    const-string p0, "isLowPowerStandbySupported"

    return-object p0

    .line 479
    :pswitch_85
    const-string p0, "isLightDeviceIdleMode"

    return-object p0

    .line 475
    :pswitch_88
    const-string p0, "isDeviceIdleMode"

    return-object p0

    .line 471
    :pswitch_8b
    const-string p0, "isBatteryDischargePredictionPersonalized"

    return-object p0

    .line 467
    :pswitch_8e
    const-string p0, "getBatteryDischargePrediction"

    return-object p0

    .line 463
    :pswitch_91
    const-string/jumbo p0, "setBatteryDischargePrediction"

    return-object p0

    .line 459
    :pswitch_95
    const-string p0, "getPowerSaveModeTrigger"

    return-object p0

    .line 455
    :pswitch_98
    const-string/jumbo p0, "setAdaptivePowerSaveEnabled"

    return-object p0

    .line 451
    :pswitch_9c
    const-string/jumbo p0, "setAdaptivePowerSavePolicy"

    return-object p0

    .line 447
    :pswitch_a0
    const-string/jumbo p0, "setDynamicPowerSaveHint"

    return-object p0

    .line 443
    :pswitch_a4
    const-string/jumbo p0, "setFullPowerSavePolicy"

    return-object p0

    .line 439
    :pswitch_a8
    const-string p0, "getFullPowerSavePolicy"

    return-object p0

    .line 435
    :pswitch_ab
    const-string p0, "isBatterySaverSupported"

    return-object p0

    .line 431
    :pswitch_ae
    const-string/jumbo p0, "setPowerSaveModeEnabled"

    return-object p0

    .line 427
    :pswitch_b2
    const-string p0, "getPowerSaveState"

    return-object p0

    .line 423
    :pswitch_b5
    const-string p0, "isPowerSaveMode"

    return-object p0

    .line 419
    :pswitch_b8
    const-string p0, "areAutoPowerSaveModesEnabled"

    return-object p0

    .line 415
    :pswitch_bb
    const-string p0, "isDisplayInteractive"

    return-object p0

    .line 411
    :pswitch_be
    const-string p0, "isInteractive"

    return-object p0

    .line 407
    :pswitch_c1
    const-string p0, "getBrightnessConstraint"

    return-object p0

    .line 403
    :pswitch_c4
    const-string p0, "nap"

    return-object p0

    .line 399
    :pswitch_c7
    const-string p0, "goToSleepWithDisplayId"

    return-object p0

    .line 395
    :pswitch_ca
    const-string p0, "goToSleep"

    return-object p0

    .line 391
    :pswitch_cd
    const-string/jumbo p0, "wakeUpWithDisplayId"

    return-object p0

    .line 387
    :pswitch_d1
    const-string/jumbo p0, "wakeUp"

    return-object p0

    .line 383
    :pswitch_d5
    const-string/jumbo p0, "userActivity"

    return-object p0

    .line 379
    :pswitch_d9
    const-string/jumbo p0, "removeScreenTimeoutPolicyListener"

    return-object p0

    .line 375
    :pswitch_dd
    const-string p0, "addScreenTimeoutPolicyListener"

    return-object p0

    .line 371
    :pswitch_e0
    const-string p0, "isWakeLockLevelSupportedWithDisplayId"

    return-object p0

    .line 367
    :pswitch_e3
    const-string p0, "isWakeLockLevelSupported"

    return-object p0

    .line 363
    :pswitch_e6
    const-string/jumbo p0, "updateWakeLockCallback"

    return-object p0

    .line 359
    :pswitch_ea
    const-string/jumbo p0, "updateWakeLockWorkSource"

    return-object p0

    .line 355
    :pswitch_ee
    const-string/jumbo p0, "setPowerModeChecked"

    return-object p0

    .line 351
    :pswitch_f2
    const-string/jumbo p0, "setPowerMode"

    return-object p0

    .line 347
    :pswitch_f6
    const-string/jumbo p0, "setPowerBoost"

    return-object p0

    .line 343
    :pswitch_fa
    const-string/jumbo p0, "updateWakeLockUids"

    return-object p0

    .line 339
    :pswitch_fe
    const-string/jumbo p0, "releaseWakeLock"

    return-object p0

    .line 335
    :pswitch_102
    const-string p0, "acquireWakeLockWithUid"

    return-object p0

    .line 331
    :pswitch_105
    const-string p0, "acquireWakeLock"

    return-object p0

    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_105
        :pswitch_102
        :pswitch_fe
        :pswitch_fa
        :pswitch_f6
        :pswitch_f2
        :pswitch_ee
        :pswitch_ea
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_d9
        :pswitch_d5
        :pswitch_d1
        :pswitch_cd
        :pswitch_ca
        :pswitch_c7
        :pswitch_c4
        :pswitch_c1
        :pswitch_be
        :pswitch_bb
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a4
        :pswitch_a0
        :pswitch_9c
        :pswitch_98
        :pswitch_95
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_74
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5d
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
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

    .line 322
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2792
    const/16 v0, 0x4a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 638
    invoke-static {p1}, Landroid/os/IPowerManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 642
    nop

    .line 643
    const-string v2, "android.os.IPowerManager"

    const/4 v9, 0x1

    if-lt p1, v9, :cond_e

    const v3, 0xffffff

    if-gt p1, v3, :cond_e

    .line 644
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    :cond_e
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_17

    .line 647
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 648
    return v9

    .line 650
    :cond_17
    packed-switch p1, :pswitch_data_5a6

    .line 1424
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1408
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1412
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1414
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1417
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1418
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IPowerManager$Stub;->wakeUpWithProximityCheck(JILjava/lang/String;Ljava/lang/String;I)V

    .line 1419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1420
    goto/16 :goto_5a5

    .line 1399
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1400
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1401
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setKeyboardVisibility(Z)V

    .line 1402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1403
    goto/16 :goto_5a5

    .line 1386
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1388
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1390
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1391
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1392
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->rebootCustom(ZLjava/lang/String;Z)V

    .line 1393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1394
    goto/16 :goto_5a5

    .line 1378
    :pswitch_65
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->forceSuspend()Z

    move-result v0

    .line 1379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1380
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1381
    goto/16 :goto_5a5

    .line 1367
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1370
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1371
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->isAmbientDisplaySuppressedForTokenByApp(Ljava/lang/String;I)Z

    move-result v0

    .line 1372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1373
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1374
    goto/16 :goto_5a5

    .line 1359
    :pswitch_88
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isAmbientDisplaySuppressed()Z

    move-result v0

    .line 1360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1361
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1362
    goto/16 :goto_5a5

    .line 1350
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1351
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1352
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->isAmbientDisplaySuppressedForToken(Ljava/lang/String;)Z

    move-result v0

    .line 1353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1354
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1355
    goto/16 :goto_5a5

    .line 1340
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1343
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1344
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->suppressAmbientDisplayBehavior(Ljava/lang/String;I)V

    .line 1345
    goto/16 :goto_5a5

    .line 1329
    :pswitch_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1331
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1332
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1333
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->suppressAmbientDisplay(Ljava/lang/String;Z)V

    .line 1334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1335
    goto/16 :goto_5a5

    .line 1321
    :pswitch_ca
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isAmbientDisplayAvailable()Z

    move-result v0

    .line 1322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1324
    goto/16 :goto_5a5

    .line 1313
    :pswitch_d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1314
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1315
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setDozeAfterScreenOff(Z)V

    .line 1316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1317
    goto/16 :goto_5a5

    .line 1302
    :pswitch_e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1305
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1306
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setAttentionLight(ZI)V

    .line 1307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    goto/16 :goto_5a5

    .line 1294
    :pswitch_f8
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isScreenBrightnessBoosted()Z

    move-result v0

    .line 1295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1297
    goto/16 :goto_5a5

    .line 1285
    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1287
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1288
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1289
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->updateWakeLockUidsAsync(Landroid/os/IBinder;[I)V

    .line 1290
    goto/16 :goto_5a5

    .line 1275
    :pswitch_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1279
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->releaseWakeLockAsync(Landroid/os/IBinder;I)V

    .line 1280
    goto/16 :goto_5a5

    .line 1257
    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1261
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1265
    sget-object v5, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 1267
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1269
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IPowerManager$Stub;->acquireWakeLockAsync(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 1270
    goto/16 :goto_5a5

    .line 1248
    :pswitch_149
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1249
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1250
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->boostScreenBrightness(J)V

    .line 1251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    goto/16 :goto_5a5

    .line 1239
    :pswitch_158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1241
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setStayOnSetting(I)V

    .line 1242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1243
    goto/16 :goto_5a5

    .line 1231
    :pswitch_167
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getLastSleepReason()I

    move-result v0

    .line 1232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1234
    goto/16 :goto_5a5

    .line 1224
    :pswitch_173
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getLastShutdownReason()I

    move-result v0

    .line 1225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1226
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1227
    goto/16 :goto_5a5

    .line 1216
    :pswitch_17f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1217
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1218
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->crash(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    goto/16 :goto_5a5

    .line 1203
    :pswitch_18e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1207
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1208
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1209
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->shutdown(ZLjava/lang/String;Z)V

    .line 1210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    goto/16 :goto_5a5

    .line 1192
    :pswitch_1a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1194
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1195
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1196
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->rebootSafeMode(ZZ)V

    .line 1197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    goto/16 :goto_5a5

    .line 1179
    :pswitch_1b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1183
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1185
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->reboot(ZLjava/lang/String;Z)V

    .line 1186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    goto/16 :goto_5a5

    .line 1171
    :pswitch_1cf
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getActiveLowPowerStandbyPorts()Ljava/util/List;

    move-result-object v0

    .line 1172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1174
    goto/16 :goto_5a5

    .line 1163
    :pswitch_1db
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1164
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1165
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->releaseLowPowerStandbyPorts(Landroid/os/IBinder;)V

    .line 1166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    goto/16 :goto_5a5

    .line 1152
    :pswitch_1ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1154
    sget-object v2, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1155
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1156
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->acquireLowPowerStandbyPorts(Landroid/os/IBinder;Ljava/util/List;)V

    .line 1157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1158
    goto/16 :goto_5a5

    .line 1142
    :pswitch_1ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1144
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->isFeatureAllowedInLowPowerStandby(Ljava/lang/String;)Z

    move-result v0

    .line 1145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1147
    goto/16 :goto_5a5

    .line 1132
    :pswitch_212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1133
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1134
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->isReasonAllowedInLowPowerStandby(I)Z

    move-result v0

    .line 1135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1136
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1137
    goto/16 :goto_5a5

    .line 1124
    :pswitch_225
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isExemptFromLowPowerStandby()Z

    move-result v0

    .line 1125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1127
    goto/16 :goto_5a5

    .line 1117
    :pswitch_231
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getLowPowerStandbyPolicy()Landroid/os/IPowerManager$LowPowerStandbyPolicy;

    move-result-object v0

    .line 1118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1120
    goto/16 :goto_5a5

    .line 1109
    :pswitch_23d
    sget-object v1, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IPowerManager$LowPowerStandbyPolicy;

    .line 1110
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1111
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setLowPowerStandbyPolicy(Landroid/os/IPowerManager$LowPowerStandbyPolicy;)V

    .line 1112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    goto/16 :goto_5a5

    .line 1100
    :pswitch_250
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1101
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1102
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->forceLowPowerStandbyActive(Z)V

    .line 1103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    goto/16 :goto_5a5

    .line 1091
    :pswitch_25f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1092
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1093
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setLowPowerStandbyActiveDuringMaintenance(Z)V

    .line 1094
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    goto/16 :goto_5a5

    .line 1082
    :pswitch_26e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1083
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1084
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setLowPowerStandbyEnabled(Z)V

    .line 1085
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    goto/16 :goto_5a5

    .line 1074
    :pswitch_27d
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isLowPowerStandbyEnabled()Z

    move-result v0

    .line 1075
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1077
    goto/16 :goto_5a5

    .line 1067
    :pswitch_289
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isLowPowerStandbySupported()Z

    move-result v0

    .line 1068
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1070
    goto/16 :goto_5a5

    .line 1060
    :pswitch_295
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isLightDeviceIdleMode()Z

    move-result v0

    .line 1061
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1063
    goto/16 :goto_5a5

    .line 1053
    :pswitch_2a1
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isDeviceIdleMode()Z

    move-result v0

    .line 1054
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1056
    goto/16 :goto_5a5

    .line 1046
    :pswitch_2ad
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isBatteryDischargePredictionPersonalized()Z

    move-result v0

    .line 1047
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1049
    goto/16 :goto_5a5

    .line 1039
    :pswitch_2b9
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getBatteryDischargePrediction()Landroid/os/ParcelDuration;

    move-result-object v0

    .line 1040
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1042
    goto/16 :goto_5a5

    .line 1029
    :pswitch_2c5
    sget-object v1, Landroid/os/ParcelDuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelDuration;

    .line 1031
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1032
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setBatteryDischargePrediction(Landroid/os/ParcelDuration;Z)V

    .line 1034
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    goto/16 :goto_5a5

    .line 1021
    :pswitch_2dc
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getPowerSaveModeTrigger()I

    move-result v0

    .line 1022
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    goto/16 :goto_5a5

    .line 1012
    :pswitch_2e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1013
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1014
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setAdaptivePowerSaveEnabled(Z)Z

    move-result v0

    .line 1015
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1017
    goto/16 :goto_5a5

    .line 1002
    :pswitch_2fb
    sget-object v1, Landroid/os/BatterySaverPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatterySaverPolicyConfig;

    .line 1003
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1004
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setAdaptivePowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v0

    .line 1005
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1007
    goto/16 :goto_5a5

    .line 990
    :pswitch_312
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 992
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 993
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 994
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setDynamicPowerSaveHint(ZI)Z

    move-result v0

    .line 995
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 997
    goto/16 :goto_5a5

    .line 980
    :pswitch_329
    sget-object v1, Landroid/os/BatterySaverPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatterySaverPolicyConfig;

    .line 981
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 982
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setFullPowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v0

    .line 983
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 985
    goto/16 :goto_5a5

    .line 972
    :pswitch_340
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getFullPowerSavePolicy()Landroid/os/BatterySaverPolicyConfig;

    move-result-object v0

    .line 973
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 975
    goto/16 :goto_5a5

    .line 965
    :pswitch_34c
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isBatterySaverSupported()Z

    move-result v0

    .line 966
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 968
    goto/16 :goto_5a5

    .line 956
    :pswitch_358
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 957
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 958
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setPowerSaveModeEnabled(Z)Z

    move-result v0

    .line 959
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 961
    goto/16 :goto_5a5

    .line 946
    :pswitch_36b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 947
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 948
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    .line 949
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 951
    goto/16 :goto_5a5

    .line 938
    :pswitch_37e
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isPowerSaveMode()Z

    move-result v0

    .line 939
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 941
    goto/16 :goto_5a5

    .line 931
    :pswitch_38a
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->areAutoPowerSaveModesEnabled()Z

    move-result v0

    .line 932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 934
    goto/16 :goto_5a5

    .line 922
    :pswitch_396
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 923
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->isDisplayInteractive(I)Z

    move-result v0

    .line 925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 927
    goto/16 :goto_5a5

    .line 914
    :pswitch_3a9
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isInteractive()Z

    move-result v0

    .line 915
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 917
    goto/16 :goto_5a5

    .line 903
    :pswitch_3b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 905
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 906
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 907
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->getBrightnessConstraint(II)F

    move-result v0

    .line 908
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 910
    goto/16 :goto_5a5

    .line 894
    :pswitch_3cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 895
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->nap(J)V

    .line 897
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    goto/16 :goto_5a5

    .line 879
    :pswitch_3db
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 883
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 885
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 886
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 887
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IPowerManager$Stub;->goToSleepWithDisplayId(IJII)V

    .line 888
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    goto/16 :goto_5a5

    .line 866
    :pswitch_3f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 868
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 870
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IPowerManager$Stub;->goToSleep(JII)V

    .line 873
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    goto/16 :goto_5a5

    .line 849
    :pswitch_40e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 851
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 853
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 855
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 857
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 858
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 859
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IPowerManager$Stub;->wakeUpWithDisplayId(JILjava/lang/String;Ljava/lang/String;I)V

    .line 860
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    goto/16 :goto_5a5

    .line 834
    :pswitch_42e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 836
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 838
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 841
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IPowerManager$Stub;->wakeUp(JILjava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    goto/16 :goto_5a5

    .line 819
    :pswitch_44a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 821
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 823
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 826
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 827
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IPowerManager$Stub;->userActivity(IJII)V

    .line 828
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    goto/16 :goto_5a5

    .line 809
    :pswitch_466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 811
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IScreenTimeoutPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IScreenTimeoutPolicyListener;

    move-result-object v2

    .line 812
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 813
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->removeScreenTimeoutPolicyListener(ILandroid/os/IScreenTimeoutPolicyListener;)V

    .line 814
    goto/16 :goto_5a5

    .line 799
    :pswitch_47a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 801
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IScreenTimeoutPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IScreenTimeoutPolicyListener;

    move-result-object v2

    .line 802
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->addScreenTimeoutPolicyListener(ILandroid/os/IScreenTimeoutPolicyListener;)V

    .line 804
    goto/16 :goto_5a5

    .line 787
    :pswitch_48e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 789
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 791
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->isWakeLockLevelSupportedWithDisplayId(II)Z

    move-result v0

    .line 792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 794
    goto/16 :goto_5a5

    .line 777
    :pswitch_4a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 778
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->isWakeLockLevelSupported(I)Z

    move-result v0

    .line 780
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 782
    goto/16 :goto_5a5

    .line 766
    :pswitch_4b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 768
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IWakeLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IWakeLockCallback;

    move-result-object v2

    .line 769
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 770
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->updateWakeLockCallback(Landroid/os/IBinder;Landroid/os/IWakeLockCallback;)V

    .line 771
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    goto/16 :goto_5a5

    .line 753
    :pswitch_4cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 755
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 757
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 758
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 760
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    goto/16 :goto_5a5

    .line 741
    :pswitch_4ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 743
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 745
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setPowerModeChecked(IZ)Z

    move-result v0

    .line 746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 748
    goto/16 :goto_5a5

    .line 731
    :pswitch_501
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 733
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 734
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 735
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setPowerMode(IZ)V

    .line 736
    goto/16 :goto_5a5

    .line 721
    :pswitch_511
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 723
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 724
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setPowerBoost(II)V

    .line 726
    goto/16 :goto_5a5

    .line 710
    :pswitch_521
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 712
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 713
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 714
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->updateWakeLockUids(Landroid/os/IBinder;[I)V

    .line 715
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    goto :goto_5a5

    .line 699
    :pswitch_533
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 702
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->releaseWakeLock(Landroid/os/IBinder;I)V

    .line 704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    goto :goto_5a5

    .line 678
    :pswitch_545
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 684
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 688
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IWakeLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IWakeLockCallback;

    move-result-object v8

    .line 691
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    move-object v0, p0

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/os/IPowerManager$Stub;->acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V

    .line 693
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    goto :goto_5a5

    .line 655
    :pswitch_571
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 657
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 661
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 663
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/WorkSource;

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IWakeLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IWakeLockCallback;

    move-result-object v8

    .line 670
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 671
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/os/IPowerManager$Stub;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;ILandroid/os/IWakeLockCallback;)V

    .line 672
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    nop

    .line 1427
    :goto_5a5
    return v9

    :pswitch_data_5a6
    .packed-switch 0x1
        :pswitch_571
        :pswitch_545
        :pswitch_533
        :pswitch_521
        :pswitch_511
        :pswitch_501
        :pswitch_4ea
        :pswitch_4cf
        :pswitch_4b8
        :pswitch_4a5
        :pswitch_48e
        :pswitch_47a
        :pswitch_466
        :pswitch_44a
        :pswitch_42e
        :pswitch_40e
        :pswitch_3f7
        :pswitch_3db
        :pswitch_3cc
        :pswitch_3b5
        :pswitch_3a9
        :pswitch_396
        :pswitch_38a
        :pswitch_37e
        :pswitch_36b
        :pswitch_358
        :pswitch_34c
        :pswitch_340
        :pswitch_329
        :pswitch_312
        :pswitch_2fb
        :pswitch_2e8
        :pswitch_2dc
        :pswitch_2c5
        :pswitch_2b9
        :pswitch_2ad
        :pswitch_2a1
        :pswitch_295
        :pswitch_289
        :pswitch_27d
        :pswitch_26e
        :pswitch_25f
        :pswitch_250
        :pswitch_23d
        :pswitch_231
        :pswitch_225
        :pswitch_212
        :pswitch_1ff
        :pswitch_1ea
        :pswitch_1db
        :pswitch_1cf
        :pswitch_1b8
        :pswitch_1a5
        :pswitch_18e
        :pswitch_17f
        :pswitch_173
        :pswitch_167
        :pswitch_158
        :pswitch_149
        :pswitch_124
        :pswitch_114
        :pswitch_104
        :pswitch_f8
        :pswitch_e5
        :pswitch_d6
        :pswitch_ca
        :pswitch_b7
        :pswitch_a7
        :pswitch_94
        :pswitch_88
        :pswitch_71
        :pswitch_65
        :pswitch_4e
        :pswitch_3f
        :pswitch_1f
    .end packed-switch
.end method
