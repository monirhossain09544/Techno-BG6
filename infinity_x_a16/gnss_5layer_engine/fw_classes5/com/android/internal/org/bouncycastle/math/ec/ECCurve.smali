.class public abstract Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
.super Ljava/lang/Object;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;,
        Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;,
        Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;,
        Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;,
        Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;
    }
.end annotation


# static fields
.field public static final blacklist COORD_AFFINE:I = 0x0

.field public static final blacklist COORD_HOMOGENEOUS:I = 0x1

.field public static final blacklist COORD_JACOBIAN:I = 0x2

.field public static final blacklist COORD_JACOBIAN_CHUDNOVSKY:I = 0x3

.field public static final blacklist COORD_JACOBIAN_MODIFIED:I = 0x4

.field public static final blacklist COORD_LAMBDA_AFFINE:I = 0x5

.field public static final blacklist COORD_LAMBDA_PROJECTIVE:I = 0x6

.field public static final blacklist COORD_SKEWED:I = 0x7


# instance fields
.field protected blacklist a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

.field protected blacklist b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

.field protected blacklist cofactor:Ljava/math/BigInteger;

.field protected blacklist coord:I

.field protected blacklist endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

.field protected blacklist field:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

.field protected blacklist multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

.field protected blacklist order:Ljava/math/BigInteger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetNumberOfIterations(II)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getNumberOfIterations(II)I

    move-result p0

    return p0
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;)V
    .registers 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->coord:I

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 109
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    .line 113
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->field:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    .line 114
    return-void
.end method

.method public static blacklist getAllCoordinateSystems()[I
    .registers 1

    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method private static blacklist getNumberOfIterations(II)I
    .registers 6

    .line 1450
    const/16 v0, 0x600

    const/4 v1, 0x4

    const/16 v2, 0x64

    if-lt p0, v0, :cond_17

    .line 1452
    if-gt p1, v2, :cond_b

    const/4 v1, 0x3

    goto :goto_16

    .line 1453
    :cond_b
    const/16 p0, 0x80

    if-gt p1, p0, :cond_10

    goto :goto_16

    .line 1454
    :cond_10
    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    .line 1452
    :goto_16
    return v1

    .line 1456
    :cond_17
    const/16 v0, 0x400

    const/4 v3, 0x5

    if-lt p0, v0, :cond_2d

    .line 1458
    if-gt p1, v2, :cond_1f

    goto :goto_2c

    .line 1459
    :cond_1f
    const/16 p0, 0x70

    if-gt p1, p0, :cond_25

    move v1, v3

    goto :goto_2c

    .line 1460
    :cond_25
    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 v1, p1, 0x5

    .line 1458
    :goto_2c
    return v1

    .line 1462
    :cond_2d
    const/16 v0, 0x200

    const/16 v1, 0x50

    if-lt p0, v0, :cond_41

    .line 1464
    if-gt p1, v1, :cond_36

    goto :goto_40

    .line 1465
    :cond_36
    const/4 v3, 0x7

    if-gt p1, v2, :cond_3a

    goto :goto_40

    .line 1466
    :cond_3a
    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v3, p1

    .line 1464
    :goto_40
    return v3

    .line 1470
    :cond_41
    const/16 p0, 0x28

    if-gt p1, v1, :cond_46

    goto :goto_4c

    .line 1471
    :cond_46
    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    .line 1470
    :goto_4c
    return p0
.end method


# virtual methods
.method protected blacklist checkPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .registers 3

    .line 541
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object p1

    if-ne p0, p1, :cond_9

    .line 545
    return-void

    .line 543
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'point\' must be non-null and on this curve"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected blacklist checkPoints([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .registers 4

    .line 549
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->checkPoints([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)V

    .line 550
    return-void
.end method

.method protected blacklist checkPoints([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)V
    .registers 6

    .line 554
    if-eqz p1, :cond_2e

    .line 558
    if-ltz p2, :cond_26

    if-ltz p3, :cond_26

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_26

    .line 563
    const/4 v0, 0x0

    :goto_b
    if-ge v0, p3, :cond_25

    .line 565
    add-int v1, p2, v0

    aget-object v1, p1, v1

    .line 566
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    if-ne p0, v1, :cond_1a

    goto :goto_22

    .line 568
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'points\' entries must be null or on this curve"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 563
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 571
    :cond_25
    return-void

    .line 560
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid range specified for \'points\'"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 556
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'points\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract blacklist cloneCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
.end method

.method public declared-synchronized blacklist configure()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;
    .registers 5

    monitor-enter p0

    .line 128
    :try_start_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->coord:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;ILcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    .line 128
    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public blacklist createCacheSafeLookupTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;
    .registers 16

    .line 471
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    .line 473
    mul-int v1, p3, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 475
    nop

    .line 476
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_12
    if-ge v3, p3, :cond_4f

    .line 478
    add-int v5, p2, v3

    aget-object v5, p1, v5

    .line 479
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    .line 480
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    .line 482
    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v0, :cond_36

    move v7, v8

    goto :goto_37

    :cond_36
    move v7, v2

    :goto_37
    array-length v9, v6

    sub-int/2addr v9, v7

    .line 483
    array-length v10, v5

    if-le v10, v0, :cond_3d

    goto :goto_3e

    :cond_3d
    move v8, v2

    :goto_3e
    array-length v10, v5

    sub-int/2addr v10, v8

    .line 485
    add-int/2addr v4, v0

    sub-int v11, v4, v9

    invoke-static {v6, v7, v1, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    add-int/2addr v4, v0

    sub-int v6, v4, v10

    invoke-static {v5, v8, v1, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 490
    :cond_4f
    new-instance p1, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;

    invoke-direct {p1, p0, p3, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;II[B)V

    return-object p1
.end method

.method protected blacklist createDefaultMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v0, :cond_10

    .line 156
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;)V

    return-object v0

    .line 159
    :cond_10
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafL2RMultiplier;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafL2RMultiplier;-><init>()V

    return-object v0
.end method

.method public blacklist createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method

.method protected abstract blacklist createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end method

.method protected abstract blacklist createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist decodePoint([B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 9

    .line 386
    nop

    .line 387
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    const/4 v1, 0x7

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    .line 389
    const/4 v2, 0x0

    aget-byte v3, p1, v2

    .line 390
    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_c2

    .line 454
    :pswitch_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid point encoding 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v3, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 437
    :pswitch_2f
    array-length v5, p1

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v4

    if-ne v5, v6, :cond_55

    .line 442
    invoke-static {p1, v4, v0}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v5

    .line 443
    add-int/lit8 v6, v0, 0x1

    invoke-static {p1, v6, v0}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object p1

    .line 445
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-ne v3, v1, :cond_46

    move v2, v4

    :cond_46
    if-ne v0, v2, :cond_4d

    .line 450
    invoke-virtual {p0, v5, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 451
    goto :goto_a8

    .line 447
    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Inconsistent Y coordinate in hybrid encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 439
    :cond_55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incorrect length for hybrid encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 423
    :pswitch_5d
    array-length v1, p1

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v4

    if-ne v1, v2, :cond_72

    .line 428
    invoke-static {p1, v4, v0}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v1

    .line 429
    add-int/lit8 v2, v0, 0x1

    invoke-static {p1, v2, v0}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object p1

    .line 431
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 432
    goto :goto_a8

    .line 425
    :cond_72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incorrect length for uncompressed encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 405
    :pswitch_7a
    array-length v1, p1

    add-int/lit8 v2, v0, 0x1

    if-ne v1, v2, :cond_98

    .line 410
    and-int/lit8 v1, v3, 0x1

    .line 411
    invoke-static {p1, v4, v0}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object p1

    .line 413
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->decompressPoint(ILjava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 414
    invoke-virtual {p1, v4, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->implIsValid(ZZ)Z

    move-result v0

    if-eqz v0, :cond_90

    goto :goto_a8

    .line 416
    :cond_90
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid point"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 407
    :cond_98
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incorrect length for compressed encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 394
    :pswitch_a0
    array-length p1, p1

    if-ne p1, v4, :cond_ba

    .line 399
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 400
    nop

    .line 457
    :goto_a8
    if-eqz v3, :cond_b9

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_b1

    goto :goto_b9

    .line 459
    :cond_b1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid infinity encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 462
    :cond_b9
    :goto_b9
    return-object p1

    .line 396
    :cond_ba
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incorrect length for infinity encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_10
        :pswitch_7a
        :pswitch_7a
        :pswitch_5d
        :pswitch_10
        :pswitch_2f
        :pswitch_2f
    .end packed-switch
.end method

.method protected abstract blacklist decompressPoint(ILjava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist equals(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z
    .registers 4

    .line 575
    if-eq p0, p1, :cond_41

    if-eqz p1, :cond_3f

    .line 577
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 578
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 579
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 p1, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    const/4 p1, 0x1

    .line 575
    :goto_42
    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 584
    if-eq p0, p1, :cond_11

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method public abstract blacklist fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public blacklist getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 334
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public blacklist getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public blacklist getCofactor()Ljava/math/BigInteger;
    .registers 2

    .line 349
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getCoordinateSystem()I
    .registers 2

    .line 354
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->coord:I

    return v0
.end method

.method public blacklist getEndomorphism()Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;
    .registers 2

    .line 361
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    return-object v0
.end method

.method public blacklist getField()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->field:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    return-object v0
.end method

.method public abstract blacklist getFieldSize()I
.end method

.method public abstract blacklist getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist getMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;
    .registers 2

    .line 371
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    if-nez v0, :cond_a

    .line 373
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createDefaultMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    .line 375
    :cond_a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    return-object v0
.end method

.method public blacklist getOrder()Ljava/math/BigInteger;
    .registers 2

    .line 344
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getPreCompInfo(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;
    .registers 4

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->checkPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 172
    monitor-enter p1

    .line 174
    :try_start_4
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 175
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_17

    .line 177
    if-nez v0, :cond_b

    .line 179
    const/4 p1, 0x0

    return-object p1

    .line 182
    :cond_b
    monitor-enter v0

    .line 184
    :try_start_c
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    monitor-exit v0

    return-object p1

    .line 185
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw p1

    .line 175
    :catchall_17
    move-exception p2

    :try_start_18
    monitor-exit p1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p2
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 589
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->hashCode()I

    move-result v0

    .line 590
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    .line 591
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    .line 589
    return v0
.end method

.method public blacklist importPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    .line 230
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-ne p0, v0, :cond_7

    .line 232
    return-object p1

    .line 234
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 240
    :cond_12
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method

.method public abstract blacklist isValidFieldElement(Ljava/math/BigInteger;)Z
.end method

.method public blacklist normalizeAll([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .registers 5

    .line 257
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;IILcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 258
    return-void
.end method

.method public blacklist normalizeAll([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;IILcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 13

    .line 280
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->checkPoints([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)V

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    sparse-switch v0, :sswitch_data_56

    .line 298
    new-array v0, p3, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 299
    new-array v1, p3, [I

    .line 300
    nop

    .line 301
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    goto :goto_1e

    .line 287
    :sswitch_13
    if-nez p4, :cond_16

    .line 291
    return-void

    .line 289
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'iso\' not valid for affine coordinates"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 301
    :goto_1e
    if-ge v3, p3, :cond_3c

    .line 303
    add-int v5, p2, v3

    aget-object v6, p1, v5

    .line 304
    if-eqz v6, :cond_39

    if-nez p4, :cond_2e

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isNormalized()Z

    move-result v7

    if-nez v7, :cond_39

    .line 306
    :cond_2e
    invoke-virtual {v6, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    aput-object v6, v0, v4

    .line 307
    add-int/lit8 v6, v4, 0x1

    aput v5, v1, v4

    move v4, v6

    .line 301
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 311
    :cond_3c
    if-nez v4, :cond_3f

    .line 313
    return-void

    .line 316
    :cond_3f
    invoke-static {v0, v2, v4, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->montgomeryTrick([Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;IILcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 318
    nop

    :goto_43
    if-ge v2, v4, :cond_54

    .line 320
    aget p2, v1, v2

    .line 321
    aget-object p3, p1, p2

    aget-object p4, v0, v2

    invoke-virtual {p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p3

    aput-object p3, p1, p2

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 323
    :cond_54
    return-void

    nop

    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_13
        0x5 -> :sswitch_13
    .end sparse-switch
.end method

.method public blacklist precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;
    .registers 6

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->checkPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 205
    monitor-enter p1

    .line 207
    :try_start_4
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 208
    if-nez v0, :cond_10

    .line 210
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 212
    :cond_10
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_26

    .line 214
    monitor-enter v0

    .line 216
    :try_start_12
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    .line 217
    invoke-interface {p3, p1}, Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object p3

    .line 219
    if-eq p3, p1, :cond_21

    .line 221
    invoke-virtual {v0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_21
    monitor-exit v0

    return-object p3

    .line 225
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_23

    throw p1

    .line 212
    :catchall_26
    move-exception p2

    :try_start_27
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p2
.end method

.method public abstract blacklist randomFieldElement(Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract blacklist randomFieldElementMult(Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public blacklist supportsCoordinateSystem(I)Z
    .registers 2

    .line 164
    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public blacklist validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 138
    return-object p1

    .line 136
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid point coordinates"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
