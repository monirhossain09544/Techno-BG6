.class public Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;
.super Ljava/lang/Object;
.source "DSAParametersGenerator.java"


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;

.field private static final blacklist TWO:Ljava/math/BigInteger;

.field private static final blacklist ZERO:Ljava/math/BigInteger;


# instance fields
.field private blacklist L:I

.field private blacklist N:I

.field private blacklist certainty:I

.field private blacklist digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

.field private blacklist iterations:I

.field private blacklist random:Ljava/security/SecureRandom;

.field private blacklist usageIndex:I

.field private blacklist use186_3:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 24
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    .line 25
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    .line 26
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 46
    return-void
.end method

.method private static blacklist calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 7

    .line 210
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 211
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 215
    :goto_10
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-static {v1, v0, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 216
    invoke-virtual {v1, p1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_22

    .line 219
    return-object v1

    .line 221
    :cond_22
    goto :goto_10
.end method

.method private static blacklist calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 3

    .line 354
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist calculateGenerator_FIPS186_3_Verifiable(Lcom/android/internal/org/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;
    .registers 11

    .line 361
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 362
    const-string v0, "6767656E"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v0

    .line 365
    array-length v1, p3

    array-length v2, v0

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    new-array v3, v1, [B

    .line 366
    array-length v4, p3

    const/4 v5, 0x0

    invoke-static {p3, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    array-length p3, p3

    array-length v4, v0

    invoke-static {v0, v5, v3, p3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    add-int/lit8 v1, v1, -0x3

    int-to-byte p3, p4

    aput-byte p3, v3, v1

    .line 370
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p3

    new-array p3, p3, [B

    .line 371
    move p4, v2

    :goto_2f
    const/high16 v0, 0x10000

    if-ge p4, v0, :cond_4e

    .line 373
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 374
    invoke-static {p0, v3, p3, v5}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 375
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 376
    invoke-virtual {v0, p2, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 377
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_4b

    .line 379
    return-object v0

    .line 371
    :cond_4b
    add-int/lit8 p4, p4, 0x1

    goto :goto_2f

    .line 383
    :cond_4e
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist generateParameters_FIPS186_2()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .registers 18

    .line 129
    move-object/from16 v0, p0

    const/16 v1, 0x14

    new-array v2, v1, [B

    .line 130
    new-array v3, v1, [B

    .line 131
    new-array v4, v1, [B

    .line 132
    new-array v5, v1, [B

    .line 133
    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    div-int/lit16 v6, v6, 0xa0

    .line 134
    iget v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    div-int/lit8 v8, v8, 0x8

    new-array v9, v8, [B

    .line 138
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v10}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "SHA-1"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_dd

    .line 145
    :goto_26
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v10, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 147
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v11, 0x0

    invoke-static {v10, v2, v3, v11}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 148
    invoke-static {v2, v11, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 150
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-static {v10, v4, v4, v11}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 152
    move v10, v11

    :goto_3d
    if-eq v10, v1, :cond_4a

    .line 154
    aget-byte v12, v3, v10

    aget-byte v13, v4, v10

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v10

    .line 152
    add-int/lit8 v10, v10, 0x1

    goto :goto_3d

    .line 157
    :cond_4a
    aget-byte v10, v5, v11

    or-int/lit8 v10, v10, -0x80

    int-to-byte v10, v10

    aput-byte v10, v5, v11

    .line 158
    const/16 v10, 0x13

    aget-byte v12, v5, v10

    or-int/2addr v12, v7

    int-to-byte v12, v12

    aput-byte v12, v5, v10

    .line 160
    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v7, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 162
    invoke-direct {v0, v10}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v12

    if-nez v12, :cond_65

    .line 164
    goto :goto_26

    .line 167
    :cond_65
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v12

    .line 168
    invoke-static {v12}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 170
    move v13, v11

    :goto_6d
    const/16 v14, 0x1000

    if-ge v13, v14, :cond_d9

    .line 173
    move v14, v7

    :goto_72
    if-gt v14, v6, :cond_85

    .line 175
    invoke-static {v12}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 176
    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    mul-int/lit8 v16, v14, 0x14

    sub-int v1, v8, v16

    invoke-static {v15, v12, v9, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 173
    add-int/lit8 v14, v14, 0x1

    const/16 v1, 0x14

    goto :goto_72

    .line 179
    :cond_85
    mul-int/lit8 v1, v6, 0x14

    sub-int v1, v8, v1

    .line 180
    invoke-static {v12}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 181
    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-static {v14, v12, v3, v11}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 182
    rsub-int/lit8 v14, v1, 0x14

    invoke-static {v3, v14, v9, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    aget-byte v1, v9, v11

    or-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    aput-byte v1, v9, v11

    .line 187
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v7, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 189
    invoke-virtual {v10, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 191
    sget-object v15, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v14

    iget v15, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-eq v14, v15, :cond_bd

    .line 195
    goto :goto_d4

    .line 198
    :cond_bd
    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v14

    if-eqz v14, :cond_d4

    .line 200
    iget-object v0, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v1, v10, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    .line 202
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v4, v2, v13}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v3, v1, v10, v0, v4}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v3

    .line 170
    :cond_d4
    :goto_d4
    add-int/lit8 v13, v13, 0x1

    const/16 v1, 0x14

    goto :goto_6d

    .line 205
    :cond_d9
    const/16 v1, 0x14

    goto/16 :goto_26

    .line 140
    :cond_dd
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can only use SHA-1 for generating FIPS 186-2 parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist generateParameters_FIPS186_3()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .registers 17

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 233
    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    .line 241
    iget v3, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 242
    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    .line 245
    iget v4, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    div-int/2addr v4, v2

    .line 248
    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    sub-int/2addr v6, v5

    rem-int/2addr v6, v2

    .line 250
    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    div-int/lit8 v2, v2, 0x8

    new-array v6, v2, [B

    .line 251
    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v8, v7, [B

    .line 255
    :goto_25
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v9, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 258
    const/4 v9, 0x0

    invoke-static {v1, v3, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 260
    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v5, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    iget v12, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    sub-int/2addr v12, v5

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 263
    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v10

    iget v11, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    sub-int/2addr v11, v5

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v10

    .line 266
    invoke-direct {v0, v10}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v11

    if-nez v11, :cond_52

    .line 269
    goto :goto_25

    .line 274
    :cond_52
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v11

    .line 277
    iget v12, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    mul-int/lit8 v12, v12, 0x4

    .line 278
    move v13, v9

    :goto_5b
    if-ge v13, v12, :cond_d7

    .line 284
    move v14, v5

    :goto_5e
    if-gt v14, v4, :cond_6d

    .line 286
    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 287
    mul-int v15, v14, v7

    sub-int v15, v2, v15

    invoke-static {v1, v11, v6, v15}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 284
    add-int/lit8 v14, v14, 0x1

    goto :goto_5e

    .line 290
    :cond_6d
    mul-int v14, v4, v7

    sub-int v14, v2, v14

    .line 291
    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 292
    invoke-static {v1, v11, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 293
    sub-int v15, v7, v14

    invoke-static {v8, v15, v6, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    aget-byte v14, v6, v9

    or-int/lit8 v14, v14, -0x80

    int-to-byte v14, v14

    aput-byte v14, v6, v9

    .line 299
    new-instance v14, Ljava/math/BigInteger;

    invoke-direct {v14, v5, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 302
    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 305
    sget-object v5, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v15, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 308
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v14

    iget v15, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-eq v14, v15, :cond_a3

    .line 310
    goto :goto_d3

    .line 314
    :cond_a3
    invoke-direct {v0, v5}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v14

    if-eqz v14, :cond_d3

    .line 318
    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    if-ltz v2, :cond_c2

    .line 320
    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    invoke-static {v1, v5, v10, v3, v2}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Verifiable(Lcom/android/internal/org/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;

    move-result-object v1

    .line 321
    if-eqz v1, :cond_c2

    .line 323
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    iget v0, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    invoke-direct {v4, v3, v13, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    invoke-direct {v2, v5, v10, v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v2

    .line 327
    :cond_c2
    iget-object v0, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v5, v10, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    .line 329
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v2, v3, v13}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v1, v5, v10, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v1

    .line 278
    :cond_d3
    :goto_d3
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x1

    goto :goto_5b

    .line 338
    :cond_d7
    const/4 v5, 0x1

    goto/16 :goto_25
.end method

.method private static blacklist getDefaultN(I)I
    .registers 2

    .line 394
    const/16 v0, 0x400

    if-le p0, v0, :cond_7

    const/16 p0, 0x100

    goto :goto_9

    :cond_7
    const/16 p0, 0xa0

    :goto_9
    return p0
.end method

.method private static blacklist getMinimumIterations(I)I
    .registers 2

    .line 400
    const/16 v0, 0x400

    if-gt p0, v0, :cond_7

    const/16 p0, 0x28

    goto :goto_e

    :cond_7
    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x30

    :goto_e
    return p0
.end method

.method private static blacklist hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V
    .registers 6

    .line 388
    const/4 v0, 0x0

    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 389
    invoke-interface {p0, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 390
    return-void
.end method

.method private static blacklist inc([B)V
    .registers 3

    .line 405
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_14

    .line 407
    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 408
    aput-byte v1, p0, v0

    .line 410
    if-eqz v1, :cond_11

    .line 412
    goto :goto_14

    .line 405
    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 415
    :cond_14
    :goto_14
    return-void
.end method

.method private blacklist isProbablePrime(Ljava/math/BigInteger;)Z
    .registers 3

    .line 348
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public blacklist generateParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    if-eqz v0, :cond_9

    .line 123
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_3()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    goto :goto_d

    .line 124
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_2()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    .line 122
    :goto_d
    return-object v0
.end method

.method public blacklist init(IILjava/security/SecureRandom;)V
    .registers 4

    .line 60
    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 61
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getDefaultN(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 62
    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 63
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result p1

    add-int/lit8 p2, p2, 0x1

    div-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    .line 64
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 65
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    .line 66
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    .line 67
    return-void
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V
    .registers 7

    .line 80
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getL()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getN()I

    move-result v1

    .line 82
    const/16 v2, 0x400

    if-lt v0, v2, :cond_80

    const/16 v3, 0xc00

    if-gt v0, v3, :cond_80

    rem-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_80

    .line 86
    if-ne v0, v2, :cond_23

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_1b

    goto :goto_23

    .line 88
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "N must be 160 for L = 1024"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_23
    :goto_23
    const/16 v2, 0x800

    const/16 v4, 0x100

    if-ne v0, v2, :cond_38

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_38

    if-ne v1, v4, :cond_30

    goto :goto_38

    .line 92
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "N must be 224 or 256 for L = 2048"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_38
    :goto_38
    if-ne v0, v3, :cond_45

    if-ne v1, v4, :cond_3d

    goto :goto_45

    .line 96
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "N must be 256 for L = 3072"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_45
    :goto_45
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    if-lt v2, v1, :cond_78

    .line 104
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 105
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 106
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getCertainty()I

    move-result v1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 107
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    .line 108
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 109
    iput-boolean v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    .line 110
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getUsageIndex()I

    move-result p1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    .line 111
    return-void

    .line 101
    :cond_78
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Digest output size too small for value of N"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_80
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "L values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
