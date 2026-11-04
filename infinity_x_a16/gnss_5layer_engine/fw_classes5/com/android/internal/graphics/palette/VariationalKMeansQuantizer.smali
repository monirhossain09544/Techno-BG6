.class public Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;
.super Ljava/lang/Object;
.source "VariationalKMeansQuantizer.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "KMeansQuantizer"


# instance fields
.field private final blacklist mInitializations:I

.field private final blacklist mKMeans:Lcom/android/internal/ml/clustering/KMeans;

.field private final blacklist mMinClusterSqDistance:F

.field private blacklist mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 56
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-direct {p0, v0}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>(F)V

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(F)V
    .registers 3

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>(FI)V

    .line 61
    return-void
.end method

.method public constructor blacklist <init>(FI)V
    .registers 7

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/internal/ml/clustering/KMeans;

    new-instance v1, Ljava/util/Random;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;IF)V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mKMeans:Lcom/android/internal/ml/clustering/KMeans;

    .line 64
    mul-float/2addr p1, p1

    iput p1, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mMinClusterSqDistance:F

    .line 65
    iput p2, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mInitializations:I

    .line 66
    return-void
.end method

.method private blacklist getOptimalKMeans(I[[F)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[F)",
            "Ljava/util/List<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;"
        }
    .end annotation

    .line 129
    nop

    .line 130
    nop

    .line 131
    iget v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mInitializations:I

    const/4 v1, 0x0

    const-wide v2, -0x10000000000001L

    .line 132
    :goto_a
    if-lez v0, :cond_22

    .line 136
    iget-object v4, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mKMeans:Lcom/android/internal/ml/clustering/KMeans;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/ml/clustering/KMeans;->predict(I[[F)Ljava/util/List;

    move-result-object v4

    .line 137
    invoke-static {v4}, Lcom/android/internal/ml/clustering/KMeans;->score(Ljava/util/List;)D

    move-result-wide v5

    .line 138
    if-eqz v1, :cond_1c

    cmpl-double v7, v5, v2

    if-lez v7, :cond_1f

    .line 142
    :cond_1c
    nop

    .line 143
    move-object v1, v4

    move-wide v2, v5

    .line 145
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    .line 146
    goto :goto_a

    .line 148
    :cond_22
    return-object v1
.end method


# virtual methods
.method public blacklist getQuantizedColors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method

.method public blacklist quantize([II)V
    .registers 22

    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_104

    .line 79
    array-length v4, v1

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x1

    aput v2, v6, v7

    const/4 v8, 0x0

    aput v4, v6, v8

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    .line 80
    move v6, v8

    :goto_1d
    array-length v9, v1

    const/high16 v10, 0x43b40000    # 360.0f

    if-ge v6, v9, :cond_3d

    .line 81
    aget v9, v1, v6

    invoke-static {v9, v3}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 83
    aget-object v9, v4, v6

    aget v11, v3, v8

    div-float/2addr v11, v10

    aput v11, v9, v8

    .line 84
    aget-object v9, v4, v6

    aget v10, v3, v7

    aput v10, v9, v7

    .line 85
    aget-object v9, v4, v6

    aget v10, v3, v5

    aput v10, v9, v5

    .line 80
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 88
    :cond_3d
    move/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->getOptimalKMeans(I[[F)Ljava/util/List;

    move-result-object v1

    .line 92
    move v3, v8

    :goto_44
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b4

    .line 93
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 94
    invoke-virtual {v4}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v6

    .line 95
    add-int/lit8 v3, v3, 0x1

    move v9, v3

    :goto_57
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_b1

    .line 96
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 97
    invoke-virtual {v11}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v12

    .line 98
    invoke-static {v6, v12}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v13

    .line 100
    iget v14, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mMinClusterSqDistance:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_a7

    .line 101
    invoke-interface {v1, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {v4}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v11}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v11

    invoke-interface {v13, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    move v11, v8

    :goto_80
    array-length v13, v6

    if-ge v11, v13, :cond_a0

    .line 104
    aget v13, v6, v11

    float-to-double v13, v13

    aget v15, v12, v11

    aget v16, v6, v11

    sub-float v15, v15, v16

    move/from16 v16, v5

    move-object/from16 p1, v6

    float-to-double v5, v15

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v5, v5, v17

    add-double/2addr v13, v5

    double-to-float v5, v13

    aput v5, p1, v11

    .line 103
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, p1

    move/from16 v5, v16

    goto :goto_80

    .line 106
    :cond_a0
    move/from16 v16, v5

    move-object/from16 p1, v6

    add-int/lit8 v9, v9, -0x1

    goto :goto_ab

    .line 100
    :cond_a7
    move/from16 v16, v5

    move-object/from16 p1, v6

    .line 95
    :goto_ab
    add-int/2addr v9, v7

    move-object/from16 v6, p1

    move/from16 v5, v16

    goto :goto_57

    .line 92
    :cond_b1
    move/from16 v16, v5

    goto :goto_44

    .line 112
    :cond_b4
    move/from16 v16, v5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 113
    nop

    .line 114
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_103

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 115
    invoke-virtual {v3}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_d9

    .line 116
    goto :goto_c2

    .line 118
    :cond_d9
    invoke-virtual {v3}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v4

    .line 120
    aget v5, v4, v8

    mul-float/2addr v5, v10

    .line 121
    aget v6, v4, v7

    .line 122
    aget v4, v4, v16

    new-array v9, v2, [F

    aput v5, v9, v8

    aput v6, v9, v7

    aput v4, v9, v16

    .line 123
    invoke-static {v9}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v4

    .line 124
    iget-object v5, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v6, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-virtual {v3}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v6, v4, v3}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    goto :goto_c2

    .line 126
    :cond_103
    return-void

    :array_104
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method
