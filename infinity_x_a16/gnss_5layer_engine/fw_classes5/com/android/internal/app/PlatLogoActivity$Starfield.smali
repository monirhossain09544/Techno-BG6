.class Lcom/android/internal/app/PlatLogoActivity$Starfield;
.super Landroid/graphics/drawable/Drawable;
.source "PlatLogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PlatLogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Starfield"
.end annotation


# static fields
.field private static final blacklist NUM_PLANES:I = 0x4

.field private static final blacklist NUM_STARS:I = 0x80

.field private static final blacklist ROTATION:F = 45.0f

.field private static final blacklist sSrgbExt:Landroid/graphics/ColorSpace;


# instance fields
.field private blacklist mBuffer:F

.field private blacklist mDt:J

.field private blacklist mRadius:F

.field private final blacklist mRng:Ljava/util/Random;

.field private final blacklist mSize:F

.field private final blacklist mStarPaint:Landroid/graphics/Paint;

.field private final blacklist mStars:[F

.field private blacklist mVx:F

.field private blacklist mVy:F

.field private blacklist mWarp:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 528
    sget-object v0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->sSrgbExt:Landroid/graphics/ColorSpace;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Random;F)V
    .registers 5

    .line 429
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 408
    const/16 v0, 0x200

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    .line 410
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mDt:J

    .line 416
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    .line 417
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    .line 430
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRng:Ljava/util/Random;

    .line 431
    iput p2, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mSize:F

    .line 432
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    .line 433
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 434
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 435
    return-void
.end method

.method public static blacklist packHdrColor(FF)J
    .registers 3

    .line 530
    sget-object v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->sSrgbExt:Landroid/graphics/ColorSpace;

    invoke-static {p0, p0, p0, p1, v0}, Landroid/graphics/Color;->valueOf(FFFFLandroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Color;->pack()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 21

    .line 460
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mDt:J

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 461
    iget v3, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mVx:F

    mul-float/2addr v3, v2

    iget v4, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    mul-float/2addr v3, v4

    .line 462
    iget v4, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mVy:F

    mul-float/2addr v4, v2

    iget v2, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    mul-float/2addr v4, v2

    .line 464
    iget v2, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v5

    const/4 v7, 0x1

    if-lez v2, :cond_21

    move v2, v7

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    .line 466
    :goto_22
    iget v8, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    .line 467
    iget v10, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v10, v11

    .line 469
    const/high16 v12, -0x1000000

    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 471
    invoke-virtual {v0}, Lcom/android/internal/app/PlatLogoActivity$Starfield;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v9

    .line 472
    invoke-virtual {v0}, Lcom/android/internal/app/PlatLogoActivity$Starfield;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v9

    .line 473
    invoke-virtual {v1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 475
    const/high16 v12, 0x42340000    # 45.0f

    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    .line 477
    iget-wide v12, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mDt:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_e3

    iget-wide v12, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mDt:J

    const-wide/16 v14, 0x3e8

    cmp-long v12, v12, v14

    if-gez v12, :cond_e3

    .line 478
    iget-object v12, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRng:Ljava/util/Random;

    .line 479
    invoke-virtual {v12}, Ljava/util/Random;->nextFloat()F

    move-result v12

    iget v13, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    sub-float/2addr v13, v5

    mul-float/2addr v12, v13

    iget-object v13, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRng:Ljava/util/Random;

    .line 480
    invoke-virtual {v13}, Ljava/util/Random;->nextFloat()F

    move-result v13

    iget v14, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    sub-float/2addr v14, v5

    mul-float/2addr v13, v14

    .line 478
    invoke-virtual {v1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 482
    const/4 v12, 0x0

    :goto_75
    const/16 v13, 0x80

    if-ge v12, v13, :cond_e0

    .line 483
    int-to-float v13, v12

    const/high16 v14, 0x43000000    # 128.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x40800000    # 4.0f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v13, v7

    .line 484
    iget-object v14, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v15, v12, 0x4

    add-int/lit8 v16, v15, 0x2

    iget-object v6, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    aget v6, v6, v16

    int-to-float v13, v13

    mul-float v17, v3, v13

    add-float v6, v6, v17

    add-float/2addr v6, v10

    rem-float/2addr v6, v8

    iget v7, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    sub-float/2addr v6, v7

    aput v6, v14, v16

    .line 486
    iget-object v6, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    add-int/lit8 v7, v15, 0x3

    iget-object v14, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    aget v14, v14, v7

    mul-float v18, v4, v13

    add-float v14, v14, v18

    add-float/2addr v14, v10

    rem-float/2addr v14, v8

    move/from16 v18, v11

    iget v11, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    sub-float/2addr v14, v11

    aput v14, v6, v7

    .line 488
    iget-object v6, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    add-int/lit8 v11, v15, 0x0

    if-eqz v2, :cond_bd

    iget-object v14, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    aget v14, v14, v16

    iget v9, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    mul-float/2addr v9, v3

    mul-float/2addr v9, v13

    sub-float/2addr v14, v9

    goto :goto_c0

    :cond_bd
    const v14, -0x39e3c000    # -10000.0f

    :goto_c0
    aput v14, v6, v11

    .line 489
    iget-object v6, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    add-int/lit8 v15, v15, 0x1

    if-eqz v2, :cond_d3

    iget-object v9, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    aget v7, v9, v7

    iget v9, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    mul-float/2addr v9, v4

    mul-float/2addr v9, v13

    sub-float v14, v7, v9

    goto :goto_d6

    :cond_d3
    const v14, -0x39e3c000    # -10000.0f

    :goto_d6
    aput v14, v6, v15

    .line 482
    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v18

    const/4 v7, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_75

    :cond_e0
    move/from16 v18, v11

    goto :goto_e5

    .line 477
    :cond_e3
    move/from16 v18, v11

    .line 492
    :goto_e5
    iget-object v3, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    array-length v3, v3

    const/4 v4, 0x4

    div-int/2addr v3, v4

    div-int/2addr v3, v4

    mul-int/2addr v3, v4

    .line 493
    const/4 v6, 0x0

    :goto_ed
    if-ge v6, v4, :cond_11c

    .line 494
    int-to-float v7, v6

    add-float/2addr v7, v5

    div-float v7, v7, v18

    .line 495
    iget-object v8, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    invoke-static {v7, v5}, Lcom/android/internal/app/PlatLogoActivity$Starfield;->packHdrColor(FF)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Paint;->setColor(J)V

    .line 496
    iget-object v7, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mSize:F

    add-int/lit8 v9, v6, 0x1

    int-to-float v10, v9

    mul-float/2addr v8, v10

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 497
    if-eqz v2, :cond_112

    .line 498
    iget-object v7, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int v8, v6, v3

    iget-object v10, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v8, v3, v10}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 500
    :cond_112
    iget-object v7, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/2addr v6, v3

    iget-object v8, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v6, v3, v8}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 493
    move v6, v9

    goto :goto_ed

    .line 503
    :cond_11c
    if-eqz v2, :cond_12e

    .line 504
    iget v0, v0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    sub-float/2addr v0, v5

    const/high16 v2, 0x41700000    # 15.0f

    div-float/2addr v0, v2

    .line 505
    mul-float/2addr v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2, v0}, Lcom/android/internal/app/PlatLogoActivity$Starfield;->packHdrColor(FF)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(J)V

    .line 507
    :cond_12e
    return-void
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 521
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getWarp()F
    .registers 2

    .line 426
    iget v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    return v0
.end method

.method public whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 8

    .line 439
    iget v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mSize:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mBuffer:F

    .line 440
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v2, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float p1, v2

    div-float/2addr p1, v1

    iget v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mBuffer:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    .line 444
    const/4 p1, 0x0

    :goto_23
    const/16 v0, 0x80

    if-ge p1, v0, :cond_64

    .line 445
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    mul-int/lit8 v2, p1, 0x4

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRng:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    sub-float/2addr v3, v4

    aput v3, v0, v2

    .line 446
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRng:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mRadius:F

    sub-float/2addr v4, v5

    aput v4, v0, v3

    .line 448
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    add-int/lit8 v4, v2, 0x2

    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    aget v5, v5, v2

    aput v5, v0, v4

    .line 449
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    add-int/lit8 v2, v2, 0x3

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mStars:[F

    aget v3, v4, v3

    aput v3, v0, v2

    .line 444
    add-int/lit8 p1, p1, 0x1

    goto :goto_23

    .line 451
    :cond_64
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 2

    .line 512
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .line 517
    return-void
.end method

.method public blacklist setVelocity(FF)V
    .registers 3

    .line 454
    iput p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mVx:F

    .line 455
    iput p2, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mVy:F

    .line 456
    return-void
.end method

.method public blacklist setWarp(F)V
    .registers 2

    .line 422
    iput p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mWarp:F

    .line 423
    return-void
.end method

.method public blacklist update(J)V
    .registers 3

    .line 525
    iput-wide p1, p0, Lcom/android/internal/app/PlatLogoActivity$Starfield;->mDt:J

    .line 526
    return-void
.end method
