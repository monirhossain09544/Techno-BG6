.class public Lcom/android/internal/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final blacklist CACHE_SIZE:I = 0x49

.field public static final blacklist EMPTY_FILE:[Ljava/io/File;

.field private static blacklist sCache:[Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Lcom/android/internal/util/ArrayUtils;->EMPTY_FILE:[Ljava/io/File;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;TT;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 712
    if-nez p0, :cond_7

    .line 713
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 715
    :cond_7
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 716
    return-object p0
.end method

.method public static blacklist add(Ljava/util/ArrayList;ILjava/lang/Object;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;ITT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 754
    if-nez p0, :cond_7

    .line 755
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 757
    :cond_7
    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 758
    return-object p0
.end method

.method public static blacklist add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 746
    if-nez p0, :cond_7

    .line 747
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 749
    :cond_7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    return-object p0
.end method

.method public static blacklist addAll(Landroid/util/ArraySet;Ljava/util/Collection;)Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 724
    if-nez p0, :cond_7

    .line 725
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 727
    :cond_7
    if-eqz p1, :cond_c

    .line 728
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 730
    :cond_c
    return-object p0
.end method

.method public static blacklist appendBooleanDuplicatesAllowed([ZZ)[Z
    .registers 5

    .line 655
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 656
    const/4 p0, 0x1

    new-array p0, p0, [Z

    aput-boolean p1, p0, v0

    return-object p0

    .line 658
    :cond_9
    array-length v1, p0

    .line 659
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Z

    .line 660
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 661
    aput-boolean p1, v2, v1

    .line 662
    return-object v2
.end method

.method public static greylist-max-r appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    .line 502
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;Z)[TT;"
        }
    .end annotation

    .line 513
    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    .line 514
    if-nez p3, :cond_c

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    return-object p1

    .line 515
    :cond_c
    array-length p3, p1

    .line 516
    add-int/lit8 v1, p3, 0x1

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 517
    invoke-static {p1, v0, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, p3

    goto :goto_22

    .line 519
    :cond_1a
    nop

    .line 520
    const/4 p1, 0x1

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 522
    :goto_22
    aput-object p2, p0, v0

    .line 523
    return-object p0
.end method

.method public static greylist appendInt([II)[I
    .registers 3

    .line 578
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([IIZ)[I

    move-result-object p0

    return-object p0
.end method

.method public static blacklist appendInt([IIZ)[I
    .registers 6

    .line 555
    if-nez p0, :cond_7

    .line 556
    filled-new-array {p1}, [I

    move-result-object p0

    return-object p0

    .line 558
    :cond_7
    array-length v0, p0

    .line 559
    const/4 v1, 0x0

    if-nez p2, :cond_16

    .line 560
    move p2, v1

    :goto_c
    if-ge p2, v0, :cond_16

    .line 561
    aget v2, p0, p2

    if-ne v2, p1, :cond_13

    .line 562
    return-object p0

    .line 560
    :cond_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    .line 566
    :cond_16
    add-int/lit8 p2, v0, 0x1

    new-array p2, p2, [I

    .line 567
    invoke-static {p0, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    aput p1, p2, v0

    .line 569
    return-object p2
.end method

.method public static blacklist appendLong([JJ)[J
    .registers 4

    .line 670
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object p0

    return-object p0
.end method

.method public static blacklist appendLong([JJZ)[J
    .registers 8

    .line 633
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 634
    const/4 p0, 0x1

    new-array p0, p0, [J

    aput-wide p1, p0, v0

    return-object p0

    .line 636
    :cond_9
    array-length v1, p0

    .line 637
    if-nez p3, :cond_19

    .line 638
    move p3, v0

    :goto_d
    if-ge p3, v1, :cond_19

    .line 639
    aget-wide v2, p0, p3

    cmp-long v2, v2, p1

    if-nez v2, :cond_16

    .line 640
    return-object p0

    .line 638
    :cond_16
    add-int/lit8 p3, p3, 0x1

    goto :goto_d

    .line 644
    :cond_19
    add-int/lit8 p3, v1, 0x1

    new-array p3, p3, [J

    .line 645
    invoke-static {p0, v0, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 646
    aput-wide p1, p3, v1

    .line 647
    return-object p3
.end method

.method public static blacklist checkBounds(II)V
    .registers 5

    .line 873
    if-ltz p1, :cond_5

    if-le p0, p1, :cond_5

    .line 876
    return-void

    .line 874
    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "; index="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 708
    if-eqz p0, :cond_8

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public static blacklist cloneOrNull([J)[J
    .registers 1

    .line 697
    if-eqz p0, :cond_9

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public static blacklist cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 704
    if-eqz p0, :cond_9

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public static varargs blacklist concat([[B)[B
    .registers 8

    .line 475
    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 476
    new-array p0, v0, [B

    return-object p0

    .line 478
    :cond_6
    nop

    .line 479
    array-length v1, p0

    move v2, v0

    move v3, v2

    :goto_a
    if-ge v2, v1, :cond_15

    aget-object v4, p0, v2

    .line 480
    if-eqz v4, :cond_12

    .line 481
    array-length v4, v4

    add-int/2addr v3, v4

    .line 479
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 484
    :cond_15
    new-array v1, v3, [B

    .line 485
    nop

    .line 486
    array-length v2, p0

    move v3, v0

    move v4, v3

    :goto_1b
    if-ge v3, v2, :cond_2a

    aget-object v5, p0, v3

    .line 487
    if-eqz v5, :cond_27

    .line 488
    array-length v6, v5

    invoke-static {v5, v0, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    array-length v5, v5

    add-int/2addr v4, v5

    .line 486
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 492
    :cond_2a
    return-object v1
.end method

.method public static varargs blacklist concat(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[[TT;)[TT;"
        }
    .end annotation

    .line 431
    if-eqz p1, :cond_3c

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_3c

    .line 435
    :cond_6
    nop

    .line 436
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_b
    if-ge v2, v0, :cond_17

    aget-object v4, p1, v2

    .line 437
    if-nez v4, :cond_12

    .line 438
    goto :goto_14

    .line 441
    :cond_12
    array-length v4, v4

    add-int/2addr v3, v4

    .line 436
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 445
    :cond_17
    if-nez v3, :cond_1e

    .line 446
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 449
    :cond_1e
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 450
    nop

    .line 451
    array-length v0, p1

    move v2, v1

    move v3, v2

    :goto_28
    if-ge v2, v0, :cond_3b

    aget-object v4, p1, v2

    .line 452
    if-eqz v4, :cond_38

    array-length v5, v4

    if-nez v5, :cond_32

    .line 453
    goto :goto_38

    .line 455
    :cond_32
    array-length v5, v4

    invoke-static {v4, v1, p0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    array-length v4, v4

    add-int/2addr v3, v4

    .line 451
    :cond_38
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 458
    :cond_3b
    return-object p0

    .line 432
    :cond_3c
    :goto_3c
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist contains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 774
    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static blacklist contains([CC)Z
    .registers 6

    .line 357
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 358
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget-char v3, p0, v2

    .line 359
    if-ne v3, p1, :cond_e

    .line 360
    const/4 p0, 0x1

    return p0

    .line 358
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 363
    :cond_11
    return v0
.end method

.method public static greylist contains([II)Z
    .registers 6

    .line 337
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 338
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    .line 339
    if-ne v3, p1, :cond_e

    .line 340
    const/4 p0, 0x1

    return p0

    .line 338
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 343
    :cond_11
    return v0
.end method

.method public static blacklist contains([JJ)Z
    .registers 8

    .line 347
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 348
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_13

    aget-wide v3, p0, v2

    .line 349
    cmp-long v3, v3, p1

    if-nez v3, :cond_10

    .line 350
    const/4 p0, 0x1

    return p0

    .line 348
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 353
    :cond_13
    return v0
.end method

.method public static greylist contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 293
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static blacklist containsAll([C[C)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([C[C)Z"
        }
    .end annotation

    .line 370
    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 371
    :cond_4
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_15

    aget-char v4, p1, v3

    .line 372
    invoke-static {p0, v4}, Lcom/android/internal/util/ArrayUtils;->contains([CC)Z

    move-result v4

    if-nez v4, :cond_12

    .line 373
    return v2

    .line 371
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 376
    :cond_15
    return v0
.end method

.method public static blacklist containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    .line 313
    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 314
    :cond_4
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_15

    aget-object v4, p1, v3

    .line 315
    invoke-static {p0, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 316
    return v2

    .line 314
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 319
    :cond_15
    return v0
.end method

.method public static blacklist containsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    .line 326
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 327
    :cond_4
    array-length v1, p1

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_15

    aget-object v3, p1, v2

    .line 328
    invoke-static {p0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 329
    const/4 p0, 0x1

    return p0

    .line 327
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 332
    :cond_15
    return v0
.end method

.method public static blacklist convertToIntArray(Landroid/util/ArraySet;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 404
    new-array v1, v0, [I

    .line 405
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_18

    .line 406
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 405
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 408
    :cond_18
    return-object v1
.end method

.method public static blacklist convertToIntArray(Ljava/util/List;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 394
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 395
    const/4 v1, 0x0

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 396
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 398
    :cond_1c
    return-object v0
.end method

.method public static blacklist convertToLongArray([I)[J
    .registers 5

    .line 412
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 413
    :cond_4
    array-length v0, p0

    new-array v0, v0, [J

    .line 414
    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 415
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 417
    :cond_13
    return-object v0
.end method

.method private static blacklist createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 462
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_9

    .line 463
    sget-object p0, Landroid/util/EmptyArray;->STRING:[Ljava/lang/String;

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    .line 464
    :cond_9
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_10

    .line 465
    sget-object p0, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    return-object p0

    .line 468
    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static blacklist deepToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 982
    if-eqz p0, :cond_8b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 983
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [Z

    if-ne v0, v1, :cond_1b

    .line 984
    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 985
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [B

    if-ne v0, v1, :cond_2a

    .line 986
    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 987
    :cond_2a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [C

    if-ne v0, v1, :cond_39

    .line 988
    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 989
    :cond_39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [D

    if-ne v0, v1, :cond_48

    .line 990
    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 991
    :cond_48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [F

    if-ne v0, v1, :cond_57

    .line 992
    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 993
    :cond_57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [I

    if-ne v0, v1, :cond_66

    .line 994
    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 995
    :cond_66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [J

    if-ne v0, v1, :cond_75

    .line 996
    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 997
    :cond_75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [S

    if-ne v0, v1, :cond_84

    .line 998
    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1000
    :cond_84
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1003
    :cond_8b
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist defeatNullable([I)[I
    .registers 1

    .line 854
    if-eqz p0, :cond_3

    goto :goto_5

    :cond_3
    sget-object p0, Landroid/util/EmptyArray;->INT:[I

    :goto_5
    return-object p0
.end method

.method public static blacklist defeatNullable([Ljava/io/File;)[Ljava/io/File;
    .registers 1

    .line 862
    if-eqz p0, :cond_3

    goto :goto_5

    :cond_3
    sget-object p0, Lcom/android/internal/util/ArrayUtils;->EMPTY_FILE:[Ljava/io/File;

    :goto_5
    return-object p0
.end method

.method public static blacklist defeatNullable([Ljava/lang/String;)[Ljava/lang/String;
    .registers 1

    .line 858
    if-eqz p0, :cond_3

    goto :goto_5

    :cond_3
    sget-object p0, Landroid/util/EmptyArray;->STRING:[Ljava/lang/String;

    :goto_5
    return-object p0
.end method

.method public static greylist emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 190
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_7

    .line 191
    sget-object p0, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    return-object p0

    .line 194
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x49

    .line 195
    sget-object v1, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 197
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_2a

    .line 198
    :cond_21
    const/4 v1, 0x0

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 199
    sget-object p0, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    aput-object v1, p0, v0

    .line 204
    :cond_2a
    check-cast v1, [Ljava/lang/Object;

    return-object v1
.end method

.method public static blacklist emptyIfNull([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 211
    if-eqz p0, :cond_3

    goto :goto_7

    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    :goto_7
    return-object p0
.end method

.method public static blacklist equals([B[BI)Z
    .registers 8

    .line 164
    if-ltz p2, :cond_21

    .line 168
    const/4 v0, 0x1

    if-ne p0, p1, :cond_6

    .line 169
    return v0

    .line 171
    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_20

    if-eqz p1, :cond_20

    array-length v2, p0

    if-lt v2, p2, :cond_20

    array-length v2, p1

    if-ge v2, p2, :cond_12

    goto :goto_20

    .line 174
    :cond_12
    move v2, v1

    :goto_13
    if-ge v2, p2, :cond_1f

    .line 175
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_1c

    .line 176
    return v1

    .line 174
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 179
    :cond_1f
    return v0

    .line 172
    :cond_20
    :goto_20
    return v1

    .line 165
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static blacklist filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 930
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 931
    return-object p0

    .line 934
    :cond_7
    nop

    .line 935
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    .line 936
    new-array v1, v0, [Z

    .line 937
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_11
    if-ge v3, v0, :cond_24

    .line 938
    aget-object v5, p0, v3

    invoke-interface {p2, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v1, v3

    .line 939
    aget-boolean v5, v1, v3

    if-eqz v5, :cond_21

    .line 940
    add-int/lit8 v4, v4, 0x1

    .line 937
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 943
    :cond_24
    array-length p2, p0

    if-ne v4, p2, :cond_28

    .line 944
    return-object p0

    .line 946
    :cond_28
    invoke-interface {p1, v4}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 947
    if-nez v4, :cond_31

    .line 948
    return-object p1

    .line 950
    :cond_31
    nop

    .line 951
    move p2, v2

    :goto_33
    if-ge v2, v0, :cond_43

    .line 952
    aget-boolean v3, v1, v2

    if-eqz v3, :cond_40

    .line 953
    add-int/lit8 v3, p2, 0x1

    aget-object v4, p0, v2

    aput-object v4, p1, p2

    move p2, v3

    .line 951
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 956
    :cond_43
    return-object p1
.end method

.method public static blacklist filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 903
    nop

    .line 904
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    .line 905
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_8
    if-ge v2, v0, :cond_13

    .line 906
    aget-object v4, p0, v2

    if-nez v4, :cond_10

    .line 907
    add-int/lit8 v3, v3, 0x1

    .line 905
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 910
    :cond_13
    if-nez v3, :cond_16

    .line 911
    return-object p0

    .line 913
    :cond_16
    sub-int v2, v0, v3

    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 914
    nop

    .line 915
    move v2, v1

    :goto_20
    if-ge v1, v0, :cond_30

    .line 916
    aget-object v3, p0, v1

    if-eqz v3, :cond_2d

    .line 917
    add-int/lit8 v3, v2, 0x1

    aget-object v4, p0, v1

    aput-object v4, p1, v2

    move v2, v3

    .line 915
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 920
    :cond_30
    return-object p1
.end method

.method public static blacklist find([Ljava/lang/Object;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/Predicate<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 974
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 975
    :cond_8
    array-length v0, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_18

    aget-object v3, p0, v2

    .line 976
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    .line 975
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 978
    :cond_18
    return-object v1
.end method

.method public static blacklist firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .line 1017
    array-length v0, p0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public static blacklist getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)TT;"
        }
    .end annotation

    .line 1013
    if-eqz p0, :cond_8

    array-length v0, p0

    if-le v0, p1, :cond_8

    aget-object p0, p0, p1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return-object p0
.end method

.method public static greylist indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .line 302
    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 303
    :cond_4
    const/4 v1, 0x0

    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 304
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    .line 303
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 306
    :cond_14
    return v0
.end method

.method public static blacklist isEmpty(Ljava/util/Collection;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 218
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static blacklist isEmpty(Ljava/util/Map;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 225
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static blacklist isEmpty([B)Z
    .registers 1

    .line 254
    if-eqz p0, :cond_8

    array-length p0, p0

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static blacklist isEmpty([I)Z
    .registers 1

    .line 240
    if-eqz p0, :cond_8

    array-length p0, p0

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static blacklist isEmpty([J)Z
    .registers 1

    .line 247
    if-eqz p0, :cond_8

    array-length p0, p0

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static greylist isEmpty([Ljava/lang/Object;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 233
    if-eqz p0, :cond_8

    array-length p0, p0

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static blacklist isEmpty([Z)Z
    .registers 1

    .line 261
    if-eqz p0, :cond_8

    array-length p0, p0

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static blacklist newNonMovableByteArray(I)[B
    .registers 3

    .line 103
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static blacklist newNonMovableCharArray(I)[C
    .registers 3

    .line 113
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    return-object p0
.end method

.method public static greylist-max-r newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)[TT;"
        }
    .end annotation

    .line 89
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static blacklist newUnpaddedBooleanArray(I)[Z
    .registers 3

    .line 71
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0
.end method

.method public static blacklist newUnpaddedByteArray(I)[B
    .registers 3

    .line 58
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static blacklist newUnpaddedCharArray(I)[C
    .registers 3

    .line 62
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    return-object p0
.end method

.method public static blacklist newUnpaddedFloatArray(I)[F
    .registers 3

    .line 79
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method public static greylist-max-r newUnpaddedIntArray(I)[I
    .registers 3

    .line 67
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static blacklist newUnpaddedLongArray(I)[J
    .registers 3

    .line 75
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    return-object p0
.end method

.method public static blacklist newUnpaddedObjectArray(I)[Ljava/lang/Object;
    .registers 3

    .line 83
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static blacklist referenceEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "TT;>;)Z"
        }
    .end annotation

    .line 792
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 793
    return v0

    .line 796
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 797
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 798
    const/4 v3, 0x0

    if-eqz p0, :cond_2f

    if-eqz p1, :cond_2f

    if-eq v1, v2, :cond_14

    goto :goto_2f

    .line 802
    :cond_14
    nop

    .line 803
    move v2, v3

    move v4, v2

    :goto_17
    if-ge v2, v1, :cond_2c

    if-nez v4, :cond_2c

    .line 804
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_27

    move v5, v0

    goto :goto_28

    :cond_27
    move v5, v3

    :goto_28
    or-int/2addr v4, v5

    .line 803
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 806
    :cond_2c
    xor-int/lit8 p0, v4, 0x1

    return p0

    .line 799
    :cond_2f
    :goto_2f
    return v3
.end method

.method public static blacklist remove(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;TT;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 734
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 735
    return-object v0

    .line 737
    :cond_4
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 738
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 739
    return-object v0

    .line 741
    :cond_e
    return-object p0
.end method

.method public static blacklist remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 762
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 763
    return-object v0

    .line 765
    :cond_4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 766
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 767
    return-object v0

    .line 769
    :cond_e
    return-object p0
.end method

.method public static greylist-max-r removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    .line 532
    if-eqz p1, :cond_31

    .line 533
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-object p1

    .line 534
    :cond_9
    array-length v0, p1

    .line 535
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_31

    .line 536
    aget-object v3, p1, v2

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 537
    const/4 p2, 0x1

    if-ne v0, p2, :cond_1b

    .line 538
    const/4 p0, 0x0

    return-object p0

    .line 540
    :cond_1b
    add-int/lit8 v3, v0, -0x1

    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 541
    invoke-static {p1, v1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    add-int/lit8 v1, v2, 0x1

    sub-int/2addr v0, v2

    sub-int/2addr v0, p2

    invoke-static {p1, v1, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 543
    return-object p0

    .line 535
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 547
    :cond_31
    return-object p1
.end method

.method public static blacklist removeInt([II)[I
    .registers 6

    .line 585
    if-nez p0, :cond_4

    .line 586
    const/4 p0, 0x0

    return-object p0

    .line 588
    :cond_4
    array-length v0, p0

    .line 589
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_24

    .line 590
    aget v3, p0, v2

    if-ne v3, p1, :cond_21

    .line 591
    add-int/lit8 p1, v0, -0x1

    new-array v3, p1, [I

    .line 592
    if-lez v2, :cond_16

    .line 593
    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    :cond_16
    if-ge v2, p1, :cond_20

    .line 596
    add-int/lit8 p1, v2, 0x1

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    :cond_20
    return-object v3

    .line 589
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 601
    :cond_24
    return-object p0
.end method

.method public static blacklist removeLong([JJ)[J
    .registers 8

    .line 677
    if-nez p0, :cond_4

    .line 678
    const/4 p0, 0x0

    return-object p0

    .line 680
    :cond_4
    array-length v0, p0

    .line 681
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_26

    .line 682
    aget-wide v3, p0, v2

    cmp-long v3, v3, p1

    if-nez v3, :cond_23

    .line 683
    add-int/lit8 p1, v0, -0x1

    new-array p2, p1, [J

    .line 684
    if-lez v2, :cond_18

    .line 685
    invoke-static {p0, v1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 687
    :cond_18
    if-ge v2, p1, :cond_22

    .line 688
    add-int/lit8 p1, v2, 0x1

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 690
    :cond_22
    return-object p2

    .line 681
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 693
    :cond_26
    return-object p0
.end method

.method public static blacklist removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 608
    if-nez p0, :cond_4

    .line 609
    const/4 p0, 0x0

    return-object p0

    .line 611
    :cond_4
    array-length v0, p0

    .line 612
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_28

    .line 613
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 614
    add-int/lit8 p1, v0, -0x1

    new-array v3, p1, [Ljava/lang/String;

    .line 615
    if-lez v2, :cond_1a

    .line 616
    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 618
    :cond_1a
    if-ge v2, p1, :cond_24

    .line 619
    add-int/lit8 p1, v2, 0x1

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 621
    :cond_24
    return-object v3

    .line 612
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 624
    :cond_28
    return-object p0
.end method

.method public static blacklist size(Ljava/util/Collection;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)I"
        }
    .end annotation

    .line 275
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    :goto_8
    return p0
.end method

.method public static blacklist size(Ljava/util/Map;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)I"
        }
    .end annotation

    .line 282
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    :goto_8
    return p0
.end method

.method public static blacklist size([Ljava/lang/Object;)I
    .registers 1

    .line 268
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_5

    :cond_4
    array-length p0, p0

    :goto_5
    return p0
.end method

.method public static blacklist startsWith([B[B)Z
    .registers 6

    .line 960
    const/4 v0, 0x0

    if-eqz p0, :cond_1b

    if-nez p1, :cond_6

    goto :goto_1b

    .line 961
    :cond_6
    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_b

    return v0

    .line 962
    :cond_b
    move v1, v0

    :goto_c
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 963
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_16

    return v0

    .line 962
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 965
    :cond_19
    const/4 p0, 0x1

    return p0

    .line 960
    :cond_1b
    :goto_1b
    return v0
.end method

.method public static blacklist throwsIfOutOfBounds(III)V
    .registers 6

    .line 887
    if-ltz p0, :cond_38

    .line 891
    or-int v0, p1, p2

    if-ltz v0, :cond_b

    sub-int v0, p0, p2

    if-gt p1, v0, :cond_b

    .line 895
    return-void

    .line 892
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "; regionStart="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "; regionLength="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 888
    :cond_38
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Negative length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist toList([Ljava/lang/Object;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1025
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1027
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, p0, v2

    .line 1029
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1031
    :cond_12
    return-object v0
.end method

.method public static blacklist total([J)J
    .registers 7

    .line 380
    nop

    .line 381
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_f

    .line 382
    array-length v2, p0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_f

    aget-wide v4, p0, v3

    .line 383
    add-long/2addr v0, v4

    .line 382
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 386
    :cond_f
    return-wide v0
.end method

.method public static blacklist trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 778
    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 780
    :cond_5
    array-length v0, p0

    if-ne v0, p1, :cond_9

    .line 781
    return-object p0

    .line 783
    :cond_9
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 779
    :cond_e
    :goto_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)I"
        }
    .end annotation

    .line 818
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 819
    return v0

    .line 822
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 823
    nop

    .line 824
    add-int/lit8 v2, v1, -0x1

    move v3, v2

    .line 825
    :goto_c
    if-gt v0, v3, :cond_37

    .line 827
    :goto_e
    if-ge v0, v1, :cond_1d

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 832
    :cond_1d
    :goto_1d
    if-le v3, v0, :cond_2c

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 833
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 836
    :cond_2c
    if-lt v0, v3, :cond_2f

    .line 838
    goto :goto_37

    .line 841
    :cond_2f
    invoke-static {p0, v0, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 842
    add-int/lit8 v0, v0, 0x1

    .line 843
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    .line 847
    :cond_37
    :goto_37
    nop

    :goto_38
    if-lt v2, v0, :cond_40

    .line 848
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 847
    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    .line 850
    :cond_40
    sub-int/2addr v1, v0

    return v1
.end method

.method public static native blacklist zeroize([B)V
.end method

.method public static native blacklist zeroize([C)V
.end method

.method public static blacklist zeroize$ravenwood([B)V
    .registers 2

    .line 136
    if-eqz p0, :cond_6

    .line 137
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 139
    :cond_6
    return-void
.end method

.method public static blacklist zeroize$ravenwood([C)V
    .registers 2

    .line 150
    if-eqz p0, :cond_6

    .line 151
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 153
    :cond_6
    return-void
.end method
