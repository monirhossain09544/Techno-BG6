.class public abstract Lcom/android/internal/compat/IPlatformCompat$Stub;
.super Landroid/os/Binder;
.source "IPlatformCompat.java"

# interfaces
.implements Lcom/android/internal/compat/IPlatformCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/compat/IPlatformCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/IPlatformCompat$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist PERMISSIONS_getAppConfig:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_isChangeEnabled:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_isChangeEnabledByPackageName:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_isChangeEnabledByUid:[Ljava/lang/String;

.field static final blacklist TRANSACTION_clearOverride:I = 0xb

.field static final blacklist TRANSACTION_clearOverrideForTest:I = 0xc

.field static final blacklist TRANSACTION_clearOverrides:I = 0x11

.field static final blacklist TRANSACTION_clearOverridesForTest:I = 0x12

.field static final blacklist TRANSACTION_disableTargetSdkChanges:I = 0x10

.field static final blacklist TRANSACTION_enableTargetSdkChanges:I = 0xf

.field static final blacklist TRANSACTION_getAppConfig:I = 0x13

.field static final blacklist TRANSACTION_getOverrideValidator:I = 0x16

.field static final blacklist TRANSACTION_isChangeEnabled:I = 0x4

.field static final blacklist TRANSACTION_isChangeEnabledByPackageName:I = 0x5

.field static final blacklist TRANSACTION_isChangeEnabledByUid:I = 0x6

.field static final blacklist TRANSACTION_isLogChangeChecksToStatsd:I = 0x17

.field static final blacklist TRANSACTION_listAllChanges:I = 0x14

.field static final blacklist TRANSACTION_listUIChanges:I = 0x15

.field static final blacklist TRANSACTION_putAllOverridesOnReleaseBuilds:I = 0x8

.field static final blacklist TRANSACTION_putOverridesOnReleaseBuilds:I = 0x9

.field static final blacklist TRANSACTION_removeAllOverridesOnReleaseBuilds:I = 0xd

.field static final blacklist TRANSACTION_removeOverridesOnReleaseBuilds:I = 0xe

.field static final blacklist TRANSACTION_reportChange:I = 0x1

.field static final blacklist TRANSACTION_reportChangeByPackageName:I = 0x2

.field static final blacklist TRANSACTION_reportChangeByUid:I = 0x3

.field static final blacklist TRANSACTION_setLogChangeChecksToStatsd:I = 0x18

.field static final blacklist TRANSACTION_setOverrides:I = 0x7

.field static final blacklist TRANSACTION_setOverridesForTest:I = 0xa


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1514
    const-string v0, "android.permission.LOG_COMPAT_CHANGE"

    const-string v1, "android.permission.READ_COMPAT_CHANGE_CONFIG"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_isChangeEnabled:[Ljava/lang/String;

    .line 1520
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_isChangeEnabledByPackageName:[Ljava/lang/String;

    .line 1526
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_isChangeEnabledByUid:[Ljava/lang/String;

    .line 1592
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_getAppConfig:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 401
    nop

    .line 402
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 401
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 403
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 391
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 392
    const-string v0, "com.android.internal.compat.IPlatformCompat"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 393
    if-eqz p1, :cond_d

    .line 396
    iput-object p1, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 397
    return-void

    .line 394
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;
    .registers 3

    .line 410
    if-nez p0, :cond_4

    .line 411
    const/4 p0, 0x0

    return-object p0

    .line 413
    :cond_4
    const-string v0, "com.android.internal.compat.IPlatformCompat"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/compat/IPlatformCompat;

    if-eqz v1, :cond_13

    .line 415
    check-cast v0, Lcom/android/internal/compat/IPlatformCompat;

    return-object v0

    .line 417
    :cond_13
    new-instance v0, Lcom/android/internal/compat/IPlatformCompat$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/compat/IPlatformCompat$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 426
    packed-switch p0, :pswitch_data_4e

    .line 526
    const/4 p0, 0x0

    return-object p0

    .line 522
    :pswitch_5
    const-string p0, "setLogChangeChecksToStatsd"

    return-object p0

    .line 518
    :pswitch_8
    const-string p0, "isLogChangeChecksToStatsd"

    return-object p0

    .line 514
    :pswitch_b
    const-string p0, "getOverrideValidator"

    return-object p0

    .line 510
    :pswitch_e
    const-string p0, "listUIChanges"

    return-object p0

    .line 506
    :pswitch_11
    const-string p0, "listAllChanges"

    return-object p0

    .line 502
    :pswitch_14
    const-string p0, "getAppConfig"

    return-object p0

    .line 498
    :pswitch_17
    const-string p0, "clearOverridesForTest"

    return-object p0

    .line 494
    :pswitch_1a
    const-string p0, "clearOverrides"

    return-object p0

    .line 490
    :pswitch_1d
    const-string p0, "disableTargetSdkChanges"

    return-object p0

    .line 486
    :pswitch_20
    const-string p0, "enableTargetSdkChanges"

    return-object p0

    .line 482
    :pswitch_23
    const-string p0, "removeOverridesOnReleaseBuilds"

    return-object p0

    .line 478
    :pswitch_26
    const-string p0, "removeAllOverridesOnReleaseBuilds"

    return-object p0

    .line 474
    :pswitch_29
    const-string p0, "clearOverrideForTest"

    return-object p0

    .line 470
    :pswitch_2c
    const-string p0, "clearOverride"

    return-object p0

    .line 466
    :pswitch_2f
    const-string p0, "setOverridesForTest"

    return-object p0

    .line 462
    :pswitch_32
    const-string p0, "putOverridesOnReleaseBuilds"

    return-object p0

    .line 458
    :pswitch_35
    const-string p0, "putAllOverridesOnReleaseBuilds"

    return-object p0

    .line 454
    :pswitch_38
    const-string p0, "setOverrides"

    return-object p0

    .line 450
    :pswitch_3b
    const-string p0, "isChangeEnabledByUid"

    return-object p0

    .line 446
    :pswitch_3e
    const-string p0, "isChangeEnabledByPackageName"

    return-object p0

    .line 442
    :pswitch_41
    const-string p0, "isChangeEnabled"

    return-object p0

    .line 438
    :pswitch_44
    const-string p0, "reportChangeByUid"

    return-object p0

    .line 434
    :pswitch_47
    const-string p0, "reportChangeByPackageName"

    return-object p0

    .line 430
    :pswitch_4a
    const-string p0, "reportChange"

    return-object p0

    nop

    :pswitch_data_4e
    .packed-switch 0x1
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

    .line 421
    return-object p0
.end method

.method protected blacklist clearOverrideForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1559
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1560
    return-void
.end method

.method protected blacklist clearOverride_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1554
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1555
    return-void
.end method

.method protected blacklist clearOverridesForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1589
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1590
    return-void
.end method

.method protected blacklist clearOverrides_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1584
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1585
    return-void
.end method

.method protected blacklist disableTargetSdkChanges_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1579
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1580
    return-void
.end method

.method protected blacklist enableTargetSdkChanges_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1574
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1575
    return-void
.end method

.method protected blacklist getAppConfig_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1595
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_getAppConfig:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 1596
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1609
    const/16 v0, 0x17

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 533
    invoke-static {p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist isChangeEnabledByPackageName_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1523
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_isChangeEnabledByPackageName:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 1524
    return-void
.end method

.method protected blacklist isChangeEnabledByUid_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1529
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_isChangeEnabledByUid:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 1530
    return-void
.end method

.method protected blacklist isChangeEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1517
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_isChangeEnabled:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 1518
    return-void
.end method

.method protected blacklist listAllChanges_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1600
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1601
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    nop

    .line 538
    const-string v0, "com.android.internal.compat.IPlatformCompat"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 539
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 542
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    return v1

    .line 545
    :cond_17
    packed-switch p1, :pswitch_data_1fa

    .line 797
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 789
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 791
    invoke-virtual {p0, p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->setLogChangeChecksToStatsd(Z)V

    .line 792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    goto/16 :goto_1f9

    .line 781
    :pswitch_2e
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isLogChangeChecksToStatsd()Z

    move-result p1

    .line 782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 784
    goto/16 :goto_1f9

    .line 774
    :pswitch_3a
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;

    move-result-object p1

    .line 775
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 777
    goto/16 :goto_1f9

    .line 767
    :pswitch_46
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->listUIChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object p1

    .line 768
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 770
    goto/16 :goto_1f9

    .line 760
    :pswitch_52
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->listAllChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object p1

    .line 761
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 763
    goto/16 :goto_1f9

    .line 751
    :pswitch_5e
    sget-object p1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 752
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 753
    invoke-virtual {p0, p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;

    move-result-object p1

    .line 754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 756
    goto/16 :goto_1f9

    .line 742
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 743
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 744
    invoke-virtual {p0, p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverridesForTest(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    goto/16 :goto_1f9

    .line 733
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 734
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 735
    invoke-virtual {p0, p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverrides(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    goto/16 :goto_1f9

    .line 721
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 723
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 724
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->disableTargetSdkChanges(Ljava/lang/String;I)I

    move-result p1

    .line 726
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    goto/16 :goto_1f9

    .line 709
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 711
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 712
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->enableTargetSdkChanges(Ljava/lang/String;I)I

    move-result p1

    .line 714
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    goto/16 :goto_1f9

    .line 698
    :pswitch_c1
    sget-object p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    .line 700
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->removeOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V

    .line 703
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    goto/16 :goto_1f9

    .line 689
    :pswitch_d8
    sget-object p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 691
    invoke-virtual {p0, p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->removeAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;)V

    .line 692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    goto/16 :goto_1f9

    .line 677
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 679
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 681
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverrideForTest(JLjava/lang/String;)Z

    move-result p1

    .line 682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 684
    goto/16 :goto_1f9

    .line 665
    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverride(JLjava/lang/String;)Z

    move-result p1

    .line 670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 672
    goto/16 :goto_1f9

    .line 654
    :pswitch_119
    sget-object p1, Lcom/android/internal/compat/CompatibilityChangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/compat/CompatibilityChangeConfig;

    .line 656
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 657
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 658
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    goto/16 :goto_1f9

    .line 643
    :pswitch_130
    sget-object p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 646
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->putOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;)V

    .line 648
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    goto/16 :goto_1f9

    .line 634
    :pswitch_147
    sget-object p1, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->putAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;)V

    .line 637
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    goto/16 :goto_1f9

    .line 623
    :pswitch_15a
    sget-object p1, Lcom/android/internal/compat/CompatibilityChangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/compat/CompatibilityChangeConfig;

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    goto/16 :goto_1f9

    .line 611
    :pswitch_171
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 615
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabledByUid(JI)Z

    move-result p1

    .line 616
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 618
    goto :goto_1f9

    .line 597
    :pswitch_187
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    invoke-virtual {p0, v2, v3, p1, p4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result p1

    .line 604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 606
    goto :goto_1f9

    .line 585
    :pswitch_1a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 587
    sget-object p1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p1

    .line 590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 592
    goto :goto_1f9

    .line 574
    :pswitch_1bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChangeByUid(JI)V

    .line 579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    goto :goto_1f9

    .line 561
    :pswitch_1cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {p0, v2, v3, p1, p4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChangeByPackageName(JLjava/lang/String;I)V

    .line 568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    goto :goto_1f9

    .line 550
    :pswitch_1e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 552
    sget-object p1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChange(JLandroid/content/pm/ApplicationInfo;)V

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    nop

    .line 800
    :goto_1f9
    return v1

    :pswitch_data_1fa
    .packed-switch 0x1
        :pswitch_1e3
        :pswitch_1cd
        :pswitch_1bb
        :pswitch_1a1
        :pswitch_187
        :pswitch_171
        :pswitch_15a
        :pswitch_147
        :pswitch_130
        :pswitch_119
        :pswitch_102
        :pswitch_eb
        :pswitch_d8
        :pswitch_c1
        :pswitch_aa
        :pswitch_93
        :pswitch_84
        :pswitch_75
        :pswitch_5e
        :pswitch_52
        :pswitch_46
        :pswitch_3a
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist putAllOverridesOnReleaseBuilds_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1539
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG_ON_RELEASE_BUILD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1540
    return-void
.end method

.method protected blacklist putOverridesOnReleaseBuilds_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1544
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG_ON_RELEASE_BUILD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1545
    return-void
.end method

.method protected blacklist removeAllOverridesOnReleaseBuilds_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1564
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG_ON_RELEASE_BUILD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1565
    return-void
.end method

.method protected blacklist removeOverridesOnReleaseBuilds_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1569
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG_ON_RELEASE_BUILD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1570
    return-void
.end method

.method protected blacklist reportChangeByPackageName_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1506
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOG_COMPAT_CHANGE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1507
    return-void
.end method

.method protected blacklist reportChangeByUid_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1511
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOG_COMPAT_CHANGE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1512
    return-void
.end method

.method protected blacklist reportChange_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1501
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOG_COMPAT_CHANGE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1502
    return-void
.end method

.method protected blacklist setOverridesForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1549
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1550
    return-void
.end method

.method protected blacklist setOverrides_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1534
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1535
    return-void
.end method
