.class public abstract Landroid/print/IPrintManager$Stub;
.super Landroid/os/Binder;
.source "IPrintManager.java"

# interfaces
.implements Landroid/print/IPrintManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintManager"

.field static final greylist-max-o TRANSACTION_addPrintJobStateChangeListener:I = 0x6

.field static final greylist-max-o TRANSACTION_addPrintServiceRecommendationsChangeListener:I = 0xd

.field static final greylist-max-o TRANSACTION_addPrintServicesChangeListener:I = 0x8

.field static final greylist-max-o TRANSACTION_cancelPrintJob:I = 0x4

.field static final greylist-max-o TRANSACTION_createPrinterDiscoverySession:I = 0x10

.field static final greylist-max-o TRANSACTION_destroyPrinterDiscoverySession:I = 0x17

.field static final greylist-max-o TRANSACTION_getBindInstantServiceAllowed:I = 0x18

.field static final greylist-max-o TRANSACTION_getCustomPrinterIcon:I = 0x15

.field static final greylist-max-o TRANSACTION_getPrintJobInfo:I = 0x2

.field static final greylist-max-o TRANSACTION_getPrintJobInfos:I = 0x1

.field static final greylist-max-o TRANSACTION_getPrintServiceRecommendations:I = 0xf

.field static final greylist-max-o TRANSACTION_getPrintServices:I = 0xa

.field static final blacklist TRANSACTION_isPrintServiceEnabled:I = 0xc

.field static final greylist-max-o TRANSACTION_print:I = 0x3

.field static final greylist-max-o TRANSACTION_removePrintJobStateChangeListener:I = 0x7

.field static final greylist-max-o TRANSACTION_removePrintServiceRecommendationsChangeListener:I = 0xe

.field static final greylist-max-o TRANSACTION_removePrintServicesChangeListener:I = 0x9

.field static final greylist-max-o TRANSACTION_restartPrintJob:I = 0x5

.field static final greylist-max-o TRANSACTION_setBindInstantServiceAllowed:I = 0x19

.field static final greylist-max-o TRANSACTION_setPrintServiceEnabled:I = 0xb

.field static final greylist-max-o TRANSACTION_startPrinterDiscovery:I = 0x11

.field static final greylist-max-o TRANSACTION_startPrinterStateTracking:I = 0x14

.field static final greylist-max-o TRANSACTION_stopPrinterDiscovery:I = 0x12

.field static final greylist-max-o TRANSACTION_stopPrinterStateTracking:I = 0x16

.field static final greylist-max-o TRANSACTION_validatePrinters:I = 0x13


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 198
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 199
    const-string v0, "android.print.IPrintManager"

    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/print/IPrintManager;
    .registers 3

    .line 207
    if-nez p0, :cond_4

    .line 208
    const/4 p0, 0x0

    return-object p0

    .line 210
    :cond_4
    const-string v0, "android.print.IPrintManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/print/IPrintManager;

    if-eqz v1, :cond_13

    .line 212
    check-cast v0, Landroid/print/IPrintManager;

    return-object v0

    .line 214
    :cond_13
    new-instance v0, Landroid/print/IPrintManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/print/IPrintManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 223
    packed-switch p0, :pswitch_data_5c

    .line 327
    const/4 p0, 0x0

    return-object p0

    .line 323
    :pswitch_5
    const-string/jumbo p0, "setBindInstantServiceAllowed"

    return-object p0

    .line 319
    :pswitch_9
    const-string p0, "getBindInstantServiceAllowed"

    return-object p0

    .line 315
    :pswitch_c
    const-string p0, "destroyPrinterDiscoverySession"

    return-object p0

    .line 311
    :pswitch_f
    const-string/jumbo p0, "stopPrinterStateTracking"

    return-object p0

    .line 307
    :pswitch_13
    const-string p0, "getCustomPrinterIcon"

    return-object p0

    .line 303
    :pswitch_16
    const-string/jumbo p0, "startPrinterStateTracking"

    return-object p0

    .line 299
    :pswitch_1a
    const-string/jumbo p0, "validatePrinters"

    return-object p0

    .line 295
    :pswitch_1e
    const-string/jumbo p0, "stopPrinterDiscovery"

    return-object p0

    .line 291
    :pswitch_22
    const-string/jumbo p0, "startPrinterDiscovery"

    return-object p0

    .line 287
    :pswitch_26
    const-string p0, "createPrinterDiscoverySession"

    return-object p0

    .line 283
    :pswitch_29
    const-string p0, "getPrintServiceRecommendations"

    return-object p0

    .line 279
    :pswitch_2c
    const-string/jumbo p0, "removePrintServiceRecommendationsChangeListener"

    return-object p0

    .line 275
    :pswitch_30
    const-string p0, "addPrintServiceRecommendationsChangeListener"

    return-object p0

    .line 271
    :pswitch_33
    const-string p0, "isPrintServiceEnabled"

    return-object p0

    .line 267
    :pswitch_36
    const-string/jumbo p0, "setPrintServiceEnabled"

    return-object p0

    .line 263
    :pswitch_3a
    const-string p0, "getPrintServices"

    return-object p0

    .line 259
    :pswitch_3d
    const-string/jumbo p0, "removePrintServicesChangeListener"

    return-object p0

    .line 255
    :pswitch_41
    const-string p0, "addPrintServicesChangeListener"

    return-object p0

    .line 251
    :pswitch_44
    const-string/jumbo p0, "removePrintJobStateChangeListener"

    return-object p0

    .line 247
    :pswitch_48
    const-string p0, "addPrintJobStateChangeListener"

    return-object p0

    .line 243
    :pswitch_4b
    const-string/jumbo p0, "restartPrintJob"

    return-object p0

    .line 239
    :pswitch_4f
    const-string p0, "cancelPrintJob"

    return-object p0

    .line 235
    :pswitch_52
    const-string/jumbo p0, "print"

    return-object p0

    .line 231
    :pswitch_56
    const-string p0, "getPrintJobInfo"

    return-object p0

    .line 227
    :pswitch_59
    const-string p0, "getPrintJobInfos"

    return-object p0

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_59
        :pswitch_56
        :pswitch_52
        :pswitch_4f
        :pswitch_4b
        :pswitch_48
        :pswitch_44
        :pswitch_41
        :pswitch_3d
        :pswitch_3a
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 218
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1216
    const/16 v0, 0x18

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 334
    invoke-static {p1}, Landroid/print/IPrintManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 338
    nop

    .line 339
    const-string v0, "android.print.IPrintManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 340
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 343
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    return v1

    .line 346
    :cond_17
    packed-switch p1, :pswitch_data_290

    .line 649
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 639
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 642
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {p0, p1, p4}, Landroid/print/IPrintManager$Stub;->setBindInstantServiceAllowed(IZ)V

    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    goto/16 :goto_28f

    .line 629
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    invoke-virtual {p0, p1}, Landroid/print/IPrintManager$Stub;->getBindInstantServiceAllowed(I)Z

    move-result p1

    .line 632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 634
    goto/16 :goto_28f

    .line 618
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    move-result-object p1

    .line 620
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 621
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-virtual {p0, p1, p4}, Landroid/print/IPrintManager$Stub;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V

    .line 623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    goto/16 :goto_28f

    .line 607
    :pswitch_5d
    sget-object p1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrinterId;

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {p0, p1, p4}, Landroid/print/IPrintManager$Stub;->stopPrinterStateTracking(Landroid/print/PrinterId;I)V

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    goto/16 :goto_28f

    .line 595
    :pswitch_74
    sget-object p1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrinterId;

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {p0, p1, p4}, Landroid/print/IPrintManager$Stub;->getCustomPrinterIcon(Landroid/print/PrinterId;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 602
    goto/16 :goto_28f

    .line 584
    :pswitch_8f
    sget-object p1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrinterId;

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 587
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {p0, p1, p4}, Landroid/print/IPrintManager$Stub;->startPrinterStateTracking(Landroid/print/PrinterId;I)V

    .line 589
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    goto/16 :goto_28f

    .line 573
    :pswitch_a6
    sget-object p1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 577
    invoke-virtual {p0, p1, p4}, Landroid/print/IPrintManager$Stub;->validatePrinters(Ljava/util/List;I)V

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    goto/16 :goto_28f

    .line 562
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    move-result-object p1

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 566
    invoke-virtual {p0, p1, p4}, Landroid/print/IPrintManager$Stub;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V

    .line 567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    goto/16 :goto_28f

    .line 549
    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    move-result-object p1

    .line 551
    sget-object p4, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p4

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-virtual {p0, p1, p4, v0}, Landroid/print/IPrintManager$Stub;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    goto/16 :goto_28f

    .line 538
    :pswitch_ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    move-result-object p1

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, p1, p4}, Landroid/print/IPrintManager$Stub;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    goto/16 :goto_28f

    .line 528
    :pswitch_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {p0, p1}, Landroid/print/IPrintManager$Stub;->getPrintServiceRecommendations(I)Ljava/util/List;

    move-result-object p1

    .line 531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 533
    goto/16 :goto_28f

    .line 517
    :pswitch_119
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/recommendation/IRecommendationsChangeListener;

    move-result-object p1

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {p0, p1, p4}, Landroid/print/IPrintManager$Stub;->removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V

    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    goto/16 :goto_28f

    .line 506
    :pswitch_130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/recommendation/IRecommendationsChangeListener;

    move-result-object p1

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {p0, p1, p4}, Landroid/print/IPrintManager$Stub;->addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V

    .line 511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    goto/16 :goto_28f

    .line 494
    :pswitch_147
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 498
    invoke-virtual {p0, p1, p4}, Landroid/print/IPrintManager$Stub;->isPrintServiceEnabled(Landroid/content/ComponentName;I)Z

    move-result p1

    .line 499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 501
    goto/16 :goto_28f

    .line 481
    :pswitch_162
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 487
    invoke-virtual {p0, p1, p4, v0}, Landroid/print/IPrintManager$Stub;->setPrintServiceEnabled(Landroid/content/ComponentName;ZI)V

    .line 488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    goto/16 :goto_28f

    .line 469
    :pswitch_17d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {p0, p1, p4}, Landroid/print/IPrintManager$Stub;->getPrintServices(II)Ljava/util/List;

    move-result-object p1

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 476
    goto/16 :goto_28f

    .line 458
    :pswitch_194
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/print/IPrintServicesChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintServicesChangeListener;

    move-result-object p1

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, p1, p4}, Landroid/print/IPrintManager$Stub;->removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    goto/16 :goto_28f

    .line 447
    :pswitch_1ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/print/IPrintServicesChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintServicesChangeListener;

    move-result-object p1

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, p1, p4}, Landroid/print/IPrintManager$Stub;->addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    goto/16 :goto_28f

    .line 436
    :pswitch_1c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/print/IPrintJobStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintJobStateChangeListener;

    move-result-object p1

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {p0, p1, p4}, Landroid/print/IPrintManager$Stub;->removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    goto/16 :goto_28f

    .line 423
    :pswitch_1d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/print/IPrintJobStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintJobStateChangeListener;

    move-result-object p1

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 429
    invoke-virtual {p0, p1, p4, v0}, Landroid/print/IPrintManager$Stub;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;II)V

    .line 430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    goto/16 :goto_28f

    .line 410
    :pswitch_1f4
    sget-object p1, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintJobId;

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {p0, p1, p4, v0}, Landroid/print/IPrintManager$Stub;->restartPrintJob(Landroid/print/PrintJobId;II)V

    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    goto/16 :goto_28f

    .line 397
    :pswitch_20f
    sget-object p1, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintJobId;

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {p0, p1, p4, v0}, Landroid/print/IPrintManager$Stub;->cancelPrintJob(Landroid/print/PrintJobId;II)V

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    goto :goto_28f

    .line 377
    :pswitch_229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/print/IPrintDocumentAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintDocumentAdapter;

    move-result-object v4

    .line 381
    sget-object p1, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/print/PrintAttributes;

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/print/IPrintManager$Stub;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object p1

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 392
    goto :goto_28f

    .line 363
    :pswitch_259
    move-object v2, p0

    sget-object p1, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintJobId;

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, p1, p4, v0}, Landroid/print/IPrintManager$Stub;->getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;

    move-result-object p1

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 372
    goto :goto_28f

    .line 351
    :pswitch_278
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {p0, p1, p4}, Landroid/print/IPrintManager$Stub;->getPrintJobInfos(II)Ljava/util/List;

    move-result-object p1

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 358
    nop

    .line 652
    :goto_28f
    return v1

    :pswitch_data_290
    .packed-switch 0x1
        :pswitch_278
        :pswitch_259
        :pswitch_229
        :pswitch_20f
        :pswitch_1f4
        :pswitch_1d9
        :pswitch_1c2
        :pswitch_1ab
        :pswitch_194
        :pswitch_17d
        :pswitch_162
        :pswitch_147
        :pswitch_130
        :pswitch_119
        :pswitch_106
        :pswitch_ef
        :pswitch_d2
        :pswitch_bb
        :pswitch_a6
        :pswitch_8f
        :pswitch_74
        :pswitch_5d
        :pswitch_46
        :pswitch_33
        :pswitch_20
    .end packed-switch
.end method
