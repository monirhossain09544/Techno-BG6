.class public Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
.super Ljava/lang/Object;
.source "Tonal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/colorextraction/types/Tonal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TonalPalette"
.end annotation


# instance fields
.field public final blacklist h:[F

.field public final blacklist l:[F

.field public final blacklist maxHue:F

.field public final blacklist minHue:F

.field public final blacklist s:[F


# direct methods
.method constructor blacklist <init>([F[F[F)V
    .registers 7

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2d

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2d

    .line 412
    iput-object p1, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    .line 413
    iput-object p2, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    .line 414
    iput-object p3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    .line 416
    nop

    .line 417
    nop

    .line 419
    array-length p2, p1

    const/high16 p3, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v1, 0x0

    :goto_19
    if-ge v1, p2, :cond_28

    aget v2, p1, v1

    .line 420
    invoke-static {v2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 421
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 424
    :cond_28
    iput p3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    .line 425
    iput v0, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    .line 426
    return-void

    .line 408
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "All arrays should have the same size. h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 409
    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " s: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " l: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 410
    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
