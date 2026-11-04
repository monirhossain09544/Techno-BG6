.class public Lcom/android/internal/ml/clustering/KMeans;
.super Ljava/lang/Object;
.source "KMeans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/ml/clustering/KMeans$Mean;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "KMeans"


# instance fields
.field private final blacklist mMaxIterations:I

.field private final blacklist mRandomState:Ljava/util/Random;

.field private blacklist mSqConvergenceEpsilon:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;)V

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Random;)V
    .registers 4

    .line 45
    const/16 v0, 0x1e

    const v1, 0x3ba3d70a    # 0.005f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;IF)V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Random;IF)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/internal/ml/clustering/KMeans;->mRandomState:Ljava/util/Random;

    .line 49
    iput p2, p0, Lcom/android/internal/ml/clustering/KMeans;->mMaxIterations:I

    .line 50
    mul-float/2addr p3, p3

    iput p3, p0, Lcom/android/internal/ml/clustering/KMeans;->mSqConvergenceEpsilon:F

    .line 51
    return-void
.end method

.method public static blacklist nearestMean([FLjava/util/List;)Lcom/android/internal/ml/clustering/KMeans$Mean;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/List<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;)",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;"
        }
    .end annotation

    .line 187
    nop

    .line 188
    nop

    .line 190
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 191
    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_23

    .line 192
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 195
    iget-object v5, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    invoke-static {p0, v5}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v5

    .line 196
    cmpg-float v6, v5, v2

    if-gez v6, :cond_20

    .line 197
    nop

    .line 198
    move-object v1, v4

    move v2, v5

    .line 191
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 201
    :cond_23
    return-object v1
.end method

.method public static blacklist score(Ljava/util/List;)D
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;)D"
        }
    .end annotation

    .line 98
    nop

    .line 99
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 100
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v0, :cond_31

    .line 101
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 102
    move v6, v3

    :goto_12
    if-ge v6, v0, :cond_2e

    .line 103
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 104
    if-ne v5, v7, :cond_1d

    .line 105
    goto :goto_2b

    .line 107
    :cond_1d
    iget-object v8, v5, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    iget-object v7, v7, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    invoke-static {v8, v7}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 108
    add-double/2addr v1, v7

    .line 102
    :goto_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 100
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 111
    :cond_31
    return-wide v1
.end method

.method public static blacklist sqDistance([F[F)F
    .registers 8

    .line 206
    nop

    .line 207
    array-length v0, p0

    .line 208
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_15

    .line 209
    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    aget v4, p0, v2

    aget v5, p1, v2

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 211
    :cond_15
    return v1
.end method

.method private blacklist step(Ljava/util/ArrayList;[[F)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;[[F)Z"
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_16

    .line 145
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 146
    iget-object v2, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 144
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 148
    :cond_16
    array-length v0, p2

    sub-int/2addr v0, v1

    :goto_18
    if-ltz v0, :cond_28

    .line 149
    aget-object v2, p2, v0

    .line 150
    invoke-static {v2, p1}, Lcom/android/internal/ml/clustering/KMeans;->nearestMean([FLjava/util/List;)Lcom/android/internal/ml/clustering/KMeans$Mean;

    move-result-object v3

    .line 151
    iget-object v3, v3, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 154
    :cond_28
    nop

    .line 156
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_2e
    if-ltz p2, :cond_94

    .line 157
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 158
    iget-object v2, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3f

    .line 159
    goto :goto_91

    .line 165
    :cond_3f
    iget-object v2, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    .line 166
    array-length v3, v2

    new-array v3, v3, [F

    iput-object v3, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    .line 167
    const/4 v3, 0x0

    move v4, v3

    :goto_48
    iget-object v5, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6d

    .line 169
    move v5, v3

    :goto_51
    iget-object v6, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    array-length v6, v6

    if-ge v5, v6, :cond_6a

    .line 170
    iget-object v6, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    aget v7, v6, v5

    iget-object v8, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    aget v8, v8, v5

    add-float/2addr v7, v8

    aput v7, v6, v5

    .line 169
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 167
    :cond_6a
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 173
    :cond_6d
    move v4, v3

    :goto_6e
    iget-object v5, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    array-length v5, v5

    if-ge v4, v5, :cond_84

    .line 174
    iget-object v5, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    aget v6, v5, v4

    iget-object v7, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v5, v4

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    .line 178
    :cond_84
    iget-object v0, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    invoke-static {v2, v0}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v0

    iget v2, p0, Lcom/android/internal/ml/clustering/KMeans;->mSqConvergenceEpsilon:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_91

    .line 179
    move v1, v3

    .line 156
    :cond_91
    :goto_91
    add-int/lit8 p2, p2, -0x1

    goto :goto_2e

    .line 182
    :cond_94
    return v1
.end method


# virtual methods
.method public blacklist checkDataSetSanity([[F)V
    .registers 7

    .line 116
    if-eqz p1, :cond_34

    .line 118
    array-length v0, p1

    if-eqz v0, :cond_2c

    .line 120
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, "Bad data set format."

    if-eqz v1, :cond_26

    .line 124
    aget-object v0, p1, v0

    array-length v0, v0

    .line 125
    array-length v1, p1

    .line 126
    const/4 v3, 0x1

    :goto_11
    if-ge v3, v1, :cond_25

    .line 127
    aget-object v4, p1, v3

    if-eqz v4, :cond_1f

    aget-object v4, p1, v3

    array-length v4, v4

    if-ne v4, v0, :cond_1f

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 128
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_25
    return-void

    .line 121
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Data set is empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Data set is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist predict(I[[F)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[F)",
            "Ljava/util/List<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p2}, Lcom/android/internal/ml/clustering/KMeans;->checkDataSetSanity([[F)V

    .line 65
    const/4 v0, 0x0

    aget-object v1, p2, v0

    array-length v1, v1

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    move v3, v0

    :goto_d
    if-ge v3, p1, :cond_2a

    .line 69
    new-instance v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    invoke-direct {v4, v1}, Lcom/android/internal/ml/clustering/KMeans$Mean;-><init>(I)V

    .line 70
    move v5, v0

    :goto_15
    if-ge v5, v1, :cond_24

    .line 71
    iget-object v6, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    iget-object v7, p0, Lcom/android/internal/ml/clustering/KMeans;->mRandomState:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    aput v7, v6, v5

    .line 70
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 73
    :cond_24
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 77
    :cond_2a
    nop

    .line 78
    nop

    :goto_2c
    iget p1, p0, Lcom/android/internal/ml/clustering/KMeans;->mMaxIterations:I

    if-ge v0, p1, :cond_3a

    .line 79
    invoke-direct {p0, v2, p2}, Lcom/android/internal/ml/clustering/KMeans;->step(Ljava/util/ArrayList;[[F)Z

    move-result p1

    .line 80
    if-eqz p1, :cond_37

    .line 82
    goto :goto_3a

    .line 78
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 85
    :cond_3a
    :goto_3a
    nop

    .line 87
    return-object v2
.end method
