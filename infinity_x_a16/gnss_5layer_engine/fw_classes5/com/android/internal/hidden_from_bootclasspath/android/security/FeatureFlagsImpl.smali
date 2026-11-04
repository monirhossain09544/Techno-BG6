.class public final Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist aapmApi()Z
    .registers 2

    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist aapmFeatureDisableCellular2g()Z
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist aapmFeatureDisableInstallUnknownSources()Z
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist aapmFeatureUsbDataProtection()Z
    .registers 2

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist aapmFeatureUsbDataProtectionDelayDisableAutoOnly()Z
    .registers 2

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist aapmFeatureUsbDataProtectionDisableDataForChargerUponLock()Z
    .registers 2

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist aflApi()Z
    .registers 2

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist asmIgnoreGracePeriodExemption()Z
    .registers 2

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist asmOptSystemIntoEnforcement()Z
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist asmRestrictionsEnabled()Z
    .registers 2

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist asmRestrictionsV2()Z
    .registers 2

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist asmToastsEnabled()Z
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist blockNullActionIntents()Z
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist certificateTransparencyConfiguration()Z
    .registers 2

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist checkApplicationThreadCalledBySystem()Z
    .registers 2

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist conscryptNetworkSecurityConfig()Z
    .registers 2

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist contentUriPermissionApis()Z
    .registers 2

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deprecateBundleDefuse()Z
    .registers 2

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist deprecateUsesCleartextTraffic()Z
    .registers 2

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableAdaptiveAuthCounterLock()Z
    .registers 2

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableIntentFirewallComponentClassFilter()Z
    .registers 2

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableIntentFirewallExtraKeyValueFilter()Z
    .registers 2

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableIntentMatchingFlags()Z
    .registers 2

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableTalismanService()Z
    .registers 2

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enforceIntentFilterMatch()Z
    .registers 2

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist extendEcmToAllSettings()Z
    .registers 2

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist failOnParcelSizeMismatch()Z
    .registers 2

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist failedAuthLockToggle()Z
    .registers 2

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist frpEnforcement()Z
    .registers 2

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist fsverityApi()Z
    .registers 2

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist implicitUriGrantsRestrictedForSendAction()Z
    .registers 2

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist implicitUriGrantsRestrictedForSendmultipleImagecaptureActions()Z
    .registers 2

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist internalLogEventListener()Z
    .registers 2

    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist keyinfoUnlockedDeviceRequired()Z
    .registers 2

    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist keystoreGrantApi()Z
    .registers 2

    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist manageLockoutEndTimeInService()Z
    .registers 2

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist mgf1DigestSetterV2()Z
    .registers 2

    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist preventIntentRedirect()Z
    .registers 2

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist preventIntentRedirectAbortOrThrowException()Z
    .registers 2

    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist preventIntentRedirectCollectNestedKeysOnServerIfNotCollected()Z
    .registers 2

    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist preventIntentRedirectShowToast()Z
    .registers 2

    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist preventIntentRedirectShowToastIfNestedKeysNotCollectedRW()Z
    .registers 2

    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist preventIntentRedirectThrowExceptionIfNestedKeysNotCollected()Z
    .registers 2

    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist protectDeviceConfigFlags()Z
    .registers 2

    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist resetAuthFlagsAndMetricsInLockUser()Z
    .registers 2

    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist scryptParameterChange()Z
    .registers 2

    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist secureLockDevice()Z
    .registers 2

    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist secureLockdown()Z
    .registers 2

    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist serviceUprobestats()Z
    .registers 2

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldTrustManagerListenForPrimaryAuth()Z
    .registers 2

    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist softwareRatelimiter()Z
    .registers 2

    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist stopRecognizingLegacyPasswordHashes()Z
    .registers 2

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist subscribeToKeyguardLockedStatePermPrivFlag()Z
    .registers 2

    .line 373
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist unlockedStorageApi()Z
    .registers 2

    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist wtfBundleDefuse()Z
    .registers 2

    .line 387
    const/4 v0, 0x0

    return v0
.end method
