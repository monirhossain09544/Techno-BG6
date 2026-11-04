.class public abstract Landroid/os/IServiceManager$Stub;
.super Landroid/os/Binder;
.source "IServiceManager.java"

# interfaces
.implements Landroid/os/IServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IServiceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addService:I = 0x5

.field static final blacklist TRANSACTION_checkService:I = 0x3

.field static final blacklist TRANSACTION_checkService2:I = 0x4

.field static final blacklist TRANSACTION_checkServiceAccess:I = 0x11

.field static final blacklist TRANSACTION_getConnectionInfo:I = 0xd

.field static final blacklist TRANSACTION_getDeclaredInstances:I = 0xa

.field static final blacklist TRANSACTION_getService:I = 0x1

.field static final blacklist TRANSACTION_getService2:I = 0x2

.field static final blacklist TRANSACTION_getServiceDebugInfo:I = 0x10

.field static final blacklist TRANSACTION_getUpdatableNames:I = 0xc

.field static final blacklist TRANSACTION_isDeclared:I = 0x9

.field static final blacklist TRANSACTION_listServices:I = 0x6

.field static final blacklist TRANSACTION_registerClientCallback:I = 0xe

.field static final blacklist TRANSACTION_registerForNotifications:I = 0x7

.field static final blacklist TRANSACTION_tryUnregisterService:I = 0xf

.field static final blacklist TRANSACTION_unregisterForNotifications:I = 0x8

.field static final blacklist TRANSACTION_updatableViaApex:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 172
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 173
    const-string v0, "android.os.IServiceManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IServiceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;
    .registers 3

    .line 181
    if-nez p0, :cond_4

    .line 182
    const/4 p0, 0x0

    return-object p0

    .line 184
    :cond_4
    const-string v0, "android.os.IServiceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IServiceManager;

    if-eqz v1, :cond_13

    .line 186
    check-cast v0, Landroid/os/IServiceManager;

    return-object v0

    .line 188
    :cond_13
    new-instance v0, Landroid/os/IServiceManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IServiceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 197
    packed-switch p0, :pswitch_data_3e

    .line 269
    const/4 p0, 0x0

    return-object p0

    .line 265
    :pswitch_5
    const-string p0, "checkServiceAccess"

    return-object p0

    .line 261
    :pswitch_8
    const-string p0, "getServiceDebugInfo"

    return-object p0

    .line 257
    :pswitch_b
    const-string/jumbo p0, "tryUnregisterService"

    return-object p0

    .line 253
    :pswitch_f
    const-string/jumbo p0, "registerClientCallback"

    return-object p0

    .line 249
    :pswitch_13
    const-string p0, "getConnectionInfo"

    return-object p0

    .line 245
    :pswitch_16
    const-string p0, "getUpdatableNames"

    return-object p0

    .line 241
    :pswitch_19
    const-string/jumbo p0, "updatableViaApex"

    return-object p0

    .line 237
    :pswitch_1d
    const-string p0, "getDeclaredInstances"

    return-object p0

    .line 233
    :pswitch_20
    const-string p0, "isDeclared"

    return-object p0

    .line 229
    :pswitch_23
    const-string/jumbo p0, "unregisterForNotifications"

    return-object p0

    .line 225
    :pswitch_27
    const-string/jumbo p0, "registerForNotifications"

    return-object p0

    .line 221
    :pswitch_2b
    const-string p0, "listServices"

    return-object p0

    .line 217
    :pswitch_2e
    const-string p0, "addService"

    return-object p0

    .line 213
    :pswitch_31
    const-string p0, "checkService2"

    return-object p0

    .line 209
    :pswitch_34
    const-string p0, "checkService"

    return-object p0

    .line 205
    :pswitch_37
    const-string p0, "getService2"

    return-object p0

    .line 201
    :pswitch_3a
    const-string p0, "getService"

    return-object p0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 192
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 890
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 276
    invoke-static {p1}, Landroid/os/IServiceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    nop

    .line 281
    const-string v0, "android.os.IServiceManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 282
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 285
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    return v1

    .line 288
    :cond_17
    packed-switch p1, :pswitch_data_17a

    .line 474
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 461
    :pswitch_1f
    sget-object p1, Landroid/os/IServiceManager$CallerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IServiceManager$CallerContext;

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 467
    invoke-virtual {p0, p1, p4, v0}, Landroid/os/IServiceManager$Stub;->checkServiceAccess(Landroid/os/IServiceManager$CallerContext;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 470
    goto/16 :goto_179

    .line 453
    :pswitch_3e
    invoke-virtual {p0}, Landroid/os/IServiceManager$Stub;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object p1

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 456
    goto/16 :goto_179

    .line 443
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    invoke-virtual {p0, p1, p4}, Landroid/os/IServiceManager$Stub;->tryUnregisterService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    goto/16 :goto_179

    .line 430
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IClientCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IClientCallback;

    move-result-object v0

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, p1, p4, v0}, Landroid/os/IServiceManager$Stub;->registerClientCallback(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/IClientCallback;)V

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    goto/16 :goto_179

    .line 420
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, p1}, Landroid/os/IServiceManager$Stub;->getConnectionInfo(Ljava/lang/String;)Landroid/os/ConnectionInfo;

    move-result-object p1

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 425
    goto/16 :goto_179

    .line 410
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, p1}, Landroid/os/IServiceManager$Stub;->getUpdatableNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 415
    goto/16 :goto_179

    .line 400
    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    invoke-virtual {p0, p1}, Landroid/os/IServiceManager$Stub;->updatableViaApex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    goto/16 :goto_179

    .line 390
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {p0, p1}, Landroid/os/IServiceManager$Stub;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 395
    goto/16 :goto_179

    .line 380
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {p0, p1}, Landroid/os/IServiceManager$Stub;->isDeclared(Ljava/lang/String;)Z

    move-result p1

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 385
    goto/16 :goto_179

    .line 369
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/os/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceCallback;

    move-result-object p4

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {p0, p1, p4}, Landroid/os/IServiceManager$Stub;->unregisterForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    goto/16 :goto_179

    .line 358
    :pswitch_ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/os/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceCallback;

    move-result-object p4

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {p0, p1, p4}, Landroid/os/IServiceManager$Stub;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    goto/16 :goto_179

    .line 348
    :pswitch_105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {p0, p1}, Landroid/os/IServiceManager$Stub;->listServices(I)[Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 353
    goto :goto_179

    .line 333
    :pswitch_117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/os/IServiceManager$Stub;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    goto :goto_179

    .line 323
    :pswitch_131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, p1}, Landroid/os/IServiceManager$Stub;->checkService2(Ljava/lang/String;)Landroid/os/Service;

    move-result-object p1

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 328
    goto :goto_179

    .line 313
    :pswitch_143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {p0, p1}, Landroid/os/IServiceManager$Stub;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 318
    goto :goto_179

    .line 303
    :pswitch_155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, p1}, Landroid/os/IServiceManager$Stub;->getService2(Ljava/lang/String;)Landroid/os/Service;

    move-result-object p1

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 308
    goto :goto_179

    .line 293
    :pswitch_167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, p1}, Landroid/os/IServiceManager$Stub;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 298
    nop

    .line 477
    :goto_179
    return v1

    :pswitch_data_17a
    .packed-switch 0x1
        :pswitch_167
        :pswitch_155
        :pswitch_143
        :pswitch_131
        :pswitch_117
        :pswitch_105
        :pswitch_ee
        :pswitch_d7
        :pswitch_c4
        :pswitch_b1
        :pswitch_9e
        :pswitch_8b
        :pswitch_78
        :pswitch_5d
        :pswitch_4a
        :pswitch_3e
        :pswitch_1f
    .end packed-switch
.end method
