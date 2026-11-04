.class public Lcom/android/internal/graphics/cam/Cam;
.super Ljava/lang/Object;
.source "Cam.java"


# static fields
.field private static final blacklist CHROMA_SEARCH_ENDPOINT:F = 0.4f

.field private static final blacklist DE_MAX:F = 1.0f

.field private static final blacklist DL_MAX:F = 0.2f

.field private static final blacklist LIGHTNESS_SEARCH_ENDPOINT:F = 0.01f


# instance fields
.field private final blacklist mAstar:F

.field private final blacklist mBstar:F

.field private final blacklist mChroma:F

.field private final blacklist mHue:F

.field private final blacklist mJ:F

.field private final blacklist mJstar:F

.field private final blacklist mM:F

.field private final blacklist mQ:F

.field private final blacklist mS:F


# direct methods
.method constructor blacklist <init>(FFFFFFFFF)V
    .registers 10

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p1, p0, Lcom/android/internal/graphics/cam/Cam;->mHue:F

    .line 120
    iput p2, p0, Lcom/android/internal/graphics/cam/Cam;->mChroma:F

    .line 121
    iput p3, p0, Lcom/android/internal/graphics/cam/Cam;->mJ:F

    .line 122
    iput p4, p0, Lcom/android/internal/graphics/cam/Cam;->mQ:F

    .line 123
    iput p5, p0, Lcom/android/internal/graphics/cam/Cam;->mM:F

    .line 124
    iput p6, p0, Lcom/android/internal/graphics/cam/Cam;->mS:F

    .line 125
    iput p7, p0, Lcom/android/internal/graphics/cam/Cam;->mJstar:F

    .line 126
    iput p8, p0, Lcom/android/internal/graphics/cam/Cam;->mAstar:F

    .line 127
    iput p9, p0, Lcom/android/internal/graphics/cam/Cam;->mBstar:F

    .line 128
    return-void
.end method

.method private static blacklist findCamByJ(FFF)Lcom/android/internal/graphics/cam/Cam;
    .registers 15

    .line 464
    nop

    .line 465
    nop

    .line 466
    nop

    .line 467
    nop

    .line 468
    nop

    .line 470
    const/4 v0, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v3, 0x0

    move v5, v0

    move-object v4, v3

    move v3, v2

    .line 471
    :goto_e
    sub-float v6, v5, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6b

    .line 472
    sub-float v6, v1, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    .line 474
    invoke-static {v6, p1, p0}, Lcom/android/internal/graphics/cam/Cam;->fromJch(FFF)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v7

    .line 478
    invoke-virtual {v7}, Lcom/android/internal/graphics/cam/Cam;->viewedInSrgb()I

    move-result v7

    .line 479
    invoke-static {v7}, Lcom/android/internal/graphics/cam/CamUtils;->lstarFromInt(I)F

    move-result v8

    .line 480
    sub-float v9, p2, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 483
    const v10, 0x3e4ccccd    # 0.2f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_5a

    .line 488
    invoke-static {v7}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v7

    .line 489
    nop

    .line 490
    invoke-virtual {v7}, Lcom/android/internal/graphics/cam/Cam;->getJ()F

    move-result v10

    invoke-virtual {v7}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v11

    invoke-static {v10, v11, p0}, Lcom/android/internal/graphics/cam/Cam;->fromJch(FFF)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v10

    .line 489
    invoke-virtual {v7, v10}, Lcom/android/internal/graphics/cam/Cam;->distance(Lcom/android/internal/graphics/cam/Cam;)F

    move-result v10

    .line 491
    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_5a

    .line 492
    nop

    .line 493
    nop

    .line 494
    move-object v4, v7

    move v2, v9

    move v3, v10

    .line 504
    :cond_5a
    cmpl-float v7, v2, v0

    if-nez v7, :cond_63

    cmpl-float v7, v3, v0

    if-nez v7, :cond_63

    .line 505
    goto :goto_6b

    .line 508
    :cond_63
    cmpg-float v7, v8, p2

    if-gez v7, :cond_69

    .line 509
    move v5, v6

    goto :goto_6a

    .line 511
    :cond_69
    move v1, v6

    .line 513
    :goto_6a
    goto :goto_e

    .line 515
    :cond_6b
    :goto_6b
    return-object v4
.end method

.method public static blacklist fromInt(I)Lcom/android/internal/graphics/cam/Cam;
    .registers 2

    .line 146
    sget-object v0, Lcom/android/internal/graphics/cam/Frame;->DEFAULT:Lcom/android/internal/graphics/cam/Frame;

    invoke-static {p0, v0}, Lcom/android/internal/graphics/cam/Cam;->fromIntInFrame(ILcom/android/internal/graphics/cam/Frame;)Lcom/android/internal/graphics/cam/Cam;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist fromIntInFrame(ILcom/android/internal/graphics/cam/Frame;)Lcom/android/internal/graphics/cam/Cam;
    .registers 25

    .line 156
    invoke-static/range {p0 .. p0}, Lcom/android/internal/graphics/cam/CamUtils;->xyzFromInt(I)[F

    move-result-object v0

    .line 159
    sget-object v1, Lcom/android/internal/graphics/cam/CamUtils;->XYZ_TO_CAM16RGB:[[F

    .line 160
    const/4 v2, 0x0

    aget v3, v0, v2

    aget-object v4, v1, v2

    aget v4, v4, v2

    mul-float/2addr v3, v4

    const/4 v4, 0x1

    aget v5, v0, v4

    aget-object v6, v1, v2

    aget v6, v6, v4

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    const/4 v5, 0x2

    aget v6, v0, v5

    aget-object v7, v1, v2

    aget v7, v7, v5

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    .line 161
    aget v6, v0, v2

    aget-object v7, v1, v4

    aget v7, v7, v2

    mul-float/2addr v6, v7

    aget v7, v0, v4

    aget-object v8, v1, v4

    aget v8, v8, v4

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aget v7, v0, v5

    aget-object v8, v1, v4

    aget v8, v8, v5

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 162
    aget v7, v0, v2

    aget-object v8, v1, v5

    aget v8, v8, v2

    mul-float/2addr v7, v8

    aget v8, v0, v4

    aget-object v9, v1, v5

    aget v9, v9, v4

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aget v0, v0, v5

    aget-object v1, v1, v5

    aget v1, v1, v5

    mul-float/2addr v0, v1

    add-float/2addr v7, v0

    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getRgbD()[F

    move-result-object v0

    aget v0, v0, v2

    mul-float/2addr v0, v3

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getRgbD()[F

    move-result-object v1

    aget v1, v1, v4

    mul-float/2addr v1, v6

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getRgbD()[F

    move-result-object v2

    aget v2, v2, v5

    mul-float/2addr v2, v7

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFl()F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    const-wide v7, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFl()F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v4, v9

    float-to-double v9, v4

    div-double/2addr v9, v5

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v4, v9

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFl()F

    move-result v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-double v9, v9

    div-double/2addr v9, v5

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    .line 173
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    const/high16 v8, 0x43c80000    # 400.0f

    mul-float/2addr v0, v8

    mul-float/2addr v0, v3

    const v9, 0x41d90a3d    # 27.13f

    add-float/2addr v3, v9

    div-float/2addr v0, v3

    .line 174
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v1, v8

    mul-float/2addr v1, v4

    add-float/2addr v4, v9

    div-float/2addr v1, v4

    .line 175
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, v8

    mul-float/2addr v2, v7

    add-float/2addr v7, v9

    div-float/2addr v2, v7

    .line 178
    const-wide/high16 v3, 0x4026000000000000L    # 11.0

    float-to-double v7, v0

    mul-double/2addr v7, v3

    const-wide/high16 v3, -0x3fd8000000000000L    # -12.0

    float-to-double v9, v1

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    float-to-double v3, v2

    add-double/2addr v7, v3

    double-to-float v7, v7

    const/high16 v8, 0x41300000    # 11.0f

    div-float/2addr v7, v8

    .line 180
    add-float v8, v0, v1

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v10

    sub-double/2addr v8, v3

    double-to-float v3, v8

    const/high16 v4, 0x41100000    # 9.0f

    div-float/2addr v3, v4

    .line 183
    const/high16 v4, 0x41a00000    # 20.0f

    mul-float v8, v0, v4

    mul-float/2addr v1, v4

    add-float/2addr v8, v1

    const/high16 v9, 0x41a80000    # 21.0f

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    div-float/2addr v8, v4

    .line 184
    const/high16 v9, 0x42200000    # 40.0f

    mul-float/2addr v0, v9

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    div-float/2addr v0, v4

    .line 187
    float-to-double v1, v3

    float-to-double v12, v7

    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 188
    const/high16 v2, 0x43340000    # 180.0f

    mul-float/2addr v1, v2

    const v4, 0x40490fdb    # (float)Math.PI

    div-float/2addr v1, v4

    .line 190
    const/4 v9, 0x0

    cmpg-float v9, v1, v9

    const/high16 v12, 0x43b40000    # 360.0f

    if-gez v9, :cond_fa

    .line 191
    add-float/2addr v1, v12

    move v14, v1

    goto :goto_100

    .line 192
    :cond_fa
    cmpl-float v9, v1, v12

    if-ltz v9, :cond_ff

    sub-float/2addr v1, v12

    :cond_ff
    move v14, v1

    .line 193
    :goto_100
    mul-float/2addr v4, v14

    div-float/2addr v4, v2

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getNbb()F

    move-result v1

    mul-float/2addr v0, v1

    .line 199
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getAw()F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getC()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getZ()F

    move-result v9

    mul-float/2addr v2, v9

    move-wide v15, v5

    float-to-double v5, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 200
    nop

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getC()F

    move-result v2

    const/high16 v5, 0x40800000    # 4.0f

    div-float v2, v5, v2

    div-float v1, v0, v1

    move/from16 p0, v5

    float-to-double v5, v1

    .line 203
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v1, v5

    mul-float/2addr v2, v1

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getAw()F

    move-result v1

    add-float v1, v1, p0

    mul-float/2addr v2, v1

    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFlRoot()F

    move-result v1

    mul-float v17, v2, v1

    .line 208
    float-to-double v1, v14

    const-wide v5, 0x403423d70a3d70a4L    # 20.14

    cmpg-double v1, v1, v5

    if-gez v1, :cond_14d

    add-float/2addr v12, v14

    goto :goto_14e

    :cond_14d
    move v12, v14

    .line 209
    :goto_14e
    float-to-double v1, v12

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v5

    const-wide v5, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v5

    add-double/2addr v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    const-wide v5, 0x400e666666666666L    # 3.8

    add-double/2addr v1, v5

    double-to-float v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    .line 210
    const v2, 0x45706276

    mul-float/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getNc()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getNcb()F

    move-result v2

    mul-float/2addr v1, v2

    .line 211
    mul-float/2addr v7, v7

    mul-float/2addr v3, v3

    add-float/2addr v7, v3

    float-to-double v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    const v2, 0x3e9c28f6    # 0.305f

    add-float/2addr v8, v2

    div-float/2addr v1, v8

    .line 212
    float-to-double v1, v1

    .line 213
    const-wide v5, 0x3feccccccccccccdL    # 0.9

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getN()F

    move-result v2

    float-to-double v2, v2

    const-wide v5, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v5, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v5, v2

    const-wide v2, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    .line 216
    float-to-double v2, v0

    div-double/2addr v2, v15

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v15, v1, v2

    .line 217
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFlRoot()F

    move-result v2

    mul-float v18, v15, v2

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getC()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getAw()F

    move-result v2

    add-float v2, v2, p0

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x42480000    # 50.0f

    mul-float v19, v1, v2

    .line 221
    const v1, 0x3fd9999a    # 1.7f

    mul-float/2addr v1, v0

    const v2, 0x3be56042    # 0.007f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    div-float v20, v1, v2

    .line 222
    const v1, 0x3cbac711    # 0.0228f

    mul-float v1, v1, v18

    add-float/2addr v1, v3

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x422f7048

    mul-float/2addr v1, v2

    .line 223
    float-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v21, v1, v4

    .line 224
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v22, v1, v2

    .line 226
    new-instance v13, Lcom/android/internal/graphics/cam/Cam;

    move/from16 v16, v0

    invoke-direct/range {v13 .. v22}, Lcom/android/internal/graphics/cam/Cam;-><init>(FFFFFFFFF)V

    return-object v13
.end method

.method private static blacklist fromJch(FFF)Lcom/android/internal/graphics/cam/Cam;
    .registers 4

    .line 235
    sget-object v0, Lcom/android/internal/graphics/cam/Frame;->DEFAULT:Lcom/android/internal/graphics/cam/Frame;

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/graphics/cam/Cam;->fromJchInFrame(FFFLcom/android/internal/graphics/cam/Frame;)Lcom/android/internal/graphics/cam/Cam;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist fromJchInFrame(FFFLcom/android/internal/graphics/cam/Frame;)Lcom/android/internal/graphics/cam/Cam;
    .registers 16

    .line 244
    nop

    .line 246
    invoke-virtual {p3}, Lcom/android/internal/graphics/cam/Frame;->getC()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float v0, v1, v0

    float-to-double v4, p0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    .line 247
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v2, v6

    mul-float/2addr v0, v2

    .line 248
    invoke-virtual {p3}, Lcom/android/internal/graphics/cam/Frame;->getAw()F

    move-result v2

    add-float/2addr v2, v1

    mul-float/2addr v0, v2

    .line 249
    invoke-virtual {p3}, Lcom/android/internal/graphics/cam/Frame;->getFlRoot()F

    move-result v2

    mul-float/2addr v0, v2

    .line 250
    invoke-virtual {p3}, Lcom/android/internal/graphics/cam/Frame;->getFlRoot()F

    move-result v2

    mul-float/2addr v2, p1

    .line 251
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    div-float v4, p1, v4

    .line 252
    invoke-virtual {p3}, Lcom/android/internal/graphics/cam/Frame;->getC()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p3}, Lcom/android/internal/graphics/cam/Frame;->getAw()F

    move-result v5

    add-float/2addr v5, v1

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    const/high16 v4, 0x42480000    # 50.0f

    mul-float v6, v1, v4

    .line 254
    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v1, p2

    const/high16 v4, 0x43340000    # 180.0f

    div-float/2addr v1, v4

    .line 255
    const v4, 0x3fd9999a    # 1.7f

    mul-float/2addr v4, p0

    const v5, 0x3be56042    # 0.007f

    mul-float/2addr v5, p0

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v5, v7

    div-float v7, v4, v5

    .line 256
    const-wide v4, 0x3f9758e219652bd4L    # 0.0228

    float-to-double v8, v2

    mul-double/2addr v8, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x422f7048

    mul-float/2addr v4, v5

    .line 257
    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v1, v10

    mul-float/2addr v1, v4

    .line 258
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float v9, v4, v5

    .line 259
    move v4, v0

    new-instance v0, Lcom/android/internal/graphics/cam/Cam;

    move v3, p0

    move v8, v1

    move v5, v2

    move v2, p1

    move v1, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/graphics/cam/Cam;-><init>(FFFFFFFFF)V

    return-object v0
.end method

.method public static blacklist getInt(FFF)I
    .registers 4

    .line 137
    sget-object v0, Lcom/android/internal/graphics/cam/Frame;->DEFAULT:Lcom/android/internal/graphics/cam/Frame;

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/graphics/cam/Cam;->getInt(FFFLcom/android/internal/graphics/cam/Frame;)I

    move-result p0

    return p0
.end method

.method public static blacklist getInt(FFFLcom/android/internal/graphics/cam/Frame;)I
    .registers 11

    .line 391
    sget-object v0, Lcom/android/internal/graphics/cam/Frame;->DEFAULT:Lcom/android/internal/graphics/cam/Frame;

    if-ne p3, v0, :cond_c

    .line 395
    float-to-double v1, p0

    float-to-double v3, p1

    float-to-double v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/internal/graphics/cam/HctSolver;->solveToInt(DDD)I

    move-result p0

    return p0

    .line 398
    :cond_c
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_7c

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_7c

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2a

    goto :goto_7c

    .line 402
    :cond_2a
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_31

    move p0, v0

    goto :goto_37

    :cond_31
    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 405
    :goto_37
    nop

    .line 409
    nop

    .line 410
    nop

    .line 411
    nop

    .line 413
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v1

    move v1, v0

    move v0, p1

    .line 415
    :goto_41
    sub-float v4, v1, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3ecccccd    # 0.4f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_70

    .line 418
    invoke-static {p0, v0, p2}, Lcom/android/internal/graphics/cam/Cam;->findCamByJ(FFF)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v4

    .line 420
    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v2, :cond_64

    .line 421
    if-eqz v4, :cond_5d

    .line 422
    invoke-virtual {v4, p3}, Lcom/android/internal/graphics/cam/Cam;->viewed(Lcom/android/internal/graphics/cam/Frame;)I

    move-result p0

    return p0

    .line 429
    :cond_5d
    nop

    .line 430
    sub-float v0, p1, v1

    div-float/2addr v0, v5

    add-float/2addr v0, v1

    .line 431
    const/4 v2, 0x0

    goto :goto_41

    .line 435
    :cond_64
    if-nez v4, :cond_68

    .line 437
    move p1, v0

    goto :goto_6b

    .line 439
    :cond_68
    nop

    .line 441
    move v1, v0

    move-object v3, v4

    .line 444
    :goto_6b
    sub-float v0, p1, v1

    div-float/2addr v0, v5

    add-float/2addr v0, v1

    .line 445
    goto :goto_41

    .line 451
    :cond_70
    if-nez v3, :cond_77

    .line 452
    invoke-static {p2}, Lcom/android/internal/graphics/cam/CamUtils;->intFromLstar(F)I

    move-result p0

    return p0

    .line 455
    :cond_77
    invoke-virtual {v3, p3}, Lcom/android/internal/graphics/cam/Cam;->viewed(Lcom/android/internal/graphics/cam/Frame;)I

    move-result p0

    return p0

    .line 399
    :cond_7c
    :goto_7c
    invoke-static {p2}, Lcom/android/internal/graphics/cam/CamUtils;->intFromLstar(F)I

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist distance(Lcom/android/internal/graphics/cam/Cam;)F
    .registers 6

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/graphics/cam/Cam;->getJstar()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getJstar()F

    move-result v1

    sub-float/2addr v0, v1

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/graphics/cam/Cam;->getAstar()F

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getAstar()F

    move-result v2

    sub-float/2addr v1, v2

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/graphics/cam/Cam;->getBstar()F

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getBstar()F

    move-result p1

    sub-float/2addr v2, p1

    .line 272
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 273
    const-wide v2, 0x3fe428f5c28f5c29L    # 0.63

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff68f5c28f5c28fL    # 1.41

    mul-double/2addr v0, v2

    .line 274
    double-to-float p1, v0

    return p1
.end method

.method public blacklist getAstar()F
    .registers 2

    .line 108
    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mAstar:F

    return v0
.end method

.method public blacklist getBstar()F
    .registers 2

    .line 113
    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mBstar:F

    return v0
.end method

.method public blacklist getChroma()F
    .registers 2

    .line 62
    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mChroma:F

    return v0
.end method

.method public blacklist getHue()F
    .registers 2

    .line 57
    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mHue:F

    return v0
.end method

.method public blacklist getJ()F
    .registers 2

    .line 67
    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mJ:F

    return v0
.end method

.method public blacklist getJstar()F
    .registers 2

    .line 103
    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mJstar:F

    return v0
.end method

.method public blacklist getM()F
    .registers 2

    .line 88
    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mM:F

    return v0
.end method

.method public blacklist getQ()F
    .registers 2

    .line 78
    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mQ:F

    return v0
.end method

.method public blacklist getS()F
    .registers 2

    .line 98
    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mS:F

    return v0
.end method

.method public blacklist viewed(Lcom/android/internal/graphics/cam/Frame;)I
    .registers 19

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    if-eqz v0, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/graphics/cam/Cam;->getJ()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_17

    goto :goto_28

    .line 287
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/graphics/cam/Cam;->getJ()F

    move-result v1

    float-to-double v6, v1

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    div-float/2addr v0, v1

    goto :goto_29

    .line 286
    :cond_28
    :goto_28
    const/4 v0, 0x0

    .line 289
    :goto_29
    float-to-double v0, v0

    .line 290
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getN()F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v8, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v8, v6

    const-wide v6, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v0, v6

    const-wide v6, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v1

    const v6, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v1, v6

    const/high16 v6, 0x43340000    # 180.0f

    div-float/2addr v1, v6

    .line 294
    float-to-double v6, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide v10, 0x400e666666666666L    # 3.8

    add-double/2addr v8, v10

    double-to-float v1, v8

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float/2addr v1, v8

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getAw()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/graphics/cam/Cam;->getJ()F

    move-result v9

    float-to-double v9, v9

    div-double/2addr v9, v4

    .line 296
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getC()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double/2addr v11, v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getZ()F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v11, v4

    .line 295
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v8, v4

    .line 297
    const v4, 0x45706276

    mul-float/2addr v1, v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getNc()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getNcb()F

    move-result v4

    mul-float/2addr v1, v4

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getNbb()F

    move-result v4

    div-float/2addr v8, v4

    .line 300
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 301
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 303
    const v6, 0x3e9c28f6    # 0.305f

    add-float/2addr v6, v8

    const/high16 v7, 0x41b80000    # 23.0f

    mul-float/2addr v6, v7

    mul-float/2addr v6, v0

    mul-float/2addr v1, v7

    const/high16 v7, 0x41300000    # 11.0f

    mul-float/2addr v7, v0

    mul-float/2addr v7, v5

    add-float/2addr v1, v7

    const/high16 v7, 0x42d80000    # 108.0f

    mul-float/2addr v0, v7

    mul-float/2addr v0, v4

    add-float/2addr v1, v0

    div-float/2addr v6, v1

    .line 305
    mul-float/2addr v5, v6

    .line 306
    mul-float/2addr v6, v4

    .line 307
    const/high16 v0, 0x43e60000    # 460.0f

    mul-float/2addr v8, v0

    const v0, 0x43e18000    # 451.0f

    mul-float/2addr v0, v5

    add-float/2addr v0, v8

    const/high16 v1, 0x43900000    # 288.0f

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    const v1, 0x44af6000    # 1403.0f

    div-float/2addr v0, v1

    .line 308
    const v4, 0x445ec000    # 891.0f

    mul-float/2addr v4, v5

    sub-float v4, v8, v4

    const v7, 0x43828000    # 261.0f

    mul-float/2addr v7, v6

    sub-float/2addr v4, v7

    div-float/2addr v4, v1

    .line 309
    const/high16 v7, 0x435c0000    # 220.0f

    mul-float/2addr v5, v7

    sub-float/2addr v8, v5

    const v5, 0x45c4e000    # 6300.0f

    mul-float/2addr v6, v5

    sub-float/2addr v8, v6

    div-float/2addr v8, v1

    .line 311
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v5, v1

    const-wide v9, 0x403b2147ae147ae1L    # 27.13

    mul-double/2addr v5, v9

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v11, v1

    const-wide/high16 v13, 0x4079000000000000L    # 400.0

    sub-double v11, v13, v11

    div-double/2addr v5, v11

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    double-to-float v1, v5

    .line 312
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFl()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v5, v6, v5

    mul-float/2addr v0, v5

    float-to-double v11, v1

    move/from16 p0, v6

    const-wide v6, 0x40030c30c30c30c3L    # 2.380952380952381

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v1, v11

    mul-float/2addr v0, v1

    .line 314
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v11, v1

    mul-double/2addr v11, v9

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move-wide v15, v9

    float-to-double v9, v1

    sub-double v9, v13, v9

    div-double/2addr v11, v9

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    double-to-float v1, v9

    .line 315
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFl()F

    move-result v5

    div-float v5, p0, v5

    mul-float/2addr v4, v5

    float-to-double v9, v1

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v1, v9

    mul-float/2addr v4, v1

    .line 317
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v9, v1

    mul-double/2addr v9, v15

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v11, v1

    sub-double/2addr v13, v11

    div-double/2addr v9, v13

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 318
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFl()F

    move-result v3

    div-float v3, p0, v3

    mul-float/2addr v2, v3

    float-to-double v8, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v1, v5

    mul-float/2addr v2, v1

    .line 320
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getRgbD()[F

    move-result-object v1

    const/4 v3, 0x0

    aget v1, v1, v3

    div-float/2addr v0, v1

    .line 321
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getRgbD()[F

    move-result-object v1

    const/4 v5, 0x1

    aget v1, v1, v5

    div-float/2addr v4, v1

    .line 322
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getRgbD()[F

    move-result-object v1

    const/4 v6, 0x2

    aget v1, v1, v6

    div-float/2addr v2, v1

    .line 325
    sget-object v1, Lcom/android/internal/graphics/cam/CamUtils;->CAM16RGB_TO_XYZ:[[F

    .line 326
    aget-object v7, v1, v3

    aget v7, v7, v3

    mul-float/2addr v7, v0

    aget-object v8, v1, v3

    aget v8, v8, v5

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    aget-object v8, v1, v3

    aget v8, v8, v6

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    .line 327
    aget-object v8, v1, v5

    aget v8, v8, v3

    mul-float/2addr v8, v0

    aget-object v9, v1, v5

    aget v9, v9, v5

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    aget-object v9, v1, v5

    aget v9, v9, v6

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 328
    aget-object v9, v1, v6

    aget v3, v9, v3

    mul-float/2addr v0, v3

    aget-object v3, v1, v6

    aget v3, v3, v5

    mul-float/2addr v4, v3

    add-float/2addr v0, v4

    aget-object v1, v1, v6

    aget v1, v1, v6

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 330
    float-to-double v1, v7

    float-to-double v3, v8

    float-to-double v5, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result v0

    .line 331
    return v0
.end method

.method public blacklist viewedInSrgb()I
    .registers 2

    .line 279
    sget-object v0, Lcom/android/internal/graphics/cam/Frame;->DEFAULT:Lcom/android/internal/graphics/cam/Frame;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/cam/Cam;->viewed(Lcom/android/internal/graphics/cam/Frame;)I

    move-result v0

    return v0
.end method
