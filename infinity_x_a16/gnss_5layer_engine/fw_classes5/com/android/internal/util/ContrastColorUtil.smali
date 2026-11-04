.class public Lcom/android/internal/util/ContrastColorUtil;
.super Ljava/lang/Object;
.source "ContrastColorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ContrastColorUtil"

.field private static blacklist sInstance:Lcom/android/internal/util/ContrastColorUtil;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mGrayscaleBitmapCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/graphics/Bitmap;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mGrayscaleIconMaxSize:I

.field private final blacklist mImageUtils:Lcom/android/internal/util/ImageUtils;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/util/ContrastColorUtil;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/internal/util/ImageUtils;

    invoke-direct {v0}, Lcom/android/internal/util/ImageUtils;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ContrastColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    .line 61
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ContrastColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10502d2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/util/ContrastColorUtil;->mGrayscaleIconMaxSize:I

    .line 78
    return-void
.end method

.method public static blacklist calculateContrast(II)D
    .registers 2

    .line 726
    invoke-static {p0, p1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist calculateLuminance(I)D
    .registers 3

    .line 721
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist changeColorLightness(II)I
    .registers 11

    .line 636
    invoke-static {}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v0

    .line 637
    invoke-static {p0, v0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 638
    const/4 p0, 0x0

    aget-wide v1, v0, p0

    int-to-double v3, p1

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    aput-wide v1, v0, p0

    .line 639
    aget-wide v3, v0, p0

    const/4 p0, 0x1

    aget-wide v5, v0, p0

    const/4 p0, 0x2

    aget-wide v7, v0, p0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result p0

    return p0
.end method

.method public static blacklist clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 15

    .line 255
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_74

    .line 256
    check-cast p0, Landroid/text/Spanned;

    .line 257
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 258
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-interface {p0}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 259
    array-length v3, v0

    :goto_1b
    if-ge v2, v3, :cond_73

    aget-object v4, v0, v2

    .line 260
    instance-of v5, v4, Landroid/text/NoCopySpan;

    if-eqz v5, :cond_24

    .line 262
    goto :goto_70

    .line 264
    :cond_24
    nop

    .line 265
    instance-of v5, v4, Landroid/text/style/CharacterStyle;

    if-eqz v5, :cond_31

    .line 266
    move-object v5, v4

    check-cast v5, Landroid/text/style/CharacterStyle;

    invoke-virtual {v5}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v5

    goto :goto_32

    .line 265
    :cond_31
    move-object v5, v4

    .line 268
    :goto_32
    instance-of v6, v5, Landroid/text/style/TextAppearanceSpan;

    if-eqz v6, :cond_57

    .line 269
    move-object v6, v5

    check-cast v6, Landroid/text/style/TextAppearanceSpan;

    .line 270
    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v7

    if-eqz v7, :cond_56

    .line 271
    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    .line 272
    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v9

    .line 273
    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v10

    .line 274
    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v11

    .line 276
    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v13

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v13}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    move-object v5, v8

    .line 278
    :cond_56
    goto :goto_61

    :cond_57
    instance-of v6, v5, Landroid/text/style/ForegroundColorSpan;

    if-nez v6, :cond_70

    instance-of v5, v5, Landroid/text/style/BackgroundColorSpan;

    if-eqz v5, :cond_60

    .line 280
    goto :goto_70

    .line 282
    :cond_60
    move-object v5, v4

    .line 284
    :goto_61
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 285
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    .line 284
    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 259
    :cond_70
    :goto_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 287
    :cond_73
    return-object v1

    .line 289
    :cond_74
    return-object p0
.end method

.method public static blacklist compositeColors(II)I
    .registers 2

    .line 737
    invoke-static {p0, p1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->compositeColors(II)I

    move-result p0

    return p0
.end method

.method private static blacklist contrastChange(III)Ljava/lang/String;
    .registers 5

    .line 566
    nop

    .line 567
    invoke-static {p0, p2}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 568
    invoke-static {p1, p2}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 566
    const-string p1, "from %.2f:1 to %.2f:1"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist ensureColorSpanContrast(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 25

    .line 302
    move-object/from16 v0, p0

    move/from16 v1, p1

    if-nez v0, :cond_7

    .line 303
    return-object v0

    .line 305
    :cond_7
    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_e5

    .line 306
    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    .line 307
    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 308
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-interface {v2}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 309
    array-length v6, v3

    move v7, v5

    :goto_24
    if-ge v7, v6, :cond_e4

    aget-object v8, v3, v7

    .line 310
    instance-of v9, v8, Landroid/text/NoCopySpan;

    if-eqz v9, :cond_30

    .line 312
    move-object/from16 v16, v3

    goto/16 :goto_db

    .line 314
    :cond_30
    nop

    .line 315
    invoke-interface {v2, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 316
    invoke-interface {v2, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 317
    sub-int v11, v10, v9

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-ne v11, v12, :cond_43

    const/4 v11, 0x1

    goto :goto_44

    :cond_43
    move v11, v5

    .line 318
    :goto_44
    instance-of v12, v8, Landroid/text/style/CharacterStyle;

    if-eqz v12, :cond_50

    .line 319
    move-object v12, v8

    check-cast v12, Landroid/text/style/CharacterStyle;

    invoke-virtual {v12}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v12

    goto :goto_51

    .line 318
    :cond_50
    move-object v12, v8

    .line 321
    :goto_51
    instance-of v13, v12, Landroid/text/style/TextAppearanceSpan;

    const/4 v14, 0x0

    if-eqz v13, :cond_b4

    .line 322
    move-object v13, v12

    check-cast v13, Landroid/text/style/TextAppearanceSpan;

    .line 323
    invoke-virtual {v13}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v15

    .line 324
    if-eqz v15, :cond_b0

    .line 325
    if-eqz v11, :cond_66

    .line 327
    move-object/from16 v16, v3

    move-object/from16 v21, v14

    goto :goto_98

    .line 329
    :cond_66
    invoke-virtual {v15}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v11

    .line 330
    array-length v12, v11

    new-array v14, v12, [I

    .line 331
    nop

    :goto_6e
    if-ge v5, v12, :cond_85

    .line 332
    invoke-static {v1}, Lcom/android/internal/util/ContrastColorUtil;->isColorDark(I)Z

    move-result v0

    .line 333
    move-object/from16 v16, v3

    aget v3, v11, v5

    invoke-static {v3, v1, v0}, Lcom/android/internal/util/ContrastColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result v0

    aput v0, v14, v5

    .line 331
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v16

    goto :goto_6e

    .line 336
    :cond_85
    move-object/from16 v16, v3

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-virtual {v15}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v3

    invoke-virtual {v3}, [[I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    invoke-direct {v0, v3, v14}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v21, v0

    .line 339
    :goto_98
    new-instance v17, Landroid/text/style/TextAppearanceSpan;

    .line 340
    invoke-virtual {v13}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v18

    .line 341
    invoke-virtual {v13}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v19

    .line 342
    invoke-virtual {v13}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v20

    .line 344
    invoke-virtual {v13}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v22

    invoke-direct/range {v17 .. v22}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    move-object/from16 v12, v17

    goto :goto_b2

    .line 324
    :cond_b0
    move-object/from16 v16, v3

    .line 346
    :goto_b2
    move-object v14, v12

    goto :goto_d2

    :cond_b4
    move-object/from16 v16, v3

    instance-of v0, v12, Landroid/text/style/ForegroundColorSpan;

    if-eqz v0, :cond_d1

    .line 347
    if-eqz v11, :cond_bd

    .line 348
    goto :goto_d2

    .line 350
    :cond_bd
    check-cast v12, Landroid/text/style/ForegroundColorSpan;

    .line 351
    invoke-virtual {v12}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v0

    .line 352
    invoke-static {v1}, Lcom/android/internal/util/ContrastColorUtil;->isColorDark(I)Z

    move-result v3

    .line 353
    invoke-static {v0, v1, v3}, Lcom/android/internal/util/ContrastColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result v0

    .line 355
    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v14, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 356
    goto :goto_d2

    .line 358
    :cond_d1
    move-object v14, v8

    .line 360
    :goto_d2
    if-eqz v14, :cond_db

    .line 361
    invoke-interface {v2, v8}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v4, v14, v9, v10, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 309
    :cond_db
    :goto_db
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v16

    const/4 v5, 0x0

    goto/16 :goto_24

    .line 364
    :cond_e4
    return-object v4

    .line 366
    :cond_e5
    return-object p0
.end method

.method public static blacklist ensureContrast(IIZD)I
    .registers 6

    .line 552
    const/4 v0, 0x1

    if-eqz p2, :cond_8

    .line 553
    invoke-static {p0, p1, v0, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result p0

    goto :goto_c

    .line 554
    :cond_8
    invoke-static {p0, p1, v0, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result p0

    .line 552
    :goto_c
    return p0
.end method

.method public static blacklist ensureLargeTextContrast(IIZ)I
    .registers 6

    .line 527
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    const/4 v2, 0x1

    if-eqz p2, :cond_a

    .line 528
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result p0

    goto :goto_e

    .line 529
    :cond_a
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result p0

    .line 527
    :goto_e
    return p0
.end method

.method public static blacklist ensureTextBackgroundColor(III)I
    .registers 6

    .line 561
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    const/4 v2, 0x0

    invoke-static {p0, p2, v2, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result p0

    .line 562
    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result p0

    return p0
.end method

.method public static blacklist ensureTextContrast(IIZ)I
    .registers 5

    .line 539
    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->ensureContrast(IIZD)I

    move-result p0

    return p0
.end method

.method public static blacklist ensureTextContrastOnBlack(I)I
    .registers 5

    .line 517
    const/4 v0, 0x1

    const-wide/high16 v1, 0x4028000000000000L    # 12.0

    const/high16 v3, -0x1000000

    invoke-static {p0, v3, v0, v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result p0

    return p0
.end method

.method public static blacklist findAlphaToMeetContrast(IID)I
    .registers 12

    .line 453
    nop

    .line 454
    nop

    .line 455
    invoke-static {p0, p1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v0

    cmpl-double v0, v0, p2

    if-ltz v0, :cond_b

    .line 456
    return p0

    .line 458
    :cond_b
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 459
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 460
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 461
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 463
    nop

    .line 464
    const/16 v3, 0xff

    const/4 v4, 0x0

    :goto_1f
    const/16 v5, 0xf

    if-ge v4, v5, :cond_3d

    sub-int v5, v3, v0

    if-lez v5, :cond_3d

    .line 465
    add-int v5, v0, v3

    div-int/lit8 v5, v5, 0x2

    .line 466
    invoke-static {v5, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 467
    invoke-static {v6, p1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v6

    cmpl-double v6, v6, p2

    if-lez v6, :cond_39

    .line 468
    move v3, v5

    goto :goto_3a

    .line 470
    :cond_39
    move v0, v5

    .line 464
    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 473
    :cond_3d
    invoke-static {v3, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static blacklist findContrastColor(IIZD)I
    .registers 22

    .line 417
    if-eqz p2, :cond_5

    move/from16 v0, p0

    goto :goto_7

    :cond_5
    move/from16 v0, p1

    .line 418
    :goto_7
    if-eqz p2, :cond_c

    move/from16 v1, p1

    goto :goto_e

    :cond_c
    move/from16 v1, p0

    .line 419
    :goto_e
    invoke-static {v0, v1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v2

    cmpl-double v2, v2, p3

    if-ltz v2, :cond_17

    .line 420
    return p0

    .line 423
    :cond_17
    const/4 v2, 0x3

    new-array v2, v2, [D

    .line 424
    if-eqz p2, :cond_1e

    move v3, v0

    goto :goto_1f

    :cond_1e
    move v3, v1

    :goto_1f
    invoke-static {v3, v2}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 426
    const/4 v3, 0x0

    aget-wide v4, v2, v3

    .line 427
    const/4 v6, 0x1

    aget-wide v9, v2, v6

    const/4 v6, 0x2

    aget-wide v11, v2, v6

    .line 428
    const-wide/16 v6, 0x0

    move-wide v13, v6

    :goto_2e
    const/16 v2, 0xf

    if-ge v3, v2, :cond_5c

    sub-double v6, v4, v13

    const-wide v15, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v2, v6, v15

    if-lez v2, :cond_5c

    .line 429
    add-double v6, v13, v4

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double v7, v6, v15

    .line 430
    if-eqz p2, :cond_4a

    .line 431
    invoke-static/range {v7 .. v12}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v0

    goto :goto_4e

    .line 433
    :cond_4a
    invoke-static/range {v7 .. v12}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v1

    .line 435
    :goto_4e
    invoke-static {v0, v1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v15

    cmpl-double v2, v15, p3

    if-lez v2, :cond_58

    .line 436
    move-wide v13, v7

    goto :goto_59

    .line 438
    :cond_58
    move-wide v4, v7

    .line 428
    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 441
    :cond_5c
    move-wide v7, v13

    invoke-static/range {v7 .. v12}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v0

    return v0
.end method

.method public static blacklist findContrastColorAgainstDark(IIZD)I
    .registers 14

    .line 488
    if-eqz p2, :cond_4

    move v0, p0

    goto :goto_5

    :cond_4
    move v0, p1

    .line 489
    :goto_5
    if-eqz p2, :cond_8

    goto :goto_9

    :cond_8
    move p1, p0

    .line 490
    :goto_9
    invoke-static {v0, p1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v1

    cmpl-double v1, v1, p3

    if-ltz v1, :cond_12

    .line 491
    return p0

    .line 494
    :cond_12
    const/4 p0, 0x3

    new-array p0, p0, [F

    .line 495
    if-eqz p2, :cond_19

    move v1, v0

    goto :goto_1a

    :cond_19
    move v1, p1

    :goto_1a
    invoke-static {v1, p0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->colorToHSL(I[F)V

    .line 497
    const/4 v1, 0x2

    aget v2, p0, v1

    .line 498
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    :goto_23
    const/16 v5, 0xf

    if-ge v4, v5, :cond_53

    sub-float v5, v3, v2

    float-to-double v5, v5

    const-wide v7, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v5, v5, v7

    if-lez v5, :cond_53

    .line 499
    add-float v5, v2, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 500
    aput v5, p0, v1

    .line 501
    if-eqz p2, :cond_41

    .line 502
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->HSLToColor([F)I

    move-result v0

    goto :goto_45

    .line 504
    :cond_41
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->HSLToColor([F)I

    move-result p1

    .line 506
    :goto_45
    invoke-static {v0, p1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v6

    cmpl-double v6, v6, p3

    if-lez v6, :cond_4f

    .line 507
    move v3, v5

    goto :goto_50

    .line 509
    :cond_4f
    move v2, v5

    .line 498
    :goto_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 512
    :cond_53
    aput v3, p0, v1

    .line 513
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->HSLToColor([F)I

    move-result p0

    return p0
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;
    .registers 3

    .line 67
    sget-object v0, Lcom/android/internal/util/ContrastColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_3
    sget-object v1, Lcom/android/internal/util/ContrastColorUtil;->sInstance:Lcom/android/internal/util/ContrastColorUtil;

    if-nez v1, :cond_e

    .line 69
    new-instance v1, Lcom/android/internal/util/ContrastColorUtil;

    invoke-direct {v1, p0}, Lcom/android/internal/util/ContrastColorUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/util/ContrastColorUtil;->sInstance:Lcom/android/internal/util/ContrastColorUtil;

    .line 71
    :cond_e
    sget-object p0, Lcom/android/internal/util/ContrastColorUtil;->sInstance:Lcom/android/internal/util/ContrastColorUtil;

    monitor-exit v0

    return-object p0

    .line 72
    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public static blacklist getMutedColor(IF)I
    .registers 3

    .line 706
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/4 v0, -0x1

    invoke-static {v0, p1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->setAlphaComponent(II)I

    move-result p1

    .line 708
    invoke-static {p1, p0}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    move-result p0

    return p0
.end method

.method public static blacklist getShiftedColor(II)I
    .registers 11

    .line 688
    invoke-static {}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v0

    .line 689
    invoke-static {p0, v0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 690
    const/4 p0, 0x0

    aget-wide v1, v0, p0

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1d

    .line 691
    aget-wide v1, v0, p0

    int-to-double v3, p1

    sub-double/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    aput-wide v1, v0, p0

    goto :goto_29

    .line 693
    :cond_1d
    aget-wide v1, v0, p0

    int-to-double v3, p1

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    aput-wide v1, v0, p0

    .line 695
    :goto_29
    aget-wide v3, v0, p0

    const/4 p0, 0x1

    aget-wide v5, v0, p0

    const/4 p0, 0x2

    aget-wide v7, v0, p0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result p0

    return p0
.end method

.method public static blacklist invertColorLightness(I)I
    .registers 10

    .line 393
    invoke-static {}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v0

    .line 394
    invoke-static {p0, v0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 395
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const/4 p0, 0x0

    aget-wide v3, v0, p0

    sub-double/2addr v1, v3

    aput-wide v1, v0, p0

    .line 396
    aget-wide v3, v0, p0

    const/4 p0, 0x1

    aget-wide v5, v0, p0

    const/4 p0, 0x2

    aget-wide v7, v0, p0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result p0

    return p0
.end method

.method public static blacklist isColorDark(I)Z
    .registers 5

    .line 379
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fc6edb1281d81ceL    # 0.17912878474

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public static blacklist isColorDarkLab(I)Z
    .registers 5

    .line 384
    invoke-static {}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v0

    .line 385
    invoke-static {p0, v0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 386
    const/4 p0, 0x0

    aget-wide v0, v0, p0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_11

    const/4 p0, 0x1

    :cond_11
    return p0
.end method

.method public static blacklist isColorLight(I)Z
    .registers 5

    .line 742
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p0, v0, v2

    if-lez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private blacklist processColor(I)I
    .registers 5

    .line 400
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 401
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    rsub-int v1, v1, 0xff

    .line 402
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    rsub-int v2, v2, 0xff

    .line 403
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    rsub-int p1, p1, 0xff

    .line 400
    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private blacklist processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;
    .registers 12

    .line 223
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_4c

    .line 225
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v1

    .line 226
    nop

    .line 227
    const/4 v2, 0x0

    move v3, v2

    :goto_d
    array-length v4, v1

    if-ge v2, v4, :cond_2b

    .line 228
    aget v4, v1, v2

    invoke-static {v4}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 232
    if-nez v3, :cond_1f

    .line 233
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 235
    :cond_1f
    aget v3, v1, v2

    invoke-direct {p0, v3}, Lcom/android/internal/util/ContrastColorUtil;->processColor(I)I

    move-result v3

    aput v3, v1, v2

    .line 236
    const/4 v3, 0x1

    .line 227
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 239
    :cond_2b
    if-eqz v3, :cond_4c

    .line 240
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    .line 241
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v6

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v7

    new-instance v8, Landroid/content/res/ColorStateList;

    .line 242
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v0

    invoke-direct {v8, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 243
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 240
    return-object v4

    .line 246
    :cond_4c
    return-object p1
.end method

.method public static blacklist resolveColor(Landroid/content/Context;IZ)I
    .registers 3

    .line 575
    if-nez p1, :cond_10

    .line 576
    if-eqz p2, :cond_8

    .line 577
    const p1, 0x1060305

    goto :goto_b

    .line 578
    :cond_8
    const p1, 0x1060306

    .line 579
    :goto_b
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    .line 581
    :cond_10
    return p1
.end method

.method public static blacklist resolveContrastColor(Landroid/content/Context;II)I
    .registers 4

    .line 593
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result p0

    return p0
.end method

.method public static blacklist resolveContrastColor(Landroid/content/Context;IIZ)I
    .registers 4

    .line 609
    invoke-static {p0, p1, p3}, Lcom/android/internal/util/ContrastColorUtil;->resolveColor(Landroid/content/Context;IZ)I

    move-result p0

    .line 611
    nop

    .line 612
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/ContrastColorUtil;->ensureTextContrast(IIZ)I

    move-result p0

    .line 614
    nop

    .line 624
    return p0
.end method

.method public static blacklist resolveDefaultColor(Landroid/content/Context;IZ)I
    .registers 3

    .line 668
    invoke-static {p1, p2}, Lcom/android/internal/util/ContrastColorUtil;->shouldUseDark(IZ)Z

    move-result p1

    .line 669
    if-eqz p1, :cond_e

    .line 670
    const p1, 0x1060306

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    .line 673
    :cond_e
    const p1, 0x1060305

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static blacklist resolvePrimaryColor(Landroid/content/Context;IZ)I
    .registers 3

    .line 644
    invoke-static {p1, p2}, Lcom/android/internal/util/ContrastColorUtil;->shouldUseDark(IZ)Z

    move-result p1

    .line 645
    if-eqz p1, :cond_e

    .line 646
    const p1, 0x106030a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    .line 649
    :cond_e
    const p1, 0x1060309

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static blacklist resolveSecondaryColor(Landroid/content/Context;IZ)I
    .registers 3

    .line 656
    invoke-static {p1, p2}, Lcom/android/internal/util/ContrastColorUtil;->shouldUseDark(IZ)Z

    move-result p1

    .line 657
    if-eqz p1, :cond_e

    .line 658
    const p1, 0x106030e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    .line 661
    :cond_e
    const p1, 0x106030d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static blacklist satisfiesTextContrast(II)Z
    .registers 4

    .line 730
    invoke-static {p1, p0}, Lcom/android/internal/util/ContrastColorUtil;->calculateContrast(II)D

    move-result-wide p0

    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    cmpl-double p0, p0, v0

    if-ltz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static blacklist shouldUseDark(IZ)Z
    .registers 5

    .line 712
    const/4 v0, 0x1

    if-nez p0, :cond_6

    .line 713
    xor-int/lit8 p0, p1, 0x1

    return p0

    .line 717
    :cond_6
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide p0

    const-wide v1, 0x3fc6edb1281d81ceL    # 0.17912878474

    cmpl-double p0, p0, v1

    if-lez p0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method


# virtual methods
.method public blacklist invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 10

    .line 185
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_6a

    .line 186
    check-cast p1, Landroid/text/Spanned;

    .line 187
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 188
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-interface {p1}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 189
    array-length v3, v0

    :goto_1b
    if-ge v2, v3, :cond_69

    aget-object v4, v0, v2

    .line 190
    instance-of v5, v4, Landroid/text/NoCopySpan;

    if-eqz v5, :cond_24

    .line 192
    goto :goto_66

    .line 194
    :cond_24
    nop

    .line 195
    instance-of v5, v4, Landroid/text/style/CharacterStyle;

    if-eqz v5, :cond_31

    .line 196
    move-object v5, v4

    check-cast v5, Landroid/text/style/CharacterStyle;

    invoke-virtual {v5}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v5

    goto :goto_32

    .line 195
    :cond_31
    move-object v5, v4

    .line 198
    :goto_32
    instance-of v6, v5, Landroid/text/style/TextAppearanceSpan;

    if-eqz v6, :cond_42

    .line 199
    move-object v6, v4

    check-cast v6, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {p0, v6}, Lcom/android/internal/util/ContrastColorUtil;->processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;

    move-result-object v6

    .line 201
    if-eq v6, v5, :cond_40

    .line 202
    goto :goto_41

    .line 205
    :cond_40
    move-object v6, v4

    .line 207
    :goto_41
    goto :goto_57

    :cond_42
    instance-of v6, v5, Landroid/text/style/ForegroundColorSpan;

    if-eqz v6, :cond_56

    .line 208
    check-cast v5, Landroid/text/style/ForegroundColorSpan;

    .line 209
    invoke-virtual {v5}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v5

    .line 210
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v5}, Lcom/android/internal/util/ContrastColorUtil;->processColor(I)I

    move-result v5

    invoke-direct {v6, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 211
    goto :goto_57

    .line 212
    :cond_56
    move-object v6, v4

    .line 214
    :goto_57
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 215
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    .line 214
    invoke-virtual {v1, v6, v5, v7, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 189
    :goto_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 217
    :cond_69
    return-object v1

    .line 219
    :cond_6a
    return-object p1
.end method

.method public blacklist isGrayscaleIcon(Landroid/content/Context;I)Z
    .registers 5

    .line 165
    const/4 v0, 0x0

    if-eqz p2, :cond_26

    .line 167
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result p1
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_b} :catch_c

    return p1

    .line 168
    :catch_c
    move-exception p1

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drawable not found: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContrastColorUtil"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v0

    .line 173
    :cond_26
    return v0
.end method

.method public blacklist isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z
    .registers 5

    .line 144
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 145
    return v0

    .line 147
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    .line 153
    return v0

    .line 151
    :pswitch_c
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/content/Context;I)Z

    move-result p1

    return p1

    .line 149
    :pswitch_15
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_c
    .end packed-switch
.end method

.method public blacklist isGrayscaleIcon(Landroid/graphics/Bitmap;)Z
    .registers 7

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/internal/util/ContrastColorUtil;->mGrayscaleIconMaxSize:I

    if-gt v0, v1, :cond_64

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/internal/util/ContrastColorUtil;->mGrayscaleIconMaxSize:I

    if-le v0, v1, :cond_11

    goto :goto_64

    .line 94
    :cond_11
    sget-object v0, Lcom/android/internal/util/ContrastColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_14
    iget-object v1, p0, Lcom/android/internal/util/ContrastColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 96
    if-eqz v1, :cond_36

    .line 97
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v3

    if-ne v2, v3, :cond_36

    .line 98
    iget-object p1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 101
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_61

    .line 104
    iget-object v1, p0, Lcom/android/internal/util/ContrastColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    monitor-enter v1

    .line 105
    :try_start_3a
    iget-object v0, p0, Lcom/android/internal/util/ContrastColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/ImageUtils;->isGrayscale(Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v2

    .line 111
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_5e

    .line 112
    sget-object v3, Lcom/android/internal/util/ContrastColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 113
    :try_start_48
    iget-object v1, p0, Lcom/android/internal/util/ContrastColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    monitor-exit v3

    .line 115
    return v0

    .line 114
    :catchall_5b
    move-exception p1

    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_48 .. :try_end_5d} :catchall_5b

    throw p1

    .line 111
    :catchall_5e
    move-exception p1

    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p1

    .line 101
    :catchall_61
    move-exception p1

    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw p1

    .line 91
    :cond_64
    :goto_64
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z
    .registers 5

    .line 126
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 127
    return v0

    .line 128
    :cond_4
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    .line 129
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 130
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_1c

    move v0, v2

    :cond_1c
    return v0

    .line 131
    :cond_1d
    instance-of v1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_35

    .line 132
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 133
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    .line 134
    if-lez v1, :cond_34

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_34

    move v0, v2

    :cond_34
    return v0

    .line 135
    :cond_35
    instance-of p1, p1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz p1, :cond_3a

    .line 137
    return v2

    .line 139
    :cond_3a
    return v0
.end method
