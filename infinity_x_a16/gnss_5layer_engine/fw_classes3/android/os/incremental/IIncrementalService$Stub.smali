.class public abstract Landroid/os/incremental/IIncrementalService$Stub;
.super Landroid/os/Binder;
.source "IIncrementalService.java"

# interfaces
.implements Landroid/os/incremental/IIncrementalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/IIncrementalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/incremental/IIncrementalService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_configureNativeBinaries:I = 0x15

.field static final blacklist TRANSACTION_createLinkedStorage:I = 0x3

.field static final blacklist TRANSACTION_createStorage:I = 0x2

.field static final blacklist TRANSACTION_deleteBindMount:I = 0x7

.field static final blacklist TRANSACTION_deleteStorage:I = 0x13

.field static final blacklist TRANSACTION_disallowReadLogs:I = 0x14

.field static final blacklist TRANSACTION_getLoadingProgress:I = 0x10

.field static final blacklist TRANSACTION_getMetadataById:I = 0x12

.field static final blacklist TRANSACTION_getMetadataByPath:I = 0x11

.field static final blacklist TRANSACTION_getMetrics:I = 0x19

.field static final blacklist TRANSACTION_isFileFullyLoaded:I = 0xe

.field static final blacklist TRANSACTION_isFullyLoaded:I = 0xf

.field static final blacklist TRANSACTION_makeBindMount:I = 0x6

.field static final blacklist TRANSACTION_makeDirectories:I = 0x9

.field static final blacklist TRANSACTION_makeDirectory:I = 0x8

.field static final blacklist TRANSACTION_makeFile:I = 0xa

.field static final blacklist TRANSACTION_makeFileFromRange:I = 0xb

.field static final blacklist TRANSACTION_makeLink:I = 0xc

.field static final blacklist TRANSACTION_onInstallationComplete:I = 0x5

.field static final blacklist TRANSACTION_openStorage:I = 0x1

.field static final blacklist TRANSACTION_registerLoadingProgressListener:I = 0x17

.field static final blacklist TRANSACTION_startLoading:I = 0x4

.field static final blacklist TRANSACTION_unlink:I = 0xd

.field static final blacklist TRANSACTION_unregisterLoadingProgressListener:I = 0x18

.field static final blacklist TRANSACTION_waitForNativeBinariesExtraction:I = 0x16


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 169
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 170
    const-string v0, "android.os.incremental.IIncrementalService"

    invoke-virtual {p0, p0, v0}, Landroid/os/incremental/IIncrementalService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IIncrementalService;
    .registers 3

    .line 178
    if-nez p0, :cond_4

    .line 179
    const/4 p0, 0x0

    return-object p0

    .line 181
    :cond_4
    const-string v0, "android.os.incremental.IIncrementalService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/incremental/IIncrementalService;

    if-eqz v1, :cond_13

    .line 183
    check-cast v0, Landroid/os/incremental/IIncrementalService;

    return-object v0

    .line 185
    :cond_13
    new-instance v0, Landroid/os/incremental/IIncrementalService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 194
    packed-switch p0, :pswitch_data_58

    .line 298
    const/4 p0, 0x0

    return-object p0

    .line 294
    :pswitch_5
    const-string p0, "getMetrics"

    return-object p0

    .line 290
    :pswitch_8
    const-string/jumbo p0, "unregisterLoadingProgressListener"

    return-object p0

    .line 286
    :pswitch_c
    const-string/jumbo p0, "registerLoadingProgressListener"

    return-object p0

    .line 282
    :pswitch_10
    const-string/jumbo p0, "waitForNativeBinariesExtraction"

    return-object p0

    .line 278
    :pswitch_14
    const-string p0, "configureNativeBinaries"

    return-object p0

    .line 274
    :pswitch_17
    const-string p0, "disallowReadLogs"

    return-object p0

    .line 270
    :pswitch_1a
    const-string p0, "deleteStorage"

    return-object p0

    .line 266
    :pswitch_1d
    const-string p0, "getMetadataById"

    return-object p0

    .line 262
    :pswitch_20
    const-string p0, "getMetadataByPath"

    return-object p0

    .line 258
    :pswitch_23
    const-string p0, "getLoadingProgress"

    return-object p0

    .line 254
    :pswitch_26
    const-string p0, "isFullyLoaded"

    return-object p0

    .line 250
    :pswitch_29
    const-string p0, "isFileFullyLoaded"

    return-object p0

    .line 246
    :pswitch_2c
    const-string/jumbo p0, "unlink"

    return-object p0

    .line 242
    :pswitch_30
    const-string p0, "makeLink"

    return-object p0

    .line 238
    :pswitch_33
    const-string p0, "makeFileFromRange"

    return-object p0

    .line 234
    :pswitch_36
    const-string p0, "makeFile"

    return-object p0

    .line 230
    :pswitch_39
    const-string p0, "makeDirectories"

    return-object p0

    .line 226
    :pswitch_3c
    const-string p0, "makeDirectory"

    return-object p0

    .line 222
    :pswitch_3f
    const-string p0, "deleteBindMount"

    return-object p0

    .line 218
    :pswitch_42
    const-string p0, "makeBindMount"

    return-object p0

    .line 214
    :pswitch_45
    const-string/jumbo p0, "onInstallationComplete"

    return-object p0

    .line 210
    :pswitch_49
    const-string/jumbo p0, "startLoading"

    return-object p0

    .line 206
    :pswitch_4d
    const-string p0, "createLinkedStorage"

    return-object p0

    .line 202
    :pswitch_50
    const-string p0, "createStorage"

    return-object p0

    .line 198
    :pswitch_53
    const-string/jumbo p0, "openStorage"

    return-object p0

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 189
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1208
    const/16 v0, 0x18

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 305
    invoke-static {p1}, Landroid/os/incremental/IIncrementalService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 309
    nop

    .line 310
    const-string v0, "android.os.incremental.IIncrementalService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 311
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 314
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    return v1

    .line 317
    :cond_17
    packed-switch p1, :pswitch_data_2b2

    .line 638
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 629
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    invoke-virtual {p0, p1}, Landroid/os/incremental/IIncrementalService$Stub;->getMetrics(I)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 634
    goto/16 :goto_2b0

    .line 619
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 620
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 621
    invoke-virtual {p0, p1}, Landroid/os/incremental/IIncrementalService$Stub;->unregisterLoadingProgressListener(I)Z

    move-result p1

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 624
    goto/16 :goto_2b0

    .line 607
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/os/incremental/IStorageLoadingProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IStorageLoadingProgressListener;

    move-result-object p4

    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {p0, p1, p4}, Landroid/os/incremental/IIncrementalService$Stub;->registerLoadingProgressListener(ILandroid/os/incremental/IStorageLoadingProgressListener;)Z

    move-result p1

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 614
    goto/16 :goto_2b0

    .line 597
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {p0, p1}, Landroid/os/incremental/IIncrementalService$Stub;->waitForNativeBinariesExtraction(I)Z

    move-result p1

    .line 600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 602
    goto/16 :goto_2b0

    .line 579
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 587
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/os/incremental/IIncrementalService$Stub;->configureNativeBinaries(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 592
    goto/16 :goto_2b0

    .line 570
    :pswitch_98
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {p0, p1}, Landroid/os/incremental/IIncrementalService$Stub;->disallowReadLogs(I)V

    .line 573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    goto/16 :goto_2b0

    .line 561
    :pswitch_a8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 563
    invoke-virtual {p0, p1}, Landroid/os/incremental/IIncrementalService$Stub;->deleteStorage(I)V

    .line 564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    goto/16 :goto_2b0

    .line 549
    :pswitch_b8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {p0, p1, p4}, Landroid/os/incremental/IIncrementalService$Stub;->getMetadataById(I[B)[B

    move-result-object p1

    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 556
    goto/16 :goto_2b0

    .line 537
    :pswitch_d0
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 541
    invoke-virtual {p0, p1, p4}, Landroid/os/incremental/IIncrementalService$Stub;->getMetadataByPath(ILjava/lang/String;)[B

    move-result-object p1

    .line 542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 544
    goto/16 :goto_2b0

    .line 527
    :pswitch_e8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {p0, p1}, Landroid/os/incremental/IIncrementalService$Stub;->getLoadingProgress(I)F

    move-result p1

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 532
    goto/16 :goto_2b0

    .line 517
    :pswitch_fc
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {p0, p1}, Landroid/os/incremental/IIncrementalService$Stub;->isFullyLoaded(I)I

    move-result p1

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    goto/16 :goto_2b0

    .line 505
    :pswitch_110
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {p0, p1, p4}, Landroid/os/incremental/IIncrementalService$Stub;->isFileFullyLoaded(ILjava/lang/String;)I

    move-result p1

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    goto/16 :goto_2b0

    .line 493
    :pswitch_128
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 497
    invoke-virtual {p0, p1, p4}, Landroid/os/incremental/IIncrementalService$Stub;->unlink(ILjava/lang/String;)I

    move-result p1

    .line 498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    goto/16 :goto_2b0

    .line 477
    :pswitch_140
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 485
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/os/incremental/IIncrementalService$Stub;->makeLink(ILjava/lang/String;ILjava/lang/String;)I

    move-result p1

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    goto/16 :goto_2b0

    .line 459
    :pswitch_160
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual/range {v2 .. v9}, Landroid/os/incremental/IIncrementalService$Stub;->makeFileFromRange(ILjava/lang/String;Ljava/lang/String;JJ)I

    move-result p1

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    goto/16 :goto_2b0

    .line 441
    :pswitch_184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 447
    sget-object p1, Landroid/os/incremental/IncrementalNewFileParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/os/incremental/IncrementalNewFileParams;

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/os/incremental/IIncrementalService$Stub;->makeFile(ILjava/lang/String;ILandroid/os/incremental/IncrementalNewFileParams;[B)I

    move-result p1

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    goto/16 :goto_2b0

    .line 429
    :pswitch_1ad
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, p1, p4}, Landroid/os/incremental/IIncrementalService$Stub;->makeDirectories(ILjava/lang/String;)I

    move-result p1

    .line 434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    goto/16 :goto_2b0

    .line 417
    :pswitch_1c5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {p0, p1, p4}, Landroid/os/incremental/IIncrementalService$Stub;->makeDirectory(ILjava/lang/String;)I

    move-result p1

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    goto/16 :goto_2b0

    .line 405
    :pswitch_1dd
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, p1, p4}, Landroid/os/incremental/IIncrementalService$Stub;->deleteBindMount(ILjava/lang/String;)I

    move-result p1

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    goto/16 :goto_2b0

    .line 389
    :pswitch_1f5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/os/incremental/IIncrementalService$Stub;->makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    goto/16 :goto_2b0

    .line 380
    :pswitch_215
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {p0, p1}, Landroid/os/incremental/IIncrementalService$Stub;->onInstallationComplete(I)V

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    goto/16 :goto_2b0

    .line 360
    :pswitch_225
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 362
    sget-object p1, Landroid/content/pm/DataLoaderParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/content/pm/DataLoaderParamsParcel;

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/pm/IDataLoaderStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IDataLoaderStatusListener;

    move-result-object v5

    .line 366
    sget-object p1, Landroid/os/incremental/StorageHealthCheckParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/os/incremental/StorageHealthCheckParams;

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/incremental/IStorageHealthListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IStorageHealthListener;

    move-result-object v7

    .line 370
    sget-object p1, Landroid/os/incremental/PerUidReadTimeouts;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, [Landroid/os/incremental/PerUidReadTimeouts;

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual/range {v2 .. v8}, Landroid/os/incremental/IIncrementalService$Stub;->startLoading(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)Z

    move-result p1

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 375
    goto :goto_2b0

    .line 346
    :pswitch_263
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, p1, p4, v0}, Landroid/os/incremental/IIncrementalService$Stub;->createLinkedStorage(Ljava/lang/String;II)I

    move-result p1

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    goto :goto_2b0

    .line 332
    :pswitch_27e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 334
    sget-object p4, Landroid/content/pm/DataLoaderParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/DataLoaderParamsParcel;

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, p1, p4, v0}, Landroid/os/incremental/IIncrementalService$Stub;->createStorage(Ljava/lang/String;Landroid/content/pm/DataLoaderParamsParcel;I)I

    move-result p1

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    goto :goto_2b0

    .line 322
    :pswitch_29d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, p1}, Landroid/os/incremental/IIncrementalService$Stub;->openStorage(Ljava/lang/String;)I

    move-result p1

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    nop

    .line 641
    :goto_2b0
    return v1

    nop

    :pswitch_data_2b2
    .packed-switch 0x1
        :pswitch_29d
        :pswitch_27e
        :pswitch_263
        :pswitch_225
        :pswitch_215
        :pswitch_1f5
        :pswitch_1dd
        :pswitch_1c5
        :pswitch_1ad
        :pswitch_184
        :pswitch_160
        :pswitch_140
        :pswitch_128
        :pswitch_110
        :pswitch_fc
        :pswitch_e8
        :pswitch_d0
        :pswitch_b8
        :pswitch_a8
        :pswitch_98
        :pswitch_74
        :pswitch_61
        :pswitch_46
        :pswitch_33
        :pswitch_20
    .end packed-switch
.end method
