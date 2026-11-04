.class public Lcom/android/internal/graphics/palette/Contrast;
.super Ljava/lang/Object;
.source "Contrast.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 23
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist contrastYs(FF)F
    .registers 4

    .line 99
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 100
    cmpl-float v1, v0, p0

    if-nez v1, :cond_9

    move p0, p1

    .line 101
    :cond_9
    const/high16 p1, 0x40a00000    # 5.0f

    add-float/2addr v0, p1

    add-float/2addr p0, p1

    div-float/2addr v0, p0

    return v0
.end method

.method public static blacklist darkerY(FF)F
    .registers 5

    .line 50
    nop

    .line 51
    const/high16 v0, 0x40a00000    # 5.0f

    mul-float v1, p1, v0

    sub-float/2addr v0, v1

    add-float/2addr v0, p0

    div-float/2addr v0, p1

    .line 52
    float-to-double p0, v0

    const-wide/16 v1, 0x0

    cmpg-double p0, p0, v1

    if-gez p0, :cond_12

    .line 53
    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 55
    :cond_12
    return v0
.end method

.method public static blacklist lighterY(FF)F
    .registers 6

    .line 33
    nop

    .line 34
    const/high16 v0, 0x40a00000    # 5.0f

    add-float/2addr p0, v0

    mul-float/2addr p1, p0

    const/high16 p0, -0x3f600000    # -5.0f

    add-float/2addr p1, p0

    .line 35
    float-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_12

    .line 36
    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 38
    :cond_12
    return p1
.end method

.method public static blacklist lstarToY(F)F
    .registers 8

    .line 66
    nop

    .line 67
    const/high16 v0, 0x41000000    # 8.0f

    cmpl-float v0, p0, v0

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    if-lez v0, :cond_19

    .line 68
    float-to-double v3, p0

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x405d000000000000L    # 116.0

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-float p0, v3

    return p0

    .line 70
    :cond_19
    const v0, 0x4461c000    # 903.0f

    div-float/2addr p0, v0

    float-to-double v3, p0

    mul-double/2addr v3, v1

    double-to-float p0, v3

    return p0
.end method

.method public static blacklist yToLstar(F)F
    .registers 3

    .line 81
    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    .line 82
    nop

    .line 84
    const v0, 0x3c111aa7

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_10

    .line 85
    const v0, 0x4461d2f7

    mul-float/2addr p0, v0

    .line 87
    return p0

    .line 89
    :cond_10
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    .line 91
    const/high16 v0, 0x42e80000    # 116.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x41800000    # 16.0f

    sub-float/2addr p0, v0

    return p0
.end method
