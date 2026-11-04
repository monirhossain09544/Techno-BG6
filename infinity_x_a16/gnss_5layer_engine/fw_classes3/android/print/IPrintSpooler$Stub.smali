.class public abstract Landroid/print/IPrintSpooler$Stub;
.super Landroid/os/Binder;
.source "IPrintSpooler.java"

# interfaces
.implements Landroid/print/IPrintSpooler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintSpooler$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintSpooler"

.field static final greylist-max-o TRANSACTION_clearCustomPrinterIconCache:I = 0xb

.field static final greylist-max-o TRANSACTION_createPrintJob:I = 0x4

.field static final greylist-max-o TRANSACTION_getCustomPrinterIcon:I = 0xa

.field static final greylist-max-o TRANSACTION_getPrintJobInfo:I = 0x3

.field static final greylist-max-o TRANSACTION_getPrintJobInfos:I = 0x2

.field static final greylist-max-o TRANSACTION_onCustomPrinterIconLoaded:I = 0x9

.field static final greylist-max-o TRANSACTION_pruneApprovedPrintServices:I = 0x10

.field static final greylist-max-o TRANSACTION_removeObsoletePrintJobs:I = 0x1

.field static final greylist-max-o TRANSACTION_setClient:I = 0xe

.field static final greylist-max-o TRANSACTION_setPrintJobCancelling:I = 0xf

.field static final greylist-max-o TRANSACTION_setPrintJobState:I = 0x5

.field static final greylist-max-o TRANSACTION_setPrintJobTag:I = 0xc

.field static final greylist-max-o TRANSACTION_setProgress:I = 0x6

.field static final greylist-max-o TRANSACTION_setStatus:I = 0x7

.field static final greylist-max-o TRANSACTION_setStatusRes:I = 0x8

.field static final greylist-max-o TRANSACTION_writePrintJobData:I = 0xd


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 129
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 130
    const-string v0, "android.print.IPrintSpooler"

    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintSpooler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpooler;
    .registers 3

    .line 138
    if-nez p0, :cond_4

    .line 139
    const/4 p0, 0x0

    return-object p0

    .line 141
    :cond_4
    const-string v0, "android.print.IPrintSpooler"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/print/IPrintSpooler;

    if-eqz v1, :cond_13

    .line 143
    check-cast v0, Landroid/print/IPrintSpooler;

    return-object v0

    .line 145
    :cond_13
    new-instance v0, Landroid/print/IPrintSpooler$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/print/IPrintSpooler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 154
    packed-switch p0, :pswitch_data_40

    .line 222
    const/4 p0, 0x0

    return-object p0

    .line 218
    :pswitch_5
    const-string/jumbo p0, "pruneApprovedPrintServices"

    return-object p0

    .line 214
    :pswitch_9
    const-string/jumbo p0, "setPrintJobCancelling"

    return-object p0

    .line 210
    :pswitch_d
    const-string/jumbo p0, "setClient"

    return-object p0

    .line 206
    :pswitch_11
    const-string/jumbo p0, "writePrintJobData"

    return-object p0

    .line 202
    :pswitch_15
    const-string/jumbo p0, "setPrintJobTag"

    return-object p0

    .line 198
    :pswitch_19
    const-string p0, "clearCustomPrinterIconCache"

    return-object p0

    .line 194
    :pswitch_1c
    const-string p0, "getCustomPrinterIcon"

    return-object p0

    .line 190
    :pswitch_1f
    const-string/jumbo p0, "onCustomPrinterIconLoaded"

    return-object p0

    .line 186
    :pswitch_23
    const-string/jumbo p0, "setStatusRes"

    return-object p0

    .line 182
    :pswitch_27
    const-string/jumbo p0, "setStatus"

    return-object p0

    .line 178
    :pswitch_2b
    const-string/jumbo p0, "setProgress"

    return-object p0

    .line 174
    :pswitch_2f
    const-string/jumbo p0, "setPrintJobState"

    return-object p0

    .line 170
    :pswitch_33
    const-string p0, "createPrintJob"

    return-object p0

    .line 166
    :pswitch_36
    const-string p0, "getPrintJobInfo"

    return-object p0

    .line 162
    :pswitch_39
    const-string p0, "getPrintJobInfos"

    return-object p0

    .line 158
    :pswitch_3c
    const-string/jumbo p0, "removeObsoletePrintJobs"

    return-object p0

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 149
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 741
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 229
    invoke-static {p1}, Landroid/print/IPrintSpooler$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    nop

    .line 234
    const-string v3, "android.print.IPrintSpooler"

    const/4 v6, 0x1

    if-lt p1, v6, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 235
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 238
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    return v6

    .line 241
    :cond_17
    packed-switch p1, :pswitch_data_1a0

    .line 422
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 415
    :pswitch_1f
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {p0, v1}, Landroid/print/IPrintSpooler$Stub;->pruneApprovedPrintServices(Ljava/util/List;)V

    .line 418
    goto/16 :goto_19f

    .line 405
    :pswitch_2d
    sget-object v1, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobId;

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v1, v3}, Landroid/print/IPrintSpooler$Stub;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V

    .line 410
    goto/16 :goto_19f

    .line 397
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/print/IPrintSpoolerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerClient;

    move-result-object v1

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, v1}, Landroid/print/IPrintSpooler$Stub;->setClient(Landroid/print/IPrintSpoolerClient;)V

    .line 400
    goto/16 :goto_19f

    .line 387
    :pswitch_51
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 389
    sget-object v3, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrintJobId;

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {p0, v1, v3}, Landroid/print/IPrintSpooler$Stub;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V

    .line 392
    goto/16 :goto_19f

    .line 373
    :pswitch_69
    sget-object v1, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobId;

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v4

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/print/IPrintSpooler$Stub;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 382
    goto/16 :goto_19f

    .line 363
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v1

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v1, v3}, Landroid/print/IPrintSpooler$Stub;->clearCustomPrinterIconCache(Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 368
    goto/16 :goto_19f

    .line 351
    :pswitch_9d
    sget-object v1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v3

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v1, v3, v4}, Landroid/print/IPrintSpooler$Stub;->getCustomPrinterIcon(Landroid/print/PrinterId;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 358
    goto/16 :goto_19f

    .line 337
    :pswitch_b9
    sget-object v1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    .line 339
    sget-object v3, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Icon;

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v4

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/print/IPrintSpooler$Stub;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 346
    goto/16 :goto_19f

    .line 325
    :pswitch_dd
    sget-object v1, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobId;

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 329
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {p0, v1, v3, v4}, Landroid/print/IPrintSpooler$Stub;->setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V

    .line 332
    goto/16 :goto_19f

    .line 315
    :pswitch_f9
    sget-object v1, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobId;

    .line 317
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {p0, v1, v3}, Landroid/print/IPrintSpooler$Stub;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V

    .line 320
    goto/16 :goto_19f

    .line 305
    :pswitch_111
    sget-object v1, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobId;

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, v1, v3}, Landroid/print/IPrintSpooler$Stub;->setProgress(Landroid/print/PrintJobId;F)V

    .line 310
    goto/16 :goto_19f

    .line 289
    :pswitch_125
    sget-object v1, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobId;

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v4

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/print/IPrintSpooler$Stub;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 300
    goto :goto_19f

    .line 281
    :pswitch_149
    sget-object v1, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobInfo;

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v1}, Landroid/print/IPrintSpooler$Stub;->createPrintJob(Landroid/print/PrintJobInfo;)V

    .line 284
    goto :goto_19f

    .line 267
    :pswitch_158
    sget-object v1, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobId;

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v2

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/print/IPrintSpooler$Stub;->getPrintJobInfo(Landroid/print/PrintJobId;Landroid/print/IPrintSpoolerCallbacks;II)V

    .line 276
    goto :goto_19f

    .line 251
    :pswitch_177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v1

    .line 253
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/print/IPrintSpooler$Stub;->getPrintJobInfos(Landroid/print/IPrintSpoolerCallbacks;Landroid/content/ComponentName;III)V

    .line 262
    goto :goto_19f

    .line 245
    :pswitch_19b
    invoke-virtual {p0}, Landroid/print/IPrintSpooler$Stub;->removeObsoletePrintJobs()V

    .line 246
    nop

    .line 425
    :goto_19f
    return v6

    :pswitch_data_1a0
    .packed-switch 0x1
        :pswitch_19b
        :pswitch_177
        :pswitch_158
        :pswitch_149
        :pswitch_125
        :pswitch_111
        :pswitch_f9
        :pswitch_dd
        :pswitch_b9
        :pswitch_9d
        :pswitch_89
        :pswitch_69
        :pswitch_51
        :pswitch_41
        :pswitch_2d
        :pswitch_1f
    .end packed-switch
.end method
