.class public Lcom/android/internal/policy/LogDecelerateInterpolator;
.super Ljava/lang/Object;
.source "LogDecelerateInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist mBase:I

.field private blacklist mDrift:I

.field private final blacklist mLogScale:F


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/android/internal/policy/LogDecelerateInterpolator;->mBase:I

    .line 30
    iput p2, p0, Lcom/android/internal/policy/LogDecelerateInterpolator;->mDrift:I

    .line 32
    iget p1, p0, Lcom/android/internal/policy/LogDecelerateInterpolator;->mBase:I

    iget p2, p0, Lcom/android/internal/policy/LogDecelerateInterpolator;->mDrift:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1, p2}, Lcom/android/internal/policy/LogDecelerateInterpolator;->computeLog(FII)F

    move-result p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/LogDecelerateInterpolator;->mLogScale:F

    .line 33
    return-void
.end method

.method private static blacklist computeLog(FII)F
    .registers 7

    .line 36
    int-to-double v0, p1

    neg-float p1, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    int-to-float p2, p2

    mul-float/2addr p2, p0

    add-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .registers 4

    .line 41
    iget v0, p0, Lcom/android/internal/policy/LogDecelerateInterpolator;->mBase:I

    iget v1, p0, Lcom/android/internal/policy/LogDecelerateInterpolator;->mDrift:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/policy/LogDecelerateInterpolator;->computeLog(FII)F

    move-result p1

    iget v0, p0, Lcom/android/internal/policy/LogDecelerateInterpolator;->mLogScale:F

    mul-float/2addr p1, v0

    return p1
.end method
