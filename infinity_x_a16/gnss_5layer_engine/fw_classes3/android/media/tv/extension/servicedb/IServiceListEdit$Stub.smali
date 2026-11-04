.class public abstract Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;
.super Landroid/os/Binder;
.source "IServiceListEdit.java"

# interfaces
.implements Landroid/media/tv/extension/servicedb/IServiceListEdit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/servicedb/IServiceListEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addPredefinedChannelList:I = 0x15

.field static final blacklist TRANSACTION_addPredefinedSatInfo:I = 0x16

.field static final blacklist TRANSACTION_addPredefinedServiceListInfo:I = 0x14

.field static final blacklist TRANSACTION_close:I = 0x2

.field static final blacklist TRANSACTION_commit:I = 0x3

.field static final blacklist TRANSACTION_getAllInstalledServiceListInfo:I = 0x19

.field static final blacklist TRANSACTION_getInstalledServiceListInfo:I = 0x18

.field static final blacklist TRANSACTION_getNetworkInfoList:I = 0x10

.field static final blacklist TRANSACTION_getSatelliteInfoList:I = 0x11

.field static final blacklist TRANSACTION_getServiceInfoFromDatabase:I = 0x5

.field static final blacklist TRANSACTION_getServiceInfoIdsFromDatabase:I = 0x7

.field static final blacklist TRANSACTION_getServiceInfoListFromDatabase:I = 0x6

.field static final blacklist TRANSACTION_getServiceListChannelIds:I = 0xc

.field static final blacklist TRANSACTION_getServiceListInfoByChannelId:I = 0xd

.field static final blacklist TRANSACTION_getServiceLogoUri:I = 0x17

.field static final blacklist TRANSACTION_getTransportStreamInfoList:I = 0xe

.field static final blacklist TRANSACTION_getTransportStreamInfoListForce:I = 0xf

.field static final blacklist TRANSACTION_open:I = 0x1

.field static final blacklist TRANSACTION_putRecordIdList:I = 0x13

.field static final blacklist TRANSACTION_removeServiceInfoByListFromDatabase:I = 0xb

.field static final blacklist TRANSACTION_removeServiceInfoFromDatabase:I = 0xa

.field static final blacklist TRANSACTION_toRecordInfoByType:I = 0x12

.field static final blacklist TRANSACTION_updateServiceInfoByListFromDatabase:I = 0x9

.field static final blacklist TRANSACTION_updateServiceInfoFromDatabase:I = 0x8

.field static final blacklist TRANSACTION_userEditCommit:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 157
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 158
    const-string v0, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/servicedb/IServiceListEdit;
    .registers 3

    .line 166
    if-nez p0, :cond_4

    .line 167
    const/4 p0, 0x0

    return-object p0

    .line 169
    :cond_4
    const-string v0, "android.media.tv.extension.servicedb.IServiceListEdit"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/servicedb/IServiceListEdit;

    if-eqz v1, :cond_13

    .line 171
    check-cast v0, Landroid/media/tv/extension/servicedb/IServiceListEdit;

    return-object v0

    .line 173
    :cond_13
    new-instance v0, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 182
    packed-switch p0, :pswitch_data_58

    .line 286
    const/4 p0, 0x0

    return-object p0

    .line 282
    :pswitch_5
    const-string p0, "getAllInstalledServiceListInfo"

    return-object p0

    .line 278
    :pswitch_8
    const-string p0, "getInstalledServiceListInfo"

    return-object p0

    .line 274
    :pswitch_b
    const-string p0, "getServiceLogoUri"

    return-object p0

    .line 270
    :pswitch_e
    const-string p0, "addPredefinedSatInfo"

    return-object p0

    .line 266
    :pswitch_11
    const-string p0, "addPredefinedChannelList"

    return-object p0

    .line 262
    :pswitch_14
    const-string p0, "addPredefinedServiceListInfo"

    return-object p0

    .line 258
    :pswitch_17
    const-string/jumbo p0, "putRecordIdList"

    return-object p0

    .line 254
    :pswitch_1b
    const-string/jumbo p0, "toRecordInfoByType"

    return-object p0

    .line 250
    :pswitch_1f
    const-string p0, "getSatelliteInfoList"

    return-object p0

    .line 246
    :pswitch_22
    const-string p0, "getNetworkInfoList"

    return-object p0

    .line 242
    :pswitch_25
    const-string p0, "getTransportStreamInfoListForce"

    return-object p0

    .line 238
    :pswitch_28
    const-string p0, "getTransportStreamInfoList"

    return-object p0

    .line 234
    :pswitch_2b
    const-string p0, "getServiceListInfoByChannelId"

    return-object p0

    .line 230
    :pswitch_2e
    const-string p0, "getServiceListChannelIds"

    return-object p0

    .line 226
    :pswitch_31
    const-string/jumbo p0, "removeServiceInfoByListFromDatabase"

    return-object p0

    .line 222
    :pswitch_35
    const-string/jumbo p0, "removeServiceInfoFromDatabase"

    return-object p0

    .line 218
    :pswitch_39
    const-string/jumbo p0, "updateServiceInfoByListFromDatabase"

    return-object p0

    .line 214
    :pswitch_3d
    const-string/jumbo p0, "updateServiceInfoFromDatabase"

    return-object p0

    .line 210
    :pswitch_41
    const-string p0, "getServiceInfoIdsFromDatabase"

    return-object p0

    .line 206
    :pswitch_44
    const-string p0, "getServiceInfoListFromDatabase"

    return-object p0

    .line 202
    :pswitch_47
    const-string p0, "getServiceInfoFromDatabase"

    return-object p0

    .line 198
    :pswitch_4a
    const-string/jumbo p0, "userEditCommit"

    return-object p0

    .line 194
    :pswitch_4e
    const-string p0, "commit"

    return-object p0

    .line 190
    :pswitch_51
    const-string p0, "close"

    return-object p0

    .line 186
    :pswitch_54
    const-string/jumbo p0, "open"

    return-object p0

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
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

    .line 177
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1116
    const/16 v0, 0x18

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 293
    invoke-static {p1}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    nop

    .line 298
    const-string v0, "android.media.tv.extension.servicedb.IServiceListEdit"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 299
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 302
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    return v1

    .line 305
    :cond_17
    packed-switch p1, :pswitch_data_244

    .line 576
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 569
    :pswitch_20
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getAllInstalledServiceListInfo()[Landroid/os/Bundle;

    move-result-object p1

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 572
    goto/16 :goto_242

    .line 560
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getInstalledServiceListInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 565
    goto/16 :goto_242

    .line 550
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getServiceLogoUri(I)Ljava/lang/String;

    move-result-object p1

    .line 553
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 555
    goto/16 :goto_242

    .line 538
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 540
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->addPredefinedSatInfo(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    goto/16 :goto_242

    .line 526
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 528
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/os/Bundle;

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->addPredefinedChannelList(Ljava/lang/String;[Landroid/os/Bundle;)I

    move-result p1

    .line 531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    goto/16 :goto_242

    .line 508
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->addPredefinedServiceListInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 521
    goto/16 :goto_242

    .line 494
    :pswitch_ac
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 496
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->putRecordIdList(Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result p1

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    goto/16 :goto_242

    .line 482
    :pswitch_cc
    move-object v2, p0

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->toRecordInfoByType(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 489
    goto/16 :goto_242

    .line 470
    :pswitch_e8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getSatelliteInfoList(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 477
    goto/16 :goto_242

    .line 458
    :pswitch_100
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getNetworkInfoList(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 465
    goto/16 :goto_242

    .line 446
    :pswitch_118
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getTransportStreamInfoListForce(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 453
    goto/16 :goto_242

    .line 434
    :pswitch_130
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getTransportStreamInfoList(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 441
    goto/16 :goto_242

    .line 422
    :pswitch_148
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getServiceListInfoByChannelId(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 429
    goto/16 :goto_242

    .line 414
    :pswitch_160
    move-object v2, p0

    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getServiceListChannelIds()[Ljava/lang/String;

    move-result-object p1

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 417
    goto/16 :goto_242

    .line 405
    :pswitch_16d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->removeServiceInfoByListFromDatabase([Ljava/lang/String;)I

    move-result p1

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    goto/16 :goto_242

    .line 395
    :pswitch_181
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->removeServiceInfoFromDatabase(Ljava/lang/String;)I

    move-result p1

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    goto/16 :goto_242

    .line 385
    :pswitch_195
    move-object v2, p0

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Bundle;

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->updateServiceInfoByListFromDatabase([Landroid/os/Bundle;)I

    move-result p1

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    goto/16 :goto_242

    .line 375
    :pswitch_1ad
    move-object v2, p0

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->updateServiceInfoFromDatabase(Landroid/os/Bundle;)I

    move-result p1

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    goto/16 :goto_242

    .line 365
    :pswitch_1c5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getServiceInfoIdsFromDatabase(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 370
    goto/16 :goto_242

    .line 353
    :pswitch_1d9
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getServiceInfoListFromDatabase(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 360
    goto :goto_242

    .line 341
    :pswitch_1f0
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->getServiceInfoFromDatabase(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 348
    goto :goto_242

    .line 333
    :pswitch_207
    move-object v2, p0

    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->userEditCommit()I

    move-result p1

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    goto :goto_242

    .line 326
    :pswitch_213
    move-object v2, p0

    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->commit()I

    move-result p1

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    goto :goto_242

    .line 319
    :pswitch_21f
    move-object v2, p0

    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->close()I

    move-result p1

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    goto :goto_242

    .line 310
    :pswitch_22b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/extension/servicedb/IServiceListEditListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/servicedb/IServiceListEditListener;

    move-result-object p1

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/servicedb/IServiceListEdit$Stub;->open(Landroid/media/tv/extension/servicedb/IServiceListEditListener;)I

    move-result p1

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    nop

    .line 579
    :goto_242
    return v1

    nop

    :pswitch_data_244
    .packed-switch 0x1
        :pswitch_22b
        :pswitch_21f
        :pswitch_213
        :pswitch_207
        :pswitch_1f0
        :pswitch_1d9
        :pswitch_1c5
        :pswitch_1ad
        :pswitch_195
        :pswitch_181
        :pswitch_16d
        :pswitch_160
        :pswitch_148
        :pswitch_130
        :pswitch_118
        :pswitch_100
        :pswitch_e8
        :pswitch_cc
        :pswitch_ac
        :pswitch_88
        :pswitch_6d
        :pswitch_52
        :pswitch_3f
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method
