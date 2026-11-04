.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist a11yCrashOnInconsistentEventStream()Z
    .registers 2

    .line 9
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist abortDeviceOpeningOnEnodev()Z
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist allowTransferOfEntireGesture()Z
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist clearRelativeAxesInResampledCoords()Z
    .registers 2

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist collectPalmRejectionQualityMetrics()Z
    .registers 2

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist connectedDisplaysAssociatedDisplayCursorBugfix()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist connectedDisplaysCursor()Z
    .registers 2

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deprecateSplitTouchApis()Z
    .registers 2

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist deviceAssociations()Z
    .registers 2

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist disableRejectTouchOnStylusHover()Z
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableAlphabeticKeyboardWake()Z
    .registers 2

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableButtonStateVerification()Z
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableDisplayTopologyValidation()Z
    .registers 2

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableInboundEventVerification()Z
    .registers 2

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableInputPolicyProfile()Z
    .registers 2

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableMultiDeviceInput()Z
    .registers 2

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableMultiDeviceSameWindowStream()Z
    .registers 2

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableOutboundEventVerification()Z
    .registers 2

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enablePerDeviceInputLatencyMetrics()Z
    .registers 2

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enablePredictionPruningViaJerkThresholding()Z
    .registers 2

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableV2TouchpadTypingPalmRejection()Z
    .registers 2

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist inputDeviceViewBehaviorApi()Z
    .registers 2

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist keyboardRepeatKeys()Z
    .registers 2

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist lowLevelTracing()Z
    .registers 2

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist overrideKeyBehaviorPermissionApis()Z
    .registers 2

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist preventMergingInputPointerDevices()Z
    .registers 2

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist rateLimitUserActivityPokeInDispatcher()Z
    .registers 2

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist rotaryInputTelemetry()Z
    .registers 2

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist scaleCursorSpeedWithDpi()Z
    .registers 2

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setInputDeviceKernelWake()Z
    .registers 2

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist showPointersForPartialScreenshare()Z
    .registers 2

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist simultaneousOutsideAndHoverFix()Z
    .registers 2

    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist useClonedScreenCoordinatesAsRaw()Z
    .registers 2

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist useSeparateXyDpiScalingForMice()Z
    .registers 2

    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist useTopologyAwareFlag()Z
    .registers 2

    .line 247
    const/4 v0, 0x1

    return v0
.end method
