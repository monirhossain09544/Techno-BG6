.class public abstract Lcom/android/internal/telephony/euicc/IEuiccController$Stub;
.super Landroid/os/Binder;
.source "IEuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/IEuiccController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/IEuiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IEuiccController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_continueOperation:I = 0x1

.field static final blacklist TRANSACTION_deleteSubscription:I = 0x8

.field static final blacklist TRANSACTION_downloadSubscription:I = 0x6

.field static final blacklist TRANSACTION_eraseSubscriptions:I = 0xc

.field static final blacklist TRANSACTION_eraseSubscriptionsWithOptions:I = 0xd

.field static final blacklist TRANSACTION_getAvailableMemoryInBytes:I = 0x17

.field static final blacklist TRANSACTION_getDefaultDownloadableSubscriptionList:I = 0x3

.field static final blacklist TRANSACTION_getDownloadableSubscriptionMetadata:I = 0x2

.field static final blacklist TRANSACTION_getEid:I = 0x4

.field static final blacklist TRANSACTION_getEuiccInfo:I = 0x7

.field static final blacklist TRANSACTION_getOtaStatus:I = 0x5

.field static final blacklist TRANSACTION_getSupportedCountries:I = 0x10

.field static final blacklist TRANSACTION_hasCarrierPrivilegesForPackageOnAnyPhone:I = 0x13

.field static final blacklist TRANSACTION_isCompatChangeEnabled:I = 0x14

.field static final blacklist TRANSACTION_isPsimConversionSupported:I = 0x16

.field static final blacklist TRANSACTION_isSimPortAvailable:I = 0x12

.field static final blacklist TRANSACTION_isSupportedCountry:I = 0x11

.field static final blacklist TRANSACTION_retainSubscriptionsForFactoryReset:I = 0xe

.field static final blacklist TRANSACTION_setPsimConversionSupportedCarriers:I = 0x15

.field static final blacklist TRANSACTION_setSupportedCountries:I = 0xf

.field static final blacklist TRANSACTION_switchToSubscription:I = 0x9

.field static final blacklist TRANSACTION_switchToSubscriptionWithPort:I = 0xa

.field static final blacklist TRANSACTION_updateSubscriptionNickname:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 106
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 107
    const-string v0, "com.android.internal.telephony.euicc.IEuiccController"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IEuiccController;
    .registers 3

    .line 115
    if-nez p0, :cond_4

    .line 116
    const/4 p0, 0x0

    return-object p0

    .line 118
    :cond_4
    const-string v0, "com.android.internal.telephony.euicc.IEuiccController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/euicc/IEuiccController;

    if-eqz v1, :cond_13

    .line 120
    check-cast v0, Lcom/android/internal/telephony/euicc/IEuiccController;

    return-object v0

    .line 122
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/euicc/IEuiccController$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 131
    packed-switch p0, :pswitch_data_4a

    .line 227
    const/4 p0, 0x0

    return-object p0

    .line 223
    :pswitch_5
    const-string p0, "getAvailableMemoryInBytes"

    return-object p0

    .line 219
    :pswitch_8
    const-string p0, "isPsimConversionSupported"

    return-object p0

    .line 215
    :pswitch_b
    const-string p0, "setPsimConversionSupportedCarriers"

    return-object p0

    .line 211
    :pswitch_e
    const-string p0, "isCompatChangeEnabled"

    return-object p0

    .line 207
    :pswitch_11
    const-string p0, "hasCarrierPrivilegesForPackageOnAnyPhone"

    return-object p0

    .line 203
    :pswitch_14
    const-string p0, "isSimPortAvailable"

    return-object p0

    .line 199
    :pswitch_17
    const-string p0, "isSupportedCountry"

    return-object p0

    .line 195
    :pswitch_1a
    const-string p0, "getSupportedCountries"

    return-object p0

    .line 191
    :pswitch_1d
    const-string p0, "setSupportedCountries"

    return-object p0

    .line 187
    :pswitch_20
    const-string p0, "retainSubscriptionsForFactoryReset"

    return-object p0

    .line 183
    :pswitch_23
    const-string p0, "eraseSubscriptionsWithOptions"

    return-object p0

    .line 179
    :pswitch_26
    const-string p0, "eraseSubscriptions"

    return-object p0

    .line 175
    :pswitch_29
    const-string p0, "updateSubscriptionNickname"

    return-object p0

    .line 171
    :pswitch_2c
    const-string p0, "switchToSubscriptionWithPort"

    return-object p0

    .line 167
    :pswitch_2f
    const-string p0, "switchToSubscription"

    return-object p0

    .line 163
    :pswitch_32
    const-string p0, "deleteSubscription"

    return-object p0

    .line 159
    :pswitch_35
    const-string p0, "getEuiccInfo"

    return-object p0

    .line 155
    :pswitch_38
    const-string p0, "downloadSubscription"

    return-object p0

    .line 151
    :pswitch_3b
    const-string p0, "getOtaStatus"

    return-object p0

    .line 147
    :pswitch_3e
    const-string p0, "getEid"

    return-object p0

    .line 143
    :pswitch_41
    const-string p0, "getDefaultDownloadableSubscriptionList"

    return-object p0

    .line 139
    :pswitch_44
    const-string p0, "getDownloadableSubscriptionMetadata"

    return-object p0

    .line 135
    :pswitch_47
    const-string p0, "continueOperation"

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

    .line 126
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 953
    const/16 v0, 0x16

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 234
    invoke-static {p1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 238
    nop

    .line 239
    const-string v4, "com.android.internal.telephony.euicc.IEuiccController"

    const/4 v7, 0x1

    if-lt p1, v7, :cond_e

    const v5, 0xffffff

    if-gt p1, v5, :cond_e

    .line 240
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    :cond_e
    const v5, 0x5f4e5446

    if-ne p1, v5, :cond_17

    .line 243
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    return v7

    .line 246
    :cond_17
    packed-switch p1, :pswitch_data_254

    .line 528
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 517
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getAvailableMemoryInBytes(ILjava/lang/String;)J

    move-result-wide v0

    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 524
    goto/16 :goto_253

    .line 507
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->isPsimConversionSupported(I)Z

    move-result v0

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 512
    goto/16 :goto_253

    .line 498
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->setPsimConversionSupportedCarriers([I)V

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    goto/16 :goto_253

    .line 486
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v1, v4, v5}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->isCompatChangeEnabled(Ljava/lang/String;J)Z

    move-result v0

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 493
    goto/16 :goto_253

    .line 476
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->hasCarrierPrivilegesForPackageOnAnyPhone(Ljava/lang/String;)Z

    move-result v0

    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 481
    goto/16 :goto_253

    .line 462
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {p0, v1, v4, v5}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->isSimPortAvailable(IILjava/lang/String;)Z

    move-result v0

    .line 469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 471
    goto/16 :goto_253

    .line 452
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->isSupportedCountry(Ljava/lang/String;)Z

    move-result v0

    .line 455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 457
    goto/16 :goto_253

    .line 442
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getSupportedCountries(Z)Ljava/util/List;

    move-result-object v0

    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 447
    goto/16 :goto_253

    .line 431
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->setSupportedCountries(ZLjava/util/List;)V

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    goto/16 :goto_253

    .line 421
    :pswitch_d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 423
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->retainSubscriptionsForFactoryReset(ILandroid/app/PendingIntent;)V

    .line 426
    goto/16 :goto_253

    .line 409
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 413
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->eraseSubscriptionsWithOptions(IILandroid/app/PendingIntent;)V

    .line 416
    goto/16 :goto_253

    .line 399
    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 401
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->eraseSubscriptions(ILandroid/app/PendingIntent;)V

    .line 404
    goto/16 :goto_253

    .line 383
    :pswitch_116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 387
    move v4, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 389
    move v5, v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 391
    sget-object v6, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    move-object v0, p0

    move v2, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->updateSubscriptionNickname(IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 394
    goto/16 :goto_253

    .line 367
    :pswitch_13b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 375
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    move v2, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->switchToSubscriptionWithPort(IIILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 378
    goto/16 :goto_253

    .line 353
    :pswitch_15d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 359
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->switchToSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 362
    goto/16 :goto_253

    .line 339
    :pswitch_179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 345
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->deleteSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 348
    goto/16 :goto_253

    .line 329
    :pswitch_195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getEuiccInfo(I)Landroid/telephony/euicc/EuiccInfo;

    move-result-object v0

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 334
    goto/16 :goto_253

    .line 311
    :pswitch_1a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 313
    sget-object v3, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/euicc/DownloadableSubscription;

    .line 315
    move-object v4, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 317
    move-object v5, v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 319
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 321
    sget-object v8, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    move-object v0, p0

    move-object v2, v5

    move-object v5, v6

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    .line 324
    goto/16 :goto_253

    .line 301
    :pswitch_1da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getOtaStatus(I)I

    move-result v0

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    goto :goto_253

    .line 289
    :pswitch_1ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getEid(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    goto :goto_253

    .line 277
    :pswitch_202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 281
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getDefaultDownloadableSubscriptionList(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 284
    goto :goto_253

    .line 263
    :pswitch_219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 265
    sget-object v3, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/euicc/DownloadableSubscription;

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 269
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 272
    goto :goto_253

    .line 251
    :pswitch_238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 253
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 255
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->continueOperation(ILandroid/content/Intent;Landroid/os/Bundle;)V

    .line 258
    nop

    .line 531
    :goto_253
    return v7

    :pswitch_data_254
    .packed-switch 0x1
        :pswitch_238
        :pswitch_219
        :pswitch_202
        :pswitch_1ec
        :pswitch_1da
        :pswitch_1a8
        :pswitch_195
        :pswitch_179
        :pswitch_15d
        :pswitch_13b
        :pswitch_116
        :pswitch_102
        :pswitch_ea
        :pswitch_d6
        :pswitch_c3
        :pswitch_b0
        :pswitch_9d
        :pswitch_82
        :pswitch_6f
        :pswitch_58
        :pswitch_49
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
