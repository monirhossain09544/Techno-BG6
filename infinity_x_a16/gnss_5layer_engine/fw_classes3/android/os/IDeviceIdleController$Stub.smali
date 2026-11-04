.class public abstract Landroid/os/IDeviceIdleController$Stub;
.super Landroid/os/Binder;
.source "IDeviceIdleController.java"

# interfaces
.implements Landroid/os/IDeviceIdleController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDeviceIdleController$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IDeviceIdleController"

.field static final greylist-max-o TRANSACTION_addPowerSaveTempWhitelistApp:I = 0x12

.field static final greylist-max-o TRANSACTION_addPowerSaveTempWhitelistAppForMms:I = 0x13

.field static final greylist-max-o TRANSACTION_addPowerSaveTempWhitelistAppForSms:I = 0x14

.field static final greylist-max-o TRANSACTION_addPowerSaveWhitelistApp:I = 0x1

.field static final blacklist TRANSACTION_addPowerSaveWhitelistApps:I = 0x2

.field static final greylist-max-o TRANSACTION_exitIdle:I = 0x16

.field static final greylist-max-o TRANSACTION_getAppIdTempWhitelist:I = 0xf

.field static final greylist-max-o TRANSACTION_getAppIdUserWhitelist:I = 0xe

.field static final greylist-max-o TRANSACTION_getAppIdWhitelist:I = 0xd

.field static final greylist-max-o TRANSACTION_getAppIdWhitelistExceptIdle:I = 0xc

.field static final greylist-max-o TRANSACTION_getFullPowerWhitelist:I = 0xb

.field static final greylist-max-o TRANSACTION_getFullPowerWhitelistExceptIdle:I = 0xa

.field static final greylist-max-o TRANSACTION_getRemovedSystemPowerWhitelistApps:I = 0x6

.field static final greylist-max-o TRANSACTION_getSystemPowerWhitelist:I = 0x8

.field static final greylist-max-o TRANSACTION_getSystemPowerWhitelistExceptIdle:I = 0x7

.field static final greylist-max-o TRANSACTION_getUserPowerWhitelist:I = 0x9

.field static final greylist-max-o TRANSACTION_isPowerSaveWhitelistApp:I = 0x11

.field static final greylist-max-o TRANSACTION_isPowerSaveWhitelistExceptIdleApp:I = 0x10

.field static final greylist-max-o TRANSACTION_removePowerSaveWhitelistApp:I = 0x3

.field static final greylist-max-o TRANSACTION_removeSystemPowerWhitelistApp:I = 0x4

.field static final greylist-max-o TRANSACTION_restoreSystemPowerWhitelistApp:I = 0x5

.field static final blacklist TRANSACTION_whitelistAppTemporarily:I = 0x15


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    nop

    .line 124
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 123
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/IDeviceIdleController$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 125
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 113
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 114
    const-string v0, "android.os.IDeviceIdleController"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDeviceIdleController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 115
    if-eqz p1, :cond_d

    .line 118
    iput-object p1, p0, Landroid/os/IDeviceIdleController$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 119
    return-void

    .line 116
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;
    .registers 3

    .line 132
    if-nez p0, :cond_4

    .line 133
    const/4 p0, 0x0

    return-object p0

    .line 135
    :cond_4
    const-string v0, "android.os.IDeviceIdleController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IDeviceIdleController;

    if-eqz v1, :cond_13

    .line 137
    check-cast v0, Landroid/os/IDeviceIdleController;

    return-object v0

    .line 139
    :cond_13
    new-instance v0, Landroid/os/IDeviceIdleController$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IDeviceIdleController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 148
    packed-switch p0, :pswitch_data_4c

    .line 240
    const/4 p0, 0x0

    return-object p0

    .line 236
    :pswitch_5
    const-string p0, "exitIdle"

    return-object p0

    .line 232
    :pswitch_8
    const-string/jumbo p0, "whitelistAppTemporarily"

    return-object p0

    .line 228
    :pswitch_c
    const-string p0, "addPowerSaveTempWhitelistAppForSms"

    return-object p0

    .line 224
    :pswitch_f
    const-string p0, "addPowerSaveTempWhitelistAppForMms"

    return-object p0

    .line 220
    :pswitch_12
    const-string p0, "addPowerSaveTempWhitelistApp"

    return-object p0

    .line 216
    :pswitch_15
    const-string p0, "isPowerSaveWhitelistApp"

    return-object p0

    .line 212
    :pswitch_18
    const-string p0, "isPowerSaveWhitelistExceptIdleApp"

    return-object p0

    .line 208
    :pswitch_1b
    const-string p0, "getAppIdTempWhitelist"

    return-object p0

    .line 204
    :pswitch_1e
    const-string p0, "getAppIdUserWhitelist"

    return-object p0

    .line 200
    :pswitch_21
    const-string p0, "getAppIdWhitelist"

    return-object p0

    .line 196
    :pswitch_24
    const-string p0, "getAppIdWhitelistExceptIdle"

    return-object p0

    .line 192
    :pswitch_27
    const-string p0, "getFullPowerWhitelist"

    return-object p0

    .line 188
    :pswitch_2a
    const-string p0, "getFullPowerWhitelistExceptIdle"

    return-object p0

    .line 184
    :pswitch_2d
    const-string p0, "getUserPowerWhitelist"

    return-object p0

    .line 180
    :pswitch_30
    const-string p0, "getSystemPowerWhitelist"

    return-object p0

    .line 176
    :pswitch_33
    const-string p0, "getSystemPowerWhitelistExceptIdle"

    return-object p0

    .line 172
    :pswitch_36
    const-string p0, "getRemovedSystemPowerWhitelistApps"

    return-object p0

    .line 168
    :pswitch_39
    const-string/jumbo p0, "restoreSystemPowerWhitelistApp"

    return-object p0

    .line 164
    :pswitch_3d
    const-string/jumbo p0, "removeSystemPowerWhitelistApp"

    return-object p0

    .line 160
    :pswitch_41
    const-string/jumbo p0, "removePowerSaveWhitelistApp"

    return-object p0

    .line 156
    :pswitch_45
    const-string p0, "addPowerSaveWhitelistApps"

    return-object p0

    .line 152
    :pswitch_48
    const-string p0, "addPowerSaveWhitelistApp"

    return-object p0

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_48
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 143
    return-object p0
.end method

.method protected blacklist exitIdle_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 905
    iget-object v0, p0, Landroid/os/IDeviceIdleController$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/IDeviceIdleController$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/IDeviceIdleController$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 906
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 910
    const/16 v0, 0x15

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 247
    invoke-static {p1}, Landroid/os/IDeviceIdleController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 251
    nop

    .line 252
    const-string v0, "android.os.IDeviceIdleController"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 253
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 256
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    return v1

    .line 259
    :cond_17
    packed-switch p1, :pswitch_data_1a4

    .line 473
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 465
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 467
    invoke-virtual {p0, p1}, Landroid/os/IDeviceIdleController$Stub;->exitIdle(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    goto/16 :goto_1a3

    .line 449
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/os/IDeviceIdleController$Stub;->whitelistAppTemporarily(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p1

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 460
    goto/16 :goto_1a3

    .line 433
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p1

    .line 442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 444
    goto/16 :goto_1a3

    .line 417
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p1

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 428
    goto/16 :goto_1a3

    .line 400
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JIILjava/lang/String;)V

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    goto/16 :goto_1a3

    .line 390
    :pswitch_ac
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {p0, p1}, Landroid/os/IDeviceIdleController$Stub;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result p1

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 395
    goto/16 :goto_1a3

    .line 380
    :pswitch_c0
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {p0, p1}, Landroid/os/IDeviceIdleController$Stub;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z

    move-result p1

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 385
    goto/16 :goto_1a3

    .line 372
    :pswitch_d4
    move-object v2, p0

    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdTempWhitelist()[I

    move-result-object p1

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 375
    goto/16 :goto_1a3

    .line 365
    :pswitch_e1
    move-object v2, p0

    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdUserWhitelist()[I

    move-result-object p1

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 368
    goto/16 :goto_1a3

    .line 358
    :pswitch_ee
    move-object v2, p0

    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdWhitelist()[I

    move-result-object p1

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 361
    goto/16 :goto_1a3

    .line 351
    :pswitch_fb
    move-object v2, p0

    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdWhitelistExceptIdle()[I

    move-result-object p1

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 354
    goto/16 :goto_1a3

    .line 344
    :pswitch_108
    move-object v2, p0

    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object p1

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 347
    goto/16 :goto_1a3

    .line 337
    :pswitch_115
    move-object v2, p0

    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getFullPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object p1

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 340
    goto/16 :goto_1a3

    .line 330
    :pswitch_122
    move-object v2, p0

    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getUserPowerWhitelist()[Ljava/lang/String;

    move-result-object p1

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 333
    goto/16 :goto_1a3

    .line 323
    :pswitch_12f
    move-object v2, p0

    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 326
    goto/16 :goto_1a3

    .line 316
    :pswitch_13c
    move-object v2, p0

    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object p1

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 319
    goto :goto_1a3

    .line 309
    :pswitch_148
    move-object v2, p0

    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getRemovedSystemPowerWhitelistApps()[Ljava/lang/String;

    move-result-object p1

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 312
    goto :goto_1a3

    .line 301
    :pswitch_154
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, p1}, Landroid/os/IDeviceIdleController$Stub;->restoreSystemPowerWhitelistApp(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    goto :goto_1a3

    .line 292
    :pswitch_163
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, p1}, Landroid/os/IDeviceIdleController$Stub;->removeSystemPowerWhitelistApp(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto :goto_1a3

    .line 283
    :pswitch_172
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, p1}, Landroid/os/IDeviceIdleController$Stub;->removePowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    goto :goto_1a3

    .line 273
    :pswitch_181
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, p1}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveWhitelistApps(Ljava/util/List;)I

    move-result p1

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    goto :goto_1a3

    .line 264
    :pswitch_194
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, p1}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    nop

    .line 476
    :goto_1a3
    return v1

    :pswitch_data_1a4
    .packed-switch 0x1
        :pswitch_194
        :pswitch_181
        :pswitch_172
        :pswitch_163
        :pswitch_154
        :pswitch_148
        :pswitch_13c
        :pswitch_12f
        :pswitch_122
        :pswitch_115
        :pswitch_108
        :pswitch_fb
        :pswitch_ee
        :pswitch_e1
        :pswitch_d4
        :pswitch_c0
        :pswitch_ac
        :pswitch_8c
        :pswitch_6d
        :pswitch_4e
        :pswitch_2f
        :pswitch_20
    .end packed-switch
.end method
