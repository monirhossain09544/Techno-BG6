.class public abstract Lcom/android/internal/policy/IKeyguardService$Stub;
.super Landroid/os/Binder;
.source "IKeyguardService.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardService"

.field static final greylist-max-o TRANSACTION_addStateMonitorCallback:I = 0x2

.field static final greylist-max-o TRANSACTION_dismiss:I = 0x4

.field static final blacklist TRANSACTION_dismissKeyguardToLaunch:I = 0x17

.field static final greylist-max-o TRANSACTION_doKeyguardTimeout:I = 0x11

.field static final greylist-max-o TRANSACTION_onBootCompleted:I = 0x14

.field static final greylist-max-o TRANSACTION_onDreamingStarted:I = 0x5

.field static final greylist-max-o TRANSACTION_onDreamingStopped:I = 0x6

.field static final greylist-max-o TRANSACTION_onFinishedGoingToSleep:I = 0x8

.field static final greylist-max-o TRANSACTION_onFinishedWakingUp:I = 0xa

.field static final greylist-max-o TRANSACTION_onScreenTurnedOff:I = 0xe

.field static final greylist-max-o TRANSACTION_onScreenTurnedOn:I = 0xc

.field static final greylist-max-o TRANSACTION_onScreenTurningOff:I = 0xd

.field static final greylist-max-o TRANSACTION_onScreenTurningOn:I = 0xb

.field static final greylist-max-o TRANSACTION_onShortPowerPressedGoHome:I = 0x16

.field static final greylist-max-o TRANSACTION_onStartedGoingToSleep:I = 0x7

.field static final greylist-max-o TRANSACTION_onStartedWakingUp:I = 0x9

.field static final blacklist TRANSACTION_onSystemKeyPressed:I = 0x18

.field static final greylist-max-o TRANSACTION_onSystemReady:I = 0x10

.field static final greylist-max-o TRANSACTION_setCurrentUser:I = 0x13

.field static final greylist-max-o TRANSACTION_setKeyguardEnabled:I = 0xf

.field static final greylist-max-o TRANSACTION_setOccluded:I = 0x1

.field static final greylist-max-o TRANSACTION_setSwitchingUser:I = 0x12

.field static final blacklist TRANSACTION_showDismissibleKeyguard:I = 0x19

.field static final greylist-max-o TRANSACTION_startKeyguardExitAnimation:I = 0x15

.field static final greylist-max-o TRANSACTION_verifyUnlock:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 166
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 167
    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;
    .registers 3

    .line 175
    if-nez p0, :cond_4

    .line 176
    const/4 p0, 0x0

    return-object p0

    .line 178
    :cond_4
    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardService;

    if-eqz v1, :cond_13

    .line 180
    check-cast v0, Lcom/android/internal/policy/IKeyguardService;

    return-object v0

    .line 182
    :cond_13
    new-instance v0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 191
    packed-switch p0, :pswitch_data_50

    .line 295
    const/4 p0, 0x0

    return-object p0

    .line 291
    :pswitch_5
    const-string p0, "showDismissibleKeyguard"

    return-object p0

    .line 287
    :pswitch_8
    const-string p0, "onSystemKeyPressed"

    return-object p0

    .line 283
    :pswitch_b
    const-string p0, "dismissKeyguardToLaunch"

    return-object p0

    .line 279
    :pswitch_e
    const-string p0, "onShortPowerPressedGoHome"

    return-object p0

    .line 275
    :pswitch_11
    const-string p0, "startKeyguardExitAnimation"

    return-object p0

    .line 271
    :pswitch_14
    const-string p0, "onBootCompleted"

    return-object p0

    .line 267
    :pswitch_17
    const-string p0, "setCurrentUser"

    return-object p0

    .line 263
    :pswitch_1a
    const-string p0, "setSwitchingUser"

    return-object p0

    .line 259
    :pswitch_1d
    const-string p0, "doKeyguardTimeout"

    return-object p0

    .line 255
    :pswitch_20
    const-string p0, "onSystemReady"

    return-object p0

    .line 251
    :pswitch_23
    const-string p0, "setKeyguardEnabled"

    return-object p0

    .line 247
    :pswitch_26
    const-string p0, "onScreenTurnedOff"

    return-object p0

    .line 243
    :pswitch_29
    const-string p0, "onScreenTurningOff"

    return-object p0

    .line 239
    :pswitch_2c
    const-string p0, "onScreenTurnedOn"

    return-object p0

    .line 235
    :pswitch_2f
    const-string p0, "onScreenTurningOn"

    return-object p0

    .line 231
    :pswitch_32
    const-string p0, "onFinishedWakingUp"

    return-object p0

    .line 227
    :pswitch_35
    const-string p0, "onStartedWakingUp"

    return-object p0

    .line 223
    :pswitch_38
    const-string p0, "onFinishedGoingToSleep"

    return-object p0

    .line 219
    :pswitch_3b
    const-string p0, "onStartedGoingToSleep"

    return-object p0

    .line 215
    :pswitch_3e
    const-string p0, "onDreamingStopped"

    return-object p0

    .line 211
    :pswitch_41
    const-string p0, "onDreamingStarted"

    return-object p0

    .line 207
    :pswitch_44
    const-string p0, "dismiss"

    return-object p0

    .line 203
    :pswitch_47
    const-string p0, "verifyUnlock"

    return-object p0

    .line 199
    :pswitch_4a
    const-string p0, "addStateMonitorCallback"

    return-object p0

    .line 195
    :pswitch_4d
    const-string p0, "setOccluded"

    return-object p0

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4a
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

    .line 186
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 918
    const/16 v0, 0x18

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 302
    invoke-static {p1}, Lcom/android/internal/policy/IKeyguardService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    nop

    .line 307
    const-string v0, "com.android.internal.policy.IKeyguardService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 308
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 311
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    return v1

    .line 314
    :cond_17
    packed-switch p1, :pswitch_data_132

    .line 500
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 495
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->showDismissibleKeyguard()V

    .line 496
    goto/16 :goto_130

    .line 488
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemKeyPressed(I)V

    .line 491
    goto/16 :goto_130

    .line 480
    :pswitch_30
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    .line 483
    goto/16 :goto_130

    .line 474
    :pswitch_40
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onShortPowerPressedGoHome()V

    .line 475
    goto/16 :goto_130

    .line 465
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual {p0, p3, p4, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->startKeyguardExitAnimation(JJ)V

    .line 470
    goto/16 :goto_130

    .line 459
    :pswitch_55
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onBootCompleted()V

    .line 460
    goto/16 :goto_130

    .line 452
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/IKeyguardService$Stub;->setCurrentUser(I)V

    .line 455
    goto/16 :goto_130

    .line 444
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/IKeyguardService$Stub;->setSwitchingUser(Z)V

    .line 447
    goto/16 :goto_130

    .line 436
    :pswitch_72
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/IKeyguardService$Stub;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 439
    goto/16 :goto_130

    .line 430
    :pswitch_82
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemReady()V

    .line 431
    goto/16 :goto_130

    .line 423
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/IKeyguardService$Stub;->setKeyguardEnabled(Z)V

    .line 426
    goto/16 :goto_130

    .line 417
    :pswitch_93
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOff()V

    .line 418
    goto/16 :goto_130

    .line 412
    :pswitch_98
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOff()V

    .line 413
    goto/16 :goto_130

    .line 407
    :pswitch_9d
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOn()V

    .line 408
    goto/16 :goto_130

    .line 398
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDrawnCallback;

    move-result-object p3

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOn(ILcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 403
    goto/16 :goto_130

    .line 392
    :pswitch_b6
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedWakingUp()V

    .line 393
    goto/16 :goto_130

    .line 383
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedWakingUp(IZ)V

    .line 388
    goto :goto_130

    .line 373
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedGoingToSleep(IZ)V

    .line 378
    goto :goto_130

    .line 365
    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedGoingToSleep(I)V

    .line 368
    goto :goto_130

    .line 359
    :pswitch_e4
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStopped()V

    .line 360
    goto :goto_130

    .line 354
    :pswitch_e8
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStarted()V

    .line 355
    goto :goto_130

    .line 345
    :pswitch_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object p1

    .line 347
    sget-object p3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 350
    goto :goto_130

    .line 337
    :pswitch_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardExitCallback;

    move-result-object p1

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/IKeyguardService$Stub;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 340
    goto :goto_130

    .line 329
    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;

    move-result-object p1

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/IKeyguardService$Stub;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    .line 332
    goto :goto_130

    .line 319
    :pswitch_121
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/IKeyguardService$Stub;->setOccluded(ZZ)V

    .line 324
    nop

    .line 503
    :goto_130
    return v1

    nop

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_121
        :pswitch_112
        :pswitch_103
        :pswitch_ec
        :pswitch_e8
        :pswitch_e4
        :pswitch_d9
        :pswitch_ca
        :pswitch_bb
        :pswitch_b6
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_87
        :pswitch_82
        :pswitch_72
        :pswitch_66
        :pswitch_5a
        :pswitch_55
        :pswitch_45
        :pswitch_40
        :pswitch_30
        :pswitch_24
        :pswitch_1f
    .end packed-switch
.end method
