.class public final Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist activeAdminCleanup()Z
    .registers 2

    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist allowQueryingProfileType()Z
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist appRestrictionsCoexistence()Z
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist assistContentUserRestrictionEnabled()Z
    .registers 2

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist associateDisallowGrantAdminWithPermission()Z
    .registers 2

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist backupConnectedAppsSettings()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist backupServiceSecurityLogEventEnabled()Z
    .registers 2

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist coexistenceMigrationForSupervisionEnabled()Z
    .registers 2

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist crossProfileWidgetProviderBulkApis()Z
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist crossUserSuspensionEnabledRo()Z
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dedicatedDeviceControlApiEnabled()Z
    .registers 2

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist defaultSmsPersonalAppSuspensionFixEnabled()Z
    .registers 2

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deviceOwnerForAll()Z
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist devicePolicySizeTrackingEnabled()Z
    .registers 2

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deviceTheftApiEnabled()Z
    .registers 2

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deviceTheftImplEnabled()Z
    .registers 2

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist disallowUserControlStoppedStateFix()Z
    .registers 2

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dontWriteIsSystemAuthority()Z
    .registers 2

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dpeBasedOnAsyncApisEnabled()Z
    .registers 2

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableSupervisionServiceSync()Z
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enforcingAdminExtraEnabled()Z
    .registers 2

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enforcingAdminGetComponentNameEnabled()Z
    .registers 2

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enterpriseEsimUsingCarrierPrivileges()Z
    .registers 2

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist esimManagementEnabled()Z
    .registers 2

    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist esimManagementUxEnabled()Z
    .registers 2

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist headlessDeviceOwnerSingleUserEnabled()Z
    .registers 2

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist headlessSingleMinTargetSdk()Z
    .registers 2

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist internalLogEventListener()Z
    .registers 2

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isMtePolicyEnforced()Z
    .registers 2

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isRecursiveRequiredAppMergingEnabled()Z
    .registers 2

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist lockNowCoexistence()Z
    .registers 2

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist managementModePolicyMetrics()Z
    .registers 2

    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist multiUserManagementDeviceProvisioning()Z
    .registers 2

    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onboardingBugreportStorageBugFix()Z
    .registers 2

    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onboardingBugreportV2Enabled()Z
    .registers 2

    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onboardingConsentlessBugreports()Z
    .registers 2

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist permissionMigrationForZeroTrustApiEnabled()Z
    .registers 2

    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist policyEngineMigrationV2Enabled()Z
    .registers 2

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist policyStreamlining()Z
    .registers 2

    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist policyTransparencyRefactorEnabled()Z
    .registers 2

    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist provisioningContextParameter()Z
    .registers 2

    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist quietModeCredentialBugFix()Z
    .registers 2

    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist removeDeviceAdminFeatureChecks()Z
    .registers 2

    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist removeHackInPolicyEngine()Z
    .registers 2

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeManagedEsimOnWorkProfileDeletion()Z
    .registers 2

    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist removeManagedProfileEnabled()Z
    .registers 2

    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist resetPasswordWithTokenCoexistence()Z
    .registers 2

    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist secondaryLockscreenApiEnabled()Z
    .registers 2

    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist securityLogV2Enabled()Z
    .registers 2

    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setApplicationRestrictionsCoexistence()Z
    .registers 2

    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setAutoTimeEnabledCoexistence()Z
    .registers 2

    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setAutoTimeZoneEnabledCoexistence()Z
    .registers 2

    .line 366
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setBackupServiceEnabledCoexistence()Z
    .registers 2

    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setKeyguardDisabledFeaturesCoexistence()Z
    .registers 2

    .line 380
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setMtePolicyCoexistence()Z
    .registers 2

    .line 387
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setPermissionGrantStateCoexistence()Z
    .registers 2

    .line 394
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist splitCreateManagedProfileEnabled()Z
    .registers 2

    .line 401
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist suspendPackagesCoexistence()Z
    .registers 2

    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist unmanagedModeMigration()Z
    .registers 2

    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unsuspendNotSuspended()Z
    .registers 2

    .line 422
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist usePolicyIntersectionForPermittedInputMethods()Z
    .registers 2

    .line 429
    const/4 v0, 0x0

    return v0
.end method
