.class final Lcom/android/internal/graphics/palette/ColorCutQuantizer;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    }
.end annotation


# static fields
.field static final blacklist COMPONENT_BLUE:I = -0x1

.field static final blacklist COMPONENT_GREEN:I = -0x2

.field static final blacklist COMPONENT_RED:I = -0x3

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ColorCutQuantizer"

.field private static final blacklist LOG_TIMINGS:Z = false

.field private static final blacklist QUANTIZE_WORD_MASK:I = 0x1f

.field private static final blacklist QUANTIZE_WORD_WIDTH:I = 0x5

.field private static final blacklist VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mColors:[I

.field blacklist mHistogram:[I

.field blacklist mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTempHsl:[F

.field blacklist mTimingLogger:Landroid/util/TimingLogger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 441
    new-instance v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$1;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$1;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mTempHsl:[F

    return-void
.end method

.method private static blacklist approximateToRgb888(I)I
    .registers 3

    .line 468
    invoke-static {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v0

    invoke-static {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v1

    .line 469
    invoke-static {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result p0

    .line 468
    invoke-static {v0, v1, p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->approximateToRgb888(III)I

    move-result p0

    return p0
.end method

.method static blacklist approximateToRgb888(III)I
    .registers 5

    .line 462
    const/4 v0, 0x5

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result p0

    .line 463
    invoke-static {p1, v0, v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result p1

    .line 464
    invoke-static {p2, v0, v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result p2

    .line 462
    invoke-static {p0, p1, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method private blacklist generateAverageColors(Ljava/util/Collection;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    .line 210
    invoke-virtual {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->getAverageColor()Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    goto :goto_d

    .line 213
    :cond_21
    return-object v0
.end method

.method static blacklist modifySignificantOctet([IIII)V
    .registers 6

    .line 413
    packed-switch p1, :pswitch_data_40

    goto :goto_3e

    .line 428
    :pswitch_4
    nop

    :goto_5
    if-gt p2, p3, :cond_3e

    .line 429
    aget p1, p0, p2

    .line 430
    invoke-static {p1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0xa

    .line 431
    invoke-static {p1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    .line 432
    invoke-static {p1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result p1

    or-int/2addr p1, v0

    aput p1, p0, p2

    .line 428
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 419
    :pswitch_20
    nop

    :goto_21
    if-gt p2, p3, :cond_3c

    .line 420
    aget p1, p0, p2

    .line 421
    invoke-static {p1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0xa

    .line 422
    invoke-static {p1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    .line 423
    invoke-static {p1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result p1

    or-int/2addr p1, v0

    aput p1, p0, p2

    .line 419
    add-int/lit8 p2, p2, 0x1

    goto :goto_21

    .line 425
    :cond_3c
    goto :goto_3e

    .line 416
    :pswitch_3d
    nop

    .line 436
    :cond_3e
    :goto_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch -0x3
        :pswitch_3d
        :pswitch_20
        :pswitch_4
    .end packed-switch
.end method

.method private static blacklist modifyWordWidth(III)I
    .registers 3

    .line 495
    if-le p2, p1, :cond_6

    .line 497
    sub-int p1, p2, p1

    shl-int/2addr p0, p1

    goto :goto_8

    .line 500
    :cond_6
    sub-int/2addr p1, p2

    shr-int/2addr p0, p1

    .line 502
    :goto_8
    const/4 p1, 0x1

    shl-int p2, p1, p2

    sub-int/2addr p2, p1

    and-int/2addr p0, p2

    return p0
.end method

.method private static blacklist quantizeFromRgb888(I)I
    .registers 5

    .line 452
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v0

    .line 453
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3, v1, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v3

    .line 454
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0, v1, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result p0

    .line 455
    shl-int/lit8 v0, v0, 0xa

    shl-int/lit8 v1, v3, 0x5

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private blacklist quantizePixels(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 165
    new-instance v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;-><init>(Lcom/android/internal/graphics/palette/ColorCutQuantizer;II)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 169
    invoke-direct {p0, v0, p1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->splitBoxes(Ljava/util/PriorityQueue;I)V

    .line 172
    invoke-direct {p0, v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->generateAverageColors(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method static blacklist quantizedBlue(I)I
    .registers 1

    .line 490
    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method static blacklist quantizedGreen(I)I
    .registers 1

    .line 483
    shr-int/lit8 p0, p0, 0x5

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method static blacklist quantizedRed(I)I
    .registers 1

    .line 476
    shr-int/lit8 p0, p0, 0xa

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method private blacklist splitBoxes(Ljava/util/PriorityQueue;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;",
            ">;I)V"
        }
    .end annotation

    .line 185
    nop

    :goto_1
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-ge v0, p2, :cond_21

    .line 186
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    .line 188
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 190
    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->splitBox()Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 204
    goto :goto_1

    .line 202
    :cond_20
    return-void

    .line 205
    :cond_21
    return-void
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

    .line 156
    iget-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method

.method public blacklist quantize([II)V
    .registers 10

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mTimingLogger:Landroid/util/TimingLogger;

    .line 91
    const v0, 0x8000

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mHistogram:[I

    .line 92
    const/4 v2, 0x0

    move v3, v2

    :goto_c
    array-length v4, p1

    if-ge v3, v4, :cond_20

    .line 93
    aget v4, p1, v3

    invoke-static {v4}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizeFromRgb888(I)I

    move-result v4

    .line 95
    aput v4, p1, v3

    .line 97
    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 105
    :cond_20
    nop

    .line 106
    move p1, v2

    move v3, p1

    :goto_23
    if-ge p1, v0, :cond_2e

    .line 107
    aget v4, v1, p1

    if-lez v4, :cond_2b

    .line 109
    add-int/lit8 v3, v3, 0x1

    .line 106
    :cond_2b
    add-int/lit8 p1, p1, 0x1

    goto :goto_23

    .line 118
    :cond_2e
    new-array p1, v3, [I

    iput-object p1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    .line 119
    nop

    .line 120
    move v4, v2

    move v5, v4

    :goto_35
    if-ge v4, v0, :cond_43

    .line 121
    aget v6, v1, v4

    if-lez v6, :cond_40

    .line 122
    add-int/lit8 v6, v5, 0x1

    aput v4, p1, v5

    move v5, v6

    .line 120
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 130
    :cond_43
    if-gt v3, p2, :cond_64

    .line 132
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 133
    nop

    :goto_4d
    if-ge v2, v3, :cond_6a

    aget p2, p1, v2

    .line 134
    iget-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v4, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-static {p2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->approximateToRgb888(I)I

    move-result v5

    aget p2, v1, p2

    invoke-direct {v4, v5, p2}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 143
    :cond_64
    invoke-direct {p0, p2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizePixels(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 150
    :cond_6a
    return-void
.end method
