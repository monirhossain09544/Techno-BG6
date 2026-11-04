.class Lcom/android/internal/util/android/FontController$TypefaceFactory;
.super Ljava/lang/Object;
.source "FontController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/android/FontController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypefaceFactory"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist create(Ljava/lang/String;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .registers 10

    .line 324
    invoke-static {p0}, Lcom/android/internal/util/android/FontController$TypefaceFactory;->resolveWeightByName(Ljava/lang/String;)I

    move-result v0

    .line 326
    if-eqz p2, :cond_13

    .line 327
    const/16 v1, 0x64

    add-int/2addr v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 330
    :cond_13
    const-string v1, "italic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 331
    const/16 v2, 0x2bc

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v2, :cond_21

    move v2, v3

    goto :goto_22

    :cond_21
    move v2, v4

    .line 333
    :goto_22
    nop

    .line 334
    if-eqz v2, :cond_29

    if-eqz v1, :cond_29

    const/4 v2, 0x3

    goto :goto_32

    .line 335
    :cond_29
    if-eqz v2, :cond_2d

    move v2, v3

    goto :goto_32

    .line 336
    :cond_2d
    if-eqz v1, :cond_31

    const/4 v2, 0x2

    goto :goto_32

    :cond_31
    move v2, v4

    .line 338
    :goto_32
    if-nez p1, :cond_36

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 344
    :cond_36
    invoke-static {}, Lcom/android/internal/util/android/FontController;->get()Lcom/android/internal/util/android/FontController;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/android/FontController;->-$$Nest$mgetCurrentFont(Lcom/android/internal/util/android/FontController;)Ljava/lang/String;

    move-result-object v5

    .line 345
    invoke-static {v5, v0, v1}, Lcom/android/internal/util/android/FontController$TypefaceFactory;->resolveNamedVariant(Ljava/lang/String;IZ)Landroid/graphics/Typeface;

    move-result-object v6

    .line 346
    if-eqz v6, :cond_65

    .line 347
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "TypefaceFactory.create: resolved named variant for \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\' weight="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/android/FontController;->-$$Nest$smlogger(Ljava/lang/String;)V

    .line 349
    return-object v6

    .line 352
    :cond_65
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 353
    invoke-static {p1, v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TypefaceFactory.create: fontToOverride="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v5, ", style="

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ", weight="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", adj="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ", isItalic="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ", success="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p1, :cond_ad

    goto :goto_ae

    :cond_ad
    move v3, v4

    :goto_ae
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/android/FontController;->-$$Nest$smlogger(Ljava/lang/String;)V

    .line 362
    return-object p1
.end method

.method public static blacklist createLegacy(Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Typeface;
    .registers 10

    .line 367
    invoke-static {p0}, Lcom/android/internal/util/android/FontController$TypefaceFactory;->resolveWeightByName(Ljava/lang/String;)I

    move-result v0

    .line 369
    if-eqz p2, :cond_13

    .line 370
    const/16 v1, 0x64

    add-int/2addr v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 373
    :cond_13
    const-string v1, "italic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 374
    const/16 v2, 0x2bc

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v2, :cond_21

    move v2, v3

    goto :goto_22

    :cond_21
    move v2, v4

    .line 376
    :goto_22
    nop

    .line 377
    if-eqz v2, :cond_29

    if-eqz v1, :cond_29

    const/4 v2, 0x3

    goto :goto_32

    .line 378
    :cond_29
    if-eqz v2, :cond_2d

    move v2, v3

    goto :goto_32

    .line 379
    :cond_2d
    if-eqz v1, :cond_31

    const/4 v2, 0x2

    goto :goto_32

    :cond_31
    move v2, v4

    .line 381
    :goto_32
    invoke-static {p1}, Landroid/graphics/Typeface;->getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 382
    if-nez p1, :cond_3a

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 383
    :cond_3a
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 384
    invoke-static {p1, v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    .line 386
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TypefaceFactory.createLegacy: fontToOverride="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v5, ", style="

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ", weight="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", adj="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ", isItalic="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ", success="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p1, :cond_82

    goto :goto_83

    :cond_82
    move v3, v4

    :goto_83
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/android/FontController;->-$$Nest$smlogger(Ljava/lang/String;)V

    .line 393
    return-object p1
.end method

.method private static blacklist resolveNamedVariant(Ljava/lang/String;IZ)Landroid/graphics/Typeface;
    .registers 9

    .line 397
    const/4 p2, 0x0

    if-nez p0, :cond_4

    return-object p2

    .line 401
    :cond_4
    const/16 v0, 0x2bc

    const-string v1, "-bold"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt p1, v0, :cond_16

    .line 402
    new-array p1, v2, [Ljava/lang/String;

    aput-object v1, p1, v4

    const-string v0, "-extra-bold"

    aput-object v0, p1, v3

    goto :goto_3a

    .line 403
    :cond_16
    const/16 v0, 0x258

    const-string v5, "-semi-bold"

    if-lt p1, v0, :cond_23

    .line 404
    new-array p1, v2, [Ljava/lang/String;

    aput-object v5, p1, v4

    aput-object v1, p1, v3

    goto :goto_3a

    .line 405
    :cond_23
    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_30

    .line 406
    new-array p1, v2, [Ljava/lang/String;

    const-string v0, "-medium"

    aput-object v0, p1, v4

    aput-object v5, p1, v3

    goto :goto_3a

    .line 408
    :cond_30
    new-array p1, v2, [Ljava/lang/String;

    const-string v0, ""

    aput-object v0, p1, v4

    const-string v0, "-light"

    aput-object v0, p1, v3

    .line 411
    :goto_3a
    array-length v0, p1

    :goto_3b
    if-ge v4, v0, :cond_7a

    aget-object v1, p1, v4

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-static {v1}, Landroid/graphics/Typeface;->getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 414
    if-eqz v2, :cond_77

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-eq v2, v3, :cond_77

    .line 415
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "resolveNamedVariant: matched \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/android/FontController;->-$$Nest$smlogger(Ljava/lang/String;)V

    .line 416
    return-object v2

    .line 411
    :cond_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 419
    :cond_7a
    return-object p2
.end method

.method private static blacklist resolveWeightByName(Ljava/lang/String;)I
    .registers 4

    .line 423
    invoke-static {}, Lcom/android/internal/util/android/FontController;->-$$Nest$sfgetWEIGHT_MAP()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 424
    if-eqz v0, :cond_11

    .line 425
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 427
    :cond_11
    invoke-static {}, Lcom/android/internal/util/android/FontController;->-$$Nest$sfgetWEIGHT_MAP()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 428
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 429
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 431
    :cond_40
    goto :goto_1d

    .line 432
    :cond_41
    const/16 p0, 0x190

    return p0
.end method
