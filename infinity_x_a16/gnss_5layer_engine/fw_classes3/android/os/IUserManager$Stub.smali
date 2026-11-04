.class public abstract Landroid/os/IUserManager$Stub;
.super Landroid/os/Binder;
.source "IUserManager.java"

# interfaces
.implements Landroid/os/IUserManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUserManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IUserManager"

.field static final blacklist TRANSACTION_addUserRestrictionsListener:I = 0x38

.field static final blacklist TRANSACTION_canAddMoreProfilesToUser:I = 0x1f

.field static final blacklist TRANSACTION_canAddMoreUsersOfType:I = 0x1c

.field static final blacklist TRANSACTION_canAddPrivateProfile:I = 0x2e

.field static final greylist-max-o TRANSACTION_canHaveRestrictedProfile:I = 0x2d

.field static final greylist-max-o TRANSACTION_clearSeedAccountData:I = 0x48

.field static final blacklist TRANSACTION_createProfileForUserEvenWhenDisallowedWithThrow:I = 0x4f

.field static final blacklist TRANSACTION_createProfileForUserWithThrow:I = 0x5

.field static final blacklist TRANSACTION_createRestrictedProfileWithThrow:I = 0x6

.field static final blacklist TRANSACTION_createUserWithAttributes:I = 0x43

.field static final blacklist TRANSACTION_createUserWithThrow:I = 0x3

.field static final greylist-max-o TRANSACTION_evictCredentialEncryptionKey:I = 0xb

.field static final greylist-max-o TRANSACTION_getApplicationRestrictions:I = 0x3b

.field static final greylist-max-o TRANSACTION_getApplicationRestrictionsForUser:I = 0x3c

.field static final blacklist TRANSACTION_getBootUser:I = 0x6a

.field static final blacklist TRANSACTION_getCommunalProfileId:I = 0x15

.field static final greylist-max-o TRANSACTION_getCredentialOwnerProfile:I = 0x1

.field static final blacklist TRANSACTION_getCurrentAllowedNumberOfUsers:I = 0x1b

.field static final greylist-max-o TRANSACTION_getDefaultGuestRestrictions:I = 0x3e

.field static final blacklist TRANSACTION_getGuestUsers:I = 0x41

.field static final blacklist TRANSACTION_getMainDisplayIdAssignedToUser:I = 0x60

.field static final blacklist TRANSACTION_getMainUserId:I = 0x13

.field static final blacklist TRANSACTION_getPreInstallableSystemPackages:I = 0x7

.field static final blacklist TRANSACTION_getPreviousUserToEnterForeground:I = 0x16

.field static final greylist-max-o TRANSACTION_getPrimaryUser:I = 0x12

.field static final blacklist TRANSACTION_getProfileAccessibilityLabelResId:I = 0x5a

.field static final greylist-max-o TRANSACTION_getProfileIds:I = 0x19

.field static final blacklist TRANSACTION_getProfileIdsExcludingHidden:I = 0x6b

.field static final blacklist TRANSACTION_getProfileLabelResId:I = 0x59

.field static final greylist-max-o TRANSACTION_getProfileParent:I = 0x20

.field static final greylist-max-o TRANSACTION_getProfileParentId:I = 0x2

.field static final blacklist TRANSACTION_getProfileType:I = 0x4b

.field static final greylist-max-o TRANSACTION_getProfiles:I = 0x18

.field static final blacklist TRANSACTION_getRemainingCreatableProfileCount:I = 0x1e

.field static final blacklist TRANSACTION_getRemainingCreatableUserCount:I = 0x1d

.field static final greylist-max-o TRANSACTION_getSeedAccountName:I = 0x45

.field static final greylist-max-o TRANSACTION_getSeedAccountOptions:I = 0x47

.field static final greylist-max-o TRANSACTION_getSeedAccountType:I = 0x46

.field static final greylist-max-o TRANSACTION_getUserAccount:I = 0x26

.field static final blacklist TRANSACTION_getUserBadgeColorResId:I = 0x55

.field static final blacklist TRANSACTION_getUserBadgeDarkColorResId:I = 0x56

.field static final blacklist TRANSACTION_getUserBadgeLabelResId:I = 0x54

.field static final blacklist TRANSACTION_getUserBadgeNoBackgroundResId:I = 0x53

.field static final blacklist TRANSACTION_getUserBadgeResId:I = 0x52

.field static final greylist-max-o TRANSACTION_getUserCreationTime:I = 0x28

.field static final greylist-max-o TRANSACTION_getUserHandle:I = 0x30

.field static final greylist-max-o TRANSACTION_getUserIcon:I = 0x11

.field static final blacklist TRANSACTION_getUserIconBadgeResId:I = 0x51

.field static final greylist-max-o TRANSACTION_getUserInfo:I = 0x24

.field static final blacklist TRANSACTION_getUserLogoutability:I = 0x2b

.field static final blacklist TRANSACTION_getUserName:I = 0x65

.field static final blacklist TRANSACTION_getUserPropertiesCopy:I = 0x25

.field static final blacklist TRANSACTION_getUserRemovability:I = 0xe

.field static final greylist-max-o TRANSACTION_getUserRestrictionSource:I = 0x31

.field static final greylist-max-o TRANSACTION_getUserRestrictionSources:I = 0x32

.field static final greylist-max-o TRANSACTION_getUserRestrictions:I = 0x33

.field static final greylist-max-o TRANSACTION_getUserSerialNumber:I = 0x2f

.field static final greylist-max-o TRANSACTION_getUserStartRealtime:I = 0x66

.field static final blacklist TRANSACTION_getUserStatusBarIconResId:I = 0x57

.field static final blacklist TRANSACTION_getUserSwitchability:I = 0x29

.field static final greylist-max-o TRANSACTION_getUserUnlockRealtime:I = 0x67

.field static final greylist-max-o TRANSACTION_getUsers:I = 0x17

.field static final blacklist TRANSACTION_getVisibleUsers:I = 0x5f

.field static final blacklist TRANSACTION_hasBadge:I = 0x58

.field static final greylist-max-o TRANSACTION_hasBaseUserRestriction:I = 0x34

.field static final greylist-max-o TRANSACTION_hasRestrictedProfiles:I = 0x63

.field static final greylist-max-o TRANSACTION_hasUserRestriction:I = 0x35

.field static final greylist-max-o TRANSACTION_hasUserRestrictionOnAnyUser:I = 0x36

.field static final blacklist TRANSACTION_isAdminUser:I = 0x4d

.field static final greylist-max-o TRANSACTION_isDemoUser:I = 0x4c

.field static final blacklist TRANSACTION_isForegroundUserAdmin:I = 0x61

.field static final blacklist TRANSACTION_isHeadlessSystemUserMode:I = 0x22

.field static final blacklist TRANSACTION_isMainUser:I = 0x14

.field static final blacklist TRANSACTION_isPreCreated:I = 0x4e

.field static final greylist-max-o TRANSACTION_isQuietModeEnabled:I = 0x42

.field static final greylist-max-o TRANSACTION_isRestricted:I = 0x2c

.field static final greylist-max-o TRANSACTION_isSameProfileGroup:I = 0x21

.field static final blacklist TRANSACTION_isSettingRestrictedForUser:I = 0x37

.field static final blacklist TRANSACTION_isUserForeground:I = 0x5d

.field static final greylist-max-o TRANSACTION_isUserNameSet:I = 0x62

.field static final blacklist TRANSACTION_isUserOfType:I = 0x23

.field static final greylist-max-o TRANSACTION_isUserRunning:I = 0x5c

.field static final blacklist TRANSACTION_isUserSwitcherEnabled:I = 0x2a

.field static final blacklist TRANSACTION_isUserTypeEnabled:I = 0x1a

.field static final greylist-max-o TRANSACTION_isUserUnlocked:I = 0x5b

.field static final greylist-max-o TRANSACTION_isUserUnlockingOrUnlocked:I = 0x50

.field static final blacklist TRANSACTION_isUserVisible:I = 0x5e

.field static final greylist-max-o TRANSACTION_markGuestForDeletion:I = 0x40

.field static final blacklist TRANSACTION_preCreateUserWithThrow:I = 0x4

.field static final greylist-max-o TRANSACTION_removeUser:I = 0xc

.field static final greylist-max-o TRANSACTION_removeUserEvenWhenDisallowed:I = 0xd

.field static final blacklist TRANSACTION_removeUserWhenPossible:I = 0x3f

.field static final greylist-max-o TRANSACTION_requestQuietModeEnabled:I = 0x64

.field static final blacklist TRANSACTION_revokeUserAdmin:I = 0xa

.field static final greylist-max-o TRANSACTION_setApplicationRestrictions:I = 0x3a

.field static final blacklist TRANSACTION_setBootUser:I = 0x69

.field static final greylist-max-o TRANSACTION_setDefaultGuestRestrictions:I = 0x3d

.field static final greylist-max-o TRANSACTION_setSeedAccountData:I = 0x44

.field static final greylist-max-o TRANSACTION_setUserAccount:I = 0x27

.field static final greylist-max-o TRANSACTION_setUserAdmin:I = 0x9

.field static final greylist-max-o TRANSACTION_setUserEnabled:I = 0x8

.field static final blacklist TRANSACTION_setUserEphemeral:I = 0x68

.field static final greylist-max-o TRANSACTION_setUserIcon:I = 0x10

.field static final greylist-max-o TRANSACTION_setUserName:I = 0xf

.field static final greylist-max-o TRANSACTION_setUserRestriction:I = 0x39

.field static final blacklist TRANSACTION_someUserHasAccount:I = 0x4a

.field static final greylist-max-o TRANSACTION_someUserHasSeedAccount:I = 0x49


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 443
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 444
    const-string v0, "android.os.IUserManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IUserManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;
    .registers 3

    .line 452
    if-nez p0, :cond_4

    .line 453
    const/4 p0, 0x0

    return-object p0

    .line 455
    :cond_4
    const-string v0, "android.os.IUserManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IUserManager;

    if-eqz v1, :cond_13

    .line 457
    check-cast v0, Landroid/os/IUserManager;

    return-object v0

    .line 459
    :cond_13
    new-instance v0, Landroid/os/IUserManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IUserManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 468
    packed-switch p0, :pswitch_data_15a

    .line 900
    const/4 p0, 0x0

    return-object p0

    .line 896
    :pswitch_5
    const-string p0, "getProfileIdsExcludingHidden"

    return-object p0

    .line 892
    :pswitch_8
    const-string p0, "getBootUser"

    return-object p0

    .line 888
    :pswitch_b
    const-string/jumbo p0, "setBootUser"

    return-object p0

    .line 884
    :pswitch_f
    const-string/jumbo p0, "setUserEphemeral"

    return-object p0

    .line 880
    :pswitch_13
    const-string p0, "getUserUnlockRealtime"

    return-object p0

    .line 876
    :pswitch_16
    const-string p0, "getUserStartRealtime"

    return-object p0

    .line 872
    :pswitch_19
    const-string p0, "getUserName"

    return-object p0

    .line 868
    :pswitch_1c
    const-string/jumbo p0, "requestQuietModeEnabled"

    return-object p0

    .line 864
    :pswitch_20
    const-string p0, "hasRestrictedProfiles"

    return-object p0

    .line 860
    :pswitch_23
    const-string p0, "isUserNameSet"

    return-object p0

    .line 856
    :pswitch_26
    const-string p0, "isForegroundUserAdmin"

    return-object p0

    .line 852
    :pswitch_29
    const-string p0, "getMainDisplayIdAssignedToUser"

    return-object p0

    .line 848
    :pswitch_2c
    const-string p0, "getVisibleUsers"

    return-object p0

    .line 844
    :pswitch_2f
    const-string p0, "isUserVisible"

    return-object p0

    .line 840
    :pswitch_32
    const-string p0, "isUserForeground"

    return-object p0

    .line 836
    :pswitch_35
    const-string p0, "isUserRunning"

    return-object p0

    .line 832
    :pswitch_38
    const-string p0, "isUserUnlocked"

    return-object p0

    .line 828
    :pswitch_3b
    const-string p0, "getProfileAccessibilityLabelResId"

    return-object p0

    .line 824
    :pswitch_3e
    const-string p0, "getProfileLabelResId"

    return-object p0

    .line 820
    :pswitch_41
    const-string p0, "hasBadge"

    return-object p0

    .line 816
    :pswitch_44
    const-string p0, "getUserStatusBarIconResId"

    return-object p0

    .line 812
    :pswitch_47
    const-string p0, "getUserBadgeDarkColorResId"

    return-object p0

    .line 808
    :pswitch_4a
    const-string p0, "getUserBadgeColorResId"

    return-object p0

    .line 804
    :pswitch_4d
    const-string p0, "getUserBadgeLabelResId"

    return-object p0

    .line 800
    :pswitch_50
    const-string p0, "getUserBadgeNoBackgroundResId"

    return-object p0

    .line 796
    :pswitch_53
    const-string p0, "getUserBadgeResId"

    return-object p0

    .line 792
    :pswitch_56
    const-string p0, "getUserIconBadgeResId"

    return-object p0

    .line 788
    :pswitch_59
    const-string p0, "isUserUnlockingOrUnlocked"

    return-object p0

    .line 784
    :pswitch_5c
    const-string p0, "createProfileForUserEvenWhenDisallowedWithThrow"

    return-object p0

    .line 780
    :pswitch_5f
    const-string p0, "isPreCreated"

    return-object p0

    .line 776
    :pswitch_62
    const-string p0, "isAdminUser"

    return-object p0

    .line 772
    :pswitch_65
    const-string p0, "isDemoUser"

    return-object p0

    .line 768
    :pswitch_68
    const-string p0, "getProfileType"

    return-object p0

    .line 764
    :pswitch_6b
    const-string/jumbo p0, "someUserHasAccount"

    return-object p0

    .line 760
    :pswitch_6f
    const-string/jumbo p0, "someUserHasSeedAccount"

    return-object p0

    .line 756
    :pswitch_73
    const-string p0, "clearSeedAccountData"

    return-object p0

    .line 752
    :pswitch_76
    const-string p0, "getSeedAccountOptions"

    return-object p0

    .line 748
    :pswitch_79
    const-string p0, "getSeedAccountType"

    return-object p0

    .line 744
    :pswitch_7c
    const-string p0, "getSeedAccountName"

    return-object p0

    .line 740
    :pswitch_7f
    const-string/jumbo p0, "setSeedAccountData"

    return-object p0

    .line 736
    :pswitch_83
    const-string p0, "createUserWithAttributes"

    return-object p0

    .line 732
    :pswitch_86
    const-string p0, "isQuietModeEnabled"

    return-object p0

    .line 728
    :pswitch_89
    const-string p0, "getGuestUsers"

    return-object p0

    .line 724
    :pswitch_8c
    const-string p0, "markGuestForDeletion"

    return-object p0

    .line 720
    :pswitch_8f
    const-string/jumbo p0, "removeUserWhenPossible"

    return-object p0

    .line 716
    :pswitch_93
    const-string p0, "getDefaultGuestRestrictions"

    return-object p0

    .line 712
    :pswitch_96
    const-string/jumbo p0, "setDefaultGuestRestrictions"

    return-object p0

    .line 708
    :pswitch_9a
    const-string p0, "getApplicationRestrictionsForUser"

    return-object p0

    .line 704
    :pswitch_9d
    const-string p0, "getApplicationRestrictions"

    return-object p0

    .line 700
    :pswitch_a0
    const-string/jumbo p0, "setApplicationRestrictions"

    return-object p0

    .line 696
    :pswitch_a4
    const-string/jumbo p0, "setUserRestriction"

    return-object p0

    .line 692
    :pswitch_a8
    const-string p0, "addUserRestrictionsListener"

    return-object p0

    .line 688
    :pswitch_ab
    const-string p0, "isSettingRestrictedForUser"

    return-object p0

    .line 684
    :pswitch_ae
    const-string p0, "hasUserRestrictionOnAnyUser"

    return-object p0

    .line 680
    :pswitch_b1
    const-string p0, "hasUserRestriction"

    return-object p0

    .line 676
    :pswitch_b4
    const-string p0, "hasBaseUserRestriction"

    return-object p0

    .line 672
    :pswitch_b7
    const-string p0, "getUserRestrictions"

    return-object p0

    .line 668
    :pswitch_ba
    const-string p0, "getUserRestrictionSources"

    return-object p0

    .line 664
    :pswitch_bd
    const-string p0, "getUserRestrictionSource"

    return-object p0

    .line 660
    :pswitch_c0
    const-string p0, "getUserHandle"

    return-object p0

    .line 656
    :pswitch_c3
    const-string p0, "getUserSerialNumber"

    return-object p0

    .line 652
    :pswitch_c6
    const-string p0, "canAddPrivateProfile"

    return-object p0

    .line 648
    :pswitch_c9
    const-string p0, "canHaveRestrictedProfile"

    return-object p0

    .line 644
    :pswitch_cc
    const-string p0, "isRestricted"

    return-object p0

    .line 640
    :pswitch_cf
    const-string p0, "getUserLogoutability"

    return-object p0

    .line 636
    :pswitch_d2
    const-string p0, "isUserSwitcherEnabled"

    return-object p0

    .line 632
    :pswitch_d5
    const-string p0, "getUserSwitchability"

    return-object p0

    .line 628
    :pswitch_d8
    const-string p0, "getUserCreationTime"

    return-object p0

    .line 624
    :pswitch_db
    const-string/jumbo p0, "setUserAccount"

    return-object p0

    .line 620
    :pswitch_df
    const-string p0, "getUserAccount"

    return-object p0

    .line 616
    :pswitch_e2
    const-string p0, "getUserPropertiesCopy"

    return-object p0

    .line 612
    :pswitch_e5
    const-string p0, "getUserInfo"

    return-object p0

    .line 608
    :pswitch_e8
    const-string p0, "isUserOfType"

    return-object p0

    .line 604
    :pswitch_eb
    const-string p0, "isHeadlessSystemUserMode"

    return-object p0

    .line 600
    :pswitch_ee
    const-string p0, "isSameProfileGroup"

    return-object p0

    .line 596
    :pswitch_f1
    const-string p0, "getProfileParent"

    return-object p0

    .line 592
    :pswitch_f4
    const-string p0, "canAddMoreProfilesToUser"

    return-object p0

    .line 588
    :pswitch_f7
    const-string p0, "getRemainingCreatableProfileCount"

    return-object p0

    .line 584
    :pswitch_fa
    const-string p0, "getRemainingCreatableUserCount"

    return-object p0

    .line 580
    :pswitch_fd
    const-string p0, "canAddMoreUsersOfType"

    return-object p0

    .line 576
    :pswitch_100
    const-string p0, "getCurrentAllowedNumberOfUsers"

    return-object p0

    .line 572
    :pswitch_103
    const-string p0, "isUserTypeEnabled"

    return-object p0

    .line 568
    :pswitch_106
    const-string p0, "getProfileIds"

    return-object p0

    .line 564
    :pswitch_109
    const-string p0, "getProfiles"

    return-object p0

    .line 560
    :pswitch_10c
    const-string p0, "getUsers"

    return-object p0

    .line 556
    :pswitch_10f
    const-string p0, "getPreviousUserToEnterForeground"

    return-object p0

    .line 552
    :pswitch_112
    const-string p0, "getCommunalProfileId"

    return-object p0

    .line 548
    :pswitch_115
    const-string p0, "isMainUser"

    return-object p0

    .line 544
    :pswitch_118
    const-string p0, "getMainUserId"

    return-object p0

    .line 540
    :pswitch_11b
    const-string p0, "getPrimaryUser"

    return-object p0

    .line 536
    :pswitch_11e
    const-string p0, "getUserIcon"

    return-object p0

    .line 532
    :pswitch_121
    const-string/jumbo p0, "setUserIcon"

    return-object p0

    .line 528
    :pswitch_125
    const-string/jumbo p0, "setUserName"

    return-object p0

    .line 524
    :pswitch_129
    const-string p0, "getUserRemovability"

    return-object p0

    .line 520
    :pswitch_12c
    const-string/jumbo p0, "removeUserEvenWhenDisallowed"

    return-object p0

    .line 516
    :pswitch_130
    const-string/jumbo p0, "removeUser"

    return-object p0

    .line 512
    :pswitch_134
    const-string p0, "evictCredentialEncryptionKey"

    return-object p0

    .line 508
    :pswitch_137
    const-string/jumbo p0, "revokeUserAdmin"

    return-object p0

    .line 504
    :pswitch_13b
    const-string/jumbo p0, "setUserAdmin"

    return-object p0

    .line 500
    :pswitch_13f
    const-string/jumbo p0, "setUserEnabled"

    return-object p0

    .line 496
    :pswitch_143
    const-string p0, "getPreInstallableSystemPackages"

    return-object p0

    .line 492
    :pswitch_146
    const-string p0, "createRestrictedProfileWithThrow"

    return-object p0

    .line 488
    :pswitch_149
    const-string p0, "createProfileForUserWithThrow"

    return-object p0

    .line 484
    :pswitch_14c
    const-string/jumbo p0, "preCreateUserWithThrow"

    return-object p0

    .line 480
    :pswitch_150
    const-string p0, "createUserWithThrow"

    return-object p0

    .line 476
    :pswitch_153
    const-string p0, "getProfileParentId"

    return-object p0

    .line 472
    :pswitch_156
    const-string p0, "getCredentialOwnerProfile"

    return-object p0

    nop

    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_156
        :pswitch_153
        :pswitch_150
        :pswitch_14c
        :pswitch_149
        :pswitch_146
        :pswitch_143
        :pswitch_13f
        :pswitch_13b
        :pswitch_137
        :pswitch_134
        :pswitch_130
        :pswitch_12c
        :pswitch_129
        :pswitch_125
        :pswitch_121
        :pswitch_11e
        :pswitch_11b
        :pswitch_118
        :pswitch_115
        :pswitch_112
        :pswitch_10f
        :pswitch_10c
        :pswitch_109
        :pswitch_106
        :pswitch_103
        :pswitch_100
        :pswitch_fd
        :pswitch_fa
        :pswitch_f7
        :pswitch_f4
        :pswitch_f1
        :pswitch_ee
        :pswitch_eb
        :pswitch_e8
        :pswitch_e5
        :pswitch_e2
        :pswitch_df
        :pswitch_db
        :pswitch_d8
        :pswitch_d5
        :pswitch_d2
        :pswitch_cf
        :pswitch_cc
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a4
        :pswitch_a0
        :pswitch_9d
        :pswitch_9a
        :pswitch_96
        :pswitch_93
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_6f
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
        :pswitch_1c
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

    .line 463
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 4105
    const/16 v0, 0x6a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 907
    invoke-static {p1}, Landroid/os/IUserManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 911
    nop

    .line 912
    const-string v0, "android.os.IUserManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 913
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 916
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 917
    return v1

    .line 919
    :cond_17
    packed-switch p1, :pswitch_data_8d6

    .line 2046
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2035
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2037
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 2038
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2039
    invoke-virtual {p0, p1, p4}, Landroid/os/IUserManager$Stub;->getProfileIdsExcludingHidden(IZ)[I

    move-result-object p1

    .line 2040
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2041
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2042
    goto/16 :goto_8d5

    .line 2027
    :pswitch_37
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getBootUser()I

    move-result p1

    .line 2028
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2029
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2030
    goto/16 :goto_8d5

    .line 2019
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2020
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2021
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->setBootUser(I)V

    .line 2022
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2023
    goto/16 :goto_8d5

    .line 2007
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2009
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 2010
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2011
    invoke-virtual {p0, p1, p4}, Landroid/os/IUserManager$Stub;->setUserEphemeral(IZ)Z

    move-result p1

    .line 2012
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2013
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2014
    goto/16 :goto_8d5

    .line 1999
    :pswitch_69
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getUserUnlockRealtime()J

    move-result-wide p1

    .line 2000
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2001
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2002
    goto/16 :goto_8d5

    .line 1992
    :pswitch_75
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getUserStartRealtime()J

    move-result-wide p1

    .line 1993
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1994
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1995
    goto/16 :goto_8d5

    .line 1985
    :pswitch_81
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getUserName()Ljava/lang/String;

    move-result-object p1

    .line 1986
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1987
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1988
    goto/16 :goto_8d5

    .line 1968
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1970
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1972
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1974
    sget-object p1, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/content/IntentSender;

    .line 1976
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1977
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1978
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/os/IUserManager$Stub;->requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;I)Z

    move-result p1

    .line 1979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1980
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1981
    goto/16 :goto_8d5

    .line 1958
    :pswitch_b6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1959
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1960
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->hasRestrictedProfiles(I)Z

    move-result p1

    .line 1961
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1962
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1963
    goto/16 :goto_8d5

    .line 1948
    :pswitch_ca
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1949
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1950
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->isUserNameSet(I)Z

    move-result p1

    .line 1951
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1952
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1953
    goto/16 :goto_8d5

    .line 1940
    :pswitch_de
    move-object v2, p0

    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->isForegroundUserAdmin()Z

    move-result p1

    .line 1941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1942
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1943
    goto/16 :goto_8d5

    .line 1931
    :pswitch_eb
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1932
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1933
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getMainDisplayIdAssignedToUser(I)I

    move-result p1

    .line 1934
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1935
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1936
    goto/16 :goto_8d5

    .line 1923
    :pswitch_ff
    move-object v2, p0

    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getVisibleUsers()[I

    move-result-object p1

    .line 1924
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1925
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1926
    goto/16 :goto_8d5

    .line 1914
    :pswitch_10c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1915
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1916
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->isUserVisible(I)Z

    move-result p1

    .line 1917
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1918
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1919
    goto/16 :goto_8d5

    .line 1904
    :pswitch_120
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1905
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1906
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->isUserForeground(I)Z

    move-result p1

    .line 1907
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1908
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1909
    goto/16 :goto_8d5

    .line 1894
    :pswitch_134
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1895
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1896
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->isUserRunning(I)Z

    move-result p1

    .line 1897
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1898
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1899
    goto/16 :goto_8d5

    .line 1884
    :pswitch_148
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1885
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1886
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->isUserUnlocked(I)Z

    move-result p1

    .line 1887
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1888
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1889
    goto/16 :goto_8d5

    .line 1874
    :pswitch_15c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1875
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1876
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getProfileAccessibilityLabelResId(I)I

    move-result p1

    .line 1877
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1878
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1879
    goto/16 :goto_8d5

    .line 1864
    :pswitch_170
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1865
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1866
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getProfileLabelResId(I)I

    move-result p1

    .line 1867
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1868
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1869
    goto/16 :goto_8d5

    .line 1854
    :pswitch_184
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1855
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1856
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->hasBadge(I)Z

    move-result p1

    .line 1857
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1858
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1859
    goto/16 :goto_8d5

    .line 1844
    :pswitch_198
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1845
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1846
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getUserStatusBarIconResId(I)I

    move-result p1

    .line 1847
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1848
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1849
    goto/16 :goto_8d5

    .line 1834
    :pswitch_1ac
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1835
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1836
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getUserBadgeDarkColorResId(I)I

    move-result p1

    .line 1837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1838
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1839
    goto/16 :goto_8d5

    .line 1824
    :pswitch_1c0
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1825
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1826
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getUserBadgeColorResId(I)I

    move-result p1

    .line 1827
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1828
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1829
    goto/16 :goto_8d5

    .line 1814
    :pswitch_1d4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1815
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1816
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getUserBadgeLabelResId(I)I

    move-result p1

    .line 1817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1818
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1819
    goto/16 :goto_8d5

    .line 1804
    :pswitch_1e8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1805
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1806
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getUserBadgeNoBackgroundResId(I)I

    move-result p1

    .line 1807
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1808
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1809
    goto/16 :goto_8d5

    .line 1794
    :pswitch_1fc
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1795
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1796
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getUserBadgeResId(I)I

    move-result p1

    .line 1797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1798
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1799
    goto/16 :goto_8d5

    .line 1784
    :pswitch_210
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1785
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1786
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getUserIconBadgeResId(I)I

    move-result p1

    .line 1787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1788
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1789
    goto/16 :goto_8d5

    .line 1774
    :pswitch_224
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1775
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1776
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->isUserUnlockingOrUnlocked(I)Z

    move-result p1

    .line 1777
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1778
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1779
    goto/16 :goto_8d5

    .line 1756
    :pswitch_238
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1758
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1760
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1762
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1764
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 1765
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1766
    invoke-virtual/range {v2 .. v7}, Landroid/os/IUserManager$Stub;->createProfileForUserEvenWhenDisallowedWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1768
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1769
    goto/16 :goto_8d5

    .line 1746
    :pswitch_25c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1747
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1748
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->isPreCreated(I)Z

    move-result p1

    .line 1749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1750
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1751
    goto/16 :goto_8d5

    .line 1736
    :pswitch_270
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1737
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1738
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->isAdminUser(I)Z

    move-result p1

    .line 1739
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1740
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1741
    goto/16 :goto_8d5

    .line 1726
    :pswitch_284
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1727
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1728
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->isDemoUser(I)Z

    move-result p1

    .line 1729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1730
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1731
    goto/16 :goto_8d5

    .line 1716
    :pswitch_298
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1717
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1718
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getProfileType(I)Ljava/lang/String;

    move-result-object p1

    .line 1719
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1720
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1721
    goto/16 :goto_8d5

    .line 1704
    :pswitch_2ac
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1706
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1707
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1708
    invoke-virtual {p0, p1, p4}, Landroid/os/IUserManager$Stub;->someUserHasAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 1709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1710
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1711
    goto/16 :goto_8d5

    .line 1692
    :pswitch_2c4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1694
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1695
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1696
    invoke-virtual {p0, p1, p4}, Landroid/os/IUserManager$Stub;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 1697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1698
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1699
    goto/16 :goto_8d5

    .line 1683
    :pswitch_2dc
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1684
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1685
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->clearSeedAccountData(I)V

    .line 1686
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1687
    goto/16 :goto_8d5

    .line 1673
    :pswitch_2ec
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1674
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1675
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getSeedAccountOptions(I)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 1676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1677
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1678
    goto/16 :goto_8d5

    .line 1663
    :pswitch_300
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1664
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1665
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getSeedAccountType(I)Ljava/lang/String;

    move-result-object p1

    .line 1666
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1667
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1668
    goto/16 :goto_8d5

    .line 1653
    :pswitch_314
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1654
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1655
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getSeedAccountName(I)Ljava/lang/String;

    move-result-object p1

    .line 1656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1657
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1658
    goto/16 :goto_8d5

    .line 1636
    :pswitch_328
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1638
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1640
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1642
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/os/PersistableBundle;

    .line 1644
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 1645
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1646
    invoke-virtual/range {v2 .. v7}, Landroid/os/IUserManager$Stub;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V

    .line 1647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1648
    goto/16 :goto_8d5

    .line 1614
    :pswitch_34d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1616
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1618
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1620
    sget-object p1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/graphics/Bitmap;

    .line 1622
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1624
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1626
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Landroid/os/PersistableBundle;

    .line 1627
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1628
    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/os/IUserManager$Stub;->createUserWithAttributes(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/os/UserHandle;

    move-result-object p1

    .line 1629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1630
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1631
    goto/16 :goto_8d5

    .line 1604
    :pswitch_383
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1605
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1606
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->isQuietModeEnabled(I)Z

    move-result p1

    .line 1607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1608
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1609
    goto/16 :goto_8d5

    .line 1596
    :pswitch_397
    move-object v2, p0

    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getGuestUsers()Ljava/util/List;

    move-result-object p1

    .line 1597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1598
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1599
    goto/16 :goto_8d5

    .line 1587
    :pswitch_3a4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1588
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1589
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->markGuestForDeletion(I)Z

    move-result p1

    .line 1590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1591
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1592
    goto/16 :goto_8d5

    .line 1575
    :pswitch_3b8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1577
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1578
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1579
    invoke-virtual {p0, p1, p4}, Landroid/os/IUserManager$Stub;->removeUserWhenPossible(IZ)I

    move-result p1

    .line 1580
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1581
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1582
    goto/16 :goto_8d5

    .line 1567
    :pswitch_3d0
    move-object v2, p0

    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object p1

    .line 1568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1570
    goto/16 :goto_8d5

    .line 1559
    :pswitch_3dd
    move-object v2, p0

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 1560
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1561
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    .line 1562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1563
    goto/16 :goto_8d5

    .line 1547
    :pswitch_3f1
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1549
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1550
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1551
    invoke-virtual {p0, p1, p4}, Landroid/os/IUserManager$Stub;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    .line 1552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1553
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1554
    goto/16 :goto_8d5

    .line 1537
    :pswitch_409
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1538
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1539
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 1540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1541
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1542
    goto/16 :goto_8d5

    .line 1524
    :pswitch_41d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1526
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 1528
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1529
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1530
    invoke-virtual {p0, p1, p4, v0}, Landroid/os/IUserManager$Stub;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1532
    goto/16 :goto_8d5

    .line 1511
    :pswitch_439
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1513
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1515
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1516
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1517
    invoke-virtual {p0, p1, p4, v0}, Landroid/os/IUserManager$Stub;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 1518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1519
    goto/16 :goto_8d5

    .line 1502
    :pswitch_451
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IUserRestrictionsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserRestrictionsListener;

    move-result-object p1

    .line 1503
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1504
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V

    .line 1505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1506
    goto/16 :goto_8d5

    .line 1486
    :pswitch_465
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1490
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1493
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1494
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/os/IUserManager$Stub;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p1

    .line 1495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1496
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1497
    goto/16 :goto_8d5

    .line 1476
    :pswitch_485
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1477
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1478
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z

    move-result p1

    .line 1479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1480
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1481
    goto/16 :goto_8d5

    .line 1464
    :pswitch_499
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1467
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1468
    invoke-virtual {p0, p1, p4}, Landroid/os/IUserManager$Stub;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1

    .line 1469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1470
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1471
    goto/16 :goto_8d5

    .line 1452
    :pswitch_4b1
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1455
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1456
    invoke-virtual {p0, p1, p4}, Landroid/os/IUserManager$Stub;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result p1

    .line 1457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1458
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1459
    goto/16 :goto_8d5

    .line 1442
    :pswitch_4c9
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1443
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1444
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object p1

    .line 1445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1446
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1447
    goto/16 :goto_8d5

    .line 1430
    :pswitch_4dd
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1432
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1433
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1434
    invoke-virtual {p0, p1, p4}, Landroid/os/IUserManager$Stub;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 1435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1436
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1437
    goto/16 :goto_8d5

    .line 1418
    :pswitch_4f5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1421
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1422
    invoke-virtual {p0, p1, p4}, Landroid/os/IUserManager$Stub;->getUserRestrictionSource(Ljava/lang/String;I)I

    move-result p1

    .line 1423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1424
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1425
    goto/16 :goto_8d5

    .line 1408
    :pswitch_50d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1409
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1410
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getUserHandle(I)I

    move-result p1

    .line 1411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1413
    goto/16 :goto_8d5

    .line 1398
    :pswitch_521
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1399
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1400
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getUserSerialNumber(I)I

    move-result p1

    .line 1401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    goto/16 :goto_8d5

    .line 1388
    :pswitch_535
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1389
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1390
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->canAddPrivateProfile(I)Z

    move-result p1

    .line 1391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1393
    goto/16 :goto_8d5

    .line 1378
    :pswitch_549
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1379
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1380
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->canHaveRestrictedProfile(I)Z

    move-result p1

    .line 1381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1383
    goto/16 :goto_8d5

    .line 1368
    :pswitch_55d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1369
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1370
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->isRestricted(I)Z

    move-result p1

    .line 1371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1373
    goto/16 :goto_8d5

    .line 1358
    :pswitch_571
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1359
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1360
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getUserLogoutability(I)I

    move-result p1

    .line 1361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1362
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1363
    goto/16 :goto_8d5

    .line 1346
    :pswitch_585
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1349
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1350
    invoke-virtual {p0, p1, p4}, Landroid/os/IUserManager$Stub;->isUserSwitcherEnabled(ZI)Z

    move-result p1

    .line 1351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1352
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1353
    goto/16 :goto_8d5

    .line 1336
    :pswitch_59d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1337
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1338
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getUserSwitchability(I)I

    move-result p1

    .line 1339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1341
    goto/16 :goto_8d5

    .line 1326
    :pswitch_5b1
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1327
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1328
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getUserCreationTime(I)J

    move-result-wide p1

    .line 1329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1330
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1331
    goto/16 :goto_8d5

    .line 1315
    :pswitch_5c5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1317
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1318
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1319
    invoke-virtual {p0, p1, p4}, Landroid/os/IUserManager$Stub;->setUserAccount(ILjava/lang/String;)V

    .line 1320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    goto/16 :goto_8d5

    .line 1305
    :pswitch_5d9
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1306
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1307
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getUserAccount(I)Ljava/lang/String;

    move-result-object p1

    .line 1308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1310
    goto/16 :goto_8d5

    .line 1295
    :pswitch_5ed
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1296
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1297
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getUserPropertiesCopy(I)Landroid/content/pm/UserProperties;

    move-result-object p1

    .line 1298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1300
    goto/16 :goto_8d5

    .line 1285
    :pswitch_601
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1286
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1287
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1289
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1290
    goto/16 :goto_8d5

    .line 1273
    :pswitch_615
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1275
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1276
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1277
    invoke-virtual {p0, p1, p4}, Landroid/os/IUserManager$Stub;->isUserOfType(ILjava/lang/String;)Z

    move-result p1

    .line 1278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1280
    goto/16 :goto_8d5

    .line 1265
    :pswitch_62d
    move-object v2, p0

    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->isHeadlessSystemUserMode()Z

    move-result p1

    .line 1266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1268
    goto/16 :goto_8d5

    .line 1254
    :pswitch_63a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1257
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1258
    invoke-virtual {p0, p1, p4}, Landroid/os/IUserManager$Stub;->isSameProfileGroup(II)Z

    move-result p1

    .line 1259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1260
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1261
    goto/16 :goto_8d5

    .line 1244
    :pswitch_652
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1245
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1246
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1249
    goto/16 :goto_8d5

    .line 1230
    :pswitch_666
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1234
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1235
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1236
    invoke-virtual {p0, p1, p4, v0}, Landroid/os/IUserManager$Stub;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result p1

    .line 1237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1238
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1239
    goto/16 :goto_8d5

    .line 1218
    :pswitch_682
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1221
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1222
    invoke-virtual {p0, p1, p4}, Landroid/os/IUserManager$Stub;->getRemainingCreatableProfileCount(Ljava/lang/String;I)I

    move-result p1

    .line 1223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1225
    goto/16 :goto_8d5

    .line 1208
    :pswitch_69a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1210
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getRemainingCreatableUserCount(Ljava/lang/String;)I

    move-result p1

    .line 1211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    goto/16 :goto_8d5

    .line 1198
    :pswitch_6ae
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1199
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1200
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->canAddMoreUsersOfType(Ljava/lang/String;)Z

    move-result p1

    .line 1201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1203
    goto/16 :goto_8d5

    .line 1188
    :pswitch_6c2
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1190
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getCurrentAllowedNumberOfUsers(Ljava/lang/String;)I

    move-result p1

    .line 1191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1193
    goto/16 :goto_8d5

    .line 1178
    :pswitch_6d6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1179
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1180
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->isUserTypeEnabled(Ljava/lang/String;)Z

    move-result p1

    .line 1181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1183
    goto/16 :goto_8d5

    .line 1166
    :pswitch_6ea
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1168
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1169
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1170
    invoke-virtual {p0, p1, p4}, Landroid/os/IUserManager$Stub;->getProfileIds(IZ)[I

    move-result-object p1

    .line 1171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1173
    goto/16 :goto_8d5

    .line 1154
    :pswitch_702
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1156
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1158
    invoke-virtual {p0, p1, p4}, Landroid/os/IUserManager$Stub;->getProfiles(IZ)Ljava/util/List;

    move-result-object p1

    .line 1159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1160
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1161
    goto/16 :goto_8d5

    .line 1144
    :pswitch_71a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1145
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1146
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    .line 1147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1149
    goto/16 :goto_8d5

    .line 1136
    :pswitch_72e
    move-object v2, p0

    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getPreviousUserToEnterForeground()I

    move-result p1

    .line 1137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1139
    goto/16 :goto_8d5

    .line 1129
    :pswitch_73b
    move-object v2, p0

    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getCommunalProfileId()I

    move-result p1

    .line 1130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1132
    goto/16 :goto_8d5

    .line 1120
    :pswitch_748
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1121
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1122
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->isMainUser(I)Z

    move-result p1

    .line 1123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1125
    goto/16 :goto_8d5

    .line 1112
    :pswitch_75c
    move-object v2, p0

    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getMainUserId()I

    move-result p1

    .line 1113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    goto/16 :goto_8d5

    .line 1105
    :pswitch_769
    move-object v2, p0

    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1108
    goto/16 :goto_8d5

    .line 1096
    :pswitch_776
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1097
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1098
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getUserIcon(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 1099
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1101
    goto/16 :goto_8d5

    .line 1085
    :pswitch_78a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1087
    sget-object p4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Bitmap;

    .line 1088
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1089
    invoke-virtual {p0, p1, p4}, Landroid/os/IUserManager$Stub;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1090
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    goto/16 :goto_8d5

    .line 1074
    :pswitch_7a2
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1076
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1077
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1078
    invoke-virtual {p0, p1, p4}, Landroid/os/IUserManager$Stub;->setUserName(ILjava/lang/String;)V

    .line 1079
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    goto/16 :goto_8d5

    .line 1064
    :pswitch_7b6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1065
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1066
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getUserRemovability(I)I

    move-result p1

    .line 1067
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    goto/16 :goto_8d5

    .line 1054
    :pswitch_7ca
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1055
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1056
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->removeUserEvenWhenDisallowed(I)Z

    move-result p1

    .line 1057
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1059
    goto/16 :goto_8d5

    .line 1044
    :pswitch_7de
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1045
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1046
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->removeUser(I)Z

    move-result p1

    .line 1047
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1049
    goto/16 :goto_8d5

    .line 1035
    :pswitch_7f2
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1036
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1037
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->evictCredentialEncryptionKey(I)V

    .line 1038
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    goto/16 :goto_8d5

    .line 1026
    :pswitch_802
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1027
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1028
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->revokeUserAdmin(I)V

    .line 1029
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    goto/16 :goto_8d5

    .line 1017
    :pswitch_812
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1018
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1019
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->setUserAdmin(I)V

    .line 1020
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    goto/16 :goto_8d5

    .line 1008
    :pswitch_822
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1009
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1010
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->setUserEnabled(I)V

    .line 1011
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    goto/16 :goto_8d5

    .line 998
    :pswitch_832
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 999
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1000
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getPreInstallableSystemPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1001
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1003
    goto/16 :goto_8d5

    .line 986
    :pswitch_846
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 988
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 989
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    invoke-virtual {p0, p1, p4}, Landroid/os/IUserManager$Stub;->createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 991
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 993
    goto/16 :goto_8d5

    .line 968
    :pswitch_85e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 970
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 972
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 974
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 976
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 977
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 978
    invoke-virtual/range {v2 .. v7}, Landroid/os/IUserManager$Stub;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 981
    goto :goto_8d5

    .line 958
    :pswitch_881
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 959
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 960
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 961
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 963
    goto :goto_8d5

    .line 944
    :pswitch_894
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 946
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 948
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 949
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 950
    invoke-virtual {p0, p1, p4, v0}, Landroid/os/IUserManager$Stub;->createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 951
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 953
    goto :goto_8d5

    .line 934
    :pswitch_8af
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 935
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 936
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getProfileParentId(I)I

    move-result p1

    .line 937
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    goto :goto_8d5

    .line 924
    :pswitch_8c2
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 925
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 926
    invoke-virtual {p0, p1}, Landroid/os/IUserManager$Stub;->getCredentialOwnerProfile(I)I

    move-result p1

    .line 927
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    nop

    .line 2049
    :goto_8d5
    return v1

    :pswitch_data_8d6
    .packed-switch 0x1
        :pswitch_8c2
        :pswitch_8af
        :pswitch_894
        :pswitch_881
        :pswitch_85e
        :pswitch_846
        :pswitch_832
        :pswitch_822
        :pswitch_812
        :pswitch_802
        :pswitch_7f2
        :pswitch_7de
        :pswitch_7ca
        :pswitch_7b6
        :pswitch_7a2
        :pswitch_78a
        :pswitch_776
        :pswitch_769
        :pswitch_75c
        :pswitch_748
        :pswitch_73b
        :pswitch_72e
        :pswitch_71a
        :pswitch_702
        :pswitch_6ea
        :pswitch_6d6
        :pswitch_6c2
        :pswitch_6ae
        :pswitch_69a
        :pswitch_682
        :pswitch_666
        :pswitch_652
        :pswitch_63a
        :pswitch_62d
        :pswitch_615
        :pswitch_601
        :pswitch_5ed
        :pswitch_5d9
        :pswitch_5c5
        :pswitch_5b1
        :pswitch_59d
        :pswitch_585
        :pswitch_571
        :pswitch_55d
        :pswitch_549
        :pswitch_535
        :pswitch_521
        :pswitch_50d
        :pswitch_4f5
        :pswitch_4dd
        :pswitch_4c9
        :pswitch_4b1
        :pswitch_499
        :pswitch_485
        :pswitch_465
        :pswitch_451
        :pswitch_439
        :pswitch_41d
        :pswitch_409
        :pswitch_3f1
        :pswitch_3dd
        :pswitch_3d0
        :pswitch_3b8
        :pswitch_3a4
        :pswitch_397
        :pswitch_383
        :pswitch_34d
        :pswitch_328
        :pswitch_314
        :pswitch_300
        :pswitch_2ec
        :pswitch_2dc
        :pswitch_2c4
        :pswitch_2ac
        :pswitch_298
        :pswitch_284
        :pswitch_270
        :pswitch_25c
        :pswitch_238
        :pswitch_224
        :pswitch_210
        :pswitch_1fc
        :pswitch_1e8
        :pswitch_1d4
        :pswitch_1c0
        :pswitch_1ac
        :pswitch_198
        :pswitch_184
        :pswitch_170
        :pswitch_15c
        :pswitch_148
        :pswitch_134
        :pswitch_120
        :pswitch_10c
        :pswitch_ff
        :pswitch_eb
        :pswitch_de
        :pswitch_ca
        :pswitch_b6
        :pswitch_8d
        :pswitch_81
        :pswitch_75
        :pswitch_69
        :pswitch_52
        :pswitch_43
        :pswitch_37
        :pswitch_20
    .end packed-switch
.end method
