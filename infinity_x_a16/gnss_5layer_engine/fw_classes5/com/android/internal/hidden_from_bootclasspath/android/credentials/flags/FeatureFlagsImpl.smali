.class public final Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clearCredentialsFixEnabled()Z
    .registers 2

    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist clearSessionEnabled()Z
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist configurableSelectorUiEnabled()Z
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist hybridFilterOptFixEnabled()Z
    .registers 2

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isCredmanSettingsExpressiveDesign()Z
    .registers 2

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist metricBugfixesContinued()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist newFrameworkMetrics()Z
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist newSettingsIntents()Z
    .registers 2

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist packageUpdateFixEnabled()Z
    .registers 2

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist propagateUserContextForIntentCreation()Z
    .registers 2

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist safeguardCandidateCredentialsApiCaller()Z
    .registers 2

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist settingsActivityEnabled()Z
    .registers 2

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist settingsWFixes()Z
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist ttlFixEnabled()Z
    .registers 2

    .line 100
    const/4 v0, 0x0

    return v0
.end method
