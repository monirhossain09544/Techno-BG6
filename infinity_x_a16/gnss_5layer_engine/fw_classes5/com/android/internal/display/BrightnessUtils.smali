.class public Lcom/android/internal/display/BrightnessUtils;
.super Ljava/lang/Object;
.source "BrightnessUtils.java"


# static fields
.field private static final blacklist A:F = 0.17883277f

.field private static final blacklist B:F = 0.28466892f

.field private static final blacklist C:F = 0.5599107f

.field public static final blacklist INVALID_BRIGHTNESS_IN_CONFIG:F = -2.0f

.field private static final blacklist R:F = 0.5f


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist convertGammaToLinear(F)F
    .registers 3

    .line 55
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_c

    .line 56
    div-float/2addr p0, v0

    invoke-static {p0}, Landroid/util/MathUtils;->sq(F)F

    move-result p0

    goto :goto_1c

    .line 58
    :cond_c
    const v0, 0x3f0f564f

    sub-float/2addr p0, v0

    const v0, 0x3e371ff0

    div-float/2addr p0, v0

    invoke-static {p0}, Landroid/util/MathUtils;->exp(F)F

    move-result p0

    const v0, 0x3e91c020

    add-float/2addr p0, v0

    .line 63
    :goto_1c
    const/4 v0, 0x0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    .line 67
    div-float/2addr p0, v1

    return p0
.end method

.method public static final blacklist convertLinearToGamma(F)F
    .registers 2

    .line 78
    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr p0, v0

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_11

    .line 81
    invoke-static {p0}, Landroid/util/MathUtils;->sqrt(F)F

    move-result p0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    goto :goto_21

    .line 83
    :cond_11
    const v0, 0x3e91c020

    sub-float/2addr p0, v0

    invoke-static {p0}, Landroid/util/MathUtils;->log(F)F

    move-result p0

    const v0, 0x3e371ff0

    mul-float/2addr p0, v0

    const v0, 0x3f0f564f

    add-float/2addr p0, v0

    .line 85
    :goto_21
    return p0
.end method
