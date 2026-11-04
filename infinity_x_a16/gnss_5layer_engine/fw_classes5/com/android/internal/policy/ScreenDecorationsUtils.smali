.class public Lcom/android/internal/policy/ScreenDecorationsUtils;
.super Ljava/lang/Object;
.source "ScreenDecorationsUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getPhysicalPixelDisplaySizeRatio(Landroid/content/Context;)F
    .registers 4

    .line 84
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 86
    iget-object p0, v0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 87
    invoke-static {p0}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object p0

    .line 88
    if-nez p0, :cond_17

    .line 89
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 91
    :cond_17
    nop

    .line 92
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p0

    .line 93
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v0

    .line 91
    invoke-static {v1, p0, v2, v0}, Landroid/util/DisplayUtils;->getPhysicalPixelDisplaySizeRatio(IIII)F

    move-result p0

    return p0
.end method

.method public static blacklist getWindowCornerRadius(Landroid/content/Context;)F
    .registers 7

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 46
    return v2

    .line 49
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroid/view/Display;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_18

    .line 53
    return v2

    .line 55
    :cond_18
    invoke-virtual {v1}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v3

    .line 58
    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerRadiusAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 60
    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerTopRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v4

    .line 61
    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerRadiusTopAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 62
    cmpl-float v5, v4, v2

    if-nez v5, :cond_35

    .line 63
    move v4, v3

    .line 65
    :cond_35
    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerBottomRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    .line 66
    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerRadiusBottomAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v5, v0

    int-to-float v0, v5

    .line 67
    cmpl-float v1, v0, v2

    if-nez v1, :cond_44

    .line 68
    goto :goto_45

    .line 67
    :cond_44
    move v3, v0

    .line 72
    :goto_45
    invoke-static {p0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getPhysicalPixelDisplaySizeRatio(Landroid/content/Context;)F

    move-result p0

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_51

    .line 74
    mul-float/2addr v4, p0

    .line 75
    mul-float/2addr v3, p0

    .line 80
    :cond_51
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static blacklist supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z
    .registers 2

    .line 100
    const v0, 0x1110290

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
