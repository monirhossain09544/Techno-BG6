.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addFirstVsyncToTracker()Z
    .registers 2

    .line 9
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist adpfGpuSf()Z
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist anchorList()Z
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist arrSetframerateApi()Z
    .registers 2

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist arrSetframerateGteEnum()Z
    .registers 2

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist arrSurfacecontrolSetframerateApi()Z
    .registers 2

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist begoneBrightHlg()Z
    .registers 2

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist bufferStuffingFix()Z
    .registers 2

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist cacheWhenSourceCropLayerOnlyMoved()Z
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist connectedDisplay()Z
    .registers 2

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist connectedDisplayHdrV2()Z
    .registers 2

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist correctDpiWithDisplaySize()Z
    .registers 2

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deprecateFrameTracker()Z
    .registers 2

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deprecateVsyncSf()Z
    .registers 2

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableSyntheticVsyncForPerformance()Z
    .registers 2

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist disableTransparentRegionHint()Z
    .registers 2

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist displayCommandModeset()Z
    .registers 2

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableLayerCommandBatching()Z
    .registers 2

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableSmallAreaDetection()Z
    .registers 2

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist filterRefreshRatesWithinConfigGroup()Z
    .registers 2

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist flushBufferSlotsToUncache()Z
    .registers 2

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist followerArbitraryRefreshRateSelection()Z
    .registers 2

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist followerDisplayBackpressure()Z
    .registers 2

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist forceCompileGraphiteRenderengine()Z
    .registers 2

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist forceSlowerFollowerGpuComposition()Z
    .registers 2

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist fp16ClientTarget()Z
    .registers 2

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist frameRateCategoryMrr()Z
    .registers 2

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist frontendCachingV0()Z
    .registers 2

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist gameDefaultFrameRate()Z
    .registers 2

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist graphiteRenderengine()Z
    .registers 2

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist graphiteRenderengineDesktopRollout()Z
    .registers 2

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist graphiteRenderenginePreviewRollout()Z
    .registers 2

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hdcpLevelHal()Z
    .registers 2

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist hdcpNegotiation()Z
    .registers 2

    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist hotplug2()Z
    .registers 2

    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist increaseMissedFrameJankThreshold()Z
    .registers 2

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist localTonemapScreenshots()Z
    .registers 2

    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist mdDegradeHdr()Z
    .registers 2

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist modesetStateMachine()Z
    .registers 2

    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist monitorBufferFences()Z
    .registers 2

    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist multithreadedPresent()Z
    .registers 2

    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist noVsyncsOnScreenOff()Z
    .registers 2

    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist offloadGpuComposition()Z
    .registers 2

    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist pacesetterSelection()Z
    .registers 2

    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist parseEdidVersionAndInputType()Z
    .registers 2

    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist protectedIfClient()Z
    .registers 2

    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist readbackScreenshot()Z
    .registers 2

    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist refreshRateOverlayOnExternalDisplay()Z
    .registers 2

    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist renderableBufferUsage()Z
    .registers 2

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetModelFlushesFence()Z
    .registers 2

    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist restoreBlurStep()Z
    .registers 2

    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist resyncOnTx()Z
    .registers 2

    .line 366
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist screenshotFencePreservation()Z
    .registers 2

    .line 373
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setClientDrawnCornerRadii()Z
    .registers 2

    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shaderDiskCache()Z
    .registers 2

    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist skipInvisibleWindowsInInput()Z
    .registers 2

    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stableEdidIds()Z
    .registers 2

    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopLayer()Z
    .registers 2

    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist supportedRefreshRateUpdate()Z
    .registers 2

    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist syncedResolutionSwitch()Z
    .registers 2

    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist trueHdrScreenshots()Z
    .registers 2

    .line 429
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist useAtLeast60ForMinVote()Z
    .registers 2

    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist useKnownRefreshRateForFpsConsistency()Z
    .registers 2

    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist vsyncPredictorPredictsWithinThreshold()Z
    .registers 2

    .line 450
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist vulkanRenderengine()Z
    .registers 2

    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist wbVirtualdisplay2()Z
    .registers 2

    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist windowBlurKawase2()Z
    .registers 2

    .line 471
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist windowBlurKawase2FixAliasing()Z
    .registers 2

    .line 478
    const/4 v0, 0x1

    return v0
.end method
