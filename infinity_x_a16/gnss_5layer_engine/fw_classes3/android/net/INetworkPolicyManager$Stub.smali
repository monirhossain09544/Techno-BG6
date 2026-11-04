.class public abstract Landroid/net/INetworkPolicyManager$Stub;
.super Landroid/os/Binder;
.source "INetworkPolicyManager.java"

# interfaces
.implements Landroid/net/INetworkPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkPolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkPolicyManager"

.field static final greylist-max-o TRANSACTION_addUidPolicy:I = 0x2

.field static final blacklist TRANSACTION_applyRestore:I = 0x1c

.field static final greylist-max-o TRANSACTION_factoryReset:I = 0x18

.field static final blacklist TRANSACTION_getBackupPayload:I = 0x1b

.field static final blacklist TRANSACTION_getMultipathPreference:I = 0x11

.field static final greylist-max-o TRANSACTION_getNetworkPolicies:I = 0x9

.field static final greylist-max-o TRANSACTION_getRestrictBackground:I = 0xc

.field static final greylist-max-o TRANSACTION_getRestrictBackgroundByCaller:I = 0xd

.field static final blacklist TRANSACTION_getRestrictBackgroundStatus:I = 0xe

.field static final blacklist TRANSACTION_getSubscriptionPlan:I = 0x12

.field static final greylist-max-o TRANSACTION_getSubscriptionPlans:I = 0x14

.field static final greylist-max-o TRANSACTION_getSubscriptionPlansOwner:I = 0x16

.field static final greylist-max-o TRANSACTION_getUidPolicy:I = 0x4

.field static final greylist-max-o TRANSACTION_getUidsWithPolicy:I = 0x5

.field static final greylist-max-o TRANSACTION_isUidNetworkingBlocked:I = 0x19

.field static final blacklist TRANSACTION_isUidRestrictedOnMeteredNetworks:I = 0x1a

.field static final blacklist TRANSACTION_notifyDenylistChanged:I = 0x1d

.field static final blacklist TRANSACTION_notifyStatsProviderWarningOrLimitReached:I = 0x13

.field static final greylist-max-o TRANSACTION_registerListener:I = 0x6

.field static final greylist-max-o TRANSACTION_removeUidPolicy:I = 0x3

.field static final greylist-max-o TRANSACTION_setDeviceIdleMode:I = 0xf

.field static final greylist-max-o TRANSACTION_setNetworkPolicies:I = 0x8

.field static final greylist-max-o TRANSACTION_setRestrictBackground:I = 0xb

.field static final greylist-max-o TRANSACTION_setSubscriptionOverride:I = 0x17

.field static final greylist-max-o TRANSACTION_setSubscriptionPlans:I = 0x15

.field static final greylist-max-o TRANSACTION_setUidPolicy:I = 0x1

.field static final greylist-max-o TRANSACTION_setWifiMeteredOverride:I = 0x10

.field static final greylist-max-o TRANSACTION_snoozeLimit:I = 0xa

.field static final greylist-max-o TRANSACTION_unregisterListener:I = 0x7


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    nop

    .line 152
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 153
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 141
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 142
    const-string v0, "android.net.INetworkPolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 143
    if-eqz p1, :cond_d

    .line 146
    iput-object p1, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 147
    return-void

    .line 144
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;
    .registers 3

    .line 160
    if-nez p0, :cond_4

    .line 161
    const/4 p0, 0x0

    return-object p0

    .line 163
    :cond_4
    const-string v0, "android.net.INetworkPolicyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/INetworkPolicyManager;

    if-eqz v1, :cond_13

    .line 165
    check-cast v0, Landroid/net/INetworkPolicyManager;

    return-object v0

    .line 167
    :cond_13
    new-instance v0, Landroid/net/INetworkPolicyManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetworkPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 176
    packed-switch p0, :pswitch_data_6a

    .line 296
    const/4 p0, 0x0

    return-object p0

    .line 292
    :pswitch_5
    const-string/jumbo p0, "notifyDenylistChanged"

    return-object p0

    .line 288
    :pswitch_9
    const-string p0, "applyRestore"

    return-object p0

    .line 284
    :pswitch_c
    const-string p0, "getBackupPayload"

    return-object p0

    .line 280
    :pswitch_f
    const-string p0, "isUidRestrictedOnMeteredNetworks"

    return-object p0

    .line 276
    :pswitch_12
    const-string p0, "isUidNetworkingBlocked"

    return-object p0

    .line 272
    :pswitch_15
    const-string p0, "factoryReset"

    return-object p0

    .line 268
    :pswitch_18
    const-string/jumbo p0, "setSubscriptionOverride"

    return-object p0

    .line 264
    :pswitch_1c
    const-string p0, "getSubscriptionPlansOwner"

    return-object p0

    .line 260
    :pswitch_1f
    const-string/jumbo p0, "setSubscriptionPlans"

    return-object p0

    .line 256
    :pswitch_23
    const-string p0, "getSubscriptionPlans"

    return-object p0

    .line 252
    :pswitch_26
    const-string/jumbo p0, "notifyStatsProviderWarningOrLimitReached"

    return-object p0

    .line 248
    :pswitch_2a
    const-string p0, "getSubscriptionPlan"

    return-object p0

    .line 244
    :pswitch_2d
    const-string p0, "getMultipathPreference"

    return-object p0

    .line 240
    :pswitch_30
    const-string/jumbo p0, "setWifiMeteredOverride"

    return-object p0

    .line 236
    :pswitch_34
    const-string/jumbo p0, "setDeviceIdleMode"

    return-object p0

    .line 232
    :pswitch_38
    const-string p0, "getRestrictBackgroundStatus"

    return-object p0

    .line 228
    :pswitch_3b
    const-string p0, "getRestrictBackgroundByCaller"

    return-object p0

    .line 224
    :pswitch_3e
    const-string p0, "getRestrictBackground"

    return-object p0

    .line 220
    :pswitch_41
    const-string/jumbo p0, "setRestrictBackground"

    return-object p0

    .line 216
    :pswitch_45
    const-string/jumbo p0, "snoozeLimit"

    return-object p0

    .line 212
    :pswitch_49
    const-string p0, "getNetworkPolicies"

    return-object p0

    .line 208
    :pswitch_4c
    const-string/jumbo p0, "setNetworkPolicies"

    return-object p0

    .line 204
    :pswitch_50
    const-string/jumbo p0, "unregisterListener"

    return-object p0

    .line 200
    :pswitch_54
    const-string/jumbo p0, "registerListener"

    return-object p0

    .line 196
    :pswitch_58
    const-string p0, "getUidsWithPolicy"

    return-object p0

    .line 192
    :pswitch_5b
    const-string p0, "getUidPolicy"

    return-object p0

    .line 188
    :pswitch_5e
    const-string/jumbo p0, "removeUidPolicy"

    return-object p0

    .line 184
    :pswitch_62
    const-string p0, "addUidPolicy"

    return-object p0

    .line 180
    :pswitch_65
    const-string/jumbo p0, "setUidPolicy"

    return-object p0

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_65
        :pswitch_62
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected blacklist addUidPolicy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1144
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1145
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 171
    return-object p0
.end method

.method protected blacklist factoryReset_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1210
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1211
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1224
    const/16 v0, 0x1c

    return v0
.end method

.method protected blacklist getNetworkPolicies_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1171
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1172
    return-void
.end method

.method protected blacklist getRestrictBackgroundByCaller_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1187
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1188
    return-void
.end method

.method protected blacklist getRestrictBackground_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1182
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1183
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 303
    invoke-static {p1}, Landroid/net/INetworkPolicyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist getUidPolicy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1154
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1155
    return-void
.end method

.method protected blacklist getUidsWithPolicy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1159
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1160
    return-void
.end method

.method protected blacklist isUidRestrictedOnMeteredNetworks_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1216
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OBSERVE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1217
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    nop

    .line 308
    const-string v3, "android.net.INetworkPolicyManager"

    const/4 v8, 0x1

    if-lt p1, v8, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 309
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 312
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    return v8

    .line 315
    :cond_17
    packed-switch p1, :pswitch_data_24a

    .line 616
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 606
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {p0, v1, v3}, Landroid/net/INetworkPolicyManager$Stub;->notifyDenylistChanged([I[I)V

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    goto/16 :goto_248

    .line 595
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {p0, v1, v3}, Landroid/net/INetworkPolicyManager$Stub;->applyRestore([BI)V

    .line 600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    goto/16 :goto_248

    .line 585
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getBackupPayload(I)[B

    move-result-object v0

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 590
    goto/16 :goto_248

    .line 575
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 577
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->isUidRestrictedOnMeteredNetworks(I)Z

    move-result v0

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 580
    goto/16 :goto_248

    .line 563
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {p0, v1, v3}, Landroid/net/INetworkPolicyManager$Stub;->isUidNetworkingBlocked(IZ)Z

    move-result v0

    .line 568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 570
    goto/16 :goto_248

    .line 554
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->factoryReset(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    goto/16 :goto_248

    .line 535
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 547
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/net/INetworkPolicyManager$Stub;->setSubscriptionOverride(III[IJLjava/lang/String;)V

    .line 548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    goto/16 :goto_248

    .line 525
    :pswitch_b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getSubscriptionPlansOwner(I)Ljava/lang/String;

    move-result-object v0

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 530
    goto/16 :goto_248

    .line 510
    :pswitch_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 512
    sget-object v2, Landroid/telephony/SubscriptionPlan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/SubscriptionPlan;

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetworkPolicyManager$Stub;->setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V

    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    goto/16 :goto_248

    .line 498
    :pswitch_e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {p0, v1, v2}, Landroid/net/INetworkPolicyManager$Stub;->getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 505
    goto/16 :goto_248

    .line 491
    :pswitch_ff
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->notifyStatsProviderWarningOrLimitReached()V

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    goto/16 :goto_248

    .line 482
    :pswitch_107
    sget-object v1, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 487
    goto/16 :goto_248

    .line 472
    :pswitch_11e
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getMultipathPreference(Landroid/net/Network;)I

    move-result v0

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    goto/16 :goto_248

    .line 461
    :pswitch_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {p0, v1, v2}, Landroid/net/INetworkPolicyManager$Stub;->setWifiMeteredOverride(Ljava/lang/String;I)V

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    goto/16 :goto_248

    .line 452
    :pswitch_148
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setDeviceIdleMode(Z)V

    .line 455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    goto/16 :goto_248

    .line 442
    :pswitch_157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackgroundStatus(I)I

    move-result v0

    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    goto/16 :goto_248

    .line 434
    :pswitch_16a
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackgroundByCaller()I

    move-result v0

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    goto/16 :goto_248

    .line 427
    :pswitch_176
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackground()Z

    move-result v0

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 430
    goto/16 :goto_248

    .line 419
    :pswitch_182
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setRestrictBackground(Z)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    goto/16 :goto_248

    .line 410
    :pswitch_191
    sget-object v1, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->snoozeLimit(Landroid/net/NetworkTemplate;)V

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    goto/16 :goto_248

    .line 400
    :pswitch_1a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 405
    goto/16 :goto_248

    .line 391
    :pswitch_1b7
    sget-object v1, Landroid/net/NetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/NetworkPolicy;

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    goto/16 :goto_248

    .line 382
    :pswitch_1ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v1

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    goto :goto_248

    .line 373
    :pswitch_1dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v1

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    goto :goto_248

    .line 363
    :pswitch_1ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getUidsWithPolicy(I)[I

    move-result-object v0

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 368
    goto :goto_248

    .line 353
    :pswitch_200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getUidPolicy(I)I

    move-result v0

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    goto :goto_248

    .line 342
    :pswitch_212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v1, v2}, Landroid/net/INetworkPolicyManager$Stub;->removeUidPolicy(II)V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    goto :goto_248

    .line 331
    :pswitch_224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {p0, v1, v2}, Landroid/net/INetworkPolicyManager$Stub;->addUidPolicy(II)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    goto :goto_248

    .line 320
    :pswitch_236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v1, v2}, Landroid/net/INetworkPolicyManager$Stub;->setUidPolicy(II)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    nop

    .line 619
    :goto_248
    return v8

    nop

    :pswitch_data_24a
    .packed-switch 0x1
        :pswitch_236
        :pswitch_224
        :pswitch_212
        :pswitch_200
        :pswitch_1ee
        :pswitch_1dc
        :pswitch_1ca
        :pswitch_1b7
        :pswitch_1a4
        :pswitch_191
        :pswitch_182
        :pswitch_176
        :pswitch_16a
        :pswitch_157
        :pswitch_148
        :pswitch_135
        :pswitch_11e
        :pswitch_107
        :pswitch_ff
        :pswitch_e8
        :pswitch_c8
        :pswitch_b5
        :pswitch_91
        :pswitch_82
        :pswitch_6b
        :pswitch_58
        :pswitch_45
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist removeUidPolicy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1149
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1150
    return-void
.end method

.method protected blacklist setDeviceIdleMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1193
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1194
    return-void
.end method

.method protected blacklist setNetworkPolicies_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1166
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1167
    return-void
.end method

.method protected blacklist setUidPolicy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1139
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1140
    return-void
.end method

.method protected blacklist setWifiMeteredOverride_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1198
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1199
    return-void
.end method

.method protected blacklist snoozeLimit_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1176
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1177
    return-void
.end method
