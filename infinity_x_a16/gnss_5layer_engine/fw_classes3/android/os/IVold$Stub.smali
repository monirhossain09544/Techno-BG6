.class public abstract Landroid/os/IVold$Stub;
.super Landroid/os/Binder;
.source "IVold.java"

# interfaces
.implements Landroid/os/IVold;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVold$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IVold"

.field static final blacklist TRANSACTION_abortChanges:I = 0x38

.field static final blacklist TRANSACTION_abortFuse:I = 0x2

.field static final greylist-max-o TRANSACTION_abortIdleMaint:I = 0x1e

.field static final blacklist TRANSACTION_addAppIds:I = 0xa

.field static final blacklist TRANSACTION_addSandboxIds:I = 0xb

.field static final greylist-max-o TRANSACTION_benchmark:I = 0x12

.field static final blacklist TRANSACTION_bindMount:I = 0x4a

.field static final blacklist TRANSACTION_commitChanges:I = 0x39

.field static final greylist-max-o TRANSACTION_createObb:I = 0x1a

.field static final blacklist TRANSACTION_createStubVolume:I = 0x43

.field static final blacklist TRANSACTION_createUserStorageKeys:I = 0x2a

.field static final blacklist TRANSACTION_destroyDsuMetadataKey:I = 0x4b

.field static final greylist-max-o TRANSACTION_destroyObb:I = 0x1b

.field static final blacklist TRANSACTION_destroySandboxForApp:I = 0x33

.field static final blacklist TRANSACTION_destroyStubVolume:I = 0x44

.field static final greylist-max-o TRANSACTION_destroyUserStorage:I = 0x31

.field static final blacklist TRANSACTION_destroyUserStorageKeys:I = 0x2b

.field static final blacklist TRANSACTION_earlyBootEnded:I = 0x42

.field static final greylist-max-o TRANSACTION_encryptFstab:I = 0x28

.field static final blacklist TRANSACTION_ensureAppDirsCreated:I = 0x19

.field static final greylist-max-o TRANSACTION_fbeEnable:I = 0x25

.field static final blacklist TRANSACTION_fixupAppDir:I = 0x18

.field static final greylist-max-o TRANSACTION_forgetPartition:I = 0xe

.field static final greylist-max-o TRANSACTION_format:I = 0x11

.field static final greylist-max-o TRANSACTION_fstrim:I = 0x1c

.field static final blacklist TRANSACTION_getStorageLifeTime:I = 0x1f

.field static final blacklist TRANSACTION_getStorageRemainingLifetime:I = 0x4d

.field static final blacklist TRANSACTION_getStorageSize:I = 0x4c

.field static final blacklist TRANSACTION_getUnlockedUsers:I = 0x2d

.field static final blacklist TRANSACTION_getWriteAmount:I = 0x22

.field static final blacklist TRANSACTION_getWriteBoosterBufferAvailablePercent:I = 0x4f

.field static final blacklist TRANSACTION_getWriteBoosterBufferSize:I = 0x4e

.field static final blacklist TRANSACTION_getWriteBoosterLifeTimeEstimate:I = 0x52

.field static final blacklist TRANSACTION_incFsEnabled:I = 0x46

.field static final greylist-max-o TRANSACTION_initUser0:I = 0x26

.field static final blacklist TRANSACTION_isCheckpointing:I = 0x37

.field static final blacklist TRANSACTION_lockCeStorage:I = 0x2f

.field static final blacklist TRANSACTION_markBootAttempt:I = 0x3d

.field static final greylist-max-o TRANSACTION_monitor:I = 0x3

.field static final greylist-max-o TRANSACTION_mount:I = 0xf

.field static final greylist-max-o TRANSACTION_mountAppFuse:I = 0x23

.field static final greylist-max-o TRANSACTION_mountFstab:I = 0x27

.field static final blacklist TRANSACTION_mountIncFs:I = 0x47

.field static final greylist-max-o TRANSACTION_moveStorage:I = 0x13

.field static final blacklist TRANSACTION_needsCheckpoint:I = 0x35

.field static final blacklist TRANSACTION_needsRollback:I = 0x36

.field static final greylist-max-o TRANSACTION_onSecureKeyguardStateChanged:I = 0xc

.field static final greylist-max-o TRANSACTION_onUserAdded:I = 0x6

.field static final greylist-max-o TRANSACTION_onUserRemoved:I = 0x7

.field static final greylist-max-o TRANSACTION_onUserStarted:I = 0x8

.field static final greylist-max-o TRANSACTION_onUserStopped:I = 0x9

.field static final blacklist TRANSACTION_openAppFuseFile:I = 0x45

.field static final greylist-max-o TRANSACTION_partition:I = 0xd

.field static final blacklist TRANSACTION_prepareCheckpoint:I = 0x3a

.field static final blacklist TRANSACTION_prepareSandboxForApp:I = 0x32

.field static final greylist-max-o TRANSACTION_prepareUserStorage:I = 0x30

.field static final blacklist TRANSACTION_refreshLatestWrite:I = 0x21

.field static final blacklist TRANSACTION_remountAppStorageDirs:I = 0x15

.field static final greylist-max-o TRANSACTION_remountUid:I = 0x14

.field static final greylist-max-o TRANSACTION_reset:I = 0x4

.field static final blacklist TRANSACTION_resetCheckpoint:I = 0x41

.field static final blacklist TRANSACTION_restoreCheckpoint:I = 0x3b

.field static final blacklist TRANSACTION_restoreCheckpointPart:I = 0x3c

.field static final greylist-max-o TRANSACTION_runIdleMaint:I = 0x1d

.field static final blacklist TRANSACTION_setCeStorageProtection:I = 0x2c

.field static final blacklist TRANSACTION_setGCUrgentPace:I = 0x20

.field static final blacklist TRANSACTION_setIncFsMountOptions:I = 0x49

.field static final greylist-max-o TRANSACTION_setListener:I = 0x1

.field static final blacklist TRANSACTION_setStorageBindingSeed:I = 0x29

.field static final blacklist TRANSACTION_setWriteBoosterBufferFlush:I = 0x50

.field static final blacklist TRANSACTION_setWriteBoosterBufferOn:I = 0x51

.field static final blacklist TRANSACTION_setupAppDir:I = 0x17

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x5

.field static final blacklist TRANSACTION_startCheckpoint:I = 0x34

.field static final blacklist TRANSACTION_supportsBlockCheckpoint:I = 0x3f

.field static final blacklist TRANSACTION_supportsCheckpoint:I = 0x3e

.field static final blacklist TRANSACTION_supportsFileCheckpoint:I = 0x40

.field static final blacklist TRANSACTION_unlockCeStorage:I = 0x2e

.field static final greylist-max-o TRANSACTION_unmount:I = 0x10

.field static final greylist-max-o TRANSACTION_unmountAppFuse:I = 0x24

.field static final blacklist TRANSACTION_unmountAppStorageDirs:I = 0x16

.field static final blacklist TRANSACTION_unmountIncFs:I = 0x48


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 300
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 301
    const-string v0, "android.os.IVold"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVold$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IVold;
    .registers 3

    .line 309
    if-nez p0, :cond_4

    .line 310
    const/4 p0, 0x0

    return-object p0

    .line 312
    :cond_4
    const-string v0, "android.os.IVold"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IVold;

    if-eqz v1, :cond_13

    .line 314
    check-cast v0, Landroid/os/IVold;

    return-object v0

    .line 316
    :cond_13
    new-instance v0, Landroid/os/IVold$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IVold$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 325
    packed-switch p0, :pswitch_data_120

    .line 657
    const/4 p0, 0x0

    return-object p0

    .line 653
    :pswitch_5
    const-string p0, "getWriteBoosterLifeTimeEstimate"

    return-object p0

    .line 649
    :pswitch_8
    const-string/jumbo p0, "setWriteBoosterBufferOn"

    return-object p0

    .line 645
    :pswitch_c
    const-string/jumbo p0, "setWriteBoosterBufferFlush"

    return-object p0

    .line 641
    :pswitch_10
    const-string p0, "getWriteBoosterBufferAvailablePercent"

    return-object p0

    .line 637
    :pswitch_13
    const-string p0, "getWriteBoosterBufferSize"

    return-object p0

    .line 633
    :pswitch_16
    const-string p0, "getStorageRemainingLifetime"

    return-object p0

    .line 629
    :pswitch_19
    const-string p0, "getStorageSize"

    return-object p0

    .line 625
    :pswitch_1c
    const-string p0, "destroyDsuMetadataKey"

    return-object p0

    .line 621
    :pswitch_1f
    const-string p0, "bindMount"

    return-object p0

    .line 617
    :pswitch_22
    const-string/jumbo p0, "setIncFsMountOptions"

    return-object p0

    .line 613
    :pswitch_26
    const-string/jumbo p0, "unmountIncFs"

    return-object p0

    .line 609
    :pswitch_2a
    const-string p0, "mountIncFs"

    return-object p0

    .line 605
    :pswitch_2d
    const-string p0, "incFsEnabled"

    return-object p0

    .line 601
    :pswitch_30
    const-string/jumbo p0, "openAppFuseFile"

    return-object p0

    .line 597
    :pswitch_34
    const-string p0, "destroyStubVolume"

    return-object p0

    .line 593
    :pswitch_37
    const-string p0, "createStubVolume"

    return-object p0

    .line 589
    :pswitch_3a
    const-string p0, "earlyBootEnded"

    return-object p0

    .line 585
    :pswitch_3d
    const-string/jumbo p0, "resetCheckpoint"

    return-object p0

    .line 581
    :pswitch_41
    const-string/jumbo p0, "supportsFileCheckpoint"

    return-object p0

    .line 577
    :pswitch_45
    const-string/jumbo p0, "supportsBlockCheckpoint"

    return-object p0

    .line 573
    :pswitch_49
    const-string/jumbo p0, "supportsCheckpoint"

    return-object p0

    .line 569
    :pswitch_4d
    const-string p0, "markBootAttempt"

    return-object p0

    .line 565
    :pswitch_50
    const-string/jumbo p0, "restoreCheckpointPart"

    return-object p0

    .line 561
    :pswitch_54
    const-string/jumbo p0, "restoreCheckpoint"

    return-object p0

    .line 557
    :pswitch_58
    const-string/jumbo p0, "prepareCheckpoint"

    return-object p0

    .line 553
    :pswitch_5c
    const-string p0, "commitChanges"

    return-object p0

    .line 549
    :pswitch_5f
    const-string p0, "abortChanges"

    return-object p0

    .line 545
    :pswitch_62
    const-string p0, "isCheckpointing"

    return-object p0

    .line 541
    :pswitch_65
    const-string p0, "needsRollback"

    return-object p0

    .line 537
    :pswitch_68
    const-string p0, "needsCheckpoint"

    return-object p0

    .line 533
    :pswitch_6b
    const-string/jumbo p0, "startCheckpoint"

    return-object p0

    .line 529
    :pswitch_6f
    const-string p0, "destroySandboxForApp"

    return-object p0

    .line 525
    :pswitch_72
    const-string/jumbo p0, "prepareSandboxForApp"

    return-object p0

    .line 521
    :pswitch_76
    const-string p0, "destroyUserStorage"

    return-object p0

    .line 517
    :pswitch_79
    const-string/jumbo p0, "prepareUserStorage"

    return-object p0

    .line 513
    :pswitch_7d
    const-string p0, "lockCeStorage"

    return-object p0

    .line 509
    :pswitch_80
    const-string/jumbo p0, "unlockCeStorage"

    return-object p0

    .line 505
    :pswitch_84
    const-string p0, "getUnlockedUsers"

    return-object p0

    .line 501
    :pswitch_87
    const-string/jumbo p0, "setCeStorageProtection"

    return-object p0

    .line 497
    :pswitch_8b
    const-string p0, "destroyUserStorageKeys"

    return-object p0

    .line 493
    :pswitch_8e
    const-string p0, "createUserStorageKeys"

    return-object p0

    .line 489
    :pswitch_91
    const-string/jumbo p0, "setStorageBindingSeed"

    return-object p0

    .line 485
    :pswitch_95
    const-string p0, "encryptFstab"

    return-object p0

    .line 481
    :pswitch_98
    const-string p0, "mountFstab"

    return-object p0

    .line 477
    :pswitch_9b
    const-string p0, "initUser0"

    return-object p0

    .line 473
    :pswitch_9e
    const-string p0, "fbeEnable"

    return-object p0

    .line 469
    :pswitch_a1
    const-string/jumbo p0, "unmountAppFuse"

    return-object p0

    .line 465
    :pswitch_a5
    const-string p0, "mountAppFuse"

    return-object p0

    .line 461
    :pswitch_a8
    const-string p0, "getWriteAmount"

    return-object p0

    .line 457
    :pswitch_ab
    const-string/jumbo p0, "refreshLatestWrite"

    return-object p0

    .line 453
    :pswitch_af
    const-string/jumbo p0, "setGCUrgentPace"

    return-object p0

    .line 449
    :pswitch_b3
    const-string p0, "getStorageLifeTime"

    return-object p0

    .line 445
    :pswitch_b6
    const-string p0, "abortIdleMaint"

    return-object p0

    .line 441
    :pswitch_b9
    const-string/jumbo p0, "runIdleMaint"

    return-object p0

    .line 437
    :pswitch_bd
    const-string p0, "fstrim"

    return-object p0

    .line 433
    :pswitch_c0
    const-string p0, "destroyObb"

    return-object p0

    .line 429
    :pswitch_c3
    const-string p0, "createObb"

    return-object p0

    .line 425
    :pswitch_c6
    const-string p0, "ensureAppDirsCreated"

    return-object p0

    .line 421
    :pswitch_c9
    const-string p0, "fixupAppDir"

    return-object p0

    .line 417
    :pswitch_cc
    const-string/jumbo p0, "setupAppDir"

    return-object p0

    .line 413
    :pswitch_d0
    const-string/jumbo p0, "unmountAppStorageDirs"

    return-object p0

    .line 409
    :pswitch_d4
    const-string/jumbo p0, "remountAppStorageDirs"

    return-object p0

    .line 405
    :pswitch_d8
    const-string/jumbo p0, "remountUid"

    return-object p0

    .line 401
    :pswitch_dc
    const-string p0, "moveStorage"

    return-object p0

    .line 397
    :pswitch_df
    const-string p0, "benchmark"

    return-object p0

    .line 393
    :pswitch_e2
    const-string p0, "format"

    return-object p0

    .line 389
    :pswitch_e5
    const-string/jumbo p0, "unmount"

    return-object p0

    .line 385
    :pswitch_e9
    const-string p0, "mount"

    return-object p0

    .line 381
    :pswitch_ec
    const-string p0, "forgetPartition"

    return-object p0

    .line 377
    :pswitch_ef
    const-string/jumbo p0, "partition"

    return-object p0

    .line 373
    :pswitch_f3
    const-string/jumbo p0, "onSecureKeyguardStateChanged"

    return-object p0

    .line 369
    :pswitch_f7
    const-string p0, "addSandboxIds"

    return-object p0

    .line 365
    :pswitch_fa
    const-string p0, "addAppIds"

    return-object p0

    .line 361
    :pswitch_fd
    const-string/jumbo p0, "onUserStopped"

    return-object p0

    .line 357
    :pswitch_101
    const-string/jumbo p0, "onUserStarted"

    return-object p0

    .line 353
    :pswitch_105
    const-string/jumbo p0, "onUserRemoved"

    return-object p0

    .line 349
    :pswitch_109
    const-string/jumbo p0, "onUserAdded"

    return-object p0

    .line 345
    :pswitch_10d
    const-string/jumbo p0, "shutdown"

    return-object p0

    .line 341
    :pswitch_111
    const-string/jumbo p0, "reset"

    return-object p0

    .line 337
    :pswitch_115
    const-string p0, "monitor"

    return-object p0

    .line 333
    :pswitch_118
    const-string p0, "abortFuse"

    return-object p0

    .line 329
    :pswitch_11b
    const-string/jumbo p0, "setListener"

    return-object p0

    nop

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_11b
        :pswitch_118
        :pswitch_115
        :pswitch_111
        :pswitch_10d
        :pswitch_109
        :pswitch_105
        :pswitch_101
        :pswitch_fd
        :pswitch_fa
        :pswitch_f7
        :pswitch_f3
        :pswitch_ef
        :pswitch_ec
        :pswitch_e9
        :pswitch_e5
        :pswitch_e2
        :pswitch_df
        :pswitch_dc
        :pswitch_d8
        :pswitch_d4
        :pswitch_d0
        :pswitch_cc
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_af
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_87
        :pswitch_84
        :pswitch_80
        :pswitch_7d
        :pswitch_79
        :pswitch_76
        :pswitch_72
        :pswitch_6f
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 320
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 3039
    const/16 v0, 0x51

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 664
    invoke-static {p1}, Landroid/os/IVold$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 668
    nop

    .line 669
    const-string v3, "android.os.IVold"

    const/4 v10, 0x1

    if-lt p1, v10, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 670
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 673
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 674
    return v10

    .line 676
    :cond_17
    packed-switch p1, :pswitch_data_5c4

    .line 1503
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1496
    :pswitch_1f
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->getWriteBoosterLifeTimeEstimate()I

    move-result v0

    .line 1497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1498
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1499
    goto/16 :goto_5c2

    .line 1487
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1488
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1489
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->setWriteBoosterBufferOn(Z)Z

    move-result v0

    .line 1490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1491
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1492
    goto/16 :goto_5c2

    .line 1477
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1478
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1479
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->setWriteBoosterBufferFlush(Z)Z

    move-result v0

    .line 1480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1481
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1482
    goto/16 :goto_5c2

    .line 1469
    :pswitch_51
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->getWriteBoosterBufferAvailablePercent()I

    move-result v0

    .line 1470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1472
    goto/16 :goto_5c2

    .line 1462
    :pswitch_5d
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->getWriteBoosterBufferSize()I

    move-result v0

    .line 1463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1464
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1465
    goto/16 :goto_5c2

    .line 1455
    :pswitch_69
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->getStorageRemainingLifetime()I

    move-result v0

    .line 1456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1457
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1458
    goto/16 :goto_5c2

    .line 1448
    :pswitch_75
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->getStorageSize()J

    move-result-wide v0

    .line 1449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1451
    goto/16 :goto_5c2

    .line 1440
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1441
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1442
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->destroyDsuMetadataKey(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1444
    goto/16 :goto_5c2

    .line 1429
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1431
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1432
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1433
    invoke-virtual {p0, v1, v3}, Landroid/os/IVold$Stub;->bindMount(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1435
    goto/16 :goto_5c2

    .line 1414
    :pswitch_a3
    sget-object v1, Landroid/os/incremental/IncrementalFileSystemControlParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/incremental/IncrementalFileSystemControlParcel;

    .line 1416
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1418
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1420
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1421
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1422
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/os/IVold$Stub;->setIncFsMountOptions(Landroid/os/incremental/IncrementalFileSystemControlParcel;ZZLjava/lang/String;)V

    .line 1423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1424
    goto/16 :goto_5c2

    .line 1405
    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1406
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1407
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->unmountIncFs(Ljava/lang/String;)V

    .line 1408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1409
    goto/16 :goto_5c2

    .line 1389
    :pswitch_d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1391
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1395
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1396
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1397
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/os/IVold$Stub;->mountIncFs(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/os/incremental/IncrementalFileSystemControlParcel;

    move-result-object v0

    .line 1398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1399
    invoke-virtual {p3, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1400
    goto/16 :goto_5c2

    .line 1381
    :pswitch_f0
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->incFsEnabled()Z

    move-result v0

    .line 1382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1383
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1384
    goto/16 :goto_5c2

    .line 1366
    :pswitch_fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1370
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1373
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1374
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/os/IVold$Stub;->openAppFuseFile(IIII)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1376
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1377
    goto/16 :goto_5c2

    .line 1357
    :pswitch_11b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1358
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1359
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->destroyStubVolume(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1361
    goto/16 :goto_5c2

    .line 1337
    :pswitch_12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1339
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1341
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1345
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1348
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1349
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IVold$Stub;->createStubVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1352
    goto/16 :goto_5c2

    .line 1330
    :pswitch_152
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->earlyBootEnded()V

    .line 1331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1332
    goto/16 :goto_5c2

    .line 1324
    :pswitch_15a
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->resetCheckpoint()V

    .line 1325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1326
    goto/16 :goto_5c2

    .line 1317
    :pswitch_162
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->supportsFileCheckpoint()Z

    move-result v0

    .line 1318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1320
    goto/16 :goto_5c2

    .line 1310
    :pswitch_16e
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->supportsBlockCheckpoint()Z

    move-result v0

    .line 1311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1312
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1313
    goto/16 :goto_5c2

    .line 1303
    :pswitch_17a
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->supportsCheckpoint()Z

    move-result v0

    .line 1304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1306
    goto/16 :goto_5c2

    .line 1297
    :pswitch_186
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->markBootAttempt()V

    .line 1298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    goto/16 :goto_5c2

    .line 1287
    :pswitch_18e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1290
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1291
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->restoreCheckpointPart(Ljava/lang/String;I)V

    .line 1292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1293
    goto/16 :goto_5c2

    .line 1278
    :pswitch_1a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1279
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1280
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->restoreCheckpoint(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    goto/16 :goto_5c2

    .line 1271
    :pswitch_1b0
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->prepareCheckpoint()V

    .line 1272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1273
    goto/16 :goto_5c2

    .line 1265
    :pswitch_1b8
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->commitChanges()V

    .line 1266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    goto/16 :goto_5c2

    .line 1255
    :pswitch_1c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1257
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1259
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->abortChanges(Ljava/lang/String;Z)V

    .line 1260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    goto/16 :goto_5c2

    .line 1247
    :pswitch_1d3
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->isCheckpointing()Z

    move-result v0

    .line 1248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1249
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1250
    goto/16 :goto_5c2

    .line 1240
    :pswitch_1df
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->needsRollback()Z

    move-result v0

    .line 1241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1242
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1243
    goto/16 :goto_5c2

    .line 1233
    :pswitch_1eb
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->needsCheckpoint()Z

    move-result v0

    .line 1234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1236
    goto/16 :goto_5c2

    .line 1225
    :pswitch_1f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1226
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1227
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->startCheckpoint(I)V

    .line 1228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    goto/16 :goto_5c2

    .line 1212
    :pswitch_206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1217
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1218
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IVold$Stub;->destroySandboxForApp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    goto/16 :goto_5c2

    .line 1197
    :pswitch_21d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1204
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1205
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IVold$Stub;->prepareSandboxForApp(Ljava/lang/String;ILjava/lang/String;I)V

    .line 1206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    goto/16 :goto_5c2

    .line 1184
    :pswitch_238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1190
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IVold$Stub;->destroyUserStorage(Ljava/lang/String;II)V

    .line 1191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    goto/16 :goto_5c2

    .line 1171
    :pswitch_24f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1176
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1177
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IVold$Stub;->prepareUserStorage(Ljava/lang/String;II)V

    .line 1178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1179
    goto/16 :goto_5c2

    .line 1162
    :pswitch_266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1164
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->lockCeStorage(I)V

    .line 1165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    goto/16 :goto_5c2

    .line 1151
    :pswitch_275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1153
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1155
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->unlockCeStorage(I[B)V

    .line 1156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    goto/16 :goto_5c2

    .line 1143
    :pswitch_288
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->getUnlockedUsers()[I

    move-result-object v0

    .line 1144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1146
    goto/16 :goto_5c2

    .line 1133
    :pswitch_294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1135
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1137
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->setCeStorageProtection(I[B)V

    .line 1138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    goto/16 :goto_5c2

    .line 1124
    :pswitch_2a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1126
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->destroyUserStorageKeys(I)V

    .line 1127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    goto/16 :goto_5c2

    .line 1113
    :pswitch_2b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1115
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->createUserStorageKeys(IZ)V

    .line 1118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    goto/16 :goto_5c2

    .line 1104
    :pswitch_2c9
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1105
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1106
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->setStorageBindingSeed([B)V

    .line 1107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    goto/16 :goto_5c2

    .line 1081
    :pswitch_2d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1083
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1085
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1087
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1089
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1091
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 1093
    invoke-virtual {p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v7

    .line 1095
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 1096
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1097
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/os/IVold$Stub;->encryptFstab(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z[Ljava/lang/String;[ZJ)V

    .line 1098
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    goto/16 :goto_5c2

    .line 1066
    :pswitch_304
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1068
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1070
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1072
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 1073
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1074
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IVold$Stub;->mountFstab(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    goto/16 :goto_5c2

    .line 1059
    :pswitch_31f
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->initUser0()V

    .line 1060
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    goto/16 :goto_5c2

    .line 1053
    :pswitch_327
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->fbeEnable()V

    .line 1054
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    goto/16 :goto_5c2

    .line 1043
    :pswitch_32f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1045
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1046
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->unmountAppFuse(II)V

    .line 1048
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    goto/16 :goto_5c2

    .line 1031
    :pswitch_342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1033
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1034
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1035
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->mountAppFuse(II)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1036
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1038
    goto/16 :goto_5c2

    .line 1023
    :pswitch_359
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->getWriteAmount()I

    move-result v0

    .line 1024
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    goto/16 :goto_5c2

    .line 1017
    :pswitch_365
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->refreshLatestWrite()V

    .line 1018
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    goto/16 :goto_5c2

    .line 997
    :pswitch_36d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 999
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 1003
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 1005
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1007
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1009
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1010
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1011
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/os/IVold$Stub;->setGCUrgentPace(IIFFIII)V

    .line 1012
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    goto/16 :goto_5c2

    .line 989
    :pswitch_395
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->getStorageLifeTime()I

    move-result v0

    .line 990
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 992
    goto/16 :goto_5c2

    .line 981
    :pswitch_3a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 982
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 983
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V

    .line 984
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    goto/16 :goto_5c2

    .line 970
    :pswitch_3b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 972
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v2

    .line 973
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 974
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->runIdleMaint(ZLandroid/os/IVoldTaskListener;)V

    .line 975
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    goto/16 :goto_5c2

    .line 959
    :pswitch_3cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 961
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v2

    .line 962
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 964
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    goto/16 :goto_5c2

    .line 950
    :pswitch_3e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 951
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->destroyObb(Ljava/lang/String;)V

    .line 953
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    goto/16 :goto_5c2

    .line 938
    :pswitch_3f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 940
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 941
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->createObb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 943
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 945
    goto/16 :goto_5c2

    .line 927
    :pswitch_408
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 929
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 930
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 931
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->ensureAppDirsCreated([Ljava/lang/String;I)V

    .line 932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    goto/16 :goto_5c2

    .line 916
    :pswitch_41b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 918
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 919
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 920
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->fixupAppDir(Ljava/lang/String;I)V

    .line 921
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    goto/16 :goto_5c2

    .line 905
    :pswitch_42e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 907
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 908
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 909
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->setupAppDir(Ljava/lang/String;I)V

    .line 910
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    goto/16 :goto_5c2

    .line 892
    :pswitch_441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 894
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 896
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 897
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 898
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IVold$Stub;->unmountAppStorageDirs(II[Ljava/lang/String;)V

    .line 899
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    goto/16 :goto_5c2

    .line 879
    :pswitch_458
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 883
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 884
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 885
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IVold$Stub;->remountAppStorageDirs(II[Ljava/lang/String;)V

    .line 886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    goto/16 :goto_5c2

    .line 868
    :pswitch_46f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 870
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->remountUid(II)V

    .line 873
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    goto/16 :goto_5c2

    .line 855
    :pswitch_482
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 857
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 859
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v3

    .line 860
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 861
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IVold$Stub;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 862
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    goto/16 :goto_5c2

    .line 844
    :pswitch_49d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 846
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v2

    .line 847
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 848
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 849
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    goto/16 :goto_5c2

    .line 833
    :pswitch_4b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 835
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 836
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 837
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->format(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    goto/16 :goto_5c2

    .line 824
    :pswitch_4c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->unmount(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    goto/16 :goto_5c2

    .line 809
    :pswitch_4d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 811
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 813
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 815
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IVoldMountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldMountCallback;

    move-result-object v4

    .line 816
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 817
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IVold$Stub;->mount(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V

    .line 818
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    goto/16 :goto_5c2

    .line 798
    :pswitch_4f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 800
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 801
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    goto/16 :goto_5c2

    .line 785
    :pswitch_508
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 787
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 789
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 791
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IVold$Stub;->partition(Ljava/lang/String;II)V

    .line 792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    goto/16 :goto_5c2

    .line 776
    :pswitch_51f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 777
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 778
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->onSecureKeyguardStateChanged(Z)V

    .line 779
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    goto/16 :goto_5c2

    .line 765
    :pswitch_52e
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 767
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 768
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->addSandboxIds([I[Ljava/lang/String;)V

    .line 770
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    goto/16 :goto_5c2

    .line 754
    :pswitch_541
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 756
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 757
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    invoke-virtual {p0, v1, v2}, Landroid/os/IVold$Stub;->addAppIds([Ljava/lang/String;[I)V

    .line 759
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    goto/16 :goto_5c2

    .line 745
    :pswitch_554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 746
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 747
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->onUserStopped(I)V

    .line 748
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    goto :goto_5c2

    .line 736
    :pswitch_562
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->onUserStarted(I)V

    .line 739
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    goto :goto_5c2

    .line 727
    :pswitch_570
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 729
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->onUserRemoved(I)V

    .line 730
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    goto :goto_5c2

    .line 714
    :pswitch_57e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 720
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IVold$Stub;->onUserAdded(III)V

    .line 721
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    goto :goto_5c2

    .line 707
    :pswitch_594
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->shutdown()V

    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    goto :goto_5c2

    .line 701
    :pswitch_59b
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->reset()V

    .line 702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    goto :goto_5c2

    .line 695
    :pswitch_5a2
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->monitor()V

    .line 696
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    goto :goto_5c2

    .line 689
    :pswitch_5a9
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->abortFuse()V

    .line 690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    goto :goto_5c2

    .line 681
    :pswitch_5b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldListener;

    move-result-object v1

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->setListener(Landroid/os/IVoldListener;)V

    .line 684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    nop

    .line 1506
    :goto_5c2
    return v10

    nop

    :pswitch_data_5c4
    .packed-switch 0x1
        :pswitch_5b0
        :pswitch_5a9
        :pswitch_5a2
        :pswitch_59b
        :pswitch_594
        :pswitch_57e
        :pswitch_570
        :pswitch_562
        :pswitch_554
        :pswitch_541
        :pswitch_52e
        :pswitch_51f
        :pswitch_508
        :pswitch_4f5
        :pswitch_4d6
        :pswitch_4c7
        :pswitch_4b4
        :pswitch_49d
        :pswitch_482
        :pswitch_46f
        :pswitch_458
        :pswitch_441
        :pswitch_42e
        :pswitch_41b
        :pswitch_408
        :pswitch_3f1
        :pswitch_3e2
        :pswitch_3cb
        :pswitch_3b4
        :pswitch_3a1
        :pswitch_395
        :pswitch_36d
        :pswitch_365
        :pswitch_359
        :pswitch_342
        :pswitch_32f
        :pswitch_327
        :pswitch_31f
        :pswitch_304
        :pswitch_2d8
        :pswitch_2c9
        :pswitch_2b6
        :pswitch_2a7
        :pswitch_294
        :pswitch_288
        :pswitch_275
        :pswitch_266
        :pswitch_24f
        :pswitch_238
        :pswitch_21d
        :pswitch_206
        :pswitch_1f7
        :pswitch_1eb
        :pswitch_1df
        :pswitch_1d3
        :pswitch_1c0
        :pswitch_1b8
        :pswitch_1b0
        :pswitch_1a1
        :pswitch_18e
        :pswitch_186
        :pswitch_17a
        :pswitch_16e
        :pswitch_162
        :pswitch_15a
        :pswitch_152
        :pswitch_12a
        :pswitch_11b
        :pswitch_fc
        :pswitch_f0
        :pswitch_d1
        :pswitch_c2
        :pswitch_a3
        :pswitch_90
        :pswitch_81
        :pswitch_75
        :pswitch_69
        :pswitch_5d
        :pswitch_51
        :pswitch_3e
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
