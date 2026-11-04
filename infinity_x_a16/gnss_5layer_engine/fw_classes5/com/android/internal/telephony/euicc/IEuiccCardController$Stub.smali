.class public abstract Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;
.super Landroid/os/Binder;
.source "IEuiccCardController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/IEuiccCardController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/IEuiccCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_authenticateServer:I = 0x10

.field static final blacklist TRANSACTION_cancelSession:I = 0x13

.field static final blacklist TRANSACTION_deleteProfile:I = 0x7

.field static final blacklist TRANSACTION_disableProfile:I = 0x4

.field static final blacklist TRANSACTION_getAllProfiles:I = 0x1

.field static final blacklist TRANSACTION_getDefaultSmdpAddress:I = 0x9

.field static final blacklist TRANSACTION_getEnabledProfile:I = 0x3

.field static final blacklist TRANSACTION_getEuiccChallenge:I = 0xd

.field static final blacklist TRANSACTION_getEuiccInfo1:I = 0xe

.field static final blacklist TRANSACTION_getEuiccInfo2:I = 0xf

.field static final blacklist TRANSACTION_getProfile:I = 0x2

.field static final blacklist TRANSACTION_getRulesAuthTable:I = 0xc

.field static final blacklist TRANSACTION_getSmdsAddress:I = 0xa

.field static final blacklist TRANSACTION_listNotifications:I = 0x14

.field static final blacklist TRANSACTION_loadBoundProfilePackage:I = 0x12

.field static final blacklist TRANSACTION_prepareDownload:I = 0x11

.field static final blacklist TRANSACTION_removeNotificationFromList:I = 0x17

.field static final blacklist TRANSACTION_resetMemory:I = 0x8

.field static final blacklist TRANSACTION_retrieveNotification:I = 0x16

.field static final blacklist TRANSACTION_retrieveNotificationList:I = 0x15

.field static final blacklist TRANSACTION_setDefaultSmdpAddress:I = 0xb

.field static final blacklist TRANSACTION_setNickname:I = 0x6

.field static final blacklist TRANSACTION_switchToProfile:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 96
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 97
    const-string v0, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IEuiccCardController;
    .registers 3

    .line 105
    if-nez p0, :cond_4

    .line 106
    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_4
    const-string v0, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/euicc/IEuiccCardController;

    if-eqz v1, :cond_13

    .line 110
    check-cast v0, Lcom/android/internal/telephony/euicc/IEuiccCardController;

    return-object v0

    .line 112
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 121
    packed-switch p0, :pswitch_data_4a

    .line 217
    const/4 p0, 0x0

    return-object p0

    .line 213
    :pswitch_5
    const-string p0, "removeNotificationFromList"

    return-object p0

    .line 209
    :pswitch_8
    const-string p0, "retrieveNotification"

    return-object p0

    .line 205
    :pswitch_b
    const-string p0, "retrieveNotificationList"

    return-object p0

    .line 201
    :pswitch_e
    const-string p0, "listNotifications"

    return-object p0

    .line 197
    :pswitch_11
    const-string p0, "cancelSession"

    return-object p0

    .line 193
    :pswitch_14
    const-string p0, "loadBoundProfilePackage"

    return-object p0

    .line 189
    :pswitch_17
    const-string p0, "prepareDownload"

    return-object p0

    .line 185
    :pswitch_1a
    const-string p0, "authenticateServer"

    return-object p0

    .line 181
    :pswitch_1d
    const-string p0, "getEuiccInfo2"

    return-object p0

    .line 177
    :pswitch_20
    const-string p0, "getEuiccInfo1"

    return-object p0

    .line 173
    :pswitch_23
    const-string p0, "getEuiccChallenge"

    return-object p0

    .line 169
    :pswitch_26
    const-string p0, "getRulesAuthTable"

    return-object p0

    .line 165
    :pswitch_29
    const-string p0, "setDefaultSmdpAddress"

    return-object p0

    .line 161
    :pswitch_2c
    const-string p0, "getSmdsAddress"

    return-object p0

    .line 157
    :pswitch_2f
    const-string p0, "getDefaultSmdpAddress"

    return-object p0

    .line 153
    :pswitch_32
    const-string p0, "resetMemory"

    return-object p0

    .line 149
    :pswitch_35
    const-string p0, "deleteProfile"

    return-object p0

    .line 145
    :pswitch_38
    const-string p0, "setNickname"

    return-object p0

    .line 141
    :pswitch_3b
    const-string p0, "switchToProfile"

    return-object p0

    .line 137
    :pswitch_3e
    const-string p0, "disableProfile"

    return-object p0

    .line 133
    :pswitch_41
    const-string p0, "getEnabledProfile"

    return-object p0

    .line 129
    :pswitch_44
    const-string p0, "getProfile"

    return-object p0

    .line 125
    :pswitch_47
    const-string p0, "getAllProfiles"

    return-object p0

    :pswitch_data_4a
    .packed-switch 0x1
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

    .line 116
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 969
    const/16 v0, 0x16

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 224
    invoke-static {p1}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 228
    nop

    .line 229
    const-string v2, "com.android.internal.telephony.euicc.IEuiccCardController"

    const/4 v9, 0x1

    if-lt p1, v9, :cond_e

    const v3, 0xffffff

    if-gt p1, v3, :cond_e

    .line 230
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 233
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    return v9

    .line 236
    :cond_17
    packed-switch p1, :pswitch_data_2ba

    .line 572
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 559
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;

    move-result-object v5

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->removeNotificationFromList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;)V

    .line 568
    goto/16 :goto_2b8

    .line 545
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;

    move-result-object v5

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->retrieveNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;)V

    .line 554
    goto/16 :goto_2b8

    .line 531
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;

    move-result-object v5

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 539
    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->retrieveNotificationList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;)V

    .line 540
    goto/16 :goto_2b8

    .line 517
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/euicc/IListNotificationsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IListNotificationsCallback;

    move-result-object v5

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->listNotifications(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IListNotificationsCallback;)V

    .line 526
    goto/16 :goto_2b8

    .line 501
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/euicc/ICancelSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/ICancelSessionCallback;

    move-result-object v5

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->cancelSession(Ljava/lang/String;Ljava/lang/String;[BILcom/android/internal/telephony/euicc/ICancelSessionCallback;)V

    .line 512
    goto/16 :goto_2b8

    .line 487
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;

    move-result-object v4

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->loadBoundProfilePackage(Ljava/lang/String;Ljava/lang/String;[BLcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;)V

    .line 496
    goto/16 :goto_2b8

    .line 467
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback;

    move-result-object v7

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->prepareDownload(Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IPrepareDownloadCallback;)V

    .line 482
    goto/16 :goto_2b8

    .line 445
    :pswitch_f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;

    move-result-object v8

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->authenticateServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IAuthenticateServerCallback;)V

    .line 462
    goto/16 :goto_2b8

    .line 433
    :pswitch_122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;

    move-result-object v3

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 439
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getEuiccInfo2(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;)V

    .line 440
    goto/16 :goto_2b8

    .line 421
    :pswitch_13a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;

    move-result-object v3

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getEuiccInfo1(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;)V

    .line 428
    goto/16 :goto_2b8

    .line 409
    :pswitch_152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;

    move-result-object v3

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getEuiccChallenge(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;)V

    .line 416
    goto/16 :goto_2b8

    .line 397
    :pswitch_16a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;

    move-result-object v3

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getRulesAuthTable(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;)V

    .line 404
    goto/16 :goto_2b8

    .line 383
    :pswitch_182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;

    move-result-object v4

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->setDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;)V

    .line 392
    goto/16 :goto_2b8

    .line 371
    :pswitch_19e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;

    move-result-object v3

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getSmdsAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;)V

    .line 378
    goto/16 :goto_2b8

    .line 359
    :pswitch_1b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;

    move-result-object v3

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;)V

    .line 366
    goto/16 :goto_2b8

    .line 345
    :pswitch_1ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/IResetMemoryCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IResetMemoryCallback;

    move-result-object v4

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->resetMemory(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IResetMemoryCallback;)V

    .line 354
    goto/16 :goto_2b8

    .line 331
    :pswitch_1ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/IDeleteProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;

    move-result-object v4

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->deleteProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;)V

    .line 340
    goto/16 :goto_2b8

    .line 315
    :pswitch_206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/euicc/ISetNicknameCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/ISetNicknameCallback;

    move-result-object v5

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->setNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetNicknameCallback;)V

    .line 326
    goto/16 :goto_2b8

    .line 297
    :pswitch_227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;

    move-result-object v6

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->switchToProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/ISwitchToProfileCallback;)V

    .line 310
    goto :goto_2b8

    .line 281
    :pswitch_24b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/IDisableProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IDisableProfileCallback;

    move-result-object v5

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->disableProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/IDisableProfileCallback;)V

    .line 292
    goto :goto_2b8

    .line 267
    :pswitch_26b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/IGetProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetProfileCallback;

    move-result-object v4

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getEnabledProfile(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IGetProfileCallback;)V

    .line 276
    goto :goto_2b8

    .line 253
    :pswitch_286
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/IGetProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetProfileCallback;

    move-result-object v4

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetProfileCallback;)V

    .line 262
    goto :goto_2b8

    .line 241
    :pswitch_2a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;

    move-result-object v3

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getAllProfiles(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;)V

    .line 248
    nop

    .line 575
    :goto_2b8
    return v9

    nop

    :pswitch_data_2ba
    .packed-switch 0x1
        :pswitch_2a1
        :pswitch_286
        :pswitch_26b
        :pswitch_24b
        :pswitch_227
        :pswitch_206
        :pswitch_1ea
        :pswitch_1ce
        :pswitch_1b6
        :pswitch_19e
        :pswitch_182
        :pswitch_16a
        :pswitch_152
        :pswitch_13a
        :pswitch_122
        :pswitch_f5
        :pswitch_cc
        :pswitch_b0
        :pswitch_8f
        :pswitch_73
        :pswitch_57
        :pswitch_3b
        :pswitch_1f
    .end packed-switch
.end method
