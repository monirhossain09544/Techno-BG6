.class public abstract Landroid/os/INetworkManagementService$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementService.java"

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementService"

.field static final greylist-max-o TRANSACTION_allowProtect:I = 0x1c

.field static final greylist-max-o TRANSACTION_clearInterfaceAddresses:I = 0x6

.field static final greylist-max-o TRANSACTION_denyProtect:I = 0x1d

.field static final greylist-max-o TRANSACTION_disableIpv6:I = 0xa

.field static final greylist-max-o TRANSACTION_enableIpv6:I = 0xb

.field static final greylist-max-o TRANSACTION_getInterfaceConfig:I = 0x4

.field static final greylist-max-o TRANSACTION_isBandwidthControlEnabled:I = 0x16

.field static final greylist-max-o TRANSACTION_isFirewallEnabled:I = 0x18

.field static final greylist-max-o TRANSACTION_isNetworkRestricted:I = 0x1e

.field static final greylist-max-o TRANSACTION_listInterfaces:I = 0x3

.field static final greylist-max-o TRANSACTION_registerObserver:I = 0x1

.field static final greylist-max-o TRANSACTION_removeInterfaceAlert:I = 0x11

.field static final greylist-max-o TRANSACTION_removeInterfaceQuota:I = 0xf

.field static final greylist-max-o TRANSACTION_setDataSaverModeEnabled:I = 0x14

.field static final greylist-max-o TRANSACTION_setFirewallChainEnabled:I = 0x1b

.field static final greylist-max-o TRANSACTION_setFirewallEnabled:I = 0x17

.field static final greylist-max-o TRANSACTION_setFirewallUidRule:I = 0x19

.field static final greylist-max-o TRANSACTION_setFirewallUidRules:I = 0x1a

.field static final greylist-max-o TRANSACTION_setIPv6AddrGenMode:I = 0xc

.field static final greylist-max-o TRANSACTION_setInterfaceAlert:I = 0x10

.field static final greylist-max-o TRANSACTION_setInterfaceConfig:I = 0x5

.field static final greylist-max-o TRANSACTION_setInterfaceDown:I = 0x7

.field static final greylist-max-o TRANSACTION_setInterfaceIpv6PrivacyExtensions:I = 0x9

.field static final greylist-max-o TRANSACTION_setInterfaceQuota:I = 0xe

.field static final greylist-max-o TRANSACTION_setInterfaceUp:I = 0x8

.field static final greylist-max-o TRANSACTION_setUidCleartextNetworkPolicy:I = 0x15

.field static final blacklist TRANSACTION_setUidOnMeteredNetworkAllowlist:I = 0x13

.field static final blacklist TRANSACTION_setUidOnMeteredNetworkDenylist:I = 0x12

.field static final greylist-max-o TRANSACTION_shutdown:I = 0xd

.field static final greylist-max-o TRANSACTION_unregisterObserver:I = 0x2


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    nop

    .line 160
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/INetworkManagementService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 161
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 149
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 150
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetworkManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 151
    if-eqz p1, :cond_d

    .line 154
    iput-object p1, p0, Landroid/os/INetworkManagementService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 155
    return-void

    .line 152
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    .registers 3

    .line 168
    if-nez p0, :cond_4

    .line 169
    const/4 p0, 0x0

    return-object p0

    .line 171
    :cond_4
    const-string v0, "android.os.INetworkManagementService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_13

    .line 173
    check-cast v0, Landroid/os/INetworkManagementService;

    return-object v0

    .line 175
    :cond_13
    new-instance v0, Landroid/os/INetworkManagementService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/INetworkManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 184
    packed-switch p0, :pswitch_data_74

    .line 308
    const/4 p0, 0x0

    return-object p0

    .line 304
    :pswitch_5
    const-string p0, "isNetworkRestricted"

    return-object p0

    .line 300
    :pswitch_8
    const-string p0, "denyProtect"

    return-object p0

    .line 296
    :pswitch_b
    const-string p0, "allowProtect"

    return-object p0

    .line 292
    :pswitch_e
    const-string/jumbo p0, "setFirewallChainEnabled"

    return-object p0

    .line 288
    :pswitch_12
    const-string/jumbo p0, "setFirewallUidRules"

    return-object p0

    .line 284
    :pswitch_16
    const-string/jumbo p0, "setFirewallUidRule"

    return-object p0

    .line 280
    :pswitch_1a
    const-string p0, "isFirewallEnabled"

    return-object p0

    .line 276
    :pswitch_1d
    const-string/jumbo p0, "setFirewallEnabled"

    return-object p0

    .line 272
    :pswitch_21
    const-string p0, "isBandwidthControlEnabled"

    return-object p0

    .line 268
    :pswitch_24
    const-string/jumbo p0, "setUidCleartextNetworkPolicy"

    return-object p0

    .line 264
    :pswitch_28
    const-string/jumbo p0, "setDataSaverModeEnabled"

    return-object p0

    .line 260
    :pswitch_2c
    const-string/jumbo p0, "setUidOnMeteredNetworkAllowlist"

    return-object p0

    .line 256
    :pswitch_30
    const-string/jumbo p0, "setUidOnMeteredNetworkDenylist"

    return-object p0

    .line 252
    :pswitch_34
    const-string/jumbo p0, "removeInterfaceAlert"

    return-object p0

    .line 248
    :pswitch_38
    const-string/jumbo p0, "setInterfaceAlert"

    return-object p0

    .line 244
    :pswitch_3c
    const-string/jumbo p0, "removeInterfaceQuota"

    return-object p0

    .line 240
    :pswitch_40
    const-string/jumbo p0, "setInterfaceQuota"

    return-object p0

    .line 236
    :pswitch_44
    const-string/jumbo p0, "shutdown"

    return-object p0

    .line 232
    :pswitch_48
    const-string/jumbo p0, "setIPv6AddrGenMode"

    return-object p0

    .line 228
    :pswitch_4c
    const-string p0, "enableIpv6"

    return-object p0

    .line 224
    :pswitch_4f
    const-string p0, "disableIpv6"

    return-object p0

    .line 220
    :pswitch_52
    const-string/jumbo p0, "setInterfaceIpv6PrivacyExtensions"

    return-object p0

    .line 216
    :pswitch_56
    const-string/jumbo p0, "setInterfaceUp"

    return-object p0

    .line 212
    :pswitch_5a
    const-string/jumbo p0, "setInterfaceDown"

    return-object p0

    .line 208
    :pswitch_5e
    const-string p0, "clearInterfaceAddresses"

    return-object p0

    .line 204
    :pswitch_61
    const-string/jumbo p0, "setInterfaceConfig"

    return-object p0

    .line 200
    :pswitch_65
    const-string p0, "getInterfaceConfig"

    return-object p0

    .line 196
    :pswitch_68
    const-string p0, "listInterfaces"

    return-object p0

    .line 192
    :pswitch_6b
    const-string/jumbo p0, "unregisterObserver"

    return-object p0

    .line 188
    :pswitch_6f
    const-string/jumbo p0, "registerObserver"

    return-object p0

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_61
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_1a
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 179
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1192
    const/16 v0, 0x1d

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 315
    invoke-static {p1}, Landroid/os/INetworkManagementService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist isNetworkRestricted_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1187
    iget-object v0, p0, Landroid/os/INetworkManagementService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/INetworkManagementService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/INetworkManagementService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OBSERVE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1188
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    nop

    .line 320
    const-string v0, "android.os.INetworkManagementService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 321
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 324
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    return v1

    .line 327
    :cond_17
    packed-switch p1, :pswitch_data_218

    .line 621
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 612
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 614
    invoke-virtual {p0, p1}, Landroid/os/INetworkManagementService$Stub;->isNetworkRestricted(I)Z

    move-result p1

    .line 615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 617
    goto/16 :goto_216

    .line 603
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {p0, p1}, Landroid/os/INetworkManagementService$Stub;->denyProtect(I)V

    .line 606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    goto/16 :goto_216

    .line 594
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 596
    invoke-virtual {p0, p1}, Landroid/os/INetworkManagementService$Stub;->allowProtect(I)V

    .line 597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    goto/16 :goto_216

    .line 583
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    invoke-virtual {p0, p1, p4}, Landroid/os/INetworkManagementService$Stub;->setFirewallChainEnabled(IZ)V

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    goto/16 :goto_216

    .line 570
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-virtual {p0, p1, p4, v0}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRules(I[I[I)V

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    goto/16 :goto_216

    .line 557
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 563
    invoke-virtual {p0, p1, p4, v0}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRule(III)V

    .line 564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    goto/16 :goto_216

    .line 549
    :pswitch_91
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isFirewallEnabled()Z

    move-result p1

    .line 550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 552
    goto/16 :goto_216

    .line 541
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual {p0, p1}, Landroid/os/INetworkManagementService$Stub;->setFirewallEnabled(Z)V

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    goto/16 :goto_216

    .line 533
    :pswitch_ac
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isBandwidthControlEnabled()Z

    move-result p1

    .line 534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 536
    goto/16 :goto_216

    .line 523
    :pswitch_b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, p1, p4}, Landroid/os/INetworkManagementService$Stub;->setUidCleartextNetworkPolicy(II)V

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    goto/16 :goto_216

    .line 513
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 515
    invoke-virtual {p0, p1}, Landroid/os/INetworkManagementService$Stub;->setDataSaverModeEnabled(Z)Z

    move-result p1

    .line 516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 518
    goto/16 :goto_216

    .line 502
    :pswitch_de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {p0, p1, p4}, Landroid/os/INetworkManagementService$Stub;->setUidOnMeteredNetworkAllowlist(IZ)V

    .line 507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    goto/16 :goto_216

    .line 491
    :pswitch_f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {p0, p1, p4}, Landroid/os/INetworkManagementService$Stub;->setUidOnMeteredNetworkDenylist(IZ)V

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    goto/16 :goto_216

    .line 482
    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-virtual {p0, p1}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceAlert(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    goto/16 :goto_216

    .line 471
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 475
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setInterfaceAlert(Ljava/lang/String;J)V

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    goto/16 :goto_216

    .line 462
    :pswitch_126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {p0, p1}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    goto/16 :goto_216

    .line 451
    :pswitch_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    goto/16 :goto_216

    .line 444
    :pswitch_148
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    goto/16 :goto_216

    .line 434
    :pswitch_150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {p0, p1, p4}, Landroid/os/INetworkManagementService$Stub;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    goto/16 :goto_216

    .line 425
    :pswitch_163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, p1}, Landroid/os/INetworkManagementService$Stub;->enableIpv6(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    goto/16 :goto_216

    .line 416
    :pswitch_172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    invoke-virtual {p0, p1}, Landroid/os/INetworkManagementService$Stub;->disableIpv6(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    goto/16 :goto_216

    .line 405
    :pswitch_181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, p1, p4}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    goto/16 :goto_216

    .line 396
    :pswitch_194
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {p0, p1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceUp(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    goto/16 :goto_216

    .line 387
    :pswitch_1a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {p0, p1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceDown(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    goto :goto_216

    .line 378
    :pswitch_1b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, p1}, Landroid/os/INetworkManagementService$Stub;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    goto :goto_216

    .line 367
    :pswitch_1bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 369
    sget-object p4, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/InterfaceConfiguration;

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {p0, p1, p4}, Landroid/os/INetworkManagementService$Stub;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    goto :goto_216

    .line 357
    :pswitch_1d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {p0, p1}, Landroid/os/INetworkManagementService$Stub;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object p1

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 362
    goto :goto_216

    .line 349
    :pswitch_1e7
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listInterfaces()[Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 352
    goto :goto_216

    .line 341
    :pswitch_1f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object p1

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, p1}, Landroid/os/INetworkManagementService$Stub;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto :goto_216

    .line 332
    :pswitch_204
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object p1

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, p1}, Landroid/os/INetworkManagementService$Stub;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    nop

    .line 624
    :goto_216
    return v1

    nop

    :pswitch_data_218
    .packed-switch 0x1
        :pswitch_204
        :pswitch_1f2
        :pswitch_1e7
        :pswitch_1d5
        :pswitch_1bf
        :pswitch_1b1
        :pswitch_1a3
        :pswitch_194
        :pswitch_181
        :pswitch_172
        :pswitch_163
        :pswitch_150
        :pswitch_148
        :pswitch_135
        :pswitch_126
        :pswitch_113
        :pswitch_104
        :pswitch_f1
        :pswitch_de
        :pswitch_cb
        :pswitch_b8
        :pswitch_ac
        :pswitch_9d
        :pswitch_91
        :pswitch_7a
        :pswitch_63
        :pswitch_50
        :pswitch_41
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist setDataSaverModeEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1173
    iget-object v0, p0, Landroid/os/INetworkManagementService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/INetworkManagementService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/INetworkManagementService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1174
    return-void
.end method

.method protected blacklist shutdown_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1162
    iget-object v0, p0, Landroid/os/INetworkManagementService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/INetworkManagementService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/INetworkManagementService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SHUTDOWN"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1163
    return-void
.end method
