.class public Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;
.super Ljava/lang/Object;
.source "PlainDSAEncoding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;


# static fields
.field public static final blacklist INSTANCE:Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;->INSTANCE:Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist encodeValue(Ljava/math/BigInteger;Ljava/math/BigInteger;[BII)V
    .registers 8

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;->checkValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 59
    array-length p2, p1

    sub-int/2addr p2, p5

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 60
    array-length v1, p1

    sub-int/2addr v1, p2

    .line 62
    sub-int/2addr p5, v1

    .line 63
    add-int/2addr p5, p4

    invoke-static {p3, p4, p5, v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 64
    invoke-static {p1, p2, p3, p5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    return-void
.end method


# virtual methods
.method protected blacklist checkValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4

    .line 42
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_d

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_d

    .line 47
    return-object p2

    .line 44
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Value out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist decode(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;
    .registers 7

    .line 28
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->getUnsignedByteLength(Ljava/math/BigInteger;)I

    move-result v0

    .line 29
    array-length v1, p2

    mul-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_1b

    .line 34
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/math/BigInteger;

    .line 35
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;->decodeValue(Ljava/math/BigInteger;[BII)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v1, v2

    .line 36
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;->decodeValue(Ljava/math/BigInteger;[BII)Ljava/math/BigInteger;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 34
    return-object v1

    .line 31
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Encoding has incorrect length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected blacklist decodeValue(Ljava/math/BigInteger;[BII)Ljava/math/BigInteger;
    .registers 5

    .line 52
    add-int/2addr p4, p3

    invoke-static {p2, p3, p4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    .line 53
    new-instance p3, Ljava/math/BigInteger;

    const/4 p4, 0x1

    invoke-direct {p3, p4, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;->checkValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public blacklist encode(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .registers 10

    .line 19
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->getUnsignedByteLength(Ljava/math/BigInteger;)I

    move-result v4

    .line 20
    mul-int/lit8 v0, v4, 0x2

    new-array v3, v0, [B

    .line 21
    move v5, v4

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;->encodeValue(Ljava/math/BigInteger;Ljava/math/BigInteger;[BII)V

    .line 22
    move v4, v5

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;->encodeValue(Ljava/math/BigInteger;Ljava/math/BigInteger;[BII)V

    .line 23
    return-object v3
.end method
