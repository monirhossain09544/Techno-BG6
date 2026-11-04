.class public final Lcom/android/internal/graphics/cam/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# static fields
.field public static final blacklist DEFAULT:Lcom/android/internal/graphics/cam/Frame;


# instance fields
.field private final blacklist mAw:F

.field private final blacklist mC:F

.field private final blacklist mFl:F

.field private final blacklist mFlRoot:F

.field private final blacklist mN:F

.field private final blacklist mNbb:F

.field private final blacklist mNc:F

.field private final blacklist mNcb:F

.field private final blacklist mRgbD:[F

.field private final blacklist mZ:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 58
    sget-object v0, Lcom/android/internal/graphics/cam/CamUtils;->WHITE_POINT_D65:[F

    .line 61
    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    invoke-static {v1, v2}, Lcom/android/internal/graphics/cam/CamUtils;->yFromLstar(D)D

    move-result-wide v1

    const-wide v3, 0x404fd4bbab8b494cL    # 63.66197723675813

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    .line 59
    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/graphics/cam/Frame;->make([FFFFZ)Lcom/android/internal/graphics/cam/Frame;

    move-result-object v0

    sput-object v0, Lcom/android/internal/graphics/cam/Frame;->DEFAULT:Lcom/android/internal/graphics/cam/Frame;

    .line 58
    return-void
.end method

.method private constructor blacklist <init>(FFFFFF[FFFF)V
    .registers 11

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lcom/android/internal/graphics/cam/Frame;->mN:F

    .line 125
    iput p2, p0, Lcom/android/internal/graphics/cam/Frame;->mAw:F

    .line 126
    iput p3, p0, Lcom/android/internal/graphics/cam/Frame;->mNbb:F

    .line 127
    iput p4, p0, Lcom/android/internal/graphics/cam/Frame;->mNcb:F

    .line 128
    iput p5, p0, Lcom/android/internal/graphics/cam/Frame;->mC:F

    .line 129
    iput p6, p0, Lcom/android/internal/graphics/cam/Frame;->mNc:F

    .line 130
    iput-object p7, p0, Lcom/android/internal/graphics/cam/Frame;->mRgbD:[F

    .line 131
    iput p8, p0, Lcom/android/internal/graphics/cam/Frame;->mFl:F

    .line 132
    iput p9, p0, Lcom/android/internal/graphics/cam/Frame;->mFlRoot:F

    .line 133
    iput p10, p0, Lcom/android/internal/graphics/cam/Frame;->mZ:F

    .line 134
    return-void
.end method

.method public static blacklist make([FFFFZ)Lcom/android/internal/graphics/cam/Frame;
    .registers 26

    .line 141
    move/from16 v0, p1

    sget-object v1, Lcom/android/internal/graphics/cam/CamUtils;->XYZ_TO_CAM16RGB:[[F

    .line 142
    nop

    .line 143
    const/4 v2, 0x0

    aget v3, p0, v2

    aget-object v4, v1, v2

    aget v4, v4, v2

    mul-float/2addr v3, v4

    const/4 v4, 0x1

    aget v5, p0, v4

    aget-object v6, v1, v2

    aget v6, v6, v4

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    const/4 v5, 0x2

    aget v6, p0, v5

    aget-object v7, v1, v2

    aget v7, v7, v5

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    .line 144
    aget v6, p0, v2

    aget-object v7, v1, v4

    aget v7, v7, v2

    mul-float/2addr v6, v7

    aget v7, p0, v4

    aget-object v8, v1, v4

    aget v8, v8, v4

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aget v7, p0, v5

    aget-object v8, v1, v4

    aget v8, v8, v5

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 145
    aget v7, p0, v2

    aget-object v8, v1, v5

    aget v8, v8, v2

    mul-float/2addr v7, v8

    aget v8, p0, v4

    aget-object v9, v1, v5

    aget v9, v9, v4

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aget v8, p0, v5

    aget-object v1, v1, v5

    aget v1, v1, v5

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    .line 148
    const/high16 v1, 0x41200000    # 10.0f

    div-float v8, p3, v1

    const v9, 0x3f4ccccd    # 0.8f

    add-float/2addr v8, v9

    .line 150
    float-to-double v10, v8

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    cmpl-double v10, v10, v12

    const v11, 0x3f170a3d    # 0.59f

    if-ltz v10, :cond_70

    const v9, 0x3f666666    # 0.9f

    sub-float v9, v8, v9

    mul-float/2addr v9, v1

    const v1, 0x3f30a3d7    # 0.69f

    invoke-static {v11, v1, v9}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    goto :goto_7a

    :cond_70
    sub-float v9, v8, v9

    mul-float/2addr v9, v1

    const v1, 0x3f066666    # 0.525f

    invoke-static {v1, v11, v9}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    :goto_7a
    move v15, v1

    .line 153
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p4, :cond_81

    move v9, v1

    goto :goto_95

    :cond_81
    neg-float v9, v0

    const/high16 v10, 0x42280000    # 42.0f

    sub-float/2addr v9, v10

    const/high16 v10, 0x42b80000    # 92.0f

    div-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    double-to-float v9, v9

    const v10, 0x3e8e38e4

    mul-float/2addr v9, v10

    sub-float v9, v1, v9

    mul-float/2addr v9, v8

    .line 156
    :goto_95
    float-to-double v10, v9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v10, v12

    if-lez v12, :cond_9e

    move v9, v1

    goto :goto_a5

    :cond_9e
    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_a5

    const/4 v9, 0x0

    .line 158
    :cond_a5
    :goto_a5
    nop

    .line 170
    const/high16 v10, 0x42c80000    # 100.0f

    div-float v11, v10, v3

    mul-float/2addr v11, v9

    add-float/2addr v11, v1

    sub-float/2addr v11, v9

    div-float v12, v10, v6

    mul-float/2addr v12, v9

    add-float/2addr v12, v1

    sub-float/2addr v12, v9

    div-float/2addr v10, v7

    mul-float/2addr v10, v9

    add-float/2addr v10, v1

    sub-float/2addr v10, v9

    const/4 v9, 0x3

    new-array v13, v9, [F

    aput v11, v13, v2

    aput v12, v13, v4

    aput v10, v13, v5

    .line 173
    const/high16 v10, 0x40a00000    # 5.0f

    mul-float/2addr v10, v0

    add-float/2addr v10, v1

    div-float v10, v1, v10

    .line 174
    mul-float v11, v10, v10

    mul-float/2addr v11, v10

    mul-float/2addr v11, v10

    .line 175
    sub-float/2addr v1, v11

    .line 176
    mul-float/2addr v11, v0

    const v10, 0x3dcccccd    # 0.1f

    mul-float/2addr v10, v1

    mul-float/2addr v10, v1

    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    float-to-double v0, v0

    mul-double v0, v0, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v10, v0

    add-float/2addr v11, v10

    .line 180
    move/from16 v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/android/internal/graphics/cam/CamUtils;->yFromLstar(D)D

    move-result-wide v0

    double-to-float v0, v0

    aget v1, p0, v4

    div-float/2addr v0, v1

    .line 184
    move v1, v2

    move v10, v3

    float-to-double v2, v0

    move v12, v4

    move v14, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3fbd70a4    # 1.48f

    add-float v20, v4, v5

    .line 187
    const-wide v4, 0x3fc999999999999aL    # 0.2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3f39999a    # 0.725f

    div-float/2addr v3, v2

    .line 188
    nop

    .line 192
    aget v2, v13, v1

    mul-float/2addr v2, v11

    mul-float/2addr v2, v10

    float-to-double v4, v2

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v4, v4, v16

    move/from16 p0, v1

    const-wide v1, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    aget v5, v13, v12

    mul-float/2addr v5, v11

    mul-float/2addr v5, v6

    float-to-double v5, v5

    div-double v5, v5, v16

    .line 193
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    aget v6, v13, v14

    mul-float/2addr v6, v11

    mul-float/2addr v6, v7

    float-to-double v6, v6

    div-double v6, v6, v16

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    new-array v2, v9, [F

    aput v4, v2, p0

    aput v5, v2, v12

    aput v1, v2, v14

    .line 196
    aget v1, v2, p0

    const/high16 v4, 0x43c80000    # 400.0f

    mul-float/2addr v1, v4

    aget v5, v2, p0

    const v6, 0x41d90a3d    # 27.13f

    add-float/2addr v5, v6

    div-float/2addr v1, v5

    aget v5, v2, v12

    mul-float/2addr v5, v4

    aget v7, v2, v12

    add-float/2addr v7, v6

    div-float/2addr v5, v7

    aget v7, v2, v14

    mul-float/2addr v7, v4

    aget v2, v2, v14

    add-float/2addr v2, v6

    div-float/2addr v7, v2

    new-array v2, v9, [F

    aput v1, v2, p0

    aput v5, v2, v12

    aput v7, v2, v14

    .line 200
    const/high16 v1, 0x40000000    # 2.0f

    aget v4, v2, p0

    mul-float/2addr v4, v1

    aget v1, v2, v12

    add-float/2addr v4, v1

    const v1, 0x3d4ccccd    # 0.05f

    aget v2, v2, v14

    mul-float/2addr v2, v1

    add-float/2addr v4, v2

    mul-float v12, v4, v3

    .line 202
    new-instance v10, Lcom/android/internal/graphics/cam/Frame;

    float-to-double v1, v11

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    move v14, v3

    move/from16 v19, v1

    move/from16 v16, v8

    move/from16 v18, v11

    move-object/from16 v17, v13

    move v11, v0

    move v13, v3

    invoke-direct/range {v10 .. v20}, Lcom/android/internal/graphics/cam/Frame;-><init>(FFFFFF[FFFF)V

    return-object v10
.end method


# virtual methods
.method public blacklist getAw()F
    .registers 2

    .line 77
    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mAw:F

    return v0
.end method

.method blacklist getC()F
    .registers 2

    .line 95
    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mC:F

    return v0
.end method

.method blacklist getFl()F
    .registers 2

    .line 109
    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mFl:F

    return v0
.end method

.method public blacklist getFlRoot()F
    .registers 2

    .line 115
    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mFlRoot:F

    return v0
.end method

.method public blacklist getN()F
    .registers 2

    .line 82
    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mN:F

    return v0
.end method

.method public blacklist getNbb()F
    .registers 2

    .line 87
    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mNbb:F

    return v0
.end method

.method blacklist getNc()F
    .registers 2

    .line 99
    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mNc:F

    return v0
.end method

.method blacklist getNcb()F
    .registers 2

    .line 91
    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mNcb:F

    return v0
.end method

.method public blacklist getRgbD()[F
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/android/internal/graphics/cam/Frame;->mRgbD:[F

    return-object v0
.end method

.method blacklist getZ()F
    .registers 2

    .line 119
    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mZ:F

    return v0
.end method
