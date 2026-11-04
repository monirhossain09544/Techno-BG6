.class public final Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist drawDataParcel()Z
    .registers 2

    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist engagementMetrics()Z
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist generatedPreviews()Z
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist notKeyguardCategory()Z
    .registers 2

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist playStorePinWidgets()Z
    .registers 2

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist remoteAdapterConversion()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist remoteDocumentFeatures2025q4()Z
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist remoteDocumentSupport()Z
    .registers 2

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist remoteViewsProto()Z
    .registers 2

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist removeAppWidgetServiceIoFromCriticalPath()Z
    .registers 2

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist securityPolicyInteractAcrossUsers()Z
    .registers 2

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist supportResumeRestoreAfterReboot()Z
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist throttleWidgetUpdates()Z
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist useSmallerAppWidgetSystemRadius()Z
    .registers 2

    .line 100
    const/4 v0, 0x1

    return v0
.end method
