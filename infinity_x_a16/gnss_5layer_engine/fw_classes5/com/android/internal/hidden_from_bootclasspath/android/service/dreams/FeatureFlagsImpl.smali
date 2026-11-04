.class public final Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist allowDreamAttachFailure()Z
    .registers 2

    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist allowDreamWhenPostured()Z
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist allowDreamWithChargeLimit()Z
    .registers 2

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist cleanupDreamSettingsOnUninstall()Z
    .registers 2

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist disallowDreamOnAutoProjection()Z
    .registers 2

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dismissDreamOnKeyguardDismiss()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dreamHandlesBeingObscured()Z
    .registers 2

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dreamHandlesConfirmKeys()Z
    .registers 2

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dreamOverlayHost()Z
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dreamOverlayStartedFix()Z
    .registers 2

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dreamWakeRedirect()Z
    .registers 2

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dreamsV2()Z
    .registers 2

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dreamsV2Resources()Z
    .registers 2

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist napWhenDreamEnabled()Z
    .registers 2

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist publishPreviewStateToOverlay()Z
    .registers 2

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist startAndStopDozingInBackground()Z
    .registers 2

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist wakeOnStoppingDoze()Z
    .registers 2

    .line 121
    const/4 v0, 0x0

    return v0
.end method
