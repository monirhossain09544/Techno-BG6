.class public abstract Lcom/android/internal/app/IAxSandboxManager$Stub;
.super Landroid/os/Binder;
.source "IAxSandboxManager.java"

# interfaces
.implements Lcom/android/internal/app/IAxSandboxManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAxSandboxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAxSandboxManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addLockedApp:I = 0x4

.field static final blacklist TRANSACTION_addSandboxedPackage:I = 0x17

.field static final blacklist TRANSACTION_getAppLockState:I = 0x1

.field static final blacklist TRANSACTION_getAppLockStateForUser:I = 0x2

.field static final blacklist TRANSACTION_getEnabledSpoofSettings:I = 0x1e

.field static final blacklist TRANSACTION_getHiddenNotifications:I = 0x13

.field static final blacklist TRANSACTION_getHiddenPackages:I = 0x8

.field static final blacklist TRANSACTION_getLockablePackages:I = 0x9

.field static final blacklist TRANSACTION_getLockedPackages:I = 0x7

.field static final blacklist TRANSACTION_getRestrictedGids:I = 0x1b

.field static final blacklist TRANSACTION_getSandboxedPackages:I = 0x19

.field static final blacklist TRANSACTION_getSpoofedSetting:I = 0x21

.field static final blacklist TRANSACTION_isPackageHidden:I = 0x3

.field static final blacklist TRANSACTION_isPackageLockable:I = 0xa

.field static final blacklist TRANSACTION_isPackageSandboxed:I = 0x16

.field static final blacklist TRANSACTION_isSandboxDataIsolationEnabled:I = 0x1f

.field static final blacklist TRANSACTION_isSpoofSettingEnabled:I = 0x1c

.field static final blacklist TRANSACTION_onHiddenNotificationPosted:I = 0x14

.field static final blacklist TRANSACTION_onHiddenNotificationRemoved:I = 0x15

.field static final blacklist TRANSACTION_promptUnlock:I = 0xc

.field static final blacklist TRANSACTION_registerAppLockStateListener:I = 0xd

.field static final blacklist TRANSACTION_registerAppSessionListener:I = 0xf

.field static final blacklist TRANSACTION_registerHiddenNotificationListener:I = 0x11

.field static final blacklist TRANSACTION_removeLockedApp:I = 0x5

.field static final blacklist TRANSACTION_removeSandboxedPackage:I = 0x18

.field static final blacklist TRANSACTION_setPackageHidden:I = 0x6

.field static final blacklist TRANSACTION_setRestrictedGids:I = 0x1a

.field static final blacklist TRANSACTION_setSandboxDataIsolationEnabled:I = 0x20

.field static final blacklist TRANSACTION_setSpoofSettingEnabled:I = 0x1d

.field static final blacklist TRANSACTION_unlockApp:I = 0xb

.field static final blacklist TRANSACTION_unregisterAppLockStateListener:I = 0xe

.field static final blacklist TRANSACTION_unregisterAppSessionListener:I = 0x10

.field static final blacklist TRANSACTION_unregisterHiddenNotificationListener:I = 0x12


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 141
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 142
    const-string v0, "com.android.internal.app.IAxSandboxManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IAxSandboxManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAxSandboxManager;
    .registers 3

    .line 150
    if-nez p0, :cond_4

    .line 151
    const/4 p0, 0x0

    return-object p0

    .line 153
    :cond_4
    const-string v0, "com.android.internal.app.IAxSandboxManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/app/IAxSandboxManager;

    if-eqz v1, :cond_13

    .line 155
    check-cast v0, Lcom/android/internal/app/IAxSandboxManager;

    return-object v0

    .line 157
    :cond_13
    new-instance v0, Lcom/android/internal/app/IAxSandboxManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/app/IAxSandboxManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 166
    packed-switch p0, :pswitch_data_68

    .line 302
    const/4 p0, 0x0

    return-object p0

    .line 298
    :pswitch_5
    const-string p0, "getSpoofedSetting"

    return-object p0

    .line 294
    :pswitch_8
    const-string p0, "setSandboxDataIsolationEnabled"

    return-object p0

    .line 290
    :pswitch_b
    const-string p0, "isSandboxDataIsolationEnabled"

    return-object p0

    .line 286
    :pswitch_e
    const-string p0, "getEnabledSpoofSettings"

    return-object p0

    .line 282
    :pswitch_11
    const-string p0, "setSpoofSettingEnabled"

    return-object p0

    .line 278
    :pswitch_14
    const-string p0, "isSpoofSettingEnabled"

    return-object p0

    .line 274
    :pswitch_17
    const-string p0, "getRestrictedGids"

    return-object p0

    .line 270
    :pswitch_1a
    const-string p0, "setRestrictedGids"

    return-object p0

    .line 266
    :pswitch_1d
    const-string p0, "getSandboxedPackages"

    return-object p0

    .line 262
    :pswitch_20
    const-string p0, "removeSandboxedPackage"

    return-object p0

    .line 258
    :pswitch_23
    const-string p0, "addSandboxedPackage"

    return-object p0

    .line 254
    :pswitch_26
    const-string p0, "isPackageSandboxed"

    return-object p0

    .line 250
    :pswitch_29
    const-string p0, "onHiddenNotificationRemoved"

    return-object p0

    .line 246
    :pswitch_2c
    const-string p0, "onHiddenNotificationPosted"

    return-object p0

    .line 242
    :pswitch_2f
    const-string p0, "getHiddenNotifications"

    return-object p0

    .line 238
    :pswitch_32
    const-string p0, "unregisterHiddenNotificationListener"

    return-object p0

    .line 234
    :pswitch_35
    const-string p0, "registerHiddenNotificationListener"

    return-object p0

    .line 230
    :pswitch_38
    const-string p0, "unregisterAppSessionListener"

    return-object p0

    .line 226
    :pswitch_3b
    const-string p0, "registerAppSessionListener"

    return-object p0

    .line 222
    :pswitch_3e
    const-string p0, "unregisterAppLockStateListener"

    return-object p0

    .line 218
    :pswitch_41
    const-string p0, "registerAppLockStateListener"

    return-object p0

    .line 214
    :pswitch_44
    const-string p0, "promptUnlock"

    return-object p0

    .line 210
    :pswitch_47
    const-string p0, "unlockApp"

    return-object p0

    .line 206
    :pswitch_4a
    const-string p0, "isPackageLockable"

    return-object p0

    .line 202
    :pswitch_4d
    const-string p0, "getLockablePackages"

    return-object p0

    .line 198
    :pswitch_50
    const-string p0, "getHiddenPackages"

    return-object p0

    .line 194
    :pswitch_53
    const-string p0, "getLockedPackages"

    return-object p0

    .line 190
    :pswitch_56
    const-string p0, "setPackageHidden"

    return-object p0

    .line 186
    :pswitch_59
    const-string p0, "removeLockedApp"

    return-object p0

    .line 182
    :pswitch_5c
    const-string p0, "addLockedApp"

    return-object p0

    .line 178
    :pswitch_5f
    const-string p0, "isPackageHidden"

    return-object p0

    .line 174
    :pswitch_62
    const-string p0, "getAppLockStateForUser"

    return-object p0

    .line 170
    :pswitch_65
    const-string p0, "getAppLockState"

    return-object p0

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
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

    .line 161
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1244
    const/16 v0, 0x20

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 309
    invoke-static {p1}, Lcom/android/internal/app/IAxSandboxManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 313
    nop

    .line 314
    const-string v0, "com.android.internal.app.IAxSandboxManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 315
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 318
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    return v1

    .line 321
    :cond_17
    packed-switch p1, :pswitch_data_266

    .line 642
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 631
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 633
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 635
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/app/IAxSandboxManager$Stub;->getSpoofedSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 636
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 638
    goto/16 :goto_264

    .line 620
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 623
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 624
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/app/IAxSandboxManager$Stub;->setSandboxDataIsolationEnabled(Ljava/lang/String;Z)V

    .line 625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    goto/16 :goto_264

    .line 610
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IAxSandboxManager$Stub;->isSandboxDataIsolationEnabled(Ljava/lang/String;)Z

    move-result p1

    .line 613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 615
    goto/16 :goto_264

    .line 600
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IAxSandboxManager$Stub;->getEnabledSpoofSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 605
    goto/16 :goto_264

    .line 587
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 593
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/app/IAxSandboxManager$Stub;->setSpoofSettingEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    goto/16 :goto_264

    .line 575
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 579
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/app/IAxSandboxManager$Stub;->isSpoofSettingEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 580
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 582
    goto/16 :goto_264

    .line 565
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IAxSandboxManager$Stub;->getRestrictedGids(Ljava/lang/String;)[I

    move-result-object p1

    .line 568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 570
    goto/16 :goto_264

    .line 554
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 556
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/app/IAxSandboxManager$Stub;->setRestrictedGids(Ljava/lang/String;[I)V

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    goto/16 :goto_264

    .line 546
    :pswitch_c3
    invoke-virtual {p0}, Lcom/android/internal/app/IAxSandboxManager$Stub;->getSandboxedPackages()Ljava/util/List;

    move-result-object p1

    .line 547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 549
    goto/16 :goto_264

    .line 538
    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IAxSandboxManager$Stub;->removeSandboxedPackage(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    goto/16 :goto_264

    .line 529
    :pswitch_de
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IAxSandboxManager$Stub;->addSandboxedPackage(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    goto/16 :goto_264

    .line 519
    :pswitch_ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IAxSandboxManager$Stub;->isPackageSandboxed(Ljava/lang/String;)Z

    move-result p1

    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 524
    goto/16 :goto_264

    .line 510
    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 512
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IAxSandboxManager$Stub;->onHiddenNotificationRemoved(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    goto/16 :goto_264

    .line 501
    :pswitch_10f
    sget-object p1, Lcom/android/internal/app/HiddenNotificationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/HiddenNotificationInfo;

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IAxSandboxManager$Stub;->onHiddenNotificationPosted(Lcom/android/internal/app/HiddenNotificationInfo;)V

    .line 504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    goto/16 :goto_264

    .line 493
    :pswitch_122
    invoke-virtual {p0}, Lcom/android/internal/app/IAxSandboxManager$Stub;->getHiddenNotifications()Ljava/util/List;

    move-result-object p1

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 496
    goto/16 :goto_264

    .line 485
    :pswitch_12e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/IHiddenNotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHiddenNotificationListener;

    move-result-object p1

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 487
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IAxSandboxManager$Stub;->unregisterHiddenNotificationListener(Lcom/android/internal/app/IHiddenNotificationListener;)V

    .line 488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    goto/16 :goto_264

    .line 476
    :pswitch_141
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/IHiddenNotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHiddenNotificationListener;

    move-result-object p1

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IAxSandboxManager$Stub;->registerHiddenNotificationListener(Lcom/android/internal/app/IHiddenNotificationListener;)V

    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    goto/16 :goto_264

    .line 467
    :pswitch_154
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/IAppSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppSessionListener;

    move-result-object p1

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IAxSandboxManager$Stub;->unregisterAppSessionListener(Lcom/android/internal/app/IAppSessionListener;)V

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    goto/16 :goto_264

    .line 458
    :pswitch_167
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/IAppSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppSessionListener;

    move-result-object p1

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IAxSandboxManager$Stub;->registerAppSessionListener(Lcom/android/internal/app/IAppSessionListener;)V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    goto/16 :goto_264

    .line 449
    :pswitch_17a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/IAppLockStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppLockStateListener;

    move-result-object p1

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IAxSandboxManager$Stub;->unregisterAppLockStateListener(Lcom/android/internal/app/IAppLockStateListener;)V

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    goto/16 :goto_264

    .line 440
    :pswitch_18d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/IAppLockStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppLockStateListener;

    move-result-object p1

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IAxSandboxManager$Stub;->registerAppLockStateListener(Lcom/android/internal/app/IAppLockStateListener;)V

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    goto/16 :goto_264

    .line 429
    :pswitch_1a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/app/IAxSandboxManager$Stub;->promptUnlock(Ljava/lang/String;I)V

    .line 434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    goto/16 :goto_264

    .line 418
    :pswitch_1b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/app/IAxSandboxManager$Stub;->unlockApp(Ljava/lang/String;I)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    goto/16 :goto_264

    .line 408
    :pswitch_1c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IAxSandboxManager$Stub;->isPackageLockable(Ljava/lang/String;)Z

    move-result p1

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 413
    goto/16 :goto_264

    .line 400
    :pswitch_1d9
    invoke-virtual {p0}, Lcom/android/internal/app/IAxSandboxManager$Stub;->getLockablePackages()Ljava/util/List;

    move-result-object p1

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 403
    goto/16 :goto_264

    .line 393
    :pswitch_1e5
    invoke-virtual {p0}, Lcom/android/internal/app/IAxSandboxManager$Stub;->getHiddenPackages()Ljava/util/List;

    move-result-object p1

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 396
    goto/16 :goto_264

    .line 386
    :pswitch_1f1
    invoke-virtual {p0}, Lcom/android/internal/app/IAxSandboxManager$Stub;->getLockedPackages()Ljava/util/List;

    move-result-object p1

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 389
    goto :goto_264

    .line 376
    :pswitch_1fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/app/IAxSandboxManager$Stub;->setPackageHidden(Ljava/lang/String;Z)V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    goto :goto_264

    .line 367
    :pswitch_20e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IAxSandboxManager$Stub;->removeLockedApp(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    goto :goto_264

    .line 358
    :pswitch_21c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IAxSandboxManager$Stub;->addLockedApp(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    goto :goto_264

    .line 348
    :pswitch_22a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IAxSandboxManager$Stub;->isPackageHidden(Ljava/lang/String;)Z

    move-result p1

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 353
    goto :goto_264

    .line 336
    :pswitch_23c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/app/IAxSandboxManager$Stub;->getAppLockStateForUser(Ljava/lang/String;I)I

    move-result p1

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    goto :goto_264

    .line 326
    :pswitch_252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IAxSandboxManager$Stub;->getAppLockState(Ljava/lang/String;)I

    move-result p1

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    nop

    .line 645
    :goto_264
    return v1

    nop

    :pswitch_data_266
    .packed-switch 0x1
        :pswitch_252
        :pswitch_23c
        :pswitch_22a
        :pswitch_21c
        :pswitch_20e
        :pswitch_1fc
        :pswitch_1f1
        :pswitch_1e5
        :pswitch_1d9
        :pswitch_1c6
        :pswitch_1b3
        :pswitch_1a0
        :pswitch_18d
        :pswitch_17a
        :pswitch_167
        :pswitch_154
        :pswitch_141
        :pswitch_12e
        :pswitch_122
        :pswitch_10f
        :pswitch_100
        :pswitch_ed
        :pswitch_de
        :pswitch_cf
        :pswitch_c3
        :pswitch_b0
        :pswitch_9d
        :pswitch_86
        :pswitch_6f
        :pswitch_5c
        :pswitch_49
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
