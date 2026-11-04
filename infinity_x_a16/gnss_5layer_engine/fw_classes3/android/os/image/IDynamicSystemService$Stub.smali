.class public abstract Landroid/os/image/IDynamicSystemService$Stub;
.super Landroid/os/Binder;
.source "IDynamicSystemService.java"

# interfaces
.implements Landroid/os/image/IDynamicSystemService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/image/IDynamicSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/image/IDynamicSystemService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abort:I = 0x6

.field static final blacklist TRANSACTION_closePartition:I = 0x3

.field static final blacklist TRANSACTION_createPartition:I = 0x2

.field static final blacklist TRANSACTION_finishInstallation:I = 0x4

.field static final blacklist TRANSACTION_getActiveDsuSlot:I = 0x10

.field static final blacklist TRANSACTION_getAvbPublicKey:I = 0xe

.field static final blacklist TRANSACTION_getInstallationProgress:I = 0x5

.field static final blacklist TRANSACTION_isEnabled:I = 0x9

.field static final blacklist TRANSACTION_isInUse:I = 0x7

.field static final blacklist TRANSACTION_isInstalled:I = 0x8

.field static final blacklist TRANSACTION_remove:I = 0xa

.field static final blacklist TRANSACTION_setAshmem:I = 0xc

.field static final blacklist TRANSACTION_setEnable:I = 0xb

.field static final blacklist TRANSACTION_startInstallation:I = 0x1

.field static final blacklist TRANSACTION_submitFromAshmem:I = 0xd

.field static final blacklist TRANSACTION_suggestScratchSize:I = 0xf


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    nop

    .line 175
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/image/IDynamicSystemService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 176
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 164
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 165
    const-string v0, "android.os.image.IDynamicSystemService"

    invoke-virtual {p0, p0, v0}, Landroid/os/image/IDynamicSystemService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 166
    if-eqz p1, :cond_d

    .line 169
    iput-object p1, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 170
    return-void

    .line 167
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/image/IDynamicSystemService;
    .registers 3

    .line 183
    if-nez p0, :cond_4

    .line 184
    const/4 p0, 0x0

    return-object p0

    .line 186
    :cond_4
    const-string v0, "android.os.image.IDynamicSystemService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/image/IDynamicSystemService;

    if-eqz v1, :cond_13

    .line 188
    check-cast v0, Landroid/os/image/IDynamicSystemService;

    return-object v0

    .line 190
    :cond_13
    new-instance v0, Landroid/os/image/IDynamicSystemService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/image/IDynamicSystemService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 199
    packed-switch p0, :pswitch_data_3c

    .line 267
    const/4 p0, 0x0

    return-object p0

    .line 263
    :pswitch_5
    const-string p0, "getActiveDsuSlot"

    return-object p0

    .line 259
    :pswitch_8
    const-string/jumbo p0, "suggestScratchSize"

    return-object p0

    .line 255
    :pswitch_c
    const-string p0, "getAvbPublicKey"

    return-object p0

    .line 251
    :pswitch_f
    const-string/jumbo p0, "submitFromAshmem"

    return-object p0

    .line 247
    :pswitch_13
    const-string/jumbo p0, "setAshmem"

    return-object p0

    .line 243
    :pswitch_17
    const-string/jumbo p0, "setEnable"

    return-object p0

    .line 239
    :pswitch_1b
    const-string/jumbo p0, "remove"

    return-object p0

    .line 235
    :pswitch_1f
    const-string p0, "isEnabled"

    return-object p0

    .line 231
    :pswitch_22
    const-string p0, "isInstalled"

    return-object p0

    .line 227
    :pswitch_25
    const-string p0, "isInUse"

    return-object p0

    .line 223
    :pswitch_28
    const-string p0, "abort"

    return-object p0

    .line 219
    :pswitch_2b
    const-string p0, "getInstallationProgress"

    return-object p0

    .line 215
    :pswitch_2e
    const-string p0, "finishInstallation"

    return-object p0

    .line 211
    :pswitch_31
    const-string p0, "closePartition"

    return-object p0

    .line 207
    :pswitch_34
    const-string p0, "createPartition"

    return-object p0

    .line 203
    :pswitch_37
    const-string/jumbo p0, "startInstallation"

    return-object p0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected blacklist abort_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 835
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 836
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 194
    return-object p0
.end method

.method protected blacklist closePartition_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 820
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 821
    return-void
.end method

.method protected blacklist createPartition_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 815
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 816
    return-void
.end method

.method protected blacklist finishInstallation_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 825
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 826
    return-void
.end method

.method protected blacklist getActiveDsuSlot_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 877
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 878
    return-void
.end method

.method protected blacklist getAvbPublicKey_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 867
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 868
    return-void
.end method

.method protected blacklist getInstallationProgress_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 830
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 831
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 882
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 274
    invoke-static {p1}, Landroid/os/image/IDynamicSystemService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist isEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 842
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 843
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    nop

    .line 279
    const-string v0, "android.os.image.IDynamicSystemService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 280
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 283
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    return v1

    .line 286
    :cond_17
    packed-switch p1, :pswitch_data_11a

    .line 429
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 422
    :pswitch_1f
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->getActiveDsuSlot()Ljava/lang/String;

    move-result-object p1

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 425
    goto/16 :goto_118

    .line 415
    :pswitch_2b
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->suggestScratchSize()J

    move-result-wide p1

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 418
    goto/16 :goto_118

    .line 405
    :pswitch_37
    new-instance p1, Landroid/gsi/AvbPublicKey;

    invoke-direct {p1}, Landroid/gsi/AvbPublicKey;-><init>()V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, p1}, Landroid/os/image/IDynamicSystemService$Stub;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)Z

    move-result p2

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 410
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 411
    goto/16 :goto_118

    .line 395
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v2, v3}, Landroid/os/image/IDynamicSystemService$Stub;->submitFromAshmem(J)Z

    move-result p1

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 400
    goto/16 :goto_118

    .line 383
    :pswitch_61
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/image/IDynamicSystemService$Stub;->setAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    move-result p1

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 390
    goto/16 :goto_118

    .line 371
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, p1, p4}, Landroid/os/image/IDynamicSystemService$Stub;->setEnable(ZZ)Z

    move-result p1

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 378
    goto/16 :goto_118

    .line 363
    :pswitch_93
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->remove()Z

    move-result p1

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 366
    goto/16 :goto_118

    .line 356
    :pswitch_9f
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->isEnabled()Z

    move-result p1

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 359
    goto :goto_118

    .line 349
    :pswitch_aa
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->isInstalled()Z

    move-result p1

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 352
    goto :goto_118

    .line 342
    :pswitch_b5
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->isInUse()Z

    move-result p1

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 345
    goto :goto_118

    .line 335
    :pswitch_c0
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->abort()Z

    move-result p1

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 338
    goto :goto_118

    .line 328
    :pswitch_cb
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->getInstallationProgress()Landroid/gsi/GsiProgress;

    move-result-object p1

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 331
    goto :goto_118

    .line 321
    :pswitch_d6
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->finishInstallation()Z

    move-result p1

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 324
    goto :goto_118

    .line 314
    :pswitch_e1
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->closePartition()Z

    move-result p1

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 317
    goto :goto_118

    .line 301
    :pswitch_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {p0, p1, v2, v3, p4}, Landroid/os/image/IDynamicSystemService$Stub;->createPartition(Ljava/lang/String;JZ)I

    move-result p1

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    goto :goto_118

    .line 291
    :pswitch_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, p1}, Landroid/os/image/IDynamicSystemService$Stub;->startInstallation(Ljava/lang/String;)Z

    move-result p1

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 296
    nop

    .line 432
    :goto_118
    return v1

    nop

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_106
        :pswitch_ec
        :pswitch_e1
        :pswitch_d6
        :pswitch_cb
        :pswitch_c0
        :pswitch_b5
        :pswitch_aa
        :pswitch_9f
        :pswitch_93
        :pswitch_7c
        :pswitch_61
        :pswitch_4e
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist remove_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 847
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 848
    return-void
.end method

.method protected blacklist setAshmem_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 857
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 858
    return-void
.end method

.method protected blacklist setEnable_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 852
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 853
    return-void
.end method

.method protected blacklist startInstallation_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 810
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 811
    return-void
.end method

.method protected blacklist submitFromAshmem_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 862
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 863
    return-void
.end method

.method protected blacklist suggestScratchSize_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 872
    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 873
    return-void
.end method
