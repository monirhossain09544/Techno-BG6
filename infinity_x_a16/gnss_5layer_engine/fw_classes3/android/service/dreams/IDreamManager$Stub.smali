.class public abstract Landroid/service/dreams/IDreamManager$Stub;
.super Landroid/os/Binder;
.source "IDreamManager.java"

# interfaces
.implements Landroid/service/dreams/IDreamManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/IDreamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/IDreamManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.dreams.IDreamManager"

.field static final greylist-max-o TRANSACTION_awaken:I = 0x2

.field static final blacklist TRANSACTION_canStartDreaming:I = 0x9

.field static final greylist-max-o TRANSACTION_dream:I = 0x1

.field static final greylist-max-o TRANSACTION_finishSelf:I = 0xa

.field static final blacklist TRANSACTION_finishSelfOneway:I = 0x16

.field static final blacklist TRANSACTION_forceAmbientDisplayEnabled:I = 0xd

.field static final blacklist TRANSACTION_getDefaultDreamComponentForUser:I = 0x5

.field static final greylist-max-o TRANSACTION_getDreamComponents:I = 0x4

.field static final blacklist TRANSACTION_getDreamComponentsForUser:I = 0xe

.field static final greylist-max-o TRANSACTION_isDreaming:I = 0x7

.field static final blacklist TRANSACTION_isDreamingOrInPreview:I = 0x8

.field static final blacklist TRANSACTION_registerDreamOverlayService:I = 0x11

.field static final blacklist TRANSACTION_setDevicePostured:I = 0x14

.field static final greylist-max-o TRANSACTION_setDreamComponents:I = 0x3

.field static final blacklist TRANSACTION_setDreamComponentsForUser:I = 0xf

.field static final blacklist TRANSACTION_setDreamIsObscured:I = 0x13

.field static final blacklist TRANSACTION_setScreensaverEnabled:I = 0x17

.field static final blacklist TRANSACTION_setSystemDreamComponent:I = 0x10

.field static final greylist-max-o TRANSACTION_startDozing:I = 0xb

.field static final blacklist TRANSACTION_startDozingOneway:I = 0x15

.field static final blacklist TRANSACTION_startDreamActivity:I = 0x12

.field static final greylist-max-o TRANSACTION_stopDozing:I = 0xc

.field static final greylist-max-o TRANSACTION_testDream:I = 0x6


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 104
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 105
    const-string v0, "android.service.dreams.IDreamManager"

    invoke-virtual {p0, p0, v0}, Landroid/service/dreams/IDreamManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;
    .registers 3

    .line 113
    if-nez p0, :cond_4

    .line 114
    const/4 p0, 0x0

    return-object p0

    .line 116
    :cond_4
    const-string v0, "android.service.dreams.IDreamManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_13

    .line 118
    check-cast v0, Landroid/service/dreams/IDreamManager;

    return-object v0

    .line 120
    :cond_13
    new-instance v0, Landroid/service/dreams/IDreamManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/dreams/IDreamManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 129
    packed-switch p0, :pswitch_data_56

    .line 225
    const/4 p0, 0x0

    return-object p0

    .line 221
    :pswitch_5
    const-string/jumbo p0, "setScreensaverEnabled"

    return-object p0

    .line 217
    :pswitch_9
    const-string p0, "finishSelfOneway"

    return-object p0

    .line 213
    :pswitch_c
    const-string/jumbo p0, "startDozingOneway"

    return-object p0

    .line 209
    :pswitch_10
    const-string/jumbo p0, "setDevicePostured"

    return-object p0

    .line 205
    :pswitch_14
    const-string/jumbo p0, "setDreamIsObscured"

    return-object p0

    .line 201
    :pswitch_18
    const-string/jumbo p0, "startDreamActivity"

    return-object p0

    .line 197
    :pswitch_1c
    const-string/jumbo p0, "registerDreamOverlayService"

    return-object p0

    .line 193
    :pswitch_20
    const-string/jumbo p0, "setSystemDreamComponent"

    return-object p0

    .line 189
    :pswitch_24
    const-string/jumbo p0, "setDreamComponentsForUser"

    return-object p0

    .line 185
    :pswitch_28
    const-string p0, "getDreamComponentsForUser"

    return-object p0

    .line 181
    :pswitch_2b
    const-string p0, "forceAmbientDisplayEnabled"

    return-object p0

    .line 177
    :pswitch_2e
    const-string/jumbo p0, "stopDozing"

    return-object p0

    .line 173
    :pswitch_32
    const-string/jumbo p0, "startDozing"

    return-object p0

    .line 169
    :pswitch_36
    const-string p0, "finishSelf"

    return-object p0

    .line 165
    :pswitch_39
    const-string p0, "canStartDreaming"

    return-object p0

    .line 161
    :pswitch_3c
    const-string p0, "isDreamingOrInPreview"

    return-object p0

    .line 157
    :pswitch_3f
    const-string p0, "isDreaming"

    return-object p0

    .line 153
    :pswitch_42
    const-string/jumbo p0, "testDream"

    return-object p0

    .line 149
    :pswitch_46
    const-string p0, "getDefaultDreamComponentForUser"

    return-object p0

    .line 145
    :pswitch_49
    const-string p0, "getDreamComponents"

    return-object p0

    .line 141
    :pswitch_4c
    const-string/jumbo p0, "setDreamComponents"

    return-object p0

    .line 137
    :pswitch_50
    const-string p0, "awaken"

    return-object p0

    .line 133
    :pswitch_53
    const-string p0, "dream"

    return-object p0

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_53
        :pswitch_50
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 124
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 875
    const/16 v0, 0x16

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 232
    invoke-static {p1}, Landroid/service/dreams/IDreamManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 236
    nop

    .line 237
    const-string v3, "android.service.dreams.IDreamManager"

    const/4 v6, 0x1

    if-lt p1, v6, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 238
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 241
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    return v6

    .line 244
    :cond_17
    packed-switch p1, :pswitch_data_1a4

    .line 466
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 458
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->setScreensaverEnabled(Z)V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    goto/16 :goto_1a2

    .line 448
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {p0, v1, v3}, Landroid/service/dreams/IDreamManager$Stub;->finishSelfOneway(Landroid/os/IBinder;Z)V

    .line 453
    goto/16 :goto_1a2

    .line 432
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/service/dreams/IDreamManager$Stub;->startDozingOneway(Landroid/os/IBinder;IIFZ)V

    .line 443
    goto/16 :goto_1a2

    .line 424
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->setDevicePostured(Z)V

    .line 427
    goto/16 :goto_1a2

    .line 416
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->setDreamIsObscured(Z)V

    .line 419
    goto/16 :goto_1a2

    .line 407
    :pswitch_73
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->startDreamActivity(Landroid/content/Intent;)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    goto/16 :goto_1a2

    .line 398
    :pswitch_86
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->registerDreamOverlayService(Landroid/content/ComponentName;)V

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    goto/16 :goto_1a2

    .line 389
    :pswitch_99
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->setSystemDreamComponent(Landroid/content/ComponentName;)V

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    goto/16 :goto_1a2

    .line 378
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 380
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ComponentName;

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {p0, v1, v2}, Landroid/service/dreams/IDreamManager$Stub;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    goto/16 :goto_1a2

    .line 368
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v0

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 373
    goto/16 :goto_1a2

    .line 359
    :pswitch_d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->forceAmbientDisplayEnabled(Z)V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    goto/16 :goto_1a2

    .line 350
    :pswitch_e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->stopDozing(Landroid/os/IBinder;)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    goto/16 :goto_1a2

    .line 333
    :pswitch_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/service/dreams/IDreamManager$Stub;->startDozing(Landroid/os/IBinder;IIFZ)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto/16 :goto_1a2

    .line 322
    :pswitch_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v1, v2}, Landroid/service/dreams/IDreamManager$Stub;->finishSelf(Landroid/os/IBinder;Z)V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    goto/16 :goto_1a2

    .line 312
    :pswitch_127
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->canStartDreaming(Z)Z

    move-result v0

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 317
    goto :goto_1a2

    .line 304
    :pswitch_139
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->isDreamingOrInPreview()Z

    move-result v0

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 307
    goto :goto_1a2

    .line 297
    :pswitch_144
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->isDreaming()Z

    move-result v0

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 300
    goto :goto_1a2

    .line 287
    :pswitch_14f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 289
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v1, v2}, Landroid/service/dreams/IDreamManager$Stub;->testDream(ILandroid/content/ComponentName;)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    goto :goto_1a2

    .line 277
    :pswitch_165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 282
    goto :goto_1a2

    .line 269
    :pswitch_177
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->getDreamComponents()[Landroid/content/ComponentName;

    move-result-object v0

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 272
    goto :goto_1a2

    .line 261
    :pswitch_182
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ComponentName;

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->setDreamComponents([Landroid/content/ComponentName;)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    goto :goto_1a2

    .line 254
    :pswitch_194
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->awaken()V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    goto :goto_1a2

    .line 248
    :pswitch_19b
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->dream()V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    nop

    .line 469
    :goto_1a2
    return v6

    nop

    :pswitch_data_1a4
    .packed-switch 0x1
        :pswitch_19b
        :pswitch_194
        :pswitch_182
        :pswitch_177
        :pswitch_165
        :pswitch_14f
        :pswitch_144
        :pswitch_139
        :pswitch_127
        :pswitch_114
        :pswitch_f4
        :pswitch_e5
        :pswitch_d6
        :pswitch_c3
        :pswitch_ac
        :pswitch_99
        :pswitch_86
        :pswitch_73
        :pswitch_67
        :pswitch_5b
        :pswitch_3e
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
