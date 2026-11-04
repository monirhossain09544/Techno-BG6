.class public Lcom/android/internal/app/SimpleIconFactory;
.super Ljava/lang/Object;
.source "SimpleIconFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SimpleIconFactory$FixedSizeBitmapDrawable;,
        Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist AMBIENT_SHADOW_ALPHA:I = 0x7

.field private static final blacklist BLUR_FACTOR:F = 0.03125f

.field private static final blacklist CIRCLE_AREA_BY_RECT:F = 0.7853982f

.field private static final blacklist DEFAULT_WRAPPER_BACKGROUND:I = -0x1

.field private static final blacklist KEY_SHADOW_ALPHA:I = 0xa

.field private static final blacklist KEY_SHADOW_DISTANCE:F = 0.020833334f

.field private static final blacklist LINEAR_SCALE_SLOPE:F = 0.040449437f

.field private static final blacklist MAX_CIRCLE_AREA_FACTOR:F = 0.6597222f

.field private static final blacklist MAX_SQUARE_AREA_FACTOR:F = 0.6510417f

.field private static final blacklist MIN_VISIBLE_ALPHA:I = 0x28

.field private static final blacklist SCALE_NOT_INITIALIZED:F

.field private static final blacklist sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Lcom/android/internal/app/SimpleIconFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sPoolEnabled:Z


# instance fields
.field private final blacklist mAdaptiveIconBounds:Landroid/graphics/Rect;

.field private blacklist mAdaptiveIconScale:F

.field private blacklist mBadgeBitmapSize:I

.field private final blacklist mBitmap:Landroid/graphics/Bitmap;

.field private blacklist mBlurPaint:Landroid/graphics/Paint;

.field private final blacklist mBounds:Landroid/graphics/Rect;

.field private blacklist mCanvas:Landroid/graphics/Canvas;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private blacklist mDrawPaint:Landroid/graphics/Paint;

.field private blacklist mFillResIconDpi:I

.field private blacklist mIconBitmapSize:I

.field private final blacklist mLeftBorder:[F

.field private final blacklist mMaxSize:I

.field private final blacklist mOldBounds:Landroid/graphics/Rect;

.field private final blacklist mPixels:[B

.field private blacklist mPm:Landroid/content/pm/PackageManager;

.field private final blacklist mRightBorder:[F

.field private final blacklist mScaleCheckCanvas:Landroid/graphics/Canvas;

.field private blacklist mWrapperBackgroundColor:I

.field private blacklist mWrapperIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic blacklist $r8$lambda$3TdZrHYq4mg-L_5kmC4ODfA27Sg(Lcom/android/internal/app/SimpleIconFactory;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/SimpleIconFactory;->lambda$createIconBitmap$1(Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dkL_VkgWXdtrp8LGO2o5ozSoHwU(Lcom/android/internal/app/SimpleIconFactory;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/SimpleIconFactory;->lambda$createIconBitmap$0(Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 71
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    .line 72
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/app/SimpleIconFactory;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 73
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/SimpleIconFactory;->sPoolEnabled:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;III)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mOldBounds:Landroid/graphics/Rect;

    .line 669
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mBlurPaint:Landroid/graphics/Paint;

    .line 670
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mContext:Landroid/content/Context;

    .line 162
    iget-object p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mPm:Landroid/content/pm/PackageManager;

    .line 163
    iput p3, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    .line 164
    iput p4, p0, Lcom/android/internal/app/SimpleIconFactory;->mBadgeBitmapSize:I

    .line 165
    iput p2, p0, Lcom/android/internal/app/SimpleIconFactory;->mFillResIconDpi:I

    .line 167
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    .line 168
    iget-object p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    new-instance p2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 p4, 0x4

    const/4 v0, 0x2

    invoke-direct {p2, p4, v0}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 172
    mul-int/lit8 p1, p3, 0x2

    iput p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    .line 173
    iget p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    iget p2, p0, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    sget-object p4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mBitmap:Landroid/graphics/Bitmap;

    .line 174
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/android/internal/app/SimpleIconFactory;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mScaleCheckCanvas:Landroid/graphics/Canvas;

    .line 175
    iget p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    iget p2, p0, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    mul-int/2addr p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mPixels:[B

    .line 176
    iget p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mLeftBorder:[F

    .line 177
    iget p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mRightBorder:[F

    .line 178
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    .line 179
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    .line 180
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconScale:F

    .line 183
    new-instance p1, Landroid/graphics/BlurMaskFilter;

    int-to-float p2, p3

    const/high16 p3, 0x3d000000    # 0.03125f

    mul-float/2addr p2, p3

    sget-object p3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p1, p2, p3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 185
    return-void
.end method

.method private static blacklist convertToConvexArray([FIII)V
    .registers 12

    .line 619
    array-length v0, p0

    .line 621
    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [F

    .line 623
    nop

    .line 624
    nop

    .line 626
    nop

    .line 628
    add-int/lit8 v1, p2, 0x1

    const/4 v2, -0x1

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    move v4, v3

    :goto_f
    if-gt v1, p3, :cond_66

    .line 629
    aget v5, p0, v1

    const/high16 v6, -0x40800000    # -1.0f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1a

    .line 630
    goto :goto_63

    .line 634
    :cond_1a
    cmpl-float v5, v4, v3

    if-nez v5, :cond_20

    .line 635
    move v2, p2

    goto :goto_48

    .line 637
    :cond_20
    aget v5, p0, v1

    aget v6, p0, v2

    sub-float/2addr v5, v6

    sub-int v6, v1, v2

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 638
    nop

    .line 641
    sub-float/2addr v5, v4

    int-to-float v4, p1

    mul-float/2addr v5, v4

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_48

    .line 642
    :cond_32
    if-le v2, p2, :cond_48

    .line 643
    add-int/lit8 v2, v2, -0x1

    .line 644
    aget v5, p0, v1

    aget v7, p0, v2

    sub-float/2addr v5, v7

    sub-int v7, v1, v2

    int-to-float v7, v7

    div-float/2addr v5, v7

    .line 645
    aget v7, v0, v2

    sub-float/2addr v5, v7

    mul-float/2addr v5, v4

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_32

    .line 646
    nop

    .line 653
    :cond_48
    :goto_48
    aget v4, p0, v1

    aget v5, p0, v2

    sub-float/2addr v4, v5

    sub-int v5, v1, v2

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 655
    move v5, v2

    :goto_52
    if-ge v5, v1, :cond_62

    .line 656
    aput v4, v0, v5

    .line 657
    aget v6, p0, v2

    sub-int v7, v5, v2

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    aput v6, p0, v5

    .line 655
    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    .line 659
    :cond_62
    move v2, v1

    .line 628
    :goto_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 661
    :cond_66
    return-void
.end method

.method private blacklist createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .registers 9

    .line 329
    iget v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FIZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private blacklist createIconBitmap(Landroid/graphics/drawable/Drawable;FIZZ)Landroid/graphics/Bitmap;
    .registers 13

    .line 344
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 347
    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 349
    instance-of v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_96

    .line 350
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 355
    int-to-float v2, p3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float p2, v3, p2

    mul-float/2addr p2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p2, v4

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 356
    if-eqz p4, :cond_37

    .line 357
    const/high16 p4, 0x3d000000    # 0.03125f

    mul-float/2addr v2, p4

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int p4, v5

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 359
    :cond_37
    new-instance p4, Landroid/graphics/Rect;

    sub-int/2addr p3, p2

    invoke-direct {p4, p2, p2, p3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 363
    if-eqz p5, :cond_8d

    .line 364
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    .line 365
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    .line 366
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result p5

    mul-float/2addr p5, v4

    add-float/2addr p5, v3

    div-float/2addr v3, p5

    .line 367
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr v3, v4

    div-float/2addr p5, v3

    float-to-int p5, p5

    .line 368
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, v3

    float-to-int p4, p4

    .line 370
    new-instance v2, Landroid/graphics/Rect;

    sub-int v3, p2, p5

    sub-int v4, p3, p4

    add-int/2addr p2, p5

    add-int/2addr p3, p4

    invoke-direct {v2, v3, v4, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 372
    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance p3, Lcom/android/internal/app/SimpleIconFactory$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v2}, Lcom/android/internal/app/SimpleIconFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/SimpleIconFactory;Landroid/graphics/Rect;)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 376
    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance p3, Lcom/android/internal/app/SimpleIconFactory$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, v2}, Lcom/android/internal/app/SimpleIconFactory$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/SimpleIconFactory;Landroid/graphics/Rect;)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 380
    goto :goto_95

    .line 381
    :cond_8d
    invoke-virtual {v1, p4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 382
    iget-object p2, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 384
    :goto_95
    goto :goto_fc

    .line 385
    :cond_96
    instance-of p4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p4, :cond_b6

    .line 386
    move-object p4, p1

    check-cast p4, Landroid/graphics/drawable/BitmapDrawable;

    .line 387
    invoke-virtual {p4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p5

    .line 388
    if-eqz v0, :cond_b6

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result p5

    if-nez p5, :cond_b6

    .line 389
    iget-object p5, p0, Lcom/android/internal/app/SimpleIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 392
    :cond_b6
    nop

    .line 393
    nop

    .line 395
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    .line 396
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p5

    .line 397
    if-lez p4, :cond_d6

    if-lez p5, :cond_d6

    .line 399
    int-to-float v1, p4

    int-to-float v2, p5

    div-float/2addr v1, v2

    .line 400
    if-le p4, p5, :cond_cf

    .line 401
    int-to-float p4, p3

    div-float/2addr p4, v1

    float-to-int p4, p4

    move p5, p4

    move p4, p3

    goto :goto_d8

    .line 402
    :cond_cf
    if-le p5, p4, :cond_d6

    .line 403
    int-to-float p4, p3

    mul-float/2addr p4, v1

    float-to-int p4, p4

    move p5, p3

    goto :goto_d8

    .line 406
    :cond_d6
    move p4, p3

    move p5, p4

    :goto_d8
    sub-int v1, p3, p4

    div-int/lit8 v1, v1, 0x2

    .line 407
    sub-int v2, p3, p5

    div-int/lit8 v2, v2, 0x2

    .line 408
    add-int/2addr p4, v1

    add-int/2addr p5, v2

    invoke-virtual {p1, v1, v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 409
    iget-object p4, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    .line 410
    iget-object p4, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    invoke-virtual {p4, p2, p2, p3, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 411
    iget-object p2, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 412
    iget-object p2, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 416
    :goto_fc
    iget-object p2, p0, Lcom/android/internal/app/SimpleIconFactory;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 417
    iget-object p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 418
    return-object v0
.end method

.method private blacklist createIconBitmapNoInsetOrMask(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .registers 9

    .line 333
    iget v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FIZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static blacklist getAttrDimFromContext(Landroid/content/Context;ILjava/lang/String;)I
    .registers 6

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 128
    iget p0, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 126
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist getBadgeSizeFromContext(Landroid/content/Context;)I
    .registers 3

    .line 138
    const v0, 0x1120069

    const-string v1, "Expected theme to define iconfactoryBadgeSize."

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/SimpleIconFactory;->getAttrDimFromContext(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static blacklist getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 324
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getIconSizeFromContext(Landroid/content/Context;)I
    .registers 3

    .line 132
    const v0, 0x112006a

    const-string v1, "Expected theme to define iconfactoryIconSize."

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/SimpleIconFactory;->getAttrDimFromContext(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private declared-synchronized blacklist getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 489
    :try_start_7
    instance-of v3, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_1d

    .line 490
    iget v3, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1d

    .line 491
    if-eqz v2, :cond_19

    .line 492
    iget-object v0, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 494
    :cond_19
    iget v0, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconScale:F
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_16f

    monitor-exit p0

    return v0

    .line 497
    :cond_1d
    :try_start_1d
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 498
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 499
    if-lez v3, :cond_41

    if-gtz v5, :cond_2a

    goto :goto_41

    .line 502
    :cond_2a
    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    if-gt v3, v6, :cond_32

    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    if-le v5, v6, :cond_51

    .line 503
    :cond_32
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 504
    iget v7, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    mul-int/2addr v7, v3

    div-int v3, v7, v6

    .line 505
    iget v7, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    mul-int/2addr v7, v5

    div-int v5, v7, v6

    goto :goto_51

    .line 500
    :cond_41
    :goto_41
    if-lez v3, :cond_47

    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    if-le v3, v6, :cond_49

    :cond_47
    iget v3, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    .line 501
    :cond_49
    if-lez v5, :cond_4f

    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    if-le v5, v6, :cond_51

    :cond_4f
    iget v5, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    .line 508
    :cond_51
    :goto_51
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 509
    invoke-virtual {v0, v7, v7, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 510
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mScaleCheckCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 512
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mPixels:[B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 513
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 514
    iget-object v8, v1, Lcom/android/internal/app/SimpleIconFactory;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 517
    nop

    .line 518
    nop

    .line 519
    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    const/4 v8, 0x1

    add-int/2addr v6, v8

    .line 520
    nop

    .line 527
    nop

    .line 529
    iget v9, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    sub-int/2addr v9, v3

    .line 533
    move v11, v7

    move v15, v11

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    :goto_7d
    if-ge v11, v5, :cond_c2

    .line 534
    nop

    .line 535
    move/from16 v16, v4

    move v4, v7

    const/4 v7, -0x1

    const/4 v8, -0x1

    :goto_85
    if-ge v4, v3, :cond_9f

    .line 536
    iget-object v10, v1, Lcom/android/internal/app/SimpleIconFactory;->mPixels:[B

    aget-byte v10, v10, v15

    and-int/lit16 v10, v10, 0xff

    move/from16 v17, v4

    const/16 v4, 0x28

    if-le v10, v4, :cond_9a

    .line 537
    const/4 v4, -0x1

    if-ne v7, v4, :cond_98

    .line 538
    move/from16 v7, v17

    .line 540
    :cond_98
    move/from16 v8, v17

    .line 542
    :cond_9a
    add-int/lit8 v15, v15, 0x1

    .line 535
    add-int/lit8 v4, v17, 0x1

    goto :goto_85

    .line 544
    :cond_9f
    add-int/2addr v15, v9

    .line 546
    iget-object v4, v1, Lcom/android/internal/app/SimpleIconFactory;->mLeftBorder:[F

    int-to-float v10, v7

    aput v10, v4, v11

    .line 547
    iget-object v4, v1, Lcom/android/internal/app/SimpleIconFactory;->mRightBorder:[F

    int-to-float v10, v8

    aput v10, v4, v11

    .line 550
    const/4 v4, -0x1

    if-eq v7, v4, :cond_bb

    .line 551
    nop

    .line 552
    if-ne v12, v4, :cond_b1

    .line 553
    move v12, v11

    .line 556
    :cond_b1
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 557
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v6, v4

    move v14, v11

    .line 533
    :cond_bb
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v16

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_7d

    .line 561
    :cond_c2
    move/from16 v16, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    if-eq v12, v7, :cond_16d

    if-ne v13, v7, :cond_cd

    goto/16 :goto_16d

    .line 566
    :cond_cd
    iget-object v7, v1, Lcom/android/internal/app/SimpleIconFactory;->mLeftBorder:[F

    const/4 v8, 0x1

    invoke-static {v7, v8, v12, v14}, Lcom/android/internal/app/SimpleIconFactory;->convertToConvexArray([FIII)V

    .line 567
    iget-object v7, v1, Lcom/android/internal/app/SimpleIconFactory;->mRightBorder:[F

    const/4 v8, -0x1

    invoke-static {v7, v8, v12, v14}, Lcom/android/internal/app/SimpleIconFactory;->convertToConvexArray([FIII)V

    .line 570
    nop

    .line 571
    move/from16 v8, v16

    const/4 v7, 0x0

    :goto_dd
    if-ge v7, v5, :cond_f8

    .line 572
    iget-object v9, v1, Lcom/android/internal/app/SimpleIconFactory;->mLeftBorder:[F

    aget v9, v9, v7

    const/high16 v10, -0x40800000    # -1.0f

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_ea

    .line 573
    goto :goto_f5

    .line 575
    :cond_ea
    iget-object v9, v1, Lcom/android/internal/app/SimpleIconFactory;->mRightBorder:[F

    aget v9, v9, v7

    iget-object v10, v1, Lcom/android/internal/app/SimpleIconFactory;->mLeftBorder:[F

    aget v10, v10, v7

    sub-float/2addr v9, v10

    add-float/2addr v9, v4

    add-float/2addr v8, v9

    .line 571
    :goto_f5
    add-int/lit8 v7, v7, 0x1

    goto :goto_dd

    .line 579
    :cond_f8
    add-int/lit8 v7, v14, 0x1

    sub-int/2addr v7, v12

    add-int/lit8 v9, v13, 0x1

    sub-int/2addr v9, v6

    mul-int/2addr v7, v9

    int-to-float v7, v7

    .line 580
    div-float v7, v8, v7

    .line 583
    const v9, 0x3f490fdb

    cmpg-float v9, v7, v9

    if-gez v9, :cond_10d

    .line 584
    const v7, 0x3f28e38e

    goto :goto_117

    .line 586
    :cond_10d
    const v9, 0x3d25ae4f

    sub-float v7, v4, v7

    mul-float/2addr v7, v9

    const v9, 0x3f26aaab

    add-float/2addr v7, v9

    .line 588
    :goto_117
    iget-object v9, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iput v6, v9, Landroid/graphics/Rect;->left:I

    .line 589
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iput v13, v6, Landroid/graphics/Rect;->right:I

    .line 591
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iput v12, v6, Landroid/graphics/Rect;->top:I

    .line 592
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iput v14, v6, Landroid/graphics/Rect;->bottom:I

    .line 594
    if-eqz v2, :cond_14a

    .line 595
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    int-to-float v9, v3

    div-float/2addr v6, v9

    iget-object v10, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    int-to-float v11, v5

    div-float/2addr v10, v11

    iget-object v12, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    div-float/2addr v12, v9

    sub-float v9, v4, v12

    iget-object v12, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    div-float/2addr v12, v11

    sub-float v11, v4, v12

    invoke-virtual {v2, v6, v10, v9, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 599
    :cond_14a
    mul-int/2addr v3, v5

    int-to-float v2, v3

    div-float/2addr v8, v2

    .line 601
    cmpl-float v2, v8, v7

    if-lez v2, :cond_158

    div-float/2addr v7, v8

    float-to-double v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v4, v2

    .line 602
    :cond_158
    instance-of v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_16b

    iget v0, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconScale:F

    cmpl-float v0, v0, v16

    if-nez v0, :cond_16b

    .line 603
    iput v4, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconScale:F

    .line 604
    iget-object v0, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    iget-object v2, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_16b
    .catchall {:try_start_1d .. :try_end_16b} :catchall_16f

    .line 606
    :cond_16b
    monitor-exit p0

    return v4

    .line 563
    :cond_16d
    :goto_16d
    monitor-exit p0

    return v4

    .line 488
    :catchall_16f
    move-exception v0

    :try_start_170
    monitor-exit p0
    :try_end_171
    .catchall {:try_start_170 .. :try_end_171} :catchall_16f

    throw v0
.end method

.method private synthetic blacklist lambda$createIconBitmap$0(Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 373
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 374
    iget-object p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 375
    return-void
.end method

.method private synthetic blacklist lambda$createIconBitmap$1(Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 377
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 378
    iget-object p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 379
    return-void
.end method

.method private blacklist maskBitmapToCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 11

    .line 297
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 298
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 297
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 299
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 300
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 304
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 305
    const/high16 v4, 0x3d000000    # 0.03125f

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 308
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 309
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 310
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    .line 312
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    int-to-float v3, v3

    sub-float/2addr v8, v3

    .line 310
    invoke-virtual {v1, v5, v7, v8, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 316
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 317
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v4, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 318
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 320
    return-object v0
.end method

.method private blacklist normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;
    .registers 8

    .line 423
    nop

    .line 425
    iget-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_14

    .line 426
    iget-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mContext:Landroid/content/Context;

    const v1, 0x1080652

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    .line 430
    :cond_14
    iget-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 431
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 432
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/SimpleIconFactory;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F

    move-result v2

    .line 433
    instance-of v3, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v3, :cond_42

    .line 434
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;

    .line 435
    invoke-virtual {v3, p1}, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 436
    invoke-virtual {v3, v2}, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->setScale(F)V

    .line 437
    nop

    .line 438
    invoke-direct {p0, v0, p2}, Lcom/android/internal/app/SimpleIconFactory;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F

    move-result v2

    .line 440
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    iget p2, p0, Lcom/android/internal/app/SimpleIconFactory;->mWrapperBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    move-object p1, v0

    .line 443
    :cond_42
    aput v2, p3, v1

    .line 444
    return-object p1
.end method

.method public static blacklist obtain(Landroid/content/Context;)Lcom/android/internal/app/SimpleIconFactory;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    sget-boolean v0, Lcom/android/internal/app/SimpleIconFactory;->sPoolEnabled:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/internal/app/SimpleIconFactory;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/SimpleIconFactory;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 98
    :goto_e
    if-nez v0, :cond_32

    .line 99
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 100
    if-nez v0, :cond_1c

    const/4 v0, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v0

    .line 102
    :goto_20
    invoke-static {p0}, Lcom/android/internal/app/SimpleIconFactory;->getIconSizeFromContext(Landroid/content/Context;)I

    move-result v1

    .line 103
    invoke-static {p0}, Lcom/android/internal/app/SimpleIconFactory;->getBadgeSizeFromContext(Landroid/content/Context;)I

    move-result v2

    .line 104
    new-instance v3, Lcom/android/internal/app/SimpleIconFactory;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/internal/app/SimpleIconFactory;-><init>(Landroid/content/Context;III)V

    .line 105
    const/4 p0, -0x1

    invoke-virtual {v3, p0}, Lcom/android/internal/app/SimpleIconFactory;->setWrapperBackgroundColor(I)V

    move-object v0, v3

    .line 108
    :cond_32
    return-object v0
.end method

.method private declared-synchronized blacklist recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/BlurMaskFilter;IILandroid/graphics/Canvas;)V
    .registers 11

    monitor-enter p0

    .line 679
    const/4 v0, 0x2

    :try_start_2
    new-array v0, v0, [I

    .line 680
    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 681
    iget-object p2, p0, Lcom/android/internal/app/SimpleIconFactory;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 684
    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 685
    const/4 p3, 0x0

    aget v1, v0, p3

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, p2, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 688
    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 689
    aget p3, v0, p3

    int-to-float p3, p3

    aget p4, v0, v2

    int-to-float p4, p4

    iget v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    int-to-float v0, v0

    const v1, 0x3caaaaab

    mul-float/2addr v0, v1

    add-float/2addr p4, v0

    iget-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 693
    iget-object p2, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 694
    iget-object p2, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p5, p1, p3, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_46
    .catchall {:try_start_2 .. :try_end_46} :catchall_48

    .line 695
    monitor-exit p0

    return-void

    .line 678
    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method private declared-synchronized blacklist recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .registers 10

    monitor-enter p0

    .line 674
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    const/4 v4, 0x7

    const/16 v5, 0xa

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    :try_start_9
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/SimpleIconFactory;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/BlurMaskFilter;IILandroid/graphics/Canvas;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    .line 675
    monitor-exit p0

    return-void

    .line 673
    :catchall_e
    move-exception v0

    goto :goto_12

    :catchall_10
    move-exception v0

    move-object v1, p0

    :goto_12
    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_e

    throw p1
.end method

.method public static blacklist setPoolEnabled(Z)V
    .registers 1

    .line 119
    sput-boolean p0, Lcom/android/internal/app/SimpleIconFactory;->sPoolEnabled:Z

    .line 120
    return-void
.end method


# virtual methods
.method public blacklist createAppBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    if-nez p1, :cond_8

    .line 257
    iget p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mFillResIconDpi:I

    invoke-static {p1}, Lcom/android/internal/app/SimpleIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 262
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 263
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 264
    nop

    .line 265
    if-le v1, v0, :cond_19

    if-lez v0, :cond_19

    .line 266
    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_24

    .line 267
    :cond_19
    if-le v0, v1, :cond_22

    if-lez v1, :cond_22

    .line 268
    int-to-float v0, v0

    int-to-float v1, v1

    div-float v1, v0, v1

    goto :goto_24

    .line 270
    :cond_22
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_24
    invoke-direct {p0, p1, v1}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmapNoInsetOrMask(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 271
    invoke-direct {p0, p1}, Lcom/android/internal/app/SimpleIconFactory;->maskBitmapToCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 272
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 275
    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/app/SimpleIconFactory;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F

    move-result v1

    .line 276
    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 279
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/app/SimpleIconFactory;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 281
    if-eqz p2, :cond_6a

    .line 283
    iget v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mBadgeBitmapSize:I

    iget v2, p0, Lcom/android/internal/app/SimpleIconFactory;->mBadgeBitmapSize:I

    const/4 v3, 0x0

    invoke-static {p2, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 287
    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    iget v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mBadgeBitmapSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    iget v4, p0, Lcom/android/internal/app/SimpleIconFactory;->mBadgeBitmapSize:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, p2, v2, v3, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 291
    :cond_6a
    iget-object p2, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 293
    return-object v0
.end method

.method blacklist createUserBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 214
    if-nez p1, :cond_b

    .line 215
    iget p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mFillResIconDpi:I

    invoke-static {p1}, Lcom/android/internal/app/SimpleIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 217
    :cond_b
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/app/SimpleIconFactory;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 218
    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    instance-of p1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz p1, :cond_2e

    .line 220
    iget-object p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 221
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1, v2}, Lcom/android/internal/app/SimpleIconFactory;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 222
    iget-object p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 226
    :cond_2e
    if-eqz p2, :cond_4f

    .line 227
    new-instance p1, Lcom/android/internal/app/SimpleIconFactory$FixedSizeBitmapDrawable;

    invoke-direct {p1, v0}, Lcom/android/internal/app/SimpleIconFactory$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 228
    iget-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 229
    instance-of p2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_47

    .line 230
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v0, p1

    goto :goto_4e

    .line 232
    :cond_47
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v0, p1

    .line 234
    :goto_4e
    goto :goto_50

    .line 235
    :cond_4f
    nop

    .line 238
    :goto_50
    return-object v0
.end method

.method public blacklist recycle()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/SimpleIconFactory;->setWrapperBackgroundColor(I)V

    .line 152
    sget-object v0, Lcom/android/internal/app/SimpleIconFactory;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method blacklist setWrapperBackgroundColor(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_9

    const/4 p1, -0x1

    :cond_9
    iput p1, p0, Lcom/android/internal/app/SimpleIconFactory;->mWrapperBackgroundColor:I

    .line 195
    return-void
.end method
