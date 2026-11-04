.class public final Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;
.super Ljava/lang/Object;
.source "FrameworkStatsLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/FrameworkStatsLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatsHistogram"
.end annotation


# static fields
.field public static final blacklist UNDERFLOW:F = -3.4028235E38f


# instance fields
.field private final blacklist mBinCounts:[I

.field private final blacklist mBins:[F


# direct methods
.method private constructor blacklist <init>([F)V
    .registers 2

    .line 17456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17457
    iput-object p1, p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;->mBins:[F

    .line 17458
    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;->mBinCounts:[I

    .line 17459
    return-void
.end method

.method public static varargs blacklist createExplicitBins([F)Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;
    .registers 5

    .line 17504
    array-length v0, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [F

    .line 17505
    const v2, -0x800001

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 17506
    array-length v2, p0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17508
    new-instance p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;

    invoke-direct {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;-><init>([F)V

    return-object p0
.end method

.method public static blacklist createExponentialBins(FFI)Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;
    .registers 9

    .line 17484
    add-int/lit8 v0, p2, 0x2

    new-array v1, v0, [F

    .line 17485
    const/4 v2, 0x0

    const v3, -0x800001

    aput v3, v1, v2

    .line 17486
    const/4 v2, 0x1

    aput p0, v1, v2

    .line 17487
    sub-int/2addr v0, v2

    aput p1, v1, v0

    .line 17491
    div-float/2addr p1, p0

    float-to-double p0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v4, p2

    div-double/2addr v2, v4

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    .line 17492
    const/4 p1, 0x2

    :goto_1c
    if-ge p1, v0, :cond_28

    .line 17493
    add-int/lit8 p2, p1, -0x1

    aget p2, v1, p2

    mul-float/2addr p2, p0

    aput p2, v1, p1

    .line 17492
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    .line 17496
    :cond_28
    new-instance p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;

    invoke-direct {p0, v1}, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;-><init>([F)V

    return-object p0
.end method

.method public static blacklist createLinearBins(FFI)Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;
    .registers 7

    .line 17466
    add-int/lit8 v0, p2, 0x2

    new-array v1, v0, [F

    .line 17467
    const/4 v2, 0x0

    const v3, -0x800001

    aput v3, v1, v2

    .line 17468
    const/4 v2, 0x1

    aput p0, v1, v2

    .line 17469
    sub-int/2addr v0, v2

    aput p1, v1, v0

    .line 17471
    sub-float/2addr p1, p0

    int-to-float p0, p2

    div-float/2addr p1, p0

    .line 17472
    const/4 p0, 0x2

    :goto_14
    if-ge p0, v0, :cond_20

    .line 17473
    add-int/lit8 p2, p0, -0x1

    aget p2, v1, p2

    add-float/2addr p2, p1

    aput p2, v1, p0

    .line 17472
    add-int/lit8 p0, p0, 0x1

    goto :goto_14

    .line 17476
    :cond_20
    new-instance p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;

    invoke-direct {p0, v1}, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;-><init>([F)V

    return-object p0
.end method


# virtual methods
.method public blacklist addValue(F)V
    .registers 5

    .line 17515
    const/4 v0, 0x0

    .line 17516
    :goto_1
    iget-object v1, p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;->mBins:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_15

    .line 17517
    iget-object v1, p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;->mBins:[F

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_13

    .line 17518
    goto :goto_15

    .line 17516
    :cond_13
    move v0, v2

    goto :goto_1

    .line 17522
    :cond_15
    :goto_15
    iget-object p1, p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;->mBinCounts:[I

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    .line 17523
    return-void
.end method

.method public blacklist clear()V
    .registers 3

    .line 17529
    iget-object v0, p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;->mBinCounts:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 17530
    return-void
.end method

.method public blacklist getBinCounts()[I
    .registers 2

    .line 17536
    iget-object v0, p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;->mBinCounts:[I

    return-object v0
.end method

.method public blacklist getBins()[F
    .registers 2

    .line 17543
    iget-object v0, p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;->mBins:[F

    return-object v0
.end method
