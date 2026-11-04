.class public abstract Landroid/media/tv/extension/scan/IScanSession$Stub;
.super Landroid/os/Binder;
.source "IScanSession.java"

# interfaces
.implements Landroid/media/tv/extension/scan/IScanSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/scan/IScanSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/IScanSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelScan:I = 0x3

.field static final blacklist TRANSACTION_clearServiceList:I = 0x6

.field static final blacklist TRANSACTION_getAvailableExtensionInterfaceNames:I = 0x4

.field static final blacklist TRANSACTION_getCountryRegionData:I = 0x11

.field static final blacklist TRANSACTION_getExtensionInterface:I = 0x5

.field static final blacklist TRANSACTION_getPackageData:I = 0xf

.field static final blacklist TRANSACTION_getRegionData:I = 0x13

.field static final blacklist TRANSACTION_getServiceInfo:I = 0x8

.field static final blacklist TRANSACTION_getServiceInfoIdList:I = 0x9

.field static final blacklist TRANSACTION_getServiceInfoList:I = 0xa

.field static final blacklist TRANSACTION_getServiceLists:I = 0xd

.field static final blacklist TRANSACTION_getSessionToken:I = 0x15

.field static final blacklist TRANSACTION_release:I = 0x16

.field static final blacklist TRANSACTION_resetScan:I = 0x2

.field static final blacklist TRANSACTION_setCountryRegion:I = 0x12

.field static final blacklist TRANSACTION_setPackage:I = 0x10

.field static final blacklist TRANSACTION_setRegion:I = 0x14

.field static final blacklist TRANSACTION_setServiceList:I = 0xe

.field static final blacklist TRANSACTION_startScan:I = 0x1

.field static final blacklist TRANSACTION_storeServiceList:I = 0x7

.field static final blacklist TRANSACTION_updateServiceInfo:I = 0xb

.field static final blacklist TRANSACTION_updateServiceInfoByList:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 138
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 139
    const-string v0, "android.media.tv.extension.scan.IScanSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scan/IScanSession;
    .registers 3

    .line 147
    if-nez p0, :cond_4

    .line 148
    const/4 p0, 0x0

    return-object p0

    .line 150
    :cond_4
    const-string v0, "android.media.tv.extension.scan.IScanSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/scan/IScanSession;

    if-eqz v1, :cond_13

    .line 152
    check-cast v0, Landroid/media/tv/extension/scan/IScanSession;

    return-object v0

    .line 154
    :cond_13
    new-instance v0, Landroid/media/tv/extension/scan/IScanSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/scan/IScanSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 163
    packed-switch p0, :pswitch_data_52

    .line 255
    const/4 p0, 0x0

    return-object p0

    .line 251
    :pswitch_5
    const-string/jumbo p0, "release"

    return-object p0

    .line 247
    :pswitch_9
    const-string p0, "getSessionToken"

    return-object p0

    .line 243
    :pswitch_c
    const-string/jumbo p0, "setRegion"

    return-object p0

    .line 239
    :pswitch_10
    const-string p0, "getRegionData"

    return-object p0

    .line 235
    :pswitch_13
    const-string/jumbo p0, "setCountryRegion"

    return-object p0

    .line 231
    :pswitch_17
    const-string p0, "getCountryRegionData"

    return-object p0

    .line 227
    :pswitch_1a
    const-string/jumbo p0, "setPackage"

    return-object p0

    .line 223
    :pswitch_1e
    const-string p0, "getPackageData"

    return-object p0

    .line 219
    :pswitch_21
    const-string/jumbo p0, "setServiceList"

    return-object p0

    .line 215
    :pswitch_25
    const-string p0, "getServiceLists"

    return-object p0

    .line 211
    :pswitch_28
    const-string/jumbo p0, "updateServiceInfoByList"

    return-object p0

    .line 207
    :pswitch_2c
    const-string/jumbo p0, "updateServiceInfo"

    return-object p0

    .line 203
    :pswitch_30
    const-string p0, "getServiceInfoList"

    return-object p0

    .line 199
    :pswitch_33
    const-string p0, "getServiceInfoIdList"

    return-object p0

    .line 195
    :pswitch_36
    const-string p0, "getServiceInfo"

    return-object p0

    .line 191
    :pswitch_39
    const-string/jumbo p0, "storeServiceList"

    return-object p0

    .line 187
    :pswitch_3d
    const-string p0, "clearServiceList"

    return-object p0

    .line 183
    :pswitch_40
    const-string p0, "getExtensionInterface"

    return-object p0

    .line 179
    :pswitch_43
    const-string p0, "getAvailableExtensionInterfaceNames"

    return-object p0

    .line 175
    :pswitch_46
    const-string p0, "cancelScan"

    return-object p0

    .line 171
    :pswitch_49
    const-string/jumbo p0, "resetScan"

    return-object p0

    .line 167
    :pswitch_4d
    const-string/jumbo p0, "startScan"

    return-object p0

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_25
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 158
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 943
    const/16 v0, 0x15

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 262
    invoke-static {p1}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 266
    nop

    .line 267
    const-string v0, "android.media.tv.extension.scan.IScanSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 268
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 271
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    return v1

    .line 274
    :cond_17
    packed-switch p1, :pswitch_data_1a6

    .line 481
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 474
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->release()I

    move-result p1

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    goto/16 :goto_1a4

    .line 467
    :pswitch_2b
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getSessionToken()Ljava/lang/String;

    move-result-object p1

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    goto/16 :goto_1a4

    .line 458
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/scan/IScanSession$Stub;->setRegion(Ljava/lang/String;)I

    move-result p1

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    goto/16 :goto_1a4

    .line 450
    :pswitch_4a
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getRegionData()Landroid/os/Bundle;

    move-result-object p1

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 453
    goto/16 :goto_1a4

    .line 441
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/scan/IScanSession$Stub;->setCountryRegion(Ljava/lang/String;)I

    move-result p1

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    goto/16 :goto_1a4

    .line 433
    :pswitch_69
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getCountryRegionData()Landroid/os/Bundle;

    move-result-object p1

    .line 434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 436
    goto/16 :goto_1a4

    .line 424
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/scan/IScanSession$Stub;->setPackage(Ljava/lang/String;)I

    move-result p1

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    goto/16 :goto_1a4

    .line 416
    :pswitch_88
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getPackageData()Landroid/os/Bundle;

    move-result-object p1

    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 419
    goto/16 :goto_1a4

    .line 407
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/scan/IScanSession$Stub;->setServiceList(I)I

    move-result p1

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    goto/16 :goto_1a4

    .line 399
    :pswitch_a7
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getServiceLists()Landroid/os/Bundle;

    move-result-object p1

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 402
    goto/16 :goto_1a4

    .line 390
    :pswitch_b3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Bundle;

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/scan/IScanSession$Stub;->updateServiceInfoByList([Landroid/os/Bundle;)I

    move-result p1

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    goto/16 :goto_1a4

    .line 380
    :pswitch_ca
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/scan/IScanSession$Stub;->updateServiceInfo(Landroid/os/Bundle;)I

    move-result p1

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    goto/16 :goto_1a4

    .line 368
    :pswitch_e1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getServiceInfoList(Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 375
    goto/16 :goto_1a4

    .line 360
    :pswitch_fc
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getServiceInfoIdList()[Ljava/lang/String;

    move-result-object p1

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 363
    goto/16 :goto_1a4

    .line 349
    :pswitch_108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getServiceInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 356
    goto/16 :goto_1a4

    .line 341
    :pswitch_11f
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->storeServiceList()I

    move-result p1

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    goto/16 :goto_1a4

    .line 332
    :pswitch_12b
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/scan/IScanSession$Stub;->clearServiceList(Landroid/os/Bundle;)I

    move-result p1

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    goto :goto_1a4

    .line 322
    :pswitch_141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getExtensionInterface(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 327
    goto :goto_1a4

    .line 314
    :pswitch_153
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->getAvailableExtensionInterfaceNames()[Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 317
    goto :goto_1a4

    .line 307
    :pswitch_15e
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->cancelScan()I

    move-result p1

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    goto :goto_1a4

    .line 300
    :pswitch_169
    invoke-virtual {p0}, Landroid/media/tv/extension/scan/IScanSession$Stub;->resetScan()I

    move-result p1

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    goto :goto_1a4

    .line 279
    :pswitch_174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 291
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Landroid/os/Bundle;

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/media/tv/extension/scan/IScanSession$Stub;->startScan(ILjava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    nop

    .line 484
    :goto_1a4
    return v1

    nop

    :pswitch_data_1a6
    .packed-switch 0x1
        :pswitch_174
        :pswitch_169
        :pswitch_15e
        :pswitch_153
        :pswitch_141
        :pswitch_12b
        :pswitch_11f
        :pswitch_108
        :pswitch_fc
        :pswitch_e1
        :pswitch_ca
        :pswitch_b3
        :pswitch_a7
        :pswitch_94
        :pswitch_88
        :pswitch_75
        :pswitch_69
        :pswitch_56
        :pswitch_4a
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
