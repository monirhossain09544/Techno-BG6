.class public final Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist allowConfigMaximumCallLogEntriesPerSim()Z
    .registers 2

    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableDocumentsTrashApi()Z
    .registers 2

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist exposeSystemUpdateSettings()Z
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist launcherDataAccess()Z
    .registers 2

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist newAccountAttributesApiEnabled()Z
    .registers 2

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist newDefaultAccountApiEnabled()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist reduceBinderTransactionSizeForGetAllProperties()Z
    .registers 2

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist systemRegionalPreferencesApiEnabled()Z
    .registers 2

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist systemSettingsDefault()Z
    .registers 2

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist userKeys()Z
    .registers 2

    .line 72
    const/4 v0, 0x1

    return v0
.end method
