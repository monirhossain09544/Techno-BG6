.class public abstract Lcom/android/internal/app/IAppOpsService$Stub;
.super Landroid/os/Binder;
.source "IAppOpsService.java"

# interfaces
.implements Lcom/android/internal/app/IAppOpsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppOpsService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IAppOpsService"

.field static final blacklist TRANSACTION_addHistoricalOps:I = 0x18

.field static final greylist TRANSACTION_checkAudioOperation:I = 0x8

.field static final greylist TRANSACTION_checkOperation:I = 0x1

.field static final blacklist TRANSACTION_checkOperationForDevice:I = 0x37

.field static final blacklist TRANSACTION_checkOperationRaw:I = 0x30

.field static final blacklist TRANSACTION_checkOperationRawForDevice:I = 0x36

.field static final greylist TRANSACTION_checkPackage:I = 0xf

.field static final blacklist TRANSACTION_clearHistory:I = 0x1b

.field static final blacklist TRANSACTION_collectNoteOpCallsForValidation:I = 0x32

.field static final blacklist TRANSACTION_collectRuntimeAppOpAccessMessage:I = 0x10

.field static final blacklist TRANSACTION_extractAsyncOps:I = 0x2f

.field static final greylist TRANSACTION_finishOperation:I = 0x4

.field static final blacklist TRANSACTION_finishOperationForDevice:I = 0x3a

.field static final blacklist TRANSACTION_finishProxyOperation:I = 0xe

.field static final blacklist TRANSACTION_finishProxyOperationWithState:I = 0x35

.field static final blacklist TRANSACTION_getHistoricalOps:I = 0x14

.field static final blacklist TRANSACTION_getHistoricalOpsFromDiskRaw:I = 0x15

.field static final greylist TRANSACTION_getOpsForPackage:I = 0x13

.field static final greylist TRANSACTION_getPackagesForOps:I = 0x12

.field static final blacklist TRANSACTION_getPackagesForOpsForDevice:I = 0x3b

.field static final blacklist TRANSACTION_getPackagesWithNonDefaultUidMode:I = 0x3d

.field static final greylist-max-o TRANSACTION_getUidOps:I = 0x1d

.field static final greylist-max-o TRANSACTION_isOperationActive:I = 0x27

.field static final blacklist TRANSACTION_isProxying:I = 0x28

.field static final greylist TRANSACTION_noteOperation:I = 0x2

.field static final blacklist TRANSACTION_noteOperationForDevice:I = 0x38

.field static final blacklist TRANSACTION_noteOperationsInBatch:I = 0x3c

.field static final greylist TRANSACTION_noteProxyOperation:I = 0xc

.field static final blacklist TRANSACTION_noteProxyOperationWithState:I = 0x33

.field static final blacklist TRANSACTION_offsetHistory:I = 0x16

.field static final greylist-max-o TRANSACTION_permissionToOpCode:I = 0x7

.field static final blacklist TRANSACTION_rebootHistory:I = 0x1c

.field static final blacklist TRANSACTION_reloadNonHistoricalState:I = 0x31

.field static final greylist TRANSACTION_removeUser:I = 0x24

.field static final blacklist TRANSACTION_reportRuntimeAppOpAccessMessageAndGetConfig:I = 0x11

.field static final greylist TRANSACTION_resetAllModes:I = 0x20

.field static final blacklist TRANSACTION_resetHistoryParameters:I = 0x19

.field static final blacklist TRANSACTION_resetPackageOpsNoHistory:I = 0x1a

.field static final greylist TRANSACTION_setAudioRestriction:I = 0x21

.field static final blacklist TRANSACTION_setCameraAudioRestriction:I = 0xa

.field static final blacklist TRANSACTION_setHistoryParameters:I = 0x17

.field static final greylist TRANSACTION_setMode:I = 0x1f

.field static final greylist TRANSACTION_setUidMode:I = 0x1e

.field static final greylist TRANSACTION_setUserRestriction:I = 0x23

.field static final greylist TRANSACTION_setUserRestrictions:I = 0x22

.field static final blacklist TRANSACTION_shouldCollectNotes:I = 0x9

.field static final greylist TRANSACTION_startOperation:I = 0x3

.field static final blacklist TRANSACTION_startOperationForDevice:I = 0x39

.field static final blacklist TRANSACTION_startProxyOperation:I = 0xd

.field static final blacklist TRANSACTION_startProxyOperationWithState:I = 0x34

.field static final greylist-max-o TRANSACTION_startWatchingActive:I = 0x25

.field static final blacklist TRANSACTION_startWatchingAsyncNoted:I = 0x2d

.field static final greylist TRANSACTION_startWatchingMode:I = 0x5

.field static final greylist-max-o TRANSACTION_startWatchingModeWithFlags:I = 0xb

.field static final blacklist TRANSACTION_startWatchingNoted:I = 0x2b

.field static final blacklist TRANSACTION_startWatchingStarted:I = 0x29

.field static final greylist-max-o TRANSACTION_stopWatchingActive:I = 0x26

.field static final blacklist TRANSACTION_stopWatchingAsyncNoted:I = 0x2e

.field static final greylist TRANSACTION_stopWatchingMode:I = 0x6

.field static final blacklist TRANSACTION_stopWatchingNoted:I = 0x2c

.field static final blacklist TRANSACTION_stopWatchingStarted:I = 0x2a


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    nop

    .line 261
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 260
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 262
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 250
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 251
    const-string v0, "com.android.internal.app.IAppOpsService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IAppOpsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 252
    if-eqz p1, :cond_d

    .line 255
    iput-object p1, p0, Lcom/android/internal/app/IAppOpsService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 256
    return-void

    .line 253
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;
    .registers 3

    .line 269
    if-nez p0, :cond_4

    .line 270
    const/4 p0, 0x0

    return-object p0

    .line 272
    :cond_4
    const-string v0, "com.android.internal.app.IAppOpsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/app/IAppOpsService;

    if-eqz v1, :cond_13

    .line 274
    check-cast v0, Lcom/android/internal/app/IAppOpsService;

    return-object v0

    .line 276
    :cond_13
    new-instance v0, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 285
    packed-switch p0, :pswitch_data_bc

    .line 533
    const/4 p0, 0x0

    return-object p0

    .line 529
    :pswitch_5
    const-string p0, "getPackagesWithNonDefaultUidMode"

    return-object p0

    .line 525
    :pswitch_8
    const-string p0, "noteOperationsInBatch"

    return-object p0

    .line 521
    :pswitch_b
    const-string p0, "getPackagesForOpsForDevice"

    return-object p0

    .line 517
    :pswitch_e
    const-string p0, "finishOperationForDevice"

    return-object p0

    .line 513
    :pswitch_11
    const-string p0, "startOperationForDevice"

    return-object p0

    .line 509
    :pswitch_14
    const-string p0, "noteOperationForDevice"

    return-object p0

    .line 505
    :pswitch_17
    const-string p0, "checkOperationForDevice"

    return-object p0

    .line 501
    :pswitch_1a
    const-string p0, "checkOperationRawForDevice"

    return-object p0

    .line 497
    :pswitch_1d
    const-string p0, "finishProxyOperationWithState"

    return-object p0

    .line 493
    :pswitch_20
    const-string p0, "startProxyOperationWithState"

    return-object p0

    .line 489
    :pswitch_23
    const-string p0, "noteProxyOperationWithState"

    return-object p0

    .line 485
    :pswitch_26
    const-string p0, "collectNoteOpCallsForValidation"

    return-object p0

    .line 481
    :pswitch_29
    const-string p0, "reloadNonHistoricalState"

    return-object p0

    .line 477
    :pswitch_2c
    const-string p0, "checkOperationRaw"

    return-object p0

    .line 473
    :pswitch_2f
    const-string p0, "extractAsyncOps"

    return-object p0

    .line 469
    :pswitch_32
    const-string p0, "stopWatchingAsyncNoted"

    return-object p0

    .line 465
    :pswitch_35
    const-string p0, "startWatchingAsyncNoted"

    return-object p0

    .line 461
    :pswitch_38
    const-string p0, "stopWatchingNoted"

    return-object p0

    .line 457
    :pswitch_3b
    const-string p0, "startWatchingNoted"

    return-object p0

    .line 453
    :pswitch_3e
    const-string p0, "stopWatchingStarted"

    return-object p0

    .line 449
    :pswitch_41
    const-string p0, "startWatchingStarted"

    return-object p0

    .line 445
    :pswitch_44
    const-string p0, "isProxying"

    return-object p0

    .line 441
    :pswitch_47
    const-string p0, "isOperationActive"

    return-object p0

    .line 437
    :pswitch_4a
    const-string p0, "stopWatchingActive"

    return-object p0

    .line 433
    :pswitch_4d
    const-string p0, "startWatchingActive"

    return-object p0

    .line 429
    :pswitch_50
    const-string p0, "removeUser"

    return-object p0

    .line 425
    :pswitch_53
    const-string p0, "setUserRestriction"

    return-object p0

    .line 421
    :pswitch_56
    const-string p0, "setUserRestrictions"

    return-object p0

    .line 417
    :pswitch_59
    const-string p0, "setAudioRestriction"

    return-object p0

    .line 413
    :pswitch_5c
    const-string p0, "resetAllModes"

    return-object p0

    .line 409
    :pswitch_5f
    const-string p0, "setMode"

    return-object p0

    .line 405
    :pswitch_62
    const-string p0, "setUidMode"

    return-object p0

    .line 401
    :pswitch_65
    const-string p0, "getUidOps"

    return-object p0

    .line 397
    :pswitch_68
    const-string p0, "rebootHistory"

    return-object p0

    .line 393
    :pswitch_6b
    const-string p0, "clearHistory"

    return-object p0

    .line 389
    :pswitch_6e
    const-string p0, "resetPackageOpsNoHistory"

    return-object p0

    .line 385
    :pswitch_71
    const-string p0, "resetHistoryParameters"

    return-object p0

    .line 381
    :pswitch_74
    const-string p0, "addHistoricalOps"

    return-object p0

    .line 377
    :pswitch_77
    const-string p0, "setHistoryParameters"

    return-object p0

    .line 373
    :pswitch_7a
    const-string p0, "offsetHistory"

    return-object p0

    .line 369
    :pswitch_7d
    const-string p0, "getHistoricalOpsFromDiskRaw"

    return-object p0

    .line 365
    :pswitch_80
    const-string p0, "getHistoricalOps"

    return-object p0

    .line 361
    :pswitch_83
    const-string p0, "getOpsForPackage"

    return-object p0

    .line 357
    :pswitch_86
    const-string p0, "getPackagesForOps"

    return-object p0

    .line 353
    :pswitch_89
    const-string p0, "reportRuntimeAppOpAccessMessageAndGetConfig"

    return-object p0

    .line 349
    :pswitch_8c
    const-string p0, "collectRuntimeAppOpAccessMessage"

    return-object p0

    .line 345
    :pswitch_8f
    const-string p0, "checkPackage"

    return-object p0

    .line 341
    :pswitch_92
    const-string p0, "finishProxyOperation"

    return-object p0

    .line 337
    :pswitch_95
    const-string p0, "startProxyOperation"

    return-object p0

    .line 333
    :pswitch_98
    const-string p0, "noteProxyOperation"

    return-object p0

    .line 329
    :pswitch_9b
    const-string p0, "startWatchingModeWithFlags"

    return-object p0

    .line 325
    :pswitch_9e
    const-string p0, "setCameraAudioRestriction"

    return-object p0

    .line 321
    :pswitch_a1
    const-string p0, "shouldCollectNotes"

    return-object p0

    .line 317
    :pswitch_a4
    const-string p0, "checkAudioOperation"

    return-object p0

    .line 313
    :pswitch_a7
    const-string p0, "permissionToOpCode"

    return-object p0

    .line 309
    :pswitch_aa
    const-string p0, "stopWatchingMode"

    return-object p0

    .line 305
    :pswitch_ad
    const-string p0, "startWatchingMode"

    return-object p0

    .line 301
    :pswitch_b0
    const-string p0, "finishOperation"

    return-object p0

    .line 297
    :pswitch_b3
    const-string p0, "startOperation"

    return-object p0

    .line 293
    :pswitch_b6
    const-string p0, "noteOperation"

    return-object p0

    .line 289
    :pswitch_b9
    const-string p0, "checkOperation"

    return-object p0

    :pswitch_data_bc
    .packed-switch 0x1
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
.method protected blacklist addHistoricalOps_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2643
    iget-object v0, p0, Lcom/android/internal/app/IAppOpsService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APPOPS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2644
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 280
    return-object p0
.end method

.method protected blacklist clearHistory_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2658
    iget-object v0, p0, Lcom/android/internal/app/IAppOpsService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APPOPS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2659
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2701
    const/16 v0, 0x3c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 540
    invoke-static {p1}, Lcom/android/internal/app/IAppOpsService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist offsetHistory_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2633
    iget-object v0, p0, Lcom/android/internal/app/IAppOpsService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APPOPS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2634
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 544
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v13, p3

    .line 545
    const-string v3, "com.android.internal.app.IAppOpsService"

    const/4 v14, 0x1

    if-lt v1, v14, :cond_15

    const v4, 0xffffff

    if-gt v1, v4, :cond_15

    .line 546
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    :cond_15
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1e

    .line 549
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    return v14

    .line 552
    :cond_1e
    packed-switch v1, :pswitch_data_766

    .line 1435
    move-object v15, v2

    move-object v2, v0

    move-object v0, v15

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1422
    :pswitch_29
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1424
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1426
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1427
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1428
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/app/IAppOpsService$Stub;->getPackagesWithNonDefaultUidMode(III)Ljava/util/List;

    move-result-object v0

    .line 1429
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1430
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1431
    goto/16 :goto_764

    .line 1413
    :pswitch_44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1414
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 1415
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1416
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->noteOperationsInBatch(Ljava/util/Map;)V

    .line 1417
    goto/16 :goto_764

    .line 1401
    :pswitch_58
    invoke-virtual {v2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1403
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1404
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1405
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->getPackagesForOpsForDevice([ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1406
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1407
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1408
    goto/16 :goto_764

    .line 1382
    :pswitch_6f
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1394
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IAppOpsService$Stub;->finishOperationForDevice(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    .line 1395
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1396
    goto/16 :goto_764

    .line 1350
    :pswitch_92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1362
    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 1364
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 1366
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1368
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 1370
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1372
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1373
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1374
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/app/IAppOpsService$Stub;->startOperationForDevice(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 1375
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1376
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1377
    goto/16 :goto_764

    .line 1326
    :pswitch_d5
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1328
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1330
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1332
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1334
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1336
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1338
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1340
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 1341
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1342
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/IAppOpsService$Stub;->noteOperationForDevice(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 1343
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1345
    goto/16 :goto_764

    .line 1308
    :pswitch_107
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1310
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1312
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1314
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1316
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1317
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1318
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService$Stub;->checkOperationForDevice(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1319
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1321
    goto/16 :goto_764

    .line 1290
    :pswitch_12d
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1292
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1294
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1296
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1298
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1299
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1300
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService$Stub;->checkOperationRawForDevice(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1301
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1302
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1303
    goto/16 :goto_764

    .line 1275
    :pswitch_153
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1277
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1279
    sget-object v4, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSourceState;

    .line 1281
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1282
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1283
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService$Stub;->finishProxyOperationWithState(Landroid/os/IBinder;ILandroid/content/AttributionSourceState;Z)V

    .line 1284
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    goto/16 :goto_764

    .line 1245
    :pswitch_174
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1247
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1249
    sget-object v3, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSourceState;

    .line 1251
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1253
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1255
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1257
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 1259
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 1261
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1263
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1265
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1266
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1267
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/IAppOpsService$Stub;->startProxyOperationWithState(Landroid/os/IBinder;ILandroid/content/AttributionSourceState;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 1268
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1269
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1270
    goto/16 :goto_764

    .line 1225
    :pswitch_1b7
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1227
    sget-object v2, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSourceState;

    .line 1229
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1231
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1233
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1235
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1236
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1237
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IAppOpsService$Stub;->noteProxyOperationWithState(ILandroid/content/AttributionSourceState;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 1238
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1240
    goto/16 :goto_764

    .line 1210
    :pswitch_1e5
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1214
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1216
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1217
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1218
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService$Stub;->collectNoteOpCallsForValidation(Ljava/lang/String;ILjava/lang/String;J)V

    .line 1219
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    goto/16 :goto_764

    .line 1203
    :pswitch_203
    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->reloadNonHistoricalState()V

    .line 1204
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    goto/16 :goto_764

    .line 1188
    :pswitch_20c
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1190
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1192
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1194
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1195
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1196
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService$Stub;->checkOperationRaw(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1197
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1199
    goto/16 :goto_764

    .line 1178
    :pswitch_22d
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1179
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1180
    invoke-virtual {v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->extractAsyncOps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1181
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1183
    goto/16 :goto_764

    .line 1167
    :pswitch_242
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1169
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IAppOpsAsyncNotedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    move-result-object v3

    .line 1170
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1171
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    .line 1172
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    goto/16 :goto_764

    .line 1156
    :pswitch_25b
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1158
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IAppOpsAsyncNotedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    move-result-object v3

    .line 1159
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1160
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    .line 1161
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    goto/16 :goto_764

    .line 1147
    :pswitch_274
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppOpsNotedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsNotedCallback;

    move-result-object v2

    .line 1148
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1149
    invoke-virtual {v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V

    .line 1150
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    goto/16 :goto_764

    .line 1136
    :pswitch_289
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1138
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IAppOpsNotedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsNotedCallback;

    move-result-object v3

    .line 1139
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1140
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V

    .line 1141
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    goto/16 :goto_764

    .line 1127
    :pswitch_2a2
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppOpsStartedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsStartedCallback;

    move-result-object v2

    .line 1128
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1129
    invoke-virtual {v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->stopWatchingStarted(Lcom/android/internal/app/IAppOpsStartedCallback;)V

    .line 1130
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    goto/16 :goto_764

    .line 1116
    :pswitch_2b7
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1118
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IAppOpsStartedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsStartedCallback;

    move-result-object v3

    .line 1119
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1120
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingStarted([ILcom/android/internal/app/IAppOpsStartedCallback;)V

    .line 1121
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    goto/16 :goto_764

    .line 1098
    :pswitch_2d0
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1100
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1102
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1104
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1106
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1107
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1108
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService$Stub;->isProxying(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    .line 1109
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1111
    goto/16 :goto_764

    .line 1084
    :pswitch_2f7
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1086
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1088
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1089
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1090
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService$Stub;->isOperationActive(IILjava/lang/String;)Z

    move-result v0

    .line 1091
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1093
    goto/16 :goto_764

    .line 1075
    :pswitch_314
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppOpsActiveCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsActiveCallback;

    move-result-object v2

    .line 1076
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1077
    invoke-virtual {v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V

    .line 1078
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    goto/16 :goto_764

    .line 1064
    :pswitch_329
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1066
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IAppOpsActiveCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsActiveCallback;

    move-result-object v3

    .line 1067
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1068
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V

    .line 1069
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1070
    goto/16 :goto_764

    .line 1055
    :pswitch_342
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1056
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1057
    invoke-virtual {v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->removeUser(I)V

    .line 1058
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    goto/16 :goto_764

    .line 1038
    :pswitch_353
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1040
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1042
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1044
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1046
    sget-object v5, Landroid/os/PackageTagsList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PackageTagsList;

    .line 1047
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1048
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService$Stub;->setUserRestriction(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V

    .line 1049
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    goto/16 :goto_764

    .line 1025
    :pswitch_37a
    move-object v1, v0

    move-object v0, v2

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1027
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1029
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1030
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1031
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService$Stub;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V

    .line 1032
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    goto/16 :goto_764

    .line 1010
    :pswitch_397
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1012
    invoke-virtual {v0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1014
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1016
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 1017
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1018
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService$Stub;->setAudioRestriction(I[II[Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    goto/16 :goto_764

    .line 999
    :pswitch_3b4
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1001
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1002
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1003
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->resetAllModes(ILjava/lang/String;)V

    .line 1004
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    goto/16 :goto_764

    .line 984
    :pswitch_3c9
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 986
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 988
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 990
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 991
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 992
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService$Stub;->setMode(IILjava/lang/String;I)V

    .line 993
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    goto/16 :goto_764

    .line 971
    :pswitch_3e6
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 973
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 975
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 976
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 977
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService$Stub;->setUidMode(III)V

    .line 978
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    goto/16 :goto_764

    .line 959
    :pswitch_3ff
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 961
    invoke-virtual {v0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 962
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->getUidOps(I[I)Ljava/util/List;

    move-result-object v0

    .line 964
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 966
    goto/16 :goto_764

    .line 950
    :pswitch_418
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 951
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->rebootHistory(J)V

    .line 953
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    goto/16 :goto_764

    .line 943
    :pswitch_429
    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->clearHistory()V

    .line 944
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    goto/16 :goto_764

    .line 935
    :pswitch_432
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 936
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 937
    invoke-virtual {v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->resetPackageOpsNoHistory(Ljava/lang/String;)V

    .line 938
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    goto/16 :goto_764

    .line 928
    :pswitch_443
    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->resetHistoryParameters()V

    .line 929
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    goto/16 :goto_764

    .line 920
    :pswitch_44c
    move-object v1, v0

    move-object v0, v2

    sget-object v2, Landroid/app/AppOpsManager$HistoricalOps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 921
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-virtual {v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 923
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    goto/16 :goto_764

    .line 907
    :pswitch_461
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 909
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 911
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 912
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 913
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService$Stub;->setHistoryParameters(IJI)V

    .line 914
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    goto/16 :goto_764

    .line 898
    :pswitch_47a
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 899
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 900
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->offsetHistory(J)V

    .line 901
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    goto/16 :goto_764

    .line 871
    :pswitch_48b
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 873
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 875
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 879
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 881
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 883
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 885
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 887
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 889
    sget-object v12, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/RemoteCallback;

    .line 890
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 891
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/app/IAppOpsService$Stub;->getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V

    .line 892
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    goto/16 :goto_764

    .line 844
    :pswitch_4c6
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 846
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 848
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 850
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 852
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 854
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 856
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 858
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 862
    sget-object v12, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/RemoteCallback;

    .line 863
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 864
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/app/IAppOpsService$Stub;->getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V

    .line 865
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    goto/16 :goto_764

    .line 830
    :pswitch_500
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 832
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 834
    invoke-virtual {v0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 835
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 836
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService$Stub;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v0

    .line 837
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 839
    goto/16 :goto_764

    .line 820
    :pswitch_51d
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 821
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    invoke-virtual {v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    .line 823
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 825
    goto/16 :goto_764

    .line 806
    :pswitch_532
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 808
    sget-object v3, Landroid/app/SyncNotedAppOp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SyncNotedAppOp;

    .line 810
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 811
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService$Stub;->reportRuntimeAppOpAccessMessageAndGetConfig(Ljava/lang/String;Landroid/app/SyncNotedAppOp;Ljava/lang/String;)Lcom/android/internal/app/MessageSamplingConfig;

    move-result-object v0

    .line 813
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 815
    goto/16 :goto_764

    .line 798
    :pswitch_553
    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;

    move-result-object v0

    .line 799
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 801
    goto/16 :goto_764

    .line 787
    :pswitch_560
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 790
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 791
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->checkPackage(ILjava/lang/String;)I

    move-result v0

    .line 792
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 794
    goto/16 :goto_764

    .line 772
    :pswitch_579
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 774
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 776
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 778
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 779
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService$Stub;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V

    .line 781
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    goto/16 :goto_764

    .line 742
    :pswitch_59a
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 744
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 746
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 748
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 750
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 752
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 756
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 758
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 760
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 763
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/IAppOpsService$Stub;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 765
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 767
    goto/16 :goto_764

    .line 722
    :pswitch_5dd
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 724
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 726
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 728
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 730
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 733
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IAppOpsService$Stub;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 735
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 737
    goto/16 :goto_764

    .line 707
    :pswitch_60b
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 711
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 713
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/IAppOpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v5

    .line 714
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 715
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 716
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    goto/16 :goto_764

    .line 698
    :pswitch_62c
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 699
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 700
    invoke-virtual {v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->setCameraAudioRestriction(I)V

    .line 701
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    goto/16 :goto_764

    .line 688
    :pswitch_63d
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 689
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->shouldCollectNotes(I)Z

    move-result v0

    .line 691
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 693
    goto/16 :goto_764

    .line 672
    :pswitch_652
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 674
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 676
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 678
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService$Stub;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0

    .line 681
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 683
    goto/16 :goto_764

    .line 662
    :pswitch_673
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 663
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    invoke-virtual {v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 665
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    goto/16 :goto_764

    .line 653
    :pswitch_688
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppOpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v2

    .line 654
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 655
    invoke-virtual {v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V

    .line 656
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    goto/16 :goto_764

    .line 640
    :pswitch_69d
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 642
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 644
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IAppOpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v4

    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 646
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 647
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    goto/16 :goto_764

    .line 623
    :pswitch_6ba
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 625
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 627
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 629
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 631
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 632
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService$Stub;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    goto/16 :goto_764

    .line 593
    :pswitch_6dd
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 595
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 597
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 599
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 601
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 603
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 605
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 607
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 609
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 613
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 614
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 615
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/IAppOpsService$Stub;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 616
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 618
    goto :goto_764

    .line 571
    :pswitch_71a
    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 575
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 577
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 579
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 581
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 583
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/IAppOpsService$Stub;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 586
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 588
    goto :goto_764

    .line 557
    :pswitch_747
    move-object v15, v2

    move-object v2, v0

    move-object v0, v15

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 561
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 562
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 563
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/app/IAppOpsService$Stub;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 564
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    nop

    .line 1438
    :goto_764
    return v14

    nop

    :pswitch_data_766
    .packed-switch 0x1
        :pswitch_747
        :pswitch_71a
        :pswitch_6dd
        :pswitch_6ba
        :pswitch_69d
        :pswitch_688
        :pswitch_673
        :pswitch_652
        :pswitch_63d
        :pswitch_62c
        :pswitch_60b
        :pswitch_5dd
        :pswitch_59a
        :pswitch_579
        :pswitch_560
        :pswitch_553
        :pswitch_532
        :pswitch_51d
        :pswitch_500
        :pswitch_4c6
        :pswitch_48b
        :pswitch_47a
        :pswitch_461
        :pswitch_44c
        :pswitch_443
        :pswitch_432
        :pswitch_429
        :pswitch_418
        :pswitch_3ff
        :pswitch_3e6
        :pswitch_3c9
        :pswitch_3b4
        :pswitch_397
        :pswitch_37a
        :pswitch_353
        :pswitch_342
        :pswitch_329
        :pswitch_314
        :pswitch_2f7
        :pswitch_2d0
        :pswitch_2b7
        :pswitch_2a2
        :pswitch_289
        :pswitch_274
        :pswitch_25b
        :pswitch_242
        :pswitch_22d
        :pswitch_20c
        :pswitch_203
        :pswitch_1e5
        :pswitch_1b7
        :pswitch_174
        :pswitch_153
        :pswitch_12d
        :pswitch_107
        :pswitch_d5
        :pswitch_92
        :pswitch_6f
        :pswitch_58
        :pswitch_44
        :pswitch_29
    .end packed-switch
.end method

.method protected blacklist rebootHistory_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2663
    iget-object v0, p0, Lcom/android/internal/app/IAppOpsService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APPOPS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2664
    return-void
.end method

.method protected blacklist resetHistoryParameters_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2648
    iget-object v0, p0, Lcom/android/internal/app/IAppOpsService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APPOPS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2649
    return-void
.end method

.method protected blacklist resetPackageOpsNoHistory_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2653
    iget-object v0, p0, Lcom/android/internal/app/IAppOpsService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APPOPS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2654
    return-void
.end method

.method protected blacklist setHistoryParameters_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2638
    iget-object v0, p0, Lcom/android/internal/app/IAppOpsService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IAppOpsService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APPOPS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2639
    return-void
.end method
