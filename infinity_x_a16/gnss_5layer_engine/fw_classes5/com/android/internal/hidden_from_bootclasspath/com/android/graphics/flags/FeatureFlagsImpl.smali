.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist displayBt2020Colorspace()Z
    .registers 2

    .line 9
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist exactComputeBounds()Z
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist gradientDrawableShapeArcForRoundedCap()Z
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist iconLoadDrawableReturnNullWhenUriDecodeFails()Z
    .registers 2

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist okLabColorspace()Z
    .registers 2

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist useResourcesFromContextToCreateDrawableIcons()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist yuvImageCompressToUltraHdr()Z
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method
