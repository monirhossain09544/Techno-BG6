.class public abstract Lcom/android/internal/org/bouncycastle/math/Primes;
.super Ljava/lang/Object;
.source "Primes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;,
        Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
    }
.end annotation


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;

.field public static final blacklist SMALL_FACTOR_LIMIT:I = 0xd3

.field private static final blacklist THREE:Ljava/math/BigInteger;

.field private static final blacklist TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 19
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    .line 20
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    .line 21
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V
    .registers 4

    .line 360
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_11

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_11

    .line 364
    return-void

    .line 362
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' must be non-null and >= 2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist enhancedMRProbablePrimeTest(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
    .registers 14

    .line 156
    const-string v0, "candidate"

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 158
    if-eqz p1, :cond_d3

    .line 162
    const/4 v0, 0x1

    if-lt p2, v0, :cond_cb

    .line 167
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    .line 169
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprobablyPrime()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0

    .line 171
    :cond_16
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_24

    .line 173
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprovablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0

    .line 176
    :cond_24
    nop

    .line 177
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 178
    sget-object v3, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 180
    invoke-virtual {v2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v4

    .line 181
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 183
    move v6, v1

    :goto_3a
    if-ge v6, p2, :cond_c6

    .line 185
    sget-object v7, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v7, v3, p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    .line 186
    invoke-virtual {v7, p0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 188
    sget-object v9, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-lez v9, :cond_53

    .line 190
    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprovablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0

    .line 193
    :cond_53
    invoke-virtual {v7, v5, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 195
    sget-object v8, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c2

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_66

    .line 197
    goto :goto_c2

    .line 200
    :cond_66
    nop

    .line 202
    nop

    .line 203
    move v8, v0

    :goto_69
    if-ge v8, v4, :cond_89

    .line 205
    sget-object v9, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v7, v9, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 207
    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7a

    .line 209
    nop

    .line 210
    move v8, v0

    goto :goto_8b

    .line 213
    :cond_7a
    sget-object v10, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_84

    .line 215
    move v8, v1

    goto :goto_8b

    .line 218
    :cond_84
    nop

    .line 203
    add-int/lit8 v8, v8, 0x1

    move-object v7, v9

    goto :goto_69

    :cond_89
    move v8, v1

    move-object v9, v7

    .line 221
    :goto_8b
    if-nez v8, :cond_c2

    .line 223
    sget-object p1, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a6

    .line 225
    nop

    .line 226
    sget-object p1, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v9, p1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 228
    sget-object p1, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a5

    .line 230
    goto :goto_a6

    .line 228
    :cond_a5
    move-object v7, v9

    .line 234
    :cond_a6
    :goto_a6
    sget-object p1, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 236
    sget-object p1, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-lez p1, :cond_bd

    .line 238
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprovablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0

    .line 241
    :cond_bd
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprovablyCompositeNotPrimePower()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0

    .line 183
    :cond_c2
    :goto_c2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3a

    .line 245
    :cond_c6
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprobablyPrime()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0

    .line 164
    :cond_cb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'iterations\' must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_d3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'random\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist extract32([B)I
    .registers 6

    .line 589
    nop

    .line 591
    const/4 v0, 0x4

    array-length v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 592
    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_1a

    .line 594
    array-length v3, p0

    add-int/lit8 v4, v1, 0x1

    sub-int/2addr v3, v4

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 595
    mul-int/lit8 v1, v1, 0x8

    shl-int v1, v3, v1

    or-int/2addr v2, v1

    .line 592
    move v1, v4

    goto :goto_9

    .line 598
    :cond_1a
    return v2
.end method

.method public static blacklist generateSTRandomPrime(Lcom/android/internal/org/bouncycastle/crypto/Digest;I[B)Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;
    .registers 4

    .line 122
    if-eqz p0, :cond_23

    .line 126
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1b

    .line 130
    if-eqz p2, :cond_13

    array-length v0, p2

    if-eqz v0, :cond_13

    .line 135
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/Primes;->implSTRandomPrime(Lcom/android/internal/org/bouncycastle/crypto/Digest;I[B)Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;

    move-result-object p0

    return-object p0

    .line 132
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'inputSeed\' cannot be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'length\' must be >= 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 124
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'hash\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist hasAnySmallFactors(Ljava/math/BigInteger;)Z
    .registers 2

    .line 259
    const-string v0, "candidate"

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 261
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result p0

    return p0
.end method

.method private static blacklist hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V
    .registers 6

    .line 603
    const/4 v0, 0x0

    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 604
    invoke-interface {p0, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 605
    return-void
.end method

.method private static blacklist hashGen(Lcom/android/internal/org/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;
    .registers 8

    .line 609
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    .line 610
    mul-int v1, p2, v0

    .line 611
    new-array v2, v1, [B

    .line 612
    const/4 v3, 0x0

    :goto_9
    const/4 v4, 0x1

    if-ge v3, p2, :cond_16

    .line 614
    sub-int/2addr v1, v0

    .line 615
    invoke-static {p0, p1, v2, v1}, Lcom/android/internal/org/bouncycastle/math/Primes;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 616
    invoke-static {p1, v4}, Lcom/android/internal/org/bouncycastle/math/Primes;->inc([BI)V

    .line 612
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 618
    :cond_16
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method private static blacklist implHasAnySmallFactors(Ljava/math/BigInteger;)Z
    .registers 4

    .line 371
    nop

    .line 372
    const v0, 0xd4c2086

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 373
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_183

    rem-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_183

    rem-int/lit8 v1, v0, 0x5

    if-eqz v1, :cond_183

    rem-int/lit8 v1, v0, 0x7

    if-eqz v1, :cond_183

    rem-int/lit8 v1, v0, 0xb

    if-eqz v1, :cond_183

    rem-int/lit8 v1, v0, 0xd

    if-eqz v1, :cond_183

    rem-int/lit8 v1, v0, 0x11

    if-eqz v1, :cond_183

    rem-int/lit8 v1, v0, 0x13

    if-eqz v1, :cond_183

    rem-int/lit8 v0, v0, 0x17

    if-nez v0, :cond_38

    goto/16 :goto_183

    .line 379
    :cond_38
    nop

    .line 380
    const v0, 0x37ed0ed

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 381
    rem-int/lit8 v1, v0, 0x1d

    if-eqz v1, :cond_182

    rem-int/lit8 v1, v0, 0x1f

    if-eqz v1, :cond_182

    rem-int/lit8 v1, v0, 0x25

    if-eqz v1, :cond_182

    rem-int/lit8 v1, v0, 0x29

    if-eqz v1, :cond_182

    rem-int/lit8 v0, v0, 0x2b

    if-nez v0, :cond_5f

    goto/16 :goto_182

    .line 386
    :cond_5f
    nop

    .line 387
    const v0, 0x23cd611f

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 388
    rem-int/lit8 v1, v0, 0x2f

    if-eqz v1, :cond_181

    rem-int/lit8 v1, v0, 0x35

    if-eqz v1, :cond_181

    rem-int/lit8 v1, v0, 0x3b

    if-eqz v1, :cond_181

    rem-int/lit8 v1, v0, 0x3d

    if-eqz v1, :cond_181

    rem-int/lit8 v0, v0, 0x43

    if-nez v0, :cond_86

    goto/16 :goto_181

    .line 393
    :cond_86
    nop

    .line 394
    const v0, 0x20691a3

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 395
    rem-int/lit8 v1, v0, 0x47

    if-eqz v1, :cond_180

    rem-int/lit8 v1, v0, 0x49

    if-eqz v1, :cond_180

    rem-int/lit8 v1, v0, 0x4f

    if-eqz v1, :cond_180

    rem-int/lit8 v0, v0, 0x53

    if-nez v0, :cond_a9

    goto/16 :goto_180

    .line 400
    :cond_a9
    nop

    .line 401
    const v0, 0x55a60cb

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 402
    rem-int/lit8 v1, v0, 0x59

    if-eqz v1, :cond_17f

    rem-int/lit8 v1, v0, 0x61

    if-eqz v1, :cond_17f

    rem-int/lit8 v1, v0, 0x65

    if-eqz v1, :cond_17f

    rem-int/lit8 v0, v0, 0x67

    if-nez v0, :cond_cc

    goto/16 :goto_17f

    .line 407
    :cond_cc
    nop

    .line 408
    const v0, 0x9f9f361

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 409
    rem-int/lit8 v1, v0, 0x6b

    if-eqz v1, :cond_17e

    rem-int/lit8 v1, v0, 0x6d

    if-eqz v1, :cond_17e

    rem-int/lit8 v1, v0, 0x71

    if-eqz v1, :cond_17e

    rem-int/lit8 v0, v0, 0x7f

    if-nez v0, :cond_ef

    goto/16 :goto_17e

    .line 414
    :cond_ef
    nop

    .line 415
    const v0, 0x1627b25d

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 416
    rem-int/lit16 v1, v0, 0x83

    if-eqz v1, :cond_17d

    rem-int/lit16 v1, v0, 0x89

    if-eqz v1, :cond_17d

    rem-int/lit16 v1, v0, 0x8b

    if-eqz v1, :cond_17d

    rem-int/lit16 v0, v0, 0x95

    if-nez v0, :cond_112

    goto/16 :goto_17d

    .line 421
    :cond_112
    nop

    .line 422
    const v0, 0x2676ed77

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 423
    rem-int/lit16 v1, v0, 0x97

    if-eqz v1, :cond_17c

    rem-int/lit16 v1, v0, 0x9d

    if-eqz v1, :cond_17c

    rem-int/lit16 v1, v0, 0xa3

    if-eqz v1, :cond_17c

    rem-int/lit16 v0, v0, 0xa7

    if-nez v0, :cond_134

    goto :goto_17c

    .line 428
    :cond_134
    nop

    .line 429
    const v0, 0x3fcf739d

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 430
    rem-int/lit16 v1, v0, 0xad

    if-eqz v1, :cond_17b

    rem-int/lit16 v1, v0, 0xb3

    if-eqz v1, :cond_17b

    rem-int/lit16 v1, v0, 0xb5

    if-eqz v1, :cond_17b

    rem-int/lit16 v0, v0, 0xbf

    if-nez v0, :cond_156

    goto :goto_17b

    .line 435
    :cond_156
    nop

    .line 436
    const v0, 0x5f281a99

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    .line 437
    rem-int/lit16 v0, p0, 0xc1

    if-eqz v0, :cond_17a

    rem-int/lit16 v0, p0, 0xc5

    if-eqz v0, :cond_17a

    rem-int/lit16 v0, p0, 0xc7

    if-eqz v0, :cond_17a

    rem-int/lit16 p0, p0, 0xd3

    if-nez p0, :cond_178

    goto :goto_17a

    .line 446
    :cond_178
    const/4 p0, 0x0

    return p0

    .line 439
    :cond_17a
    :goto_17a
    return v2

    .line 432
    :cond_17b
    :goto_17b
    return v2

    .line 425
    :cond_17c
    :goto_17c
    return v2

    .line 418
    :cond_17d
    :goto_17d
    return v2

    .line 411
    :cond_17e
    :goto_17e
    return v2

    .line 404
    :cond_17f
    :goto_17f
    return v2

    .line 397
    :cond_180
    :goto_180
    return v2

    .line 390
    :cond_181
    :goto_181
    return v2

    .line 383
    :cond_182
    :goto_182
    return v2

    .line 376
    :cond_183
    :goto_183
    return v2
.end method

.method private static blacklist implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z
    .registers 8

    .line 451
    invoke-virtual {p4, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 453
    sget-object p4, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_35

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_14

    goto :goto_35

    .line 458
    :cond_14
    nop

    .line 460
    move p4, v0

    :goto_16
    const/4 v1, 0x0

    if-ge p4, p3, :cond_33

    .line 462
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p2, v2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 464
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 466
    nop

    .line 467
    goto :goto_34

    .line 470
    :cond_27
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 472
    return v1

    .line 460
    :cond_30
    add-int/lit8 p4, p4, 0x1

    goto :goto_16

    :cond_33
    move v0, v1

    .line 476
    :goto_34
    return v0

    .line 455
    :cond_35
    :goto_35
    return v0
.end method

.method private static blacklist implSTRandomPrime(Lcom/android/internal/org/bouncycastle/crypto/Digest;I[B)Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;
    .registers 19

    .line 481
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    .line 483
    const/16 v4, 0x21

    const-string v5, "Too many iterations in Shawe-Taylor Random_Prime Routine"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v1, v4, :cond_5d

    .line 485
    nop

    .line 487
    new-array v4, v3, [B

    .line 488
    new-array v3, v3, [B

    move v9, v7

    .line 492
    :goto_19
    invoke-static {v0, v2, v4, v7}, Lcom/android/internal/org/bouncycastle/math/Primes;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 493
    invoke-static {v2, v8}, Lcom/android/internal/org/bouncycastle/math/Primes;->inc([BI)V

    .line 495
    invoke-static {v0, v2, v3, v7}, Lcom/android/internal/org/bouncycastle/math/Primes;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 496
    invoke-static {v2, v8}, Lcom/android/internal/org/bouncycastle/math/Primes;->inc([BI)V

    .line 498
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/math/Primes;->extract32([B)I

    move-result v10

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/math/Primes;->extract32([B)I

    move-result v11

    xor-int/2addr v10, v11

    .line 499
    rsub-int/lit8 v11, v1, 0x20

    const/4 v12, -0x1

    ushr-int v11, v12, v11

    and-int/2addr v10, v11

    .line 500
    add-int/lit8 v11, v1, -0x1

    shl-int v11, v8, v11

    or-int/2addr v11, v8

    or-int/2addr v10, v11

    .line 502
    add-int/2addr v9, v8

    .line 504
    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    .line 505
    invoke-static {v10, v11}, Lcom/android/internal/org/bouncycastle/math/Primes;->isPrime32(J)Z

    move-result v12

    if-eqz v12, :cond_52

    .line 507
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, v2, v9, v6}, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BILcom/android/internal/org/bouncycastle/math/Primes-IA;)V

    return-object v0

    .line 510
    :cond_52
    mul-int/lit8 v10, v1, 0x4

    if-gt v9, v10, :cond_57

    .line 514
    goto :goto_19

    .line 512
    :cond_57
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_5d
    add-int/lit8 v4, v1, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v0, v4, v2}, Lcom/android/internal/org/bouncycastle/math/Primes;->implSTRandomPrime(Lcom/android/internal/org/bouncycastle/crypto/Digest;I[B)Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;

    move-result-object v2

    .line 519
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->getPrime()Ljava/math/BigInteger;

    move-result-object v4

    .line 520
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->getPrimeSeed()[B

    move-result-object v9

    .line 521
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->getPrimeGenCounter()I

    move-result v2

    .line 523
    mul-int/lit8 v3, v3, 0x8

    .line 524
    add-int/lit8 v10, v1, -0x1

    div-int v3, v10, v3

    .line 526
    nop

    .line 528
    add-int/2addr v3, v8

    invoke-static {v0, v9, v3}, Lcom/android/internal/org/bouncycastle/math/Primes;->hashGen(Lcom/android/internal/org/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;

    move-result-object v11

    .line 529
    sget-object v12, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v11

    .line 531
    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    .line 532
    sget-object v13, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    sget-object v13, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    .line 533
    nop

    .line 535
    invoke-virtual {v11, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    move v14, v2

    move v15, v7

    .line 543
    :goto_b0
    invoke-virtual {v13}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    if-le v7, v1, :cond_da

    .line 545
    sget-object v7, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v11, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v11, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    .line 546
    invoke-virtual {v11, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v13, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 549
    :cond_da
    add-int/2addr v14, v8

    .line 557
    invoke-static {v13}, Lcom/android/internal/org/bouncycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v7

    if-nez v7, :cond_130

    .line 559
    invoke-static {v0, v9, v3}, Lcom/android/internal/org/bouncycastle/math/Primes;->hashGen(Lcom/android/internal/org/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;

    move-result-object v7

    .line 560
    sget-object v8, Lcom/android/internal/org/bouncycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v13, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v8, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 562
    move-object/from16 p2, v7

    int-to-long v6, v15

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 563
    nop

    .line 565
    move-object/from16 v7, p2

    invoke-virtual {v7, v6, v13}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 567
    sget-object v11, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    sget-object v15, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v11, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12c

    invoke-virtual {v7, v4, v13}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v11, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12c

    .line 569
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;

    const/4 v8, 0x0

    invoke-direct {v0, v13, v9, v14, v8}, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BILcom/android/internal/org/bouncycastle/math/Primes-IA;)V

    return-object v0

    .line 567
    :cond_12c
    const/4 v8, 0x0

    .line 571
    move-object v11, v6

    const/4 v15, 0x0

    goto :goto_134

    .line 574
    :cond_130
    move-object v8, v6

    invoke-static {v9, v3}, Lcom/android/internal/org/bouncycastle/math/Primes;->inc([BI)V

    .line 577
    :goto_134
    mul-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v2

    if-ge v14, v6, :cond_144

    .line 582
    add-int/lit8 v15, v15, 0x2

    .line 583
    invoke-virtual {v13, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    move-object v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_b0

    .line 579
    :cond_144
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist inc([BI)V
    .registers 4

    .line 623
    array-length v0, p0

    .line 624
    :goto_1
    if-lez p1, :cond_12

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_12

    .line 626
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    add-int/2addr p1, v1

    .line 627
    int-to-byte v1, p1

    aput-byte v1, p0, v0

    .line 628
    ushr-int/lit8 p1, p1, 0x8

    goto :goto_1

    .line 630
    :cond_12
    return-void
.end method

.method public static blacklist isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z
    .registers 11

    .line 282
    const-string v0, "candidate"

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 284
    if-eqz p1, :cond_4b

    .line 288
    const/4 v0, 0x1

    if-lt p2, v0, :cond_43

    .line 293
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    .line 295
    return v0

    .line 297
    :cond_12
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 299
    return v1

    .line 302
    :cond_1a
    nop

    .line 303
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 304
    sget-object v3, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 306
    invoke-virtual {v2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v4

    .line 307
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 309
    move v6, v1

    :goto_30
    if-ge v6, p2, :cond_42

    .line 311
    sget-object v7, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v7, v3, p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    .line 313
    invoke-static {p0, v2, v5, v4, v7}, Lcom/android/internal/org/bouncycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    move-result v7

    if-nez v7, :cond_3f

    .line 315
    return v1

    .line 309
    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 319
    :cond_42
    return v0

    .line 290
    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'iterations\' must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 286
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'random\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist isMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .registers 5

    .line 336
    const-string v0, "candidate"

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 337
    const-string v0, "base"

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_33

    .line 344
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    .line 346
    const/4 p0, 0x1

    return p0

    .line 349
    :cond_1f
    nop

    .line 350
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v1

    .line 353
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 355
    invoke-static {p0, v0, v2, v1, p1}, Lcom/android/internal/org/bouncycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    move-result p0

    return p0

    .line 341
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'base\' must be < (\'candidate\' - 1)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist isPrime32(J)Z
    .registers 15

    .line 634
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_61

    .line 643
    const-wide/16 v0, 0x5

    cmp-long v4, p0, v0

    const-wide/16 v5, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gtz v4, :cond_22

    .line 645
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-eqz v0, :cond_20

    cmp-long p0, p0, v5

    if-eqz p0, :cond_20

    if-nez v4, :cond_21

    :cond_20
    move v7, v8

    :cond_21
    return v7

    .line 648
    :cond_22
    const-wide/16 v9, 0x1

    and-long/2addr v9, p0

    cmp-long v4, v9, v2

    if-eqz v4, :cond_60

    rem-long v4, p0, v5

    cmp-long v4, v4, v2

    if-eqz v4, :cond_60

    rem-long v0, p0, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_36

    goto :goto_60

    .line 653
    :cond_36
    const/16 v0, 0x8

    new-array v1, v0, [J

    fill-array-data v1, :array_6a

    .line 654
    nop

    .line 655
    move-wide v5, v2

    move v4, v8

    .line 660
    :goto_40
    const-wide/16 v9, 0x1e

    if-ge v4, v0, :cond_56

    .line 662
    aget-wide v11, v1, v4

    add-long/2addr v11, v5

    .line 663
    rem-long v11, p0, v11

    cmp-long v11, v11, v2

    if-nez v11, :cond_53

    .line 665
    cmp-long p0, p0, v9

    if-gez p0, :cond_52

    move v7, v8

    :cond_52
    return v7

    .line 667
    :cond_53
    add-int/lit8 v4, v4, 0x1

    .line 668
    goto :goto_40

    .line 670
    :cond_56
    add-long/2addr v5, v9

    .line 672
    mul-long v9, v5, v5

    cmp-long v4, v9, p0

    if-ltz v4, :cond_5e

    .line 674
    return v8

    .line 655
    :cond_5e
    move v4, v7

    goto :goto_40

    .line 650
    :cond_60
    :goto_60
    return v7

    .line 636
    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Size limit exceeded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_6a
    .array-data 8
        0x1
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
    .end array-data
.end method
