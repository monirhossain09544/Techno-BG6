.class public final Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addAccessibilityTitleForAugmentedAutofillDropdown()Z
    .registers 2

    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist addLastFocusedIdToClientState()Z
    .registers 2

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addLastFocusedIdToFillEventHistory()Z
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist addSessionIdToClientState()Z
    .registers 2

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist autofillCredmanDevIntegration()Z
    .registers 2

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist autofillCredmanIntegration()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist autofillCredmanIntegrationPhase2()Z
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist autofillSessionDestroyed()Z
    .registers 2

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist autofillWMetrics()Z
    .registers 2

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist disableFillDialogOnAutomotiveMultiWindow()Z
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist fillDialogImprovements()Z
    .registers 2

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist fillDialogImprovementsImpl()Z
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist fillFieldsFromCurrentSessionOnly()Z
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist highlightAutofillSingleField()Z
    .registers 2

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist improveFillDialogAconfig()Z
    .registers 2

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist includeInvisibleViewGroupInAssistStructure()Z
    .registers 2

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist logAugmentedServiceUid()Z
    .registers 2

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist metricsFixes()Z
    .registers 2

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist multipleFillHistory()Z
    .registers 2

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist relayout()Z
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist relayoutFix()Z
    .registers 2

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist remoteFillServiceUseWeakReference()Z
    .registers 2

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist supportMultiUserMultiDisplay()Z
    .registers 2

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist test()Z
    .registers 2

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist testFlag()Z
    .registers 2

    .line 177
    const/4 v0, 0x0

    return v0
.end method
