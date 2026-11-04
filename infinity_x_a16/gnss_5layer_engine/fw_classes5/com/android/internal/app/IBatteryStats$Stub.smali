.class public abstract Lcom/android/internal/app/IBatteryStats$Stub;
.super Landroid/os/Binder;
.source "IBatteryStats.java"

# interfaces
.implements Lcom/android/internal/app/IBatteryStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IBatteryStats$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IBatteryStats"

.field static final blacklist PERMISSIONS_getCellularBatteryStats:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getWifiBatteryStats:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_noteNetworkInterfaceForTransports:[Ljava/lang/String;

.field static final blacklist TRANSACTION_computeBatteryScreenOffRealtimeMs:I = 0x14

.field static final greylist-max-o TRANSACTION_computeBatteryTimeRemaining:I = 0x12

.field static final greylist-max-o TRANSACTION_computeChargeTimeRemaining:I = 0x13

.field static final greylist-max-o TRANSACTION_getAwakeTimeBattery:I = 0x4d

.field static final greylist-max-o TRANSACTION_getAwakeTimePlugged:I = 0x4e

.field static final blacklist TRANSACTION_getBatteryUsageStats:I = 0x10

.field static final blacklist TRANSACTION_getBluetoothBatteryStats:I = 0x57

.field static final greylist-max-o TRANSACTION_getCellularBatteryStats:I = 0x53

.field static final greylist-max-o TRANSACTION_getGpsBatteryStats:I = 0x55

.field static final blacklist TRANSACTION_getScreenOffDischargeMah:I = 0x15

.field static final blacklist TRANSACTION_getWakeLockStats:I = 0x56

.field static final greylist-max-o TRANSACTION_getWifiBatteryStats:I = 0x54

.field static final greylist-max-o TRANSACTION_isCharging:I = 0x11

.field static final blacklist TRANSACTION_noteBleScanReset:I = 0x51

.field static final greylist-max-o TRANSACTION_noteBleScanResults:I = 0x52

.field static final greylist-max-o TRANSACTION_noteBleScanStarted:I = 0x4f

.field static final greylist-max-o TRANSACTION_noteBleScanStopped:I = 0x50

.field static final greylist-max-o TRANSACTION_noteBluetoothControllerActivity:I = 0x5b

.field static final greylist-max-o TRANSACTION_noteChangeWakelockFromSource:I = 0x1e

.field static final greylist-max-o TRANSACTION_noteConnectivityChanged:I = 0x2d

.field static final greylist-max-o TRANSACTION_noteDeviceIdleMode:I = 0x4b

.field static final greylist-max-o TRANSACTION_noteEvent:I = 0x16

.field static final greylist-max-o TRANSACTION_noteFlashlightOff:I = 0xa

.field static final greylist-max-o TRANSACTION_noteFlashlightOn:I = 0x9

.field static final greylist-max-o TRANSACTION_noteFullWifiLockAcquired:I = 0x3c

.field static final greylist-max-o TRANSACTION_noteFullWifiLockAcquiredFromSource:I = 0x42

.field static final greylist-max-o TRANSACTION_noteFullWifiLockReleased:I = 0x3d

.field static final greylist-max-o TRANSACTION_noteFullWifiLockReleasedFromSource:I = 0x43

.field static final greylist-max-o TRANSACTION_noteGpsChanged:I = 0x26

.field static final greylist-max-o TRANSACTION_noteGpsSignalQuality:I = 0x27

.field static final greylist-max-o TRANSACTION_noteInteractive:I = 0x2c

.field static final greylist-max-o TRANSACTION_noteJobFinish:I = 0x1a

.field static final greylist-max-o TRANSACTION_noteJobStart:I = 0x19

.field static final greylist-max-o TRANSACTION_noteLongPartialWakelockFinish:I = 0x22

.field static final greylist-max-o TRANSACTION_noteLongPartialWakelockFinishFromSource:I = 0x23

.field static final greylist-max-o TRANSACTION_noteLongPartialWakelockStart:I = 0x20

.field static final greylist-max-o TRANSACTION_noteLongPartialWakelockStartFromSource:I = 0x21

.field static final greylist-max-o TRANSACTION_noteMobileRadioPowerState:I = 0x2e

.field static final greylist-max-o TRANSACTION_noteModemControllerActivity:I = 0x5c

.field static final blacklist TRANSACTION_noteNetworkInterfaceForTransports:I = 0x49

.field static final greylist-max-o TRANSACTION_noteNetworkStatsEnabled:I = 0x4a

.field static final greylist-max-o TRANSACTION_notePhoneDataConnectionState:I = 0x32

.field static final greylist-max-o TRANSACTION_notePhoneOff:I = 0x30

.field static final greylist-max-o TRANSACTION_notePhoneOn:I = 0x2f

.field static final greylist-max-o TRANSACTION_notePhoneSignalStrength:I = 0x31

.field static final greylist-max-o TRANSACTION_notePhoneState:I = 0x33

.field static final greylist-max-o TRANSACTION_noteResetAudio:I = 0x8

.field static final greylist-max-o TRANSACTION_noteResetCamera:I = 0xd

.field static final greylist-max-o TRANSACTION_noteResetFlashlight:I = 0xe

.field static final greylist-max-o TRANSACTION_noteResetVideo:I = 0x7

.field static final greylist-max-o TRANSACTION_noteScreenBrightness:I = 0x29

.field static final greylist-max-o TRANSACTION_noteScreenState:I = 0x28

.field static final greylist-max-o TRANSACTION_noteStartAudio:I = 0x5

.field static final greylist-max-o TRANSACTION_noteStartCamera:I = 0xb

.field static final greylist-max-o TRANSACTION_noteStartSensor:I = 0x1

.field static final greylist-max-o TRANSACTION_noteStartVideo:I = 0x3

.field static final greylist-max-o TRANSACTION_noteStartWakelock:I = 0x1b

.field static final greylist-max-o TRANSACTION_noteStartWakelockFromSource:I = 0x1d

.field static final greylist-max-o TRANSACTION_noteStopAudio:I = 0x6

.field static final greylist-max-o TRANSACTION_noteStopCamera:I = 0xc

.field static final greylist-max-o TRANSACTION_noteStopSensor:I = 0x2

.field static final greylist-max-o TRANSACTION_noteStopVideo:I = 0x4

.field static final greylist-max-o TRANSACTION_noteStopWakelock:I = 0x1c

.field static final greylist-max-o TRANSACTION_noteStopWakelockFromSource:I = 0x1f

.field static final greylist-max-o TRANSACTION_noteSyncFinish:I = 0x18

.field static final greylist-max-o TRANSACTION_noteSyncStart:I = 0x17

.field static final greylist-max-o TRANSACTION_noteUserActivity:I = 0x2a

.field static final greylist-max-o TRANSACTION_noteVibratorOff:I = 0x25

.field static final greylist-max-o TRANSACTION_noteVibratorOn:I = 0x24

.field static final greylist-max-o TRANSACTION_noteWakeUp:I = 0x2b

.field static final blacklist TRANSACTION_noteWakeupSensorEvent:I = 0xf

.field static final greylist-max-o TRANSACTION_noteWifiBatchedScanStartedFromSource:I = 0x46

.field static final greylist-max-o TRANSACTION_noteWifiBatchedScanStoppedFromSource:I = 0x47

.field static final greylist-max-o TRANSACTION_noteWifiControllerActivity:I = 0x5d

.field static final greylist-max-o TRANSACTION_noteWifiMulticastDisabled:I = 0x41

.field static final greylist-max-o TRANSACTION_noteWifiMulticastEnabled:I = 0x40

.field static final greylist-max-o TRANSACTION_noteWifiOff:I = 0x35

.field static final greylist-max-o TRANSACTION_noteWifiOn:I = 0x34

.field static final greylist-max-o TRANSACTION_noteWifiRadioPowerState:I = 0x48

.field static final greylist-max-o TRANSACTION_noteWifiRssiChanged:I = 0x3b

.field static final greylist-max-o TRANSACTION_noteWifiRunning:I = 0x36

.field static final greylist-max-o TRANSACTION_noteWifiRunningChanged:I = 0x37

.field static final greylist-max-o TRANSACTION_noteWifiScanStarted:I = 0x3e

.field static final greylist-max-o TRANSACTION_noteWifiScanStartedFromSource:I = 0x44

.field static final greylist-max-o TRANSACTION_noteWifiScanStopped:I = 0x3f

.field static final greylist-max-o TRANSACTION_noteWifiScanStoppedFromSource:I = 0x45

.field static final greylist-max-o TRANSACTION_noteWifiState:I = 0x39

.field static final greylist-max-o TRANSACTION_noteWifiStopped:I = 0x38

.field static final greylist-max-o TRANSACTION_noteWifiSupplicantStateChanged:I = 0x3a

.field static final blacklist TRANSACTION_resetBattery:I = 0x62

.field static final blacklist TRANSACTION_setBatteryLevel:I = 0x60

.field static final greylist-max-o TRANSACTION_setBatteryState:I = 0x4c

.field static final blacklist TRANSACTION_setChargerAcOnline:I = 0x5f

.field static final blacklist TRANSACTION_setChargingStateUpdateDelayMillis:I = 0x5e

.field static final blacklist TRANSACTION_suspendBatteryInput:I = 0x63

.field static final greylist-max-o TRANSACTION_takeUidSnapshot:I = 0x58

.field static final greylist-max-o TRANSACTION_takeUidSnapshots:I = 0x59

.field static final blacklist TRANSACTION_takeUidSnapshotsAsync:I = 0x5a

.field static final blacklist TRANSACTION_unplugBattery:I = 0x61


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 3779
    const-string v0, "android.permission.NETWORK_STACK"

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/IBatteryStats$Stub;->PERMISSIONS_noteNetworkInterfaceForTransports:[Ljava/lang/String;

    .line 3830
    const-string v0, "android.permission.UPDATE_DEVICE_STATS"

    const-string v1, "android.permission.BATTERY_STATS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/app/IBatteryStats$Stub;->PERMISSIONS_getCellularBatteryStats:[Ljava/lang/String;

    .line 3836
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/IBatteryStats$Stub;->PERMISSIONS_getWifiBatteryStats:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 370
    nop

    .line 371
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 370
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 372
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 360
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 361
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 362
    if-eqz p1, :cond_d

    .line 365
    iput-object p1, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 366
    return-void

    .line 363
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;
    .registers 3

    .line 379
    if-nez p0, :cond_4

    .line 380
    const/4 p0, 0x0

    return-object p0

    .line 382
    :cond_4
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_13

    .line 384
    check-cast v0, Lcom/android/internal/app/IBatteryStats;

    return-object v0

    .line 386
    :cond_13
    new-instance v0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 395
    packed-switch p0, :pswitch_data_12e

    .line 795
    const/4 p0, 0x0

    return-object p0

    .line 791
    :pswitch_5
    const-string p0, "suspendBatteryInput"

    return-object p0

    .line 787
    :pswitch_8
    const-string p0, "resetBattery"

    return-object p0

    .line 783
    :pswitch_b
    const-string p0, "unplugBattery"

    return-object p0

    .line 779
    :pswitch_e
    const-string p0, "setBatteryLevel"

    return-object p0

    .line 775
    :pswitch_11
    const-string p0, "setChargerAcOnline"

    return-object p0

    .line 771
    :pswitch_14
    const-string p0, "setChargingStateUpdateDelayMillis"

    return-object p0

    .line 767
    :pswitch_17
    const-string p0, "noteWifiControllerActivity"

    return-object p0

    .line 763
    :pswitch_1a
    const-string p0, "noteModemControllerActivity"

    return-object p0

    .line 759
    :pswitch_1d
    const-string p0, "noteBluetoothControllerActivity"

    return-object p0

    .line 755
    :pswitch_20
    const-string p0, "takeUidSnapshotsAsync"

    return-object p0

    .line 751
    :pswitch_23
    const-string p0, "takeUidSnapshots"

    return-object p0

    .line 747
    :pswitch_26
    const-string p0, "takeUidSnapshot"

    return-object p0

    .line 743
    :pswitch_29
    const-string p0, "getBluetoothBatteryStats"

    return-object p0

    .line 739
    :pswitch_2c
    const-string p0, "getWakeLockStats"

    return-object p0

    .line 735
    :pswitch_2f
    const-string p0, "getGpsBatteryStats"

    return-object p0

    .line 731
    :pswitch_32
    const-string p0, "getWifiBatteryStats"

    return-object p0

    .line 727
    :pswitch_35
    const-string p0, "getCellularBatteryStats"

    return-object p0

    .line 723
    :pswitch_38
    const-string p0, "noteBleScanResults"

    return-object p0

    .line 719
    :pswitch_3b
    const-string p0, "noteBleScanReset"

    return-object p0

    .line 715
    :pswitch_3e
    const-string p0, "noteBleScanStopped"

    return-object p0

    .line 711
    :pswitch_41
    const-string p0, "noteBleScanStarted"

    return-object p0

    .line 707
    :pswitch_44
    const-string p0, "getAwakeTimePlugged"

    return-object p0

    .line 703
    :pswitch_47
    const-string p0, "getAwakeTimeBattery"

    return-object p0

    .line 699
    :pswitch_4a
    const-string p0, "setBatteryState"

    return-object p0

    .line 695
    :pswitch_4d
    const-string p0, "noteDeviceIdleMode"

    return-object p0

    .line 691
    :pswitch_50
    const-string p0, "noteNetworkStatsEnabled"

    return-object p0

    .line 687
    :pswitch_53
    const-string p0, "noteNetworkInterfaceForTransports"

    return-object p0

    .line 683
    :pswitch_56
    const-string p0, "noteWifiRadioPowerState"

    return-object p0

    .line 679
    :pswitch_59
    const-string p0, "noteWifiBatchedScanStoppedFromSource"

    return-object p0

    .line 675
    :pswitch_5c
    const-string p0, "noteWifiBatchedScanStartedFromSource"

    return-object p0

    .line 671
    :pswitch_5f
    const-string p0, "noteWifiScanStoppedFromSource"

    return-object p0

    .line 667
    :pswitch_62
    const-string p0, "noteWifiScanStartedFromSource"

    return-object p0

    .line 663
    :pswitch_65
    const-string p0, "noteFullWifiLockReleasedFromSource"

    return-object p0

    .line 659
    :pswitch_68
    const-string p0, "noteFullWifiLockAcquiredFromSource"

    return-object p0

    .line 655
    :pswitch_6b
    const-string p0, "noteWifiMulticastDisabled"

    return-object p0

    .line 651
    :pswitch_6e
    const-string p0, "noteWifiMulticastEnabled"

    return-object p0

    .line 647
    :pswitch_71
    const-string p0, "noteWifiScanStopped"

    return-object p0

    .line 643
    :pswitch_74
    const-string p0, "noteWifiScanStarted"

    return-object p0

    .line 639
    :pswitch_77
    const-string p0, "noteFullWifiLockReleased"

    return-object p0

    .line 635
    :pswitch_7a
    const-string p0, "noteFullWifiLockAcquired"

    return-object p0

    .line 631
    :pswitch_7d
    const-string p0, "noteWifiRssiChanged"

    return-object p0

    .line 627
    :pswitch_80
    const-string p0, "noteWifiSupplicantStateChanged"

    return-object p0

    .line 623
    :pswitch_83
    const-string p0, "noteWifiState"

    return-object p0

    .line 619
    :pswitch_86
    const-string p0, "noteWifiStopped"

    return-object p0

    .line 615
    :pswitch_89
    const-string p0, "noteWifiRunningChanged"

    return-object p0

    .line 611
    :pswitch_8c
    const-string p0, "noteWifiRunning"

    return-object p0

    .line 607
    :pswitch_8f
    const-string p0, "noteWifiOff"

    return-object p0

    .line 603
    :pswitch_92
    const-string p0, "noteWifiOn"

    return-object p0

    .line 599
    :pswitch_95
    const-string p0, "notePhoneState"

    return-object p0

    .line 595
    :pswitch_98
    const-string p0, "notePhoneDataConnectionState"

    return-object p0

    .line 591
    :pswitch_9b
    const-string p0, "notePhoneSignalStrength"

    return-object p0

    .line 587
    :pswitch_9e
    const-string p0, "notePhoneOff"

    return-object p0

    .line 583
    :pswitch_a1
    const-string p0, "notePhoneOn"

    return-object p0

    .line 579
    :pswitch_a4
    const-string p0, "noteMobileRadioPowerState"

    return-object p0

    .line 575
    :pswitch_a7
    const-string p0, "noteConnectivityChanged"

    return-object p0

    .line 571
    :pswitch_aa
    const-string p0, "noteInteractive"

    return-object p0

    .line 567
    :pswitch_ad
    const-string p0, "noteWakeUp"

    return-object p0

    .line 563
    :pswitch_b0
    const-string p0, "noteUserActivity"

    return-object p0

    .line 559
    :pswitch_b3
    const-string p0, "noteScreenBrightness"

    return-object p0

    .line 555
    :pswitch_b6
    const-string p0, "noteScreenState"

    return-object p0

    .line 551
    :pswitch_b9
    const-string p0, "noteGpsSignalQuality"

    return-object p0

    .line 547
    :pswitch_bc
    const-string p0, "noteGpsChanged"

    return-object p0

    .line 543
    :pswitch_bf
    const-string p0, "noteVibratorOff"

    return-object p0

    .line 539
    :pswitch_c2
    const-string p0, "noteVibratorOn"

    return-object p0

    .line 535
    :pswitch_c5
    const-string p0, "noteLongPartialWakelockFinishFromSource"

    return-object p0

    .line 531
    :pswitch_c8
    const-string p0, "noteLongPartialWakelockFinish"

    return-object p0

    .line 527
    :pswitch_cb
    const-string p0, "noteLongPartialWakelockStartFromSource"

    return-object p0

    .line 523
    :pswitch_ce
    const-string p0, "noteLongPartialWakelockStart"

    return-object p0

    .line 519
    :pswitch_d1
    const-string p0, "noteStopWakelockFromSource"

    return-object p0

    .line 515
    :pswitch_d4
    const-string p0, "noteChangeWakelockFromSource"

    return-object p0

    .line 511
    :pswitch_d7
    const-string p0, "noteStartWakelockFromSource"

    return-object p0

    .line 507
    :pswitch_da
    const-string p0, "noteStopWakelock"

    return-object p0

    .line 503
    :pswitch_dd
    const-string p0, "noteStartWakelock"

    return-object p0

    .line 499
    :pswitch_e0
    const-string p0, "noteJobFinish"

    return-object p0

    .line 495
    :pswitch_e3
    const-string p0, "noteJobStart"

    return-object p0

    .line 491
    :pswitch_e6
    const-string p0, "noteSyncFinish"

    return-object p0

    .line 487
    :pswitch_e9
    const-string p0, "noteSyncStart"

    return-object p0

    .line 483
    :pswitch_ec
    const-string p0, "noteEvent"

    return-object p0

    .line 479
    :pswitch_ef
    const-string p0, "getScreenOffDischargeMah"

    return-object p0

    .line 475
    :pswitch_f2
    const-string p0, "computeBatteryScreenOffRealtimeMs"

    return-object p0

    .line 471
    :pswitch_f5
    const-string p0, "computeChargeTimeRemaining"

    return-object p0

    .line 467
    :pswitch_f8
    const-string p0, "computeBatteryTimeRemaining"

    return-object p0

    .line 463
    :pswitch_fb
    const-string p0, "isCharging"

    return-object p0

    .line 459
    :pswitch_fe
    const-string p0, "getBatteryUsageStats"

    return-object p0

    .line 455
    :pswitch_101
    const-string p0, "noteWakeupSensorEvent"

    return-object p0

    .line 451
    :pswitch_104
    const-string p0, "noteResetFlashlight"

    return-object p0

    .line 447
    :pswitch_107
    const-string p0, "noteResetCamera"

    return-object p0

    .line 443
    :pswitch_10a
    const-string p0, "noteStopCamera"

    return-object p0

    .line 439
    :pswitch_10d
    const-string p0, "noteStartCamera"

    return-object p0

    .line 435
    :pswitch_110
    const-string p0, "noteFlashlightOff"

    return-object p0

    .line 431
    :pswitch_113
    const-string p0, "noteFlashlightOn"

    return-object p0

    .line 427
    :pswitch_116
    const-string p0, "noteResetAudio"

    return-object p0

    .line 423
    :pswitch_119
    const-string p0, "noteResetVideo"

    return-object p0

    .line 419
    :pswitch_11c
    const-string p0, "noteStopAudio"

    return-object p0

    .line 415
    :pswitch_11f
    const-string p0, "noteStartAudio"

    return-object p0

    .line 411
    :pswitch_122
    const-string p0, "noteStopVideo"

    return-object p0

    .line 407
    :pswitch_125
    const-string p0, "noteStartVideo"

    return-object p0

    .line 403
    :pswitch_128
    const-string p0, "noteStopSensor"

    return-object p0

    .line 399
    :pswitch_12b
    const-string p0, "noteStartSensor"

    return-object p0

    :pswitch_data_12e
    .packed-switch 0x1
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_110
        :pswitch_10d
        :pswitch_10a
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
        :pswitch_f5
        :pswitch_f2
        :pswitch_ef
        :pswitch_ec
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 390
    return-object p0
.end method

.method protected blacklist computeBatteryScreenOffRealtimeMs_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3516
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3517
    return-void
.end method

.method protected blacklist getAwakeTimeBattery_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3802
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3803
    return-void
.end method

.method protected blacklist getAwakeTimePlugged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3807
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3808
    return-void
.end method

.method protected blacklist getBatteryUsageStats_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3508
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3509
    return-void
.end method

.method protected blacklist getBluetoothBatteryStats_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3854
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3855
    return-void
.end method

.method protected blacklist getCellularBatteryStats_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3833
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/app/IBatteryStats$Stub;->PERMISSIONS_getCellularBatteryStats:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 3834
    return-void
.end method

.method protected blacklist getGpsBatteryStats_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3844
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3845
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 3907
    const/16 v0, 0x62

    return v0
.end method

.method protected blacklist getScreenOffDischargeMah_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3521
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3522
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 802
    invoke-static {p1}, Lcom/android/internal/app/IBatteryStats$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist getWakeLockStats_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3849
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3850
    return-void
.end method

.method protected blacklist getWifiBatteryStats_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3839
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/app/IBatteryStats$Stub;->PERMISSIONS_getWifiBatteryStats:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 3840
    return-void
.end method

.method protected blacklist noteBleScanReset_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3822
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3823
    return-void
.end method

.method protected blacklist noteBleScanResults_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3827
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3828
    return-void
.end method

.method protected blacklist noteBleScanStarted_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3812
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3813
    return-void
.end method

.method protected blacklist noteBleScanStopped_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3817
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3818
    return-void
.end method

.method protected blacklist noteBluetoothControllerActivity_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3862
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3863
    return-void
.end method

.method protected blacklist noteChangeWakelockFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3566
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3567
    return-void
.end method

.method protected blacklist noteConnectivityChanged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3641
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3642
    return-void
.end method

.method protected blacklist noteDeviceIdleMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3792
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3793
    return-void
.end method

.method protected blacklist noteEvent_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3526
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3527
    return-void
.end method

.method protected blacklist noteFlashlightOff_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3482
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3483
    return-void
.end method

.method protected blacklist noteFlashlightOn_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3477
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3478
    return-void
.end method

.method protected blacklist noteFullWifiLockAcquiredFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3746
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3747
    return-void
.end method

.method protected blacklist noteFullWifiLockAcquired_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3716
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3717
    return-void
.end method

.method protected blacklist noteFullWifiLockReleasedFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3751
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3752
    return-void
.end method

.method protected blacklist noteFullWifiLockReleased_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3721
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3722
    return-void
.end method

.method protected blacklist noteGpsChanged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3606
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3607
    return-void
.end method

.method protected blacklist noteGpsSignalQuality_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3611
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3612
    return-void
.end method

.method protected blacklist noteInteractive_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3636
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3637
    return-void
.end method

.method protected blacklist noteJobFinish_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3546
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3547
    return-void
.end method

.method protected blacklist noteJobStart_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3541
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3542
    return-void
.end method

.method protected blacklist noteLongPartialWakelockFinishFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3591
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3592
    return-void
.end method

.method protected blacklist noteLongPartialWakelockFinish_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3586
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3587
    return-void
.end method

.method protected blacklist noteLongPartialWakelockStartFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3581
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3582
    return-void
.end method

.method protected blacklist noteLongPartialWakelockStart_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3576
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3577
    return-void
.end method

.method protected blacklist noteMobileRadioPowerState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3646
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3647
    return-void
.end method

.method protected blacklist noteModemControllerActivity_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3867
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3868
    return-void
.end method

.method protected blacklist noteNetworkInterfaceForTransports_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3782
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/app/IBatteryStats$Stub;->PERMISSIONS_noteNetworkInterfaceForTransports:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 3783
    return-void
.end method

.method protected blacklist noteNetworkStatsEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3787
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3788
    return-void
.end method

.method protected blacklist notePhoneDataConnectionState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3666
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3667
    return-void
.end method

.method protected blacklist notePhoneOff_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3656
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3657
    return-void
.end method

.method protected blacklist notePhoneOn_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3651
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3652
    return-void
.end method

.method protected blacklist notePhoneSignalStrength_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3661
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3662
    return-void
.end method

.method protected blacklist notePhoneState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3671
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3672
    return-void
.end method

.method protected blacklist noteResetAudio_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3472
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3473
    return-void
.end method

.method protected blacklist noteResetCamera_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3497
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3498
    return-void
.end method

.method protected blacklist noteResetFlashlight_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3502
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3503
    return-void
.end method

.method protected blacklist noteResetVideo_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3467
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3468
    return-void
.end method

.method protected blacklist noteScreenBrightness_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3621
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3622
    return-void
.end method

.method protected blacklist noteScreenState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3616
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3617
    return-void
.end method

.method protected blacklist noteStartAudio_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3457
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3458
    return-void
.end method

.method protected blacklist noteStartCamera_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3487
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3488
    return-void
.end method

.method protected blacklist noteStartSensor_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3437
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3438
    return-void
.end method

.method protected blacklist noteStartVideo_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3447
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3448
    return-void
.end method

.method protected blacklist noteStartWakelockFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3561
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3562
    return-void
.end method

.method protected blacklist noteStartWakelock_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3551
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3552
    return-void
.end method

.method protected blacklist noteStopAudio_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3462
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3463
    return-void
.end method

.method protected blacklist noteStopCamera_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3492
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3493
    return-void
.end method

.method protected blacklist noteStopSensor_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3442
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3443
    return-void
.end method

.method protected blacklist noteStopVideo_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3452
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3453
    return-void
.end method

.method protected blacklist noteStopWakelockFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3571
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3572
    return-void
.end method

.method protected blacklist noteStopWakelock_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3556
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3557
    return-void
.end method

.method protected blacklist noteSyncFinish_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3536
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3537
    return-void
.end method

.method protected blacklist noteSyncStart_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3531
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3532
    return-void
.end method

.method protected blacklist noteUserActivity_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3626
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3627
    return-void
.end method

.method protected blacklist noteVibratorOff_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3601
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3602
    return-void
.end method

.method protected blacklist noteVibratorOn_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3596
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3597
    return-void
.end method

.method protected blacklist noteWakeUp_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3631
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3632
    return-void
.end method

.method protected blacklist noteWifiBatchedScanStartedFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3766
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3767
    return-void
.end method

.method protected blacklist noteWifiBatchedScanStoppedFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3771
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3772
    return-void
.end method

.method protected blacklist noteWifiControllerActivity_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3872
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3873
    return-void
.end method

.method protected blacklist noteWifiMulticastDisabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3741
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3742
    return-void
.end method

.method protected blacklist noteWifiMulticastEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3736
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3737
    return-void
.end method

.method protected blacklist noteWifiOff_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3681
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3682
    return-void
.end method

.method protected blacklist noteWifiOn_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3676
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3677
    return-void
.end method

.method protected blacklist noteWifiRadioPowerState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3776
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3777
    return-void
.end method

.method protected blacklist noteWifiRssiChanged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3711
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3712
    return-void
.end method

.method protected blacklist noteWifiRunningChanged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3691
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3692
    return-void
.end method

.method protected blacklist noteWifiRunning_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3686
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3687
    return-void
.end method

.method protected blacklist noteWifiScanStartedFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3756
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3757
    return-void
.end method

.method protected blacklist noteWifiScanStarted_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3726
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3727
    return-void
.end method

.method protected blacklist noteWifiScanStoppedFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3761
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3762
    return-void
.end method

.method protected blacklist noteWifiScanStopped_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3731
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3732
    return-void
.end method

.method protected blacklist noteWifiState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3701
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3702
    return-void
.end method

.method protected blacklist noteWifiStopped_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3696
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3697
    return-void
.end method

.method protected blacklist noteWifiSupplicantStateChanged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3706
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3707
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 806
    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v12, p3

    .line 807
    const-string v3, "com.android.internal.app.IBatteryStats"

    const/4 v13, 0x1

    if-lt v1, v13, :cond_12

    const v4, 0xffffff

    if-gt v1, v4, :cond_12

    .line 808
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    :cond_12
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1b

    .line 811
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 812
    return v13

    .line 814
    :cond_1b
    packed-switch v1, :pswitch_data_778

    .line 1817
    move-object v0, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1811
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->suspendBatteryInput()V

    .line 1812
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1813
    goto/16 :goto_776

    .line 1803
    :pswitch_2c
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1804
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1805
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->resetBattery(Z)V

    .line 1806
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1807
    goto/16 :goto_776

    .line 1794
    :pswitch_3b
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1795
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1796
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->unplugBattery(Z)V

    .line 1797
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1798
    goto/16 :goto_776

    .line 1783
    :pswitch_4a
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1785
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1786
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1787
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryLevel(IZ)V

    .line 1788
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1789
    goto/16 :goto_776

    .line 1772
    :pswitch_5d
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1774
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1775
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1776
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargerAcOnline(ZZ)V

    .line 1777
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1778
    goto/16 :goto_776

    .line 1762
    :pswitch_70
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1763
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1764
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargingStateUpdateDelayMillis(I)Z

    move-result v0

    .line 1765
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1766
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1767
    goto/16 :goto_776

    .line 1754
    :pswitch_83
    sget-object v1, Landroid/os/connectivity/WifiActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 1755
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1756
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiControllerActivity(Landroid/os/connectivity/WifiActivityEnergyInfo;)V

    .line 1757
    goto/16 :goto_776

    .line 1746
    :pswitch_93
    sget-object v1, Landroid/telephony/ModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ModemActivityInfo;

    .line 1747
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1748
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V

    .line 1749
    goto/16 :goto_776

    .line 1738
    :pswitch_a3
    sget-object v1, Landroid/bluetooth/BluetoothActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 1739
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1740
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    .line 1741
    goto/16 :goto_776

    .line 1728
    :pswitch_b3
    invoke-virtual {v2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1730
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 1731
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1732
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshotsAsync([ILandroid/os/ResultReceiver;)V

    .line 1733
    goto/16 :goto_776

    .line 1718
    :pswitch_c7
    invoke-virtual {v2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1719
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1720
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;

    move-result-object v0

    .line 1721
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1722
    invoke-virtual {v12, v0, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1723
    goto/16 :goto_776

    .line 1708
    :pswitch_da
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1709
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1710
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v0

    .line 1711
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1712
    invoke-virtual {v12, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1713
    goto/16 :goto_776

    .line 1700
    :pswitch_ed
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;

    move-result-object v0

    .line 1701
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1702
    invoke-virtual {v12, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1703
    goto/16 :goto_776

    .line 1693
    :pswitch_f9
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWakeLockStats()Landroid/os/WakeLockStats;

    move-result-object v0

    .line 1694
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1695
    invoke-virtual {v12, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1696
    goto/16 :goto_776

    .line 1686
    :pswitch_105
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v0

    .line 1687
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1688
    invoke-virtual {v12, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1689
    goto/16 :goto_776

    .line 1679
    :pswitch_111
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object v0

    .line 1680
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1681
    invoke-virtual {v12, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1682
    goto/16 :goto_776

    .line 1672
    :pswitch_11d
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object v0

    .line 1673
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1674
    invoke-virtual {v12, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1675
    goto/16 :goto_776

    .line 1662
    :pswitch_129
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1664
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1665
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1666
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanResults(Landroid/os/WorkSource;I)V

    .line 1667
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1668
    goto/16 :goto_776

    .line 1655
    :pswitch_140
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanReset()V

    .line 1656
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1657
    goto/16 :goto_776

    .line 1645
    :pswitch_148
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1647
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1648
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1649
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStopped(Landroid/os/WorkSource;Z)V

    .line 1650
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1651
    goto/16 :goto_776

    .line 1634
    :pswitch_15f
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1636
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1637
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1638
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStarted(Landroid/os/WorkSource;Z)V

    .line 1639
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1640
    goto/16 :goto_776

    .line 1626
    :pswitch_176
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged()J

    move-result-wide v0

    .line 1627
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1628
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1629
    goto/16 :goto_776

    .line 1619
    :pswitch_182
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery()J

    move-result-wide v0

    .line 1620
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1621
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1622
    goto/16 :goto_776

    .line 1595
    :pswitch_18e
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1611
    move-object/from16 v11, p2

    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 1612
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1613
    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryState(IIIIIIIIJ)V

    .line 1614
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1615
    goto/16 :goto_776

    .line 1582
    :pswitch_1c0
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1584
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1586
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1587
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1588
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDeviceIdleMode(ILjava/lang/String;I)V

    .line 1589
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1590
    goto/16 :goto_776

    .line 1575
    :pswitch_1d8
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkStatsEnabled()V

    .line 1576
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1577
    goto/16 :goto_776

    .line 1565
    :pswitch_1e0
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1567
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1568
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1569
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkInterfaceForTransports(Ljava/lang/String;[I)V

    .line 1570
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1571
    goto/16 :goto_776

    .line 1552
    :pswitch_1f4
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1554
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1556
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1557
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1558
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRadioPowerState(IJI)V

    .line 1559
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1560
    goto/16 :goto_776

    .line 1543
    :pswitch_20c
    move-object v11, v2

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1544
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1545
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V

    .line 1546
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1547
    goto/16 :goto_776

    .line 1532
    :pswitch_220
    move-object v11, v2

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1534
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1535
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1536
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V

    .line 1537
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1538
    goto/16 :goto_776

    .line 1523
    :pswitch_238
    move-object v11, v2

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1524
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1525
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V

    .line 1526
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1527
    goto/16 :goto_776

    .line 1514
    :pswitch_24c
    move-object v11, v2

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1515
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1516
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V

    .line 1517
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1518
    goto/16 :goto_776

    .line 1505
    :pswitch_260
    move-object v11, v2

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1506
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1507
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    .line 1508
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1509
    goto/16 :goto_776

    .line 1496
    :pswitch_274
    move-object v11, v2

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1497
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1498
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    .line 1499
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1500
    goto/16 :goto_776

    .line 1487
    :pswitch_288
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1488
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1489
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled(I)V

    .line 1490
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1491
    goto/16 :goto_776

    .line 1478
    :pswitch_298
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1479
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1480
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled(I)V

    .line 1481
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1482
    goto/16 :goto_776

    .line 1469
    :pswitch_2a8
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1470
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1471
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStopped(I)V

    .line 1472
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1473
    goto/16 :goto_776

    .line 1460
    :pswitch_2b8
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1461
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1462
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStarted(I)V

    .line 1463
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1464
    goto/16 :goto_776

    .line 1451
    :pswitch_2c8
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1452
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1453
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased(I)V

    .line 1454
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1455
    goto/16 :goto_776

    .line 1442
    :pswitch_2d8
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1443
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1444
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired(I)V

    .line 1445
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1446
    goto/16 :goto_776

    .line 1433
    :pswitch_2e8
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1434
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1435
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRssiChanged(I)V

    .line 1436
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1437
    goto/16 :goto_776

    .line 1422
    :pswitch_2f8
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1424
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1425
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1426
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiSupplicantStateChanged(IZ)V

    .line 1427
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1428
    goto/16 :goto_776

    .line 1411
    :pswitch_30c
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1413
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1414
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1415
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiState(ILjava/lang/String;)V

    .line 1416
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1417
    goto/16 :goto_776

    .line 1402
    :pswitch_320
    move-object v11, v2

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1403
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1404
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 1405
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1406
    goto/16 :goto_776

    .line 1391
    :pswitch_334
    move-object v11, v2

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1393
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 1394
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1395
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 1396
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1397
    goto/16 :goto_776

    .line 1382
    :pswitch_350
    move-object v11, v2

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1383
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1384
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 1385
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1386
    goto/16 :goto_776

    .line 1375
    :pswitch_364
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff()V

    .line 1376
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1377
    goto/16 :goto_776

    .line 1369
    :pswitch_36c
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn()V

    .line 1370
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1371
    goto/16 :goto_776

    .line 1361
    :pswitch_374
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1362
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1363
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneState(I)V

    .line 1364
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1365
    goto/16 :goto_776

    .line 1344
    :pswitch_384
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1346
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1348
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1350
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1352
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1353
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1354
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState(IZIII)V

    .line 1355
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    goto/16 :goto_776

    .line 1335
    :pswitch_3a5
    move-object v11, v2

    sget-object v1, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalStrength;

    .line 1336
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1337
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 1338
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    goto/16 :goto_776

    .line 1328
    :pswitch_3b9
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff()V

    .line 1329
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1330
    goto/16 :goto_776

    .line 1322
    :pswitch_3c1
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn()V

    .line 1323
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1324
    goto/16 :goto_776

    .line 1310
    :pswitch_3c9
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1312
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1314
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1315
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1316
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IBatteryStats$Stub;->noteMobileRadioPowerState(IJI)V

    .line 1317
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    goto/16 :goto_776

    .line 1299
    :pswitch_3e1
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1301
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1302
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1303
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteConnectivityChanged(ILjava/lang/String;)V

    .line 1304
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    goto/16 :goto_776

    .line 1290
    :pswitch_3f5
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1291
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1292
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteInteractive(Z)V

    .line 1293
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    goto/16 :goto_776

    .line 1279
    :pswitch_405
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1281
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1282
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1283
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWakeUp(Ljava/lang/String;I)V

    .line 1284
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    goto/16 :goto_776

    .line 1268
    :pswitch_419
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1270
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1271
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1272
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUserActivity(II)V

    .line 1273
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    goto/16 :goto_776

    .line 1257
    :pswitch_42d
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1259
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1260
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1261
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenBrightness(II)V

    .line 1262
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    goto/16 :goto_776

    .line 1244
    :pswitch_441
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1246
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1248
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1249
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1250
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenState(III)V

    .line 1251
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    goto/16 :goto_776

    .line 1235
    :pswitch_459
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1236
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1237
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsSignalQuality(I)V

    .line 1238
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    goto/16 :goto_776

    .line 1224
    :pswitch_469
    move-object v11, v2

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1226
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 1227
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1228
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 1229
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    goto/16 :goto_776

    .line 1215
    :pswitch_485
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1216
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1217
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOff(I)V

    .line 1218
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    goto/16 :goto_776

    .line 1204
    :pswitch_495
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1206
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1207
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1208
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOn(IJ)V

    .line 1209
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    goto/16 :goto_776

    .line 1191
    :pswitch_4a9
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1193
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1195
    sget-object v3, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 1196
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1197
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 1198
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    goto/16 :goto_776

    .line 1178
    :pswitch_4c5
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1180
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1182
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1183
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1184
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1185
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    goto/16 :goto_776

    .line 1165
    :pswitch_4dd
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1167
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1169
    sget-object v3, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 1170
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1171
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 1172
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    goto/16 :goto_776

    .line 1152
    :pswitch_4f9
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1154
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1156
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1157
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1158
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1159
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1160
    goto/16 :goto_776

    .line 1135
    :pswitch_511
    move-object v11, v2

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1137
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1139
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1141
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1143
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1144
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1145
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1146
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    goto/16 :goto_776

    .line 1106
    :pswitch_536
    move-object v11, v2

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/WorkSource;

    .line 1108
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1110
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1112
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1114
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1116
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/WorkSource;

    .line 1118
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1120
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1122
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1124
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1126
    move-object v0, v11

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 1127
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1128
    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/IBatteryStats$Stub;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1129
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    goto/16 :goto_776

    .line 1087
    :pswitch_57a
    move-object v0, v2

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1089
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1091
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1093
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1095
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1097
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1098
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1099
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1100
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    goto/16 :goto_776

    .line 1070
    :pswitch_5a3
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1072
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1074
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1076
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1078
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1079
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1080
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1081
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    goto/16 :goto_776

    .line 1051
    :pswitch_5c4
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1053
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1055
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1057
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1059
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1061
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1062
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1063
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1064
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    goto/16 :goto_776

    .line 1038
    :pswitch_5e9
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1040
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1042
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1043
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1044
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobFinish(Ljava/lang/String;II)V

    .line 1045
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    goto/16 :goto_776

    .line 1027
    :pswitch_601
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1029
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1030
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1031
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobStart(Ljava/lang/String;I)V

    .line 1032
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    goto/16 :goto_776

    .line 1016
    :pswitch_615
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1018
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1019
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1020
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncFinish(Ljava/lang/String;I)V

    .line 1021
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    goto/16 :goto_776

    .line 1005
    :pswitch_629
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1007
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1008
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1009
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncStart(Ljava/lang/String;I)V

    .line 1010
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    goto/16 :goto_776

    .line 992
    :pswitch_63d
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 994
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 996
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 997
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 998
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/app/IBatteryStats$Stub;->noteEvent(ILjava/lang/String;I)V

    .line 999
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    goto/16 :goto_776

    .line 984
    :pswitch_655
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getScreenOffDischargeMah()J

    move-result-wide v0

    .line 985
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 987
    goto/16 :goto_776

    .line 977
    :pswitch_661
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeBatteryScreenOffRealtimeMs()J

    move-result-wide v0

    .line 978
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 980
    goto/16 :goto_776

    .line 970
    :pswitch_66d
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeChargeTimeRemaining()J

    move-result-wide v0

    .line 971
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 973
    goto/16 :goto_776

    .line 963
    :pswitch_679
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeBatteryTimeRemaining()J

    move-result-wide v0

    .line 964
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 966
    goto/16 :goto_776

    .line 956
    :pswitch_685
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->isCharging()Z

    move-result v0

    .line 957
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 959
    goto/16 :goto_776

    .line 947
    :pswitch_691
    move-object v0, v2

    sget-object v1, Landroid/os/BatteryUsageStatsQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 948
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 949
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 950
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    invoke-virtual {v12, v0, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 952
    goto/16 :goto_776

    .line 934
    :pswitch_6a7
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 936
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 938
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 939
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 940
    invoke-virtual {p0, v3, v4, v1, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWakeupSensorEvent(JII)V

    .line 941
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    goto/16 :goto_776

    .line 927
    :pswitch_6bf
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetFlashlight()V

    .line 928
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    goto/16 :goto_776

    .line 921
    :pswitch_6c7
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetCamera()V

    .line 922
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    goto/16 :goto_776

    .line 913
    :pswitch_6cf
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 914
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 915
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopCamera(I)V

    .line 916
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    goto/16 :goto_776

    .line 904
    :pswitch_6df
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 905
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 906
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartCamera(I)V

    .line 907
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    goto/16 :goto_776

    .line 895
    :pswitch_6ef
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 896
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 897
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOff(I)V

    .line 898
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    goto/16 :goto_776

    .line 886
    :pswitch_6ff
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 887
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 888
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOn(I)V

    .line 889
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    goto/16 :goto_776

    .line 880
    :pswitch_70f
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetAudio()V

    .line 881
    goto :goto_776

    .line 874
    :pswitch_713
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetVideo()V

    .line 875
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    goto :goto_776

    .line 867
    :pswitch_71a
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 868
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 869
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopAudio(I)V

    .line 870
    goto :goto_776

    .line 859
    :pswitch_726
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 861
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartAudio(I)V

    .line 862
    goto :goto_776

    .line 850
    :pswitch_732
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 851
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopVideo(I)V

    .line 853
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    goto :goto_776

    .line 841
    :pswitch_741
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 842
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 843
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartVideo(I)V

    .line 844
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    goto :goto_776

    .line 830
    :pswitch_750
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 832
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 833
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensor(II)V

    .line 835
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    goto :goto_776

    .line 819
    :pswitch_763
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 821
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 822
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensor(II)V

    .line 824
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    nop

    .line 1820
    :goto_776
    return v13

    nop

    :pswitch_data_778
    .packed-switch 0x1
        :pswitch_763
        :pswitch_750
        :pswitch_741
        :pswitch_732
        :pswitch_726
        :pswitch_71a
        :pswitch_713
        :pswitch_70f
        :pswitch_6ff
        :pswitch_6ef
        :pswitch_6df
        :pswitch_6cf
        :pswitch_6c7
        :pswitch_6bf
        :pswitch_6a7
        :pswitch_691
        :pswitch_685
        :pswitch_679
        :pswitch_66d
        :pswitch_661
        :pswitch_655
        :pswitch_63d
        :pswitch_629
        :pswitch_615
        :pswitch_601
        :pswitch_5e9
        :pswitch_5c4
        :pswitch_5a3
        :pswitch_57a
        :pswitch_536
        :pswitch_511
        :pswitch_4f9
        :pswitch_4dd
        :pswitch_4c5
        :pswitch_4a9
        :pswitch_495
        :pswitch_485
        :pswitch_469
        :pswitch_459
        :pswitch_441
        :pswitch_42d
        :pswitch_419
        :pswitch_405
        :pswitch_3f5
        :pswitch_3e1
        :pswitch_3c9
        :pswitch_3c1
        :pswitch_3b9
        :pswitch_3a5
        :pswitch_384
        :pswitch_374
        :pswitch_36c
        :pswitch_364
        :pswitch_350
        :pswitch_334
        :pswitch_320
        :pswitch_30c
        :pswitch_2f8
        :pswitch_2e8
        :pswitch_2d8
        :pswitch_2c8
        :pswitch_2b8
        :pswitch_2a8
        :pswitch_298
        :pswitch_288
        :pswitch_274
        :pswitch_260
        :pswitch_24c
        :pswitch_238
        :pswitch_220
        :pswitch_20c
        :pswitch_1f4
        :pswitch_1e0
        :pswitch_1d8
        :pswitch_1c0
        :pswitch_18e
        :pswitch_182
        :pswitch_176
        :pswitch_15f
        :pswitch_148
        :pswitch_140
        :pswitch_129
        :pswitch_11d
        :pswitch_111
        :pswitch_105
        :pswitch_f9
        :pswitch_ed
        :pswitch_da
        :pswitch_c7
        :pswitch_b3
        :pswitch_a3
        :pswitch_93
        :pswitch_83
        :pswitch_70
        :pswitch_5d
        :pswitch_4a
        :pswitch_3b
        :pswitch_2c
        :pswitch_24
    .end packed-switch
.end method

.method protected blacklist resetBattery_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3897
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3898
    return-void
.end method

.method protected blacklist setBatteryLevel_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3887
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3888
    return-void
.end method

.method protected blacklist setBatteryState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3797
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3798
    return-void
.end method

.method protected blacklist setChargerAcOnline_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3882
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3883
    return-void
.end method

.method protected blacklist setChargingStateUpdateDelayMillis_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3877
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.POWER_SAVER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3878
    return-void
.end method

.method protected blacklist suspendBatteryInput_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3902
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3903
    return-void
.end method

.method protected blacklist unplugBattery_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3892
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3893
    return-void
.end method
