.class public final Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist alternativeForDexoptCleanup()Z
    .registers 2

    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist alwaysLoadPastCertsV4()Z
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist appCompatOption16kb()Z
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist appCompatWarnings16kb()Z
    .registers 2

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist archiving()Z
    .registers 2

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist aslInApkAppMetadataSource()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist audioPlaybackCaptureAllowance()Z
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist cacheQueryIntentActivitiesInClientSide()Z
    .registers 2

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist changeLauncherBadging()Z
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist cloudCompilationPm()Z
    .registers 2

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist consolidatePackageChangedBroadcasts()Z
    .registers 2

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist disallowSdkLibsToBeApps()Z
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist emergencyInstallPermission()Z
    .registers 2

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist fixDuplicatedFlags()Z
    .registers 2

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getPackageInfo()Z
    .registers 2

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getPackageInfoWithFd()Z
    .registers 2

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getPackageStorageStats()Z
    .registers 2

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getResolvedApkPath()Z
    .registers 2

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist improveInstallFreeze()Z
    .registers 2

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist includeBroadcastDebugReason()Z
    .registers 2

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist includeFeatureFlagsInPackageCacher()Z
    .registers 2

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist introduceMediaProcessingType()Z
    .registers 2

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist mergePackageChangedBroadcast()Z
    .registers 2

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist minTargetSdk24()Z
    .registers 2

    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist protectSupervisionPackages()Z
    .registers 2

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist provideInfoOfApkInApex()Z
    .registers 2

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist quarantinedEnabled()Z
    .registers 2

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist readInstallInfo()Z
    .registers 2

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist recoverabilityDetection()Z
    .registers 2

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist relativeReferenceIntentFilters()Z
    .registers 2

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist removeHiddenModuleUsage()Z
    .registers 2

    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist restrictNonpreloadsSystemShareduids()Z
    .registers 2

    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist rollbackLifetime()Z
    .registers 2

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sdkDependencyInstaller()Z
    .registers 2

    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sdkLibIndependence()Z
    .registers 2

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPreVerifiedDomains()Z
    .registers 2

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist stayStopped()Z
    .registers 2

    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist uidBasedProviderLookup()Z
    .registers 2

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist useArtServiceV2()Z
    .registers 2

    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist usePiaV2()Z
    .registers 2

    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist verificationService()Z
    .registers 2

    .line 289
    const/4 v0, 0x1

    return v0
.end method
