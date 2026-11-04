.class Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;
.super Ljava/lang/Object;
.source "Tnaf.java"


# static fields
.field private static final blacklist MINUS_ONE:Ljava/math/BigInteger;

.field private static final blacklist MINUS_THREE:Ljava/math/BigInteger;

.field private static final blacklist MINUS_TWO:Ljava/math/BigInteger;

.field public static final blacklist WIDTH:B = 0x4t

.field public static final blacklist alpha0:[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

.field public static final blacklist alpha0Tnaf:[[B

.field public static final blacklist alpha1:[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

.field public static final blacklist alpha1Tnaf:[[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 30

    .line 17
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    .line 18
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    .line 19
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    .line 37
    const/16 v0, 0x10

    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v5, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v6, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v7, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v8, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v6, v7, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v7, 0x3

    aput-object v6, v1, v7

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-instance v8, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v9, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v10, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v8, v9, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v9, 0x5

    aput-object v8, v1, v9

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-instance v10, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v11, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v12, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v10, v11, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v11, 0x7

    aput-object v10, v1, v11

    const/16 v10, 0x8

    aput-object v3, v1, v10

    new-instance v12, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v13, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v14, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v12, v13, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/16 v13, 0x9

    aput-object v12, v1, v13

    const/16 v12, 0xa

    aput-object v3, v1, v12

    new-instance v14, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    move/from16 v16, v2

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v14, v15, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/16 v2, 0xb

    aput-object v14, v1, v2

    const/16 v14, 0xc

    aput-object v3, v1, v14

    new-instance v15, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    move/from16 v17, v2

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    move-object/from16 v18, v3

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v15, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/16 v2, 0xd

    aput-object v15, v1, v2

    const/16 v3, 0xe

    aput-object v18, v1, v3

    new-instance v15, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    move/from16 v19, v2

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    move/from16 v20, v3

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v15, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/16 v2, 0xf

    aput-object v15, v1, v2

    sput-object v1, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha0:[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    .line 53
    new-array v1, v5, [B

    aput-byte v5, v1, v16

    new-array v3, v7, [B

    fill-array-data v3, :array_15e

    new-array v15, v7, [B

    fill-array-data v15, :array_164

    move/from16 v29, v2

    new-array v2, v6, [B

    fill-array-data v2, :array_16a

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v1

    move-object/from16 v28, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v15

    filled-new-array/range {v21 .. v28}, [[B

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    .line 61
    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    aput-object v18, v0, v16

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v5

    aput-object v18, v0, v4

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v7

    aput-object v18, v0, v6

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v9

    aput-object v18, v0, v8

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v11

    aput-object v18, v0, v10

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v13

    aput-object v18, v0, v12

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v17

    aput-object v18, v0, v14

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v19

    aput-object v18, v0, v20

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v29

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha1:[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    .line 77
    new-array v9, v5, [B

    aput-byte v5, v9, v16

    new-array v11, v7, [B

    fill-array-data v11, :array_170

    new-array v13, v7, [B

    fill-array-data v13, :array_176

    new-array v15, v6, [B

    fill-array-data v15, :array_17c

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    filled-new-array/range {v8 .. v15}, [[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    return-void

    :array_15e
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_164
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_16a
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_170
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_176
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_17c
    .array-data 1
        -0x1t
        0x0t
        0x0t
        -0x1t
    .end array-data
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 8

    .line 291
    add-int/lit8 v0, p4, 0x5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p5

    .line 292
    sub-int v1, p4, v0

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v1, p3

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 294
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 296
    invoke-virtual {p0, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 298
    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 300
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 301
    sub-int/2addr v0, p5

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 302
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 305
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 308
    :cond_31
    new-instance p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-direct {p0, p1, p5}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object p0
.end method

.method public static blacklist getLucas(BIZ)[Ljava/math/BigInteger;
    .registers 8

    .line 454
    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v1, -0x1

    if-ne p0, v1, :cond_7

    goto :goto_f

    .line 456
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 460
    :cond_f
    :goto_f
    if-eqz p2, :cond_19

    .line 462
    sget-object p2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    .line 463
    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_1d

    .line 467
    :cond_19
    sget-object p2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 468
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .line 471
    :goto_1d
    move v2, v0

    :goto_1e
    if-ge v2, p1, :cond_39

    .line 474
    nop

    .line 475
    if-gez p0, :cond_28

    .line 477
    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_29

    .line 475
    :cond_28
    move-object v3, v1

    .line 480
    :goto_29
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 481
    nop

    .line 482
    nop

    .line 471
    add-int/lit8 v2, v2, 0x1

    move-object v4, v1

    move-object v1, p2

    move-object p2, v4

    goto :goto_1e

    .line 485
    :cond_39
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/math/BigInteger;

    const/4 p1, 0x0

    aput-object p2, p0, p1

    aput-object v1, p0, v0

    return-object p0
.end method

.method public static blacklist getMu(I)B
    .registers 1

    .line 435
    if-nez p0, :cond_4

    const/4 p0, -0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x1

    :goto_5
    int-to-byte p0, p0

    return p0
.end method

.method public static blacklist getMu(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;)B
    .registers 2

    .line 415
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 420
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result p0

    if-eqz p0, :cond_12

    .line 422
    const/4 p0, -0x1

    return p0

    .line 425
    :cond_12
    const/4 p0, 0x1

    return p0

    .line 417
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No Koblitz curve (ABC), TNAF multiplication not possible"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getMu(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)B
    .registers 1

    .line 430
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, -0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    int-to-byte p0, p0

    return p0
.end method

.method public static blacklist getPreComp(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;B)[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 8

    .line 813
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 814
    if-nez p1, :cond_b

    sget-object p1, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    goto :goto_d

    :cond_b
    sget-object p1, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    .line 816
    :goto_d
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 817
    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 819
    array-length v2, p1

    .line 820
    const/4 v3, 0x3

    :goto_19
    if-ge v3, v2, :cond_28

    .line 822
    ushr-int/lit8 v4, v3, 0x1

    aget-object v5, p1, v3

    invoke-static {p0, v0, v5}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v5

    aput-object v5, v1, v4

    .line 820
    add-int/lit8 v3, v3, 0x2

    goto :goto_19

    .line 825
    :cond_28
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 827
    return-object v1
.end method

.method protected static blacklist getShiftsForCofactor(Ljava/math/BigInteger;)I
    .registers 2

    .line 558
    if-eqz p0, :cond_16

    .line 560
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 562
    const/4 p0, 0x1

    return p0

    .line 564
    :cond_c
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 566
    const/4 p0, 0x2

    return p0

    .line 570
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "h (Cofactor) must be 2 or 4"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getSi(IILjava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 6

    .line 540
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v0

    .line 541
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getShiftsForCofactor(Ljava/math/BigInteger;)I

    move-result p2

    .line 542
    add-int/lit8 p0, p0, 0x3

    sub-int/2addr p0, p1

    .line 543
    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object p0

    .line 544
    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 546
    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, p0, p1

    .line 547
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, p0, v1

    .line 550
    :cond_23
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 551
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object p0, p0, p1

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    .line 553
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/math/BigInteger;

    aput-object v0, p2, p1

    aput-object p0, p2, v1

    return-object p2
.end method

.method public static blacklist getSi(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;)[Ljava/math/BigInteger;
    .registers 3

    .line 530
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 535
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getCofactor()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getSi(IILjava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 532
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "si is defined for Koblitz curves only"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getTw(BI)Ljava/math/BigInteger;
    .registers 5

    .line 498
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_14

    .line 500
    if-ne p0, v1, :cond_d

    .line 502
    const-wide/16 p0, 0x6

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 507
    :cond_d
    const-wide/16 p0, 0xa

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 513
    :cond_14
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object p0

    .line 514
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 515
    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 516
    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist multiplyFromTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 8

    .line 681
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 682
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 683
    nop

    .line 684
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ltz v1, :cond_2c

    .line 686
    add-int/lit8 v3, v3, 0x1

    .line 687
    aget-byte v4, p2, v1

    .line 688
    if-eqz v4, :cond_29

    .line 690
    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v0

    .line 691
    nop

    .line 693
    if-lez v4, :cond_21

    move-object v3, p0

    goto :goto_22

    :cond_21
    move-object v3, p1

    .line 694
    :goto_22
    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move v3, v2

    .line 684
    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 697
    :cond_2c
    if-lez v3, :cond_32

    .line 699
    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v0

    .line 701
    :cond_32
    return-object v0
.end method

.method public static blacklist multiplyRTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 6

    .line 642
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 643
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 644
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v2

    .line 646
    int-to-byte v1, v1

    const/16 v3, 0xa

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->partModReduction(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;Ljava/math/BigInteger;BBB)Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    move-result-object p1

    .line 648
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->multiplyTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist multiplyTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 4

    .line 662
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 663
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 664
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getMu(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)B

    move-result v0

    .line 665
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->tauAdicNaf(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object p1

    .line 667
    invoke-static {p0, v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist norm(BLcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 5

    .line 134
    invoke-virtual {p1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    .line 137
    invoke-virtual {p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p1

    .line 140
    invoke-virtual {p2, p2}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->shiftLeft(I)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p2

    .line 142
    if-ne p0, v1, :cond_1c

    .line 144
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    goto :goto_27

    .line 146
    :cond_1c
    const/4 v1, -0x1

    if-ne p0, v1, :cond_28

    .line 148
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    .line 155
    :goto_27
    return-object p0

    .line 152
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist norm(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;
    .registers 5

    .line 92
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 100
    const/4 v1, 0x1

    if-ne p0, v1, :cond_22

    .line 103
    iget-object p0, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    iget-object v1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 105
    :cond_22
    const/4 v2, -0x1

    if-ne p0, v2, :cond_3c

    .line 108
    iget-object p0, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    iget-object v1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 112
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist partModReduction(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;Ljava/math/BigInteger;BBB)Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;
    .registers 15

    .line 588
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v4

    .line 589
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getSi()[Ljava/math/BigInteger;

    move-result-object v6

    .line 593
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne p3, v8, :cond_16

    .line 595
    aget-object v0, v6, v7

    aget-object v1, v6, v8

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object v9, v0

    goto :goto_1f

    .line 599
    :cond_16
    aget-object v0, v6, v7

    aget-object v1, v6, v8

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object v9, v0

    .line 603
    :goto_1f
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 608
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 609
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getCofactor()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 608
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    move-object v2, p0

    goto :goto_4a

    .line 613
    :cond_43
    invoke-static {p3, v4, v8}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object p0

    .line 614
    aget-object p0, p0, v8

    move-object v2, p0

    .line 617
    :goto_4a
    aget-object v1, v6, v7

    move-object v0, p1

    move v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    .line 618
    aget-object v1, v6, v8

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p1

    .line 620
    invoke-static {p0, p1, p3}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->round(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;B)Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    move-result-object p0

    .line 623
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v9, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    aget-object p2, v6, v8

    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 624
    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p2

    .line 623
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 627
    aget-object p2, v6, v8

    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    aget-object p3, v6, v7

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {p3, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 629
    new-instance p2, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {p2, p1, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2
.end method

.method public static blacklist round(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;B)Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;
    .registers 10

    .line 174
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v0

    .line 175
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v1

    if-ne v1, v0, :cond_b3

    .line 181
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_19

    if-ne p2, v0, :cond_11

    goto :goto_19

    .line 183
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 186
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v2

    .line 187
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v3

    .line 189
    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    .line 190
    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p1

    .line 193
    invoke-virtual {p0, p0}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    .line 194
    if-ne p2, v1, :cond_34

    .line 196
    invoke-virtual {v4, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    goto :goto_38

    .line 201
    :cond_34
    invoke-virtual {v4, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    .line 206
    :goto_38
    invoke-virtual {p1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    .line 207
    invoke-virtual {v5, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p1

    .line 210
    if-ne p2, v1, :cond_4f

    .line 212
    invoke-virtual {p0, v5}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    goto :goto_57

    .line 218
    :cond_4f
    invoke-virtual {p0, v5}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    .line 222
    :goto_57
    nop

    .line 223
    nop

    .line 226
    sget-object p1, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    const/4 v6, 0x0

    if-ltz p1, :cond_6c

    .line 228
    sget-object p1, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_6b

    .line 230
    goto :goto_75

    .line 234
    :cond_6b
    goto :goto_79

    .line 240
    :cond_6c
    sget-object p1, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-ltz p1, :cond_78

    .line 242
    nop

    .line 247
    :goto_75
    move v1, v6

    move v6, p2

    goto :goto_79

    .line 240
    :cond_78
    move v1, v6

    .line 247
    :goto_79
    sget-object p1, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_8e

    .line 249
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, p0}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_8d

    .line 251
    neg-int p0, p2

    int-to-byte v6, p0

    move v0, v1

    goto :goto_9b

    .line 255
    :cond_8d
    goto :goto_9b

    .line 261
    :cond_8e
    sget-object p1, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_9a

    .line 263
    neg-int p0, p2

    int-to-byte v6, p0

    move v0, v1

    goto :goto_9b

    .line 261
    :cond_9a
    move v0, v1

    .line 267
    :goto_9b
    int-to-long p0, v0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 268
    int-to-long p1, v6

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 269
    new-instance p2, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {p2, p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    .line 177
    :cond_b3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lambda0 and lambda1 do not have same scale"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist tau(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 1

    .line 400
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tau()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tauAdicNaf(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)[B
    .registers 11

    .line 321
    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v1, -0x1

    if-ne p0, v1, :cond_7

    goto :goto_f

    .line 323
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 326
    :cond_f
    :goto_f
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->norm(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v1

    .line 329
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 332
    const/16 v2, 0x1e

    if-le v1, v2, :cond_1e

    add-int/lit8 v1, v1, 0x4

    goto :goto_20

    :cond_1e
    const/16 v1, 0x22

    .line 335
    :goto_20
    new-array v1, v1, [B

    .line 336
    nop

    .line 339
    nop

    .line 341
    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 342
    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 344
    :goto_2b
    sget-object v6, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    sget-object v6, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c

    goto :goto_43

    .line 384
    :cond_3c
    add-int/2addr v4, v0

    .line 387
    new-array p0, v4, [B

    .line 388
    invoke-static {v1, v3, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    return-object p0

    .line 347
    :cond_43
    :goto_43
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 349
    sget-object v4, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v7, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    .line 352
    aget-byte v4, v1, v5

    if-ne v4, v0, :cond_6d

    .line 354
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_73

    .line 359
    :cond_6d
    sget-object v4, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 361
    :goto_73
    move v4, v5

    goto :goto_77

    .line 365
    :cond_75
    aput-byte v3, v1, v5

    .line 368
    :goto_77
    nop

    .line 369
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 370
    if-ne p0, v0, :cond_83

    .line 372
    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_87

    .line 377
    :cond_83
    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 380
    :goto_87
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    .line 381
    add-int/lit8 v5, v5, 0x1

    .line 382
    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    goto :goto_2b
.end method

.method public static blacklist tauAdicWNaf(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;II[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)[B
    .registers 22

    .line 720
    move/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_13

    const/4 v3, -0x1

    if-ne v0, v3, :cond_b

    goto :goto_13

    .line 722
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_13
    :goto_13
    invoke-static/range {p0 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->norm(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v3

    .line 728
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 731
    const/16 v4, 0x1e

    if-le v3, v4, :cond_24

    add-int/lit8 v3, v3, 0x4

    add-int v3, v3, p2

    goto :goto_26

    :cond_24
    add-int/lit8 v3, p2, 0x22

    .line 734
    :goto_26
    new-array v3, v3, [B

    .line 736
    shl-int v4, v2, p2

    .line 737
    sub-int/2addr v4, v2

    .line 738
    rsub-int/lit8 v5, p2, 0x20

    .line 741
    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 742
    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 743
    const/4 v7, 0x0

    move v8, v7

    .line 746
    :goto_33
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    const/16 v10, 0x3e

    if-gt v9, v10, :cond_87

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    if-le v9, v10, :cond_42

    goto :goto_87

    .line 772
    :cond_42
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->longValueExact(Ljava/math/BigInteger;)J

    move-result-wide v6

    .line 773
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->longValueExact(Ljava/math/BigInteger;)J

    move-result-wide v9

    .line 776
    :goto_4a
    or-long v11, v6, v9

    const-wide/16 v13, 0x0

    cmp-long v1, v11, v13

    if-eqz v1, :cond_86

    .line 778
    const-wide/16 v11, 0x1

    and-long/2addr v11, v6

    cmp-long v1, v11, v13

    if-eqz v1, :cond_79

    .line 780
    long-to-int v1, v6

    long-to-int v11, v9

    mul-int v11, v11, p3

    add-int/2addr v1, v11

    .line 781
    and-int v11, v1, v4

    .line 783
    shl-int/2addr v1, v5

    shr-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v3, v8

    .line 784
    aget-object v1, p4, v11

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    int-to-long v12, v1

    sub-long/2addr v6, v12

    .line 785
    aget-object v1, p4, v11

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    int-to-long v11, v1

    sub-long/2addr v9, v11

    .line 788
    :cond_79
    add-int/lit8 v8, v8, 0x1

    .line 790
    shr-long/2addr v6, v2

    .line 791
    if-ne v0, v2, :cond_80

    .line 793
    add-long/2addr v9, v6

    goto :goto_81

    .line 797
    :cond_80
    sub-long/2addr v9, v6

    .line 799
    :goto_81
    neg-long v6, v6

    .line 800
    move-wide v15, v9

    move-wide v9, v6

    move-wide v6, v15

    goto :goto_4a

    .line 802
    :cond_86
    return-object v3

    .line 748
    :cond_87
    :goto_87
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-eqz v9, :cond_af

    .line 750
    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    mul-int v10, v10, p3

    add-int/2addr v9, v10

    .line 751
    and-int v10, v9, v4

    .line 753
    shl-int/2addr v9, v5

    shr-int/2addr v9, v5

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 754
    aget-object v9, p4, v10

    iget-object v9, v9, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 755
    aget-object v9, p4, v10

    iget-object v9, v9, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v1, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 758
    :cond_af
    add-int/lit8 v8, v8, 0x1

    .line 760
    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 761
    if-ne v0, v2, :cond_bc

    .line 763
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_c0

    .line 767
    :cond_bc
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 769
    :goto_c0
    invoke-virtual {v6}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    .line 770
    move-object v15, v6

    move-object v6, v1

    move-object v1, v15

    goto/16 :goto_33
.end method
