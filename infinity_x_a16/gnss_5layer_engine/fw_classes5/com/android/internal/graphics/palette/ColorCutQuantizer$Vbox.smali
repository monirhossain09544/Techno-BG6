.class Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vbox"
.end annotation


# instance fields
.field private final blacklist mLowerIndex:I

.field private blacklist mMaxBlue:I

.field private blacklist mMaxGreen:I

.field private blacklist mMaxRed:I

.field private blacklist mMinBlue:I

.field private blacklist mMinGreen:I

.field private blacklist mMinRed:I

.field private blacklist mPopulation:I

.field private blacklist mUpperIndex:I

.field final synthetic blacklist this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/graphics/palette/ColorCutQuantizer;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput p2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 232
    iput p3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->fitBox()V

    .line 234
    return-void
.end method


# virtual methods
.method final blacklist canSplit()Z
    .registers 3

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->getColorCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method final blacklist findSplitPoint()I
    .registers 7

    .line 348
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->getLongestColorDimension()I

    move-result v0

    .line 349
    iget-object v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v1, v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    .line 350
    iget-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v2, v2, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mHistogram:[I

    .line 355
    iget v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-static {v1, v0, v3, v4}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifySignificantOctet([IIII)V

    .line 358
    iget v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->sort([III)V

    .line 361
    iget v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-static {v1, v0, v3, v4}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifySignificantOctet([IIII)V

    .line 363
    iget v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mPopulation:I

    div-int/lit8 v0, v0, 0x2

    .line 364
    iget v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    const/4 v4, 0x0

    :goto_2a
    iget v5, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v3, v5, :cond_41

    .line 365
    aget v5, v1, v3

    aget v5, v2, v5

    add-int/2addr v4, v5

    .line 366
    if-lt v4, v0, :cond_3e

    .line 369
    iget v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 364
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 373
    :cond_41
    iget v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    return v0
.end method

.method final blacklist fitBox()V
    .registers 14

    .line 253
    iget-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v0, v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    .line 254
    iget-object v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v1, v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mHistogram:[I

    .line 258
    nop

    .line 260
    nop

    .line 261
    nop

    .line 263
    iget v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    move v6, v4

    move v7, v6

    move v8, v7

    move v9, v5

    move v4, v3

    move v5, v4

    :goto_19
    iget v10, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v2, v10, :cond_43

    .line 264
    aget v10, v0, v2

    .line 265
    aget v11, v1, v10

    add-int/2addr v9, v11

    .line 267
    invoke-static {v10}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v11

    .line 268
    invoke-static {v10}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v12

    .line 269
    invoke-static {v10}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v10

    .line 270
    if-le v11, v6, :cond_31

    .line 271
    move v6, v11

    .line 273
    :cond_31
    if-ge v11, v3, :cond_34

    .line 274
    move v3, v11

    .line 276
    :cond_34
    if-le v12, v7, :cond_37

    .line 277
    move v7, v12

    .line 279
    :cond_37
    if-ge v12, v4, :cond_3a

    .line 280
    move v4, v12

    .line 282
    :cond_3a
    if-le v10, v8, :cond_3d

    .line 283
    move v8, v10

    .line 285
    :cond_3d
    if-ge v10, v5, :cond_40

    .line 286
    move v5, v10

    .line 263
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 290
    :cond_43
    iput v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    .line 291
    iput v6, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    .line 292
    iput v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    .line 293
    iput v7, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    .line 294
    iput v5, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    .line 295
    iput v8, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    .line 296
    iput v9, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mPopulation:I

    .line 297
    return-void
.end method

.method final blacklist getAverageColor()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .registers 11

    .line 380
    iget-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v0, v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    .line 381
    iget-object v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v1, v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mHistogram:[I

    .line 382
    nop

    .line 383
    nop

    .line 384
    nop

    .line 385
    nop

    .line 387
    iget v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_12
    iget v7, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v2, v7, :cond_30

    .line 388
    aget v7, v0, v2

    .line 389
    aget v8, v1, v7

    .line 391
    add-int/2addr v4, v8

    .line 392
    invoke-static {v7}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v3, v9

    .line 393
    invoke-static {v7}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v5, v9

    .line 394
    invoke-static {v7}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v7

    mul-int/2addr v8, v7

    add-int/2addr v6, v8

    .line 387
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 397
    :cond_30
    int-to-float v0, v3

    int-to-float v1, v4

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 398
    int-to-float v2, v5

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 399
    int-to-float v3, v6

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 401
    new-instance v3, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-static {v0, v2, v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->approximateToRgb888(III)I

    move-result v0

    invoke-direct {v3, v0, v4}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>(II)V

    return-object v3
.end method

.method final blacklist getColorCount()I
    .registers 3

    .line 246
    iget v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final blacklist getLongestColorDimension()I
    .registers 5

    .line 325
    iget v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v0, v1

    .line 326
    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v1, v2

    .line 327
    iget v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v2, v3

    .line 329
    if-lt v0, v1, :cond_15

    if-lt v0, v2, :cond_15

    .line 330
    const/4 v0, -0x3

    return v0

    .line 331
    :cond_15
    if-lt v1, v0, :cond_1b

    if-lt v1, v2, :cond_1b

    .line 332
    const/4 v0, -0x2

    return v0

    .line 334
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method final blacklist getVolume()I
    .registers 4

    .line 237
    iget v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method final blacklist splitBox()Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    .registers 6

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 310
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->findSplitPoint()I

    move-result v0

    .line 312
    new-instance v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;-><init>(Lcom/android/internal/graphics/palette/ColorCutQuantizer;II)V

    .line 315
    iput v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 316
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->fitBox()V

    .line 318
    return-object v1

    .line 306
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not split a box with only 1 color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
