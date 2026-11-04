.class public final Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist launchSelectedCardFromQsTile()Z
    .registers 2

    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist launchWalletOptionOnPowerDoubleTap()Z
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist launchWalletViaSysuiCallbacks()Z
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method
