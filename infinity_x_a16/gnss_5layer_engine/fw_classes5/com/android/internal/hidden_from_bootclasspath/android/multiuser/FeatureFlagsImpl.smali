.class public final Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addLauncherUserConfig()Z
    .registers 2

    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist allowMainUserToAccessBlockedNumberProvider()Z
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist allowResolverSheetForPrivateSpace()Z
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist allowSupervisingProfile()Z
    .registers 2

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist backupActivatedForAllUsers()Z
    .registers 2

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist bindWallpaperServiceOnItsOwnThreadDuringAUserSwitch()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist blockPrivateSpaceCreation()Z
    .registers 2

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist cacheProfileTypeReadOnly()Z
    .registers 2

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist cacheUserRestrictionsReadOnly()Z
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist cacheUserStartRealtimeReadOnly()Z
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist cacheUserUnlockRealtimeReadOnly()Z
    .registers 2

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist consistentMaxUsers()Z
    .registers 2

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist createInitialUser()Z
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist decoupleMaxUsersFromProfiles()Z
    .registers 2

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist demoteMainUser()Z
    .registers 2

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disablePrivateSpaceItemsOnHome()Z
    .registers 2

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist disallowRemovingLastAdminUser()Z
    .registers 2

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableBiometricsToUnlockPrivateSpace()Z
    .registers 2

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableHidingProfiles()Z
    .registers 2

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableMovingContentIntoPrivateSpace()Z
    .registers 2

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enablePermissionToAccessHiddenProfiles()Z
    .registers 2

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enablePrivateSpaceAutolockOnRestarts()Z
    .registers 2

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enablePrivateSpaceFeatures()Z
    .registers 2

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enablePrivateSpaceIntentRedirection()Z
    .registers 2

    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enablePsSensitiveNotificationsToggle()Z
    .registers 2

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableSystemUserOnlyForServicesAndProviders()Z
    .registers 2

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist fixAvatarContentProviderNullAuthority()Z
    .registers 2

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hsuAllowlistActivities()Z
    .registers 2

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hsuDeviceProvisioner()Z
    .registers 2

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hsuNotAdmin()Z
    .registers 2

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist logoutUserApi()Z
    .registers 2

    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist maxUsersInCarIsForSecondary()Z
    .registers 2

    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist moveQuietModeOperationsToSeparateThread()Z
    .registers 2

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist moveSetScreenLockDialogToSettingsApp()Z
    .registers 2

    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist multiuserWidget()Z
    .registers 2

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist perfettoMultiuserTable()Z
    .registers 2

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist privateSpaceFileLimitCheckTimeout()Z
    .registers 2

    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist profilesForAll()Z
    .registers 2

    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist propertyInvalidatedCacheBypassMismatchedUids()Z
    .registers 2

    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reorderWallpaperDuringUserSwitch()Z
    .registers 2

    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist rescheduleStopIfVisibleActivities()Z
    .registers 2

    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist restrictQuietModeCredentialBugFixToManagedProfiles()Z
    .registers 2

    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist saveGlobalAndGuestRestrictionsOnSystemUserXml()Z
    .registers 2

    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist saveGlobalAndGuestRestrictionsOnSystemUserXmlReadOnly()Z
    .registers 2

    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist scheduleStopOfBackgroundUser()Z
    .registers 2

    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist scheduleStopOfBackgroundUserByDefault()Z
    .registers 2

    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setPowerModeDuringUserSwitch()Z
    .registers 2

    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setupwizardUsernamePopulation()Z
    .registers 2

    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopExcessForBackgroundStarts()Z
    .registers 2

    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist stopPreviousUserApps()Z
    .registers 2

    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist supportCommunalProfile()Z
    .registers 2

    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportCommunalProfileNextgen()Z
    .registers 2

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unicornModeRefactoringForHsumReadOnly()Z
    .registers 2

    .line 373
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist useAllCpusDuringUserSwitch()Z
    .registers 2

    .line 380
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist usePrivateSpaceIconInBiometricPrompt()Z
    .registers 2

    .line 387
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist userFilterRefactoring()Z
    .registers 2

    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist userRestrictionConfigWifiSharedPrivate()Z
    .registers 2

    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist widgetCurrentUserView()Z
    .registers 2

    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist widgetScalingBugfix()Z
    .registers 2

    .line 415
    const/4 v0, 0x1

    return v0
.end method
