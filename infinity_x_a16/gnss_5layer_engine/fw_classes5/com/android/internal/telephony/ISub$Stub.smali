.class public abstract Lcom/android/internal/telephony/ISub$Stub;
.super Landroid/os/Binder;
.source "ISub.java"

# interfaces
.implements Lcom/android/internal/telephony/ISub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISub$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISub"

.field static final blacklist TRANSACTION_addSubInfo:I = 0xb

.field static final blacklist TRANSACTION_addSubscriptionsIntoGroup:I = 0x17

.field static final blacklist TRANSACTION_canDisablePhysicalSubscription:I = 0x2d

.field static final blacklist TRANSACTION_createSubscriptionGroup:I = 0x12

.field static final greylist-max-o TRANSACTION_getAccessibleSubscriptionInfoList:I = 0x9

.field static final blacklist TRANSACTION_getActiveDataSubscriptionId:I = 0x2c

.field static final greylist-max-o TRANSACTION_getActiveSubIdList:I = 0x26

.field static final greylist-max-o TRANSACTION_getActiveSubInfoCount:I = 0x6

.field static final greylist-max-o TRANSACTION_getActiveSubInfoCountMax:I = 0x7

.field static final greylist-max-o TRANSACTION_getActiveSubscriptionInfo:I = 0x2

.field static final greylist-max-o TRANSACTION_getActiveSubscriptionInfoForIccId:I = 0x3

.field static final greylist-max-o TRANSACTION_getActiveSubscriptionInfoForSimSlotIndex:I = 0x4

.field static final greylist-max-o TRANSACTION_getActiveSubscriptionInfoList:I = 0x5

.field static final greylist-max-o TRANSACTION_getAllSubInfoList:I = 0x1

.field static final greylist-max-o TRANSACTION_getAvailableSubscriptionInfoList:I = 0x8

.field static final greylist-max-o TRANSACTION_getDefaultDataSubId:I = 0x1e

.field static final greylist-max-o TRANSACTION_getDefaultSmsSubId:I = 0x23

.field static final blacklist TRANSACTION_getDefaultSmsSubIdAsUser:I = 0x24

.field static final greylist-max-o TRANSACTION_getDefaultSubId:I = 0x1b

.field static final blacklist TRANSACTION_getDefaultSubIdAsUser:I = 0x1c

.field static final greylist-max-o TRANSACTION_getDefaultVoiceSubId:I = 0x20

.field static final blacklist TRANSACTION_getDefaultVoiceSubIdAsUser:I = 0x21

.field static final blacklist TRANSACTION_getEnabledSubscriptionId:I = 0x2a

.field static final blacklist TRANSACTION_getOpportunisticSubscriptions:I = 0x15

.field static final greylist-max-o TRANSACTION_getPhoneId:I = 0x1d

.field static final blacklist TRANSACTION_getPhoneNumber:I = 0x31

.field static final blacklist TRANSACTION_getPhoneNumberFromFirstAvailableSource:I = 0x32

.field static final blacklist TRANSACTION_getPreferredDataSubscriptionId:I = 0x14

.field static final greylist-max-o TRANSACTION_getSlotIndex:I = 0x19

.field static final greylist-max-o TRANSACTION_getSubId:I = 0x1a

.field static final blacklist TRANSACTION_getSubscriptionInfoListAssociatedWithUser:I = 0x3a

.field static final greylist-max-o TRANSACTION_getSubscriptionProperty:I = 0x28

.field static final blacklist TRANSACTION_getSubscriptionUserHandle:I = 0x37

.field static final blacklist TRANSACTION_getSubscriptionsInGroup:I = 0x18

.field static final greylist-max-o TRANSACTION_isActiveSubId:I = 0x2b

.field static final blacklist TRANSACTION_isSubscriptionAssociatedWithCallingUser:I = 0x38

.field static final blacklist TRANSACTION_isSubscriptionAssociatedWithUser:I = 0x39

.field static final blacklist TRANSACTION_isSubscriptionEnabled:I = 0x29

.field static final blacklist TRANSACTION_removeSubInfo:I = 0xc

.field static final blacklist TRANSACTION_removeSubscriptionsFromGroup:I = 0x16

.field static final greylist-max-o TRANSACTION_requestEmbeddedSubscriptionInfoListRefresh:I = 0xa

.field static final blacklist TRANSACTION_restoreAllSimSpecificSettingsFromBackup:I = 0x3b

.field static final greylist-max-o TRANSACTION_setDataRoaming:I = 0x10

.field static final greylist-max-o TRANSACTION_setDefaultDataSubId:I = 0x1f

.field static final greylist-max-o TRANSACTION_setDefaultSmsSubId:I = 0x25

.field static final greylist-max-o TRANSACTION_setDefaultVoiceSubId:I = 0x22

.field static final blacklist TRANSACTION_setDeviceToDeviceStatusSharing:I = 0x2f

.field static final blacklist TRANSACTION_setDeviceToDeviceStatusSharingContacts:I = 0x30

.field static final greylist-max-o TRANSACTION_setDisplayNameUsingSrc:I = 0xe

.field static final greylist-max-o TRANSACTION_setDisplayNumber:I = 0xf

.field static final blacklist TRANSACTION_setGroupOwner:I = 0x35

.field static final greylist-max-o TRANSACTION_setIconTint:I = 0xd

.field static final blacklist TRANSACTION_setOpportunistic:I = 0x11

.field static final blacklist TRANSACTION_setPhoneNumber:I = 0x33

.field static final blacklist TRANSACTION_setPreferredDataSubscriptionId:I = 0x13

.field static final greylist-max-o TRANSACTION_setSubscriptionProperty:I = 0x27

.field static final blacklist TRANSACTION_setSubscriptionUserHandle:I = 0x36

.field static final blacklist TRANSACTION_setTransferStatus:I = 0x3c

.field static final blacklist TRANSACTION_setUiccApplicationsEnabled:I = 0x2e

.field static final blacklist TRANSACTION_setUsageSetting:I = 0x34


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 508
    nop

    .line 509
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 508
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ISub$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 510
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 498
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 499
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISub$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 500
    if-eqz p1, :cond_d

    .line 503
    iput-object p1, p0, Lcom/android/internal/telephony/ISub$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 504
    return-void

    .line 501
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;
    .registers 3

    .line 517
    if-nez p0, :cond_4

    .line 518
    const/4 p0, 0x0

    return-object p0

    .line 520
    :cond_4
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/ISub;

    if-eqz v1, :cond_13

    .line 522
    check-cast v0, Lcom/android/internal/telephony/ISub;

    return-object v0

    .line 524
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/ISub$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ISub$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 533
    packed-switch p0, :pswitch_data_ba

    .line 777
    const/4 p0, 0x0

    return-object p0

    .line 773
    :pswitch_5
    const-string p0, "setTransferStatus"

    return-object p0

    .line 769
    :pswitch_8
    const-string p0, "restoreAllSimSpecificSettingsFromBackup"

    return-object p0

    .line 765
    :pswitch_b
    const-string p0, "getSubscriptionInfoListAssociatedWithUser"

    return-object p0

    .line 761
    :pswitch_e
    const-string p0, "isSubscriptionAssociatedWithUser"

    return-object p0

    .line 757
    :pswitch_11
    const-string p0, "isSubscriptionAssociatedWithCallingUser"

    return-object p0

    .line 753
    :pswitch_14
    const-string p0, "getSubscriptionUserHandle"

    return-object p0

    .line 749
    :pswitch_17
    const-string p0, "setSubscriptionUserHandle"

    return-object p0

    .line 745
    :pswitch_1a
    const-string p0, "setGroupOwner"

    return-object p0

    .line 741
    :pswitch_1d
    const-string p0, "setUsageSetting"

    return-object p0

    .line 737
    :pswitch_20
    const-string p0, "setPhoneNumber"

    return-object p0

    .line 733
    :pswitch_23
    const-string p0, "getPhoneNumberFromFirstAvailableSource"

    return-object p0

    .line 729
    :pswitch_26
    const-string p0, "getPhoneNumber"

    return-object p0

    .line 725
    :pswitch_29
    const-string p0, "setDeviceToDeviceStatusSharingContacts"

    return-object p0

    .line 721
    :pswitch_2c
    const-string p0, "setDeviceToDeviceStatusSharing"

    return-object p0

    .line 717
    :pswitch_2f
    const-string p0, "setUiccApplicationsEnabled"

    return-object p0

    .line 713
    :pswitch_32
    const-string p0, "canDisablePhysicalSubscription"

    return-object p0

    .line 709
    :pswitch_35
    const-string p0, "getActiveDataSubscriptionId"

    return-object p0

    .line 705
    :pswitch_38
    const-string p0, "isActiveSubId"

    return-object p0

    .line 701
    :pswitch_3b
    const-string p0, "getEnabledSubscriptionId"

    return-object p0

    .line 697
    :pswitch_3e
    const-string p0, "isSubscriptionEnabled"

    return-object p0

    .line 693
    :pswitch_41
    const-string p0, "getSubscriptionProperty"

    return-object p0

    .line 689
    :pswitch_44
    const-string p0, "setSubscriptionProperty"

    return-object p0

    .line 685
    :pswitch_47
    const-string p0, "getActiveSubIdList"

    return-object p0

    .line 681
    :pswitch_4a
    const-string p0, "setDefaultSmsSubId"

    return-object p0

    .line 677
    :pswitch_4d
    const-string p0, "getDefaultSmsSubIdAsUser"

    return-object p0

    .line 673
    :pswitch_50
    const-string p0, "getDefaultSmsSubId"

    return-object p0

    .line 669
    :pswitch_53
    const-string p0, "setDefaultVoiceSubId"

    return-object p0

    .line 665
    :pswitch_56
    const-string p0, "getDefaultVoiceSubIdAsUser"

    return-object p0

    .line 661
    :pswitch_59
    const-string p0, "getDefaultVoiceSubId"

    return-object p0

    .line 657
    :pswitch_5c
    const-string p0, "setDefaultDataSubId"

    return-object p0

    .line 653
    :pswitch_5f
    const-string p0, "getDefaultDataSubId"

    return-object p0

    .line 649
    :pswitch_62
    const-string p0, "getPhoneId"

    return-object p0

    .line 645
    :pswitch_65
    const-string p0, "getDefaultSubIdAsUser"

    return-object p0

    .line 641
    :pswitch_68
    const-string p0, "getDefaultSubId"

    return-object p0

    .line 637
    :pswitch_6b
    const-string p0, "getSubId"

    return-object p0

    .line 633
    :pswitch_6e
    const-string p0, "getSlotIndex"

    return-object p0

    .line 629
    :pswitch_71
    const-string p0, "getSubscriptionsInGroup"

    return-object p0

    .line 625
    :pswitch_74
    const-string p0, "addSubscriptionsIntoGroup"

    return-object p0

    .line 621
    :pswitch_77
    const-string p0, "removeSubscriptionsFromGroup"

    return-object p0

    .line 617
    :pswitch_7a
    const-string p0, "getOpportunisticSubscriptions"

    return-object p0

    .line 613
    :pswitch_7d
    const-string p0, "getPreferredDataSubscriptionId"

    return-object p0

    .line 609
    :pswitch_80
    const-string p0, "setPreferredDataSubscriptionId"

    return-object p0

    .line 605
    :pswitch_83
    const-string p0, "createSubscriptionGroup"

    return-object p0

    .line 601
    :pswitch_86
    const-string p0, "setOpportunistic"

    return-object p0

    .line 597
    :pswitch_89
    const-string p0, "setDataRoaming"

    return-object p0

    .line 593
    :pswitch_8c
    const-string p0, "setDisplayNumber"

    return-object p0

    .line 589
    :pswitch_8f
    const-string p0, "setDisplayNameUsingSrc"

    return-object p0

    .line 585
    :pswitch_92
    const-string p0, "setIconTint"

    return-object p0

    .line 581
    :pswitch_95
    const-string p0, "removeSubInfo"

    return-object p0

    .line 577
    :pswitch_98
    const-string p0, "addSubInfo"

    return-object p0

    .line 573
    :pswitch_9b
    const-string p0, "requestEmbeddedSubscriptionInfoListRefresh"

    return-object p0

    .line 569
    :pswitch_9e
    const-string p0, "getAccessibleSubscriptionInfoList"

    return-object p0

    .line 565
    :pswitch_a1
    const-string p0, "getAvailableSubscriptionInfoList"

    return-object p0

    .line 561
    :pswitch_a4
    const-string p0, "getActiveSubInfoCountMax"

    return-object p0

    .line 557
    :pswitch_a7
    const-string p0, "getActiveSubInfoCount"

    return-object p0

    .line 553
    :pswitch_aa
    const-string p0, "getActiveSubscriptionInfoList"

    return-object p0

    .line 549
    :pswitch_ad
    const-string p0, "getActiveSubscriptionInfoForSimSlotIndex"

    return-object p0

    .line 545
    :pswitch_b0
    const-string p0, "getActiveSubscriptionInfoForIccId"

    return-object p0

    .line 541
    :pswitch_b3
    const-string p0, "getActiveSubscriptionInfo"

    return-object p0

    .line 537
    :pswitch_b6
    const-string p0, "getAllSubInfoList"

    return-object p0

    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
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

    .line 528
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2907
    const/16 v0, 0x3b

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 784
    invoke-static {p1}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 788
    nop

    .line 789
    const-string v0, "com.android.internal.telephony.ISub"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 790
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 793
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 794
    return v1

    .line 796
    :cond_17
    packed-switch p1, :pswitch_data_560

    .line 1482
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1472
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1475
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1476
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ISub$Stub;->setTransferStatus(II)V

    .line 1477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1478
    goto/16 :goto_55f

    .line 1463
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 1464
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1465
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ISub$Stub;->restoreAllSimSpecificSettingsFromBackup([B)V

    .line 1466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1467
    goto/16 :goto_55f

    .line 1453
    :pswitch_42
    sget-object p1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    .line 1454
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1455
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ISub$Stub;->getSubscriptionInfoListAssociatedWithUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 1456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1457
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1458
    goto/16 :goto_55f

    .line 1441
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1443
    sget-object p4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/UserHandle;

    .line 1444
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1445
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ISub$Stub;->isSubscriptionAssociatedWithUser(ILandroid/os/UserHandle;)Z

    move-result p1

    .line 1446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1447
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1448
    goto/16 :goto_55f

    .line 1427
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1429
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1431
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1432
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1433
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/ISub$Stub;->isSubscriptionAssociatedWithCallingUser(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 1434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1435
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1436
    goto/16 :goto_55f

    .line 1417
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1418
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1419
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ISub$Stub;->getSubscriptionUserHandle(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 1420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1422
    goto/16 :goto_55f

    .line 1405
    :pswitch_a2
    sget-object p1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    .line 1407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1408
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1409
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ISub$Stub;->setSubscriptionUserHandle(Landroid/os/UserHandle;I)I

    move-result p1

    .line 1410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1411
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1412
    goto/16 :goto_55f

    .line 1394
    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1396
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1397
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1398
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ISub$Stub;->setGroupOwner(ILjava/lang/String;)V

    .line 1399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1400
    goto/16 :goto_55f

    .line 1380
    :pswitch_d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1384
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1385
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1386
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/ISub$Stub;->setUsageSetting(IILjava/lang/String;)I

    move-result p1

    .line 1387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1389
    goto/16 :goto_55f

    .line 1363
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1367
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1369
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1371
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1372
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1373
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/ISub$Stub;->setPhoneNumber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1375
    goto/16 :goto_55f

    .line 1349
    :pswitch_10b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1351
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1353
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1354
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1355
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/ISub$Stub;->getPhoneNumberFromFirstAvailableSource(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1358
    goto/16 :goto_55f

    .line 1333
    :pswitch_127
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1337
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1339
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1340
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1341
    invoke-virtual {p0, p1, p4, v0, v3}, Lcom/android/internal/telephony/ISub$Stub;->getPhoneNumber(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1343
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1344
    goto/16 :goto_55f

    .line 1321
    :pswitch_147
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1324
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1325
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ISub$Stub;->setDeviceToDeviceStatusSharingContacts(Ljava/lang/String;I)I

    move-result p1

    .line 1326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1328
    goto/16 :goto_55f

    .line 1309
    :pswitch_15f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1312
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1313
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ISub$Stub;->setDeviceToDeviceStatusSharing(II)I

    move-result p1

    .line 1314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1315
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1316
    goto/16 :goto_55f

    .line 1298
    :pswitch_177
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1301
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1302
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ISub$Stub;->setUiccApplicationsEnabled(ZI)V

    .line 1303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1304
    goto/16 :goto_55f

    .line 1290
    :pswitch_18b
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->canDisablePhysicalSubscription()Z

    move-result p1

    .line 1291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1292
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1293
    goto/16 :goto_55f

    .line 1283
    :pswitch_198
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveDataSubscriptionId()I

    move-result p1

    .line 1284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1286
    goto/16 :goto_55f

    .line 1270
    :pswitch_1a5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1272
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1274
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1275
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1276
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/ISub$Stub;->isActiveSubId(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 1277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1279
    goto/16 :goto_55f

    .line 1260
    :pswitch_1c1
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1261
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1262
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ISub$Stub;->getEnabledSubscriptionId(I)I

    move-result p1

    .line 1263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    goto/16 :goto_55f

    .line 1250
    :pswitch_1d5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1251
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1252
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ISub$Stub;->isSubscriptionEnabled(I)Z

    move-result p1

    .line 1253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1254
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1255
    goto/16 :goto_55f

    .line 1234
    :pswitch_1e9
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1241
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1242
    invoke-virtual {p0, p1, p4, v0, v3}, Lcom/android/internal/telephony/ISub$Stub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1245
    goto/16 :goto_55f

    .line 1221
    :pswitch_209
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1226
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1227
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/ISub$Stub;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    goto/16 :goto_55f

    .line 1211
    :pswitch_221
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1212
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1213
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubIdList(Z)[I

    move-result-object p1

    .line 1214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1216
    goto/16 :goto_55f

    .line 1202
    :pswitch_235
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1203
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1204
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultSmsSubId(I)V

    .line 1205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    goto/16 :goto_55f

    .line 1192
    :pswitch_245
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1193
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1194
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSmsSubIdAsUser(I)I

    move-result p1

    .line 1195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1196
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1197
    goto/16 :goto_55f

    .line 1184
    :pswitch_259
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSmsSubId()I

    move-result p1

    .line 1185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    goto/16 :goto_55f

    .line 1176
    :pswitch_266
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1177
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1178
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultVoiceSubId(I)V

    .line 1179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    goto/16 :goto_55f

    .line 1166
    :pswitch_276
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1167
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1168
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultVoiceSubIdAsUser(I)I

    move-result p1

    .line 1169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    goto/16 :goto_55f

    .line 1158
    :pswitch_28a
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultVoiceSubId()I

    move-result p1

    .line 1159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1160
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1161
    goto/16 :goto_55f

    .line 1150
    :pswitch_297
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1152
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultDataSubId(I)V

    .line 1153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    goto/16 :goto_55f

    .line 1142
    :pswitch_2a7
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultDataSubId()I

    move-result p1

    .line 1143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1145
    goto/16 :goto_55f

    .line 1133
    :pswitch_2b4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1134
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1135
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ISub$Stub;->getPhoneId(I)I

    move-result p1

    .line 1136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1138
    goto/16 :goto_55f

    .line 1123
    :pswitch_2c8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1124
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1125
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSubIdAsUser(I)I

    move-result p1

    .line 1126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1127
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1128
    goto/16 :goto_55f

    .line 1115
    :pswitch_2dc
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSubId()I

    move-result p1

    .line 1116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    goto/16 :goto_55f

    .line 1106
    :pswitch_2e9
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1107
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1108
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ISub$Stub;->getSubId(I)I

    move-result p1

    .line 1109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    goto/16 :goto_55f

    .line 1096
    :pswitch_2fd
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1097
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1098
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ISub$Stub;->getSlotIndex(I)I

    move-result p1

    .line 1099
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1101
    goto/16 :goto_55f

    .line 1082
    :pswitch_311
    move-object v2, p0

    sget-object p1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelUuid;

    .line 1084
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1086
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1087
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1088
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/ISub$Stub;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1089
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1090
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1091
    goto/16 :goto_55f

    .line 1069
    :pswitch_331
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 1071
    sget-object p4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/ParcelUuid;

    .line 1073
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1074
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1075
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/ISub$Stub;->addSubscriptionsIntoGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    goto/16 :goto_55f

    .line 1056
    :pswitch_34d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 1058
    sget-object p4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/ParcelUuid;

    .line 1060
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1061
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/ISub$Stub;->removeSubscriptionsFromGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    goto/16 :goto_55f

    .line 1044
    :pswitch_369
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1046
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1047
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1048
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ISub$Stub;->getOpportunisticSubscriptions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1049
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1051
    goto/16 :goto_55f

    .line 1036
    :pswitch_381
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getPreferredDataSubscriptionId()I

    move-result p1

    .line 1037
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    goto/16 :goto_55f

    .line 1024
    :pswitch_38e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1026
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1028
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISetOpportunisticDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    move-result-object v0

    .line 1029
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1030
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/ISub$Stub;->setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V

    .line 1031
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    goto/16 :goto_55f

    .line 1012
    :pswitch_3aa
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 1014
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1015
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1016
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ISub$Stub;->createSubscriptionGroup([ILjava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p1

    .line 1017
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1019
    goto/16 :goto_55f

    .line 998
    :pswitch_3c2
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1000
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1002
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1003
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1004
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/ISub$Stub;->setOpportunistic(ZILjava/lang/String;)I

    move-result p1

    .line 1005
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    goto/16 :goto_55f

    .line 986
    :pswitch_3de
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 988
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 989
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ISub$Stub;->setDataRoaming(II)I

    move-result p1

    .line 991
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    goto/16 :goto_55f

    .line 974
    :pswitch_3f6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 976
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 977
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 978
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayNumber(Ljava/lang/String;I)I

    move-result p1

    .line 979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    goto/16 :goto_55f

    .line 960
    :pswitch_40e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 962
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 964
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 965
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayNameUsingSrc(Ljava/lang/String;II)I

    move-result p1

    .line 967
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    goto/16 :goto_55f

    .line 948
    :pswitch_42a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 950
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 951
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ISub$Stub;->setIconTint(II)I

    move-result p1

    .line 953
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    goto/16 :goto_55f

    .line 936
    :pswitch_442
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 938
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 939
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 940
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ISub$Stub;->removeSubInfo(Ljava/lang/String;I)Z

    move-result p1

    .line 941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 943
    goto/16 :goto_55f

    .line 920
    :pswitch_45a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 922
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 924
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 926
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 927
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 928
    invoke-virtual {p0, p1, p4, v0, v3}, Lcom/android/internal/telephony/ISub$Stub;->addSubInfo(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    .line 929
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    goto/16 :goto_55f

    .line 912
    :pswitch_47a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 913
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 914
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ISub$Stub;->requestEmbeddedSubscriptionInfoListRefresh(I)V

    .line 915
    goto/16 :goto_55f

    .line 902
    :pswitch_487
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 903
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ISub$Stub;->getAccessibleSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 905
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 907
    goto/16 :goto_55f

    .line 890
    :pswitch_49b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 892
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 893
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 894
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ISub$Stub;->getAvailableSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 895
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 897
    goto/16 :goto_55f

    .line 882
    :pswitch_4b3
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubInfoCountMax()I

    move-result p1

    .line 883
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    goto/16 :goto_55f

    .line 869
    :pswitch_4c0
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 873
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 874
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubInfoCount(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    .line 876
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 878
    goto/16 :goto_55f

    .line 855
    :pswitch_4dc
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 857
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 859
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 860
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 861
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    .line 862
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 864
    goto :goto_55f

    .line 841
    :pswitch_4f7
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 843
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 846
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 850
    goto :goto_55f

    .line 827
    :pswitch_512
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 829
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 831
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 832
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 833
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 834
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 836
    goto :goto_55f

    .line 813
    :pswitch_52d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 815
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 819
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 822
    goto :goto_55f

    .line 801
    :pswitch_548
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 803
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 805
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ISub$Stub;->getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 806
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 808
    nop

    .line 1485
    :goto_55f
    return v1

    :pswitch_data_560
    .packed-switch 0x1
        :pswitch_548
        :pswitch_52d
        :pswitch_512
        :pswitch_4f7
        :pswitch_4dc
        :pswitch_4c0
        :pswitch_4b3
        :pswitch_49b
        :pswitch_487
        :pswitch_47a
        :pswitch_45a
        :pswitch_442
        :pswitch_42a
        :pswitch_40e
        :pswitch_3f6
        :pswitch_3de
        :pswitch_3c2
        :pswitch_3aa
        :pswitch_38e
        :pswitch_381
        :pswitch_369
        :pswitch_34d
        :pswitch_331
        :pswitch_311
        :pswitch_2fd
        :pswitch_2e9
        :pswitch_2dc
        :pswitch_2c8
        :pswitch_2b4
        :pswitch_2a7
        :pswitch_297
        :pswitch_28a
        :pswitch_276
        :pswitch_266
        :pswitch_259
        :pswitch_245
        :pswitch_235
        :pswitch_221
        :pswitch_209
        :pswitch_1e9
        :pswitch_1d5
        :pswitch_1c1
        :pswitch_1a5
        :pswitch_198
        :pswitch_18b
        :pswitch_177
        :pswitch_15f
        :pswitch_147
        :pswitch_127
        :pswitch_10b
        :pswitch_eb
        :pswitch_d0
        :pswitch_bd
        :pswitch_a2
        :pswitch_8f
        :pswitch_74
        :pswitch_59
        :pswitch_42
        :pswitch_33
        :pswitch_20
    .end packed-switch
.end method

.method protected blacklist setTransferStatus_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2902
    iget-object v0, p0, Lcom/android/internal/telephony/ISub$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/telephony/ISub$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/telephony/ISub$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2903
    return-void
.end method
