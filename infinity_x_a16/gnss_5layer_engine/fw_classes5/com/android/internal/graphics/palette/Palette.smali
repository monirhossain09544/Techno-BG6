.class public final Lcom/android/internal/graphics/palette/Palette;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/palette/Palette$Builder;,
        Lcom/android/internal/graphics/palette/Palette$Swatch;,
        Lcom/android/internal/graphics/palette/Palette$Filter;,
        Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;
    }
.end annotation


# static fields
.field static final blacklist DEFAULT_CALCULATE_NUMBER_COLORS:I = 0x10

.field static final blacklist DEFAULT_FILTER:Lcom/android/internal/graphics/palette/Palette$Filter;

.field static final blacklist DEFAULT_RESIZE_BITMAP_AREA:I = 0x3100

.field static final blacklist LOG_TAG:Ljava/lang/String; = "Palette"


# instance fields
.field private final blacklist mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

.field private final blacklist mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 479
    new-instance v0, Lcom/android/internal/graphics/palette/Palette$1;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/Palette$1;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/palette/Palette;->DEFAULT_FILTER:Lcom/android/internal/graphics/palette/Palette$Filter;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;)V"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    .line 96
    invoke-direct {p0}, Lcom/android/internal/graphics/palette/Palette;->findDominantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 97
    return-void
.end method

.method private blacklist findDominantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .registers 7

    .line 113
    nop

    .line 114
    nop

    .line 115
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v0, :cond_25

    .line 116
    iget-object v4, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 117
    invoke-virtual {v4}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v5

    if-le v5, v1, :cond_22

    .line 118
    nop

    .line 119
    invoke-virtual {v4}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v1

    move-object v2, v4

    .line 115
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 122
    :cond_25
    return-object v2
.end method

.method public static blacklist from(Landroid/graphics/Bitmap;Lcom/android/internal/graphics/palette/Quantizer;)Lcom/android/internal/graphics/palette/Palette$Builder;
    .registers 3

    .line 74
    new-instance v0, Lcom/android/internal/graphics/palette/Palette$Builder;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/graphics/palette/Palette$Builder;-><init>(Landroid/graphics/Bitmap;Lcom/android/internal/graphics/palette/Quantizer;)V

    return-object v0
.end method

.method public static blacklist from(Ljava/util/List;)Lcom/android/internal/graphics/palette/Palette;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;)",
            "Lcom/android/internal/graphics/palette/Palette;"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/android/internal/graphics/palette/Palette$Builder;

    invoke-direct {v0, p0}, Lcom/android/internal/graphics/palette/Palette$Builder;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getDominantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    return-object v0
.end method

.method public blacklist getSwatches()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
