.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist applyPictureProfiles()Z
    .registers 2

    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist bqConsumerAttachCallback()Z
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist bqExtendedallocate()Z
    .registers 2

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist bqGlFenceCleanup()Z
    .registers 2

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist bqProducerThrottlesOnlyAsyncMode()Z
    .registers 2

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist cursorPlaneCompatibility()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist defaultScalingModeFreeze()Z
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist frametimestampsPreviousrelease()Z
    .registers 2

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist unappliedTransactionCleanup()Z
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist wbConsumerBaseOwnsBq()Z
    .registers 2

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist wbLibcameraservice()Z
    .registers 2

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist wbMediaMigration()Z
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist wbPlatformApiImprovements()Z
    .registers 2

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist wbRingBuffer()Z
    .registers 2

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist wbStreamSplitter()Z
    .registers 2

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist wbUnlimitedSlots()Z
    .registers 2

    .line 114
    const/4 v0, 0x1

    return v0
.end method
