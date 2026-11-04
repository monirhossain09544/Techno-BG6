.class public Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "RSAKeyPairGenerator.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;


# instance fields
.field private blacklist param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 27
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getNumberOfIterations(II)I
    .registers 6

    .line 216
    const/16 v0, 0x600

    const/4 v1, 0x4

    const/16 v2, 0x64

    if-lt p0, v0, :cond_17

    .line 218
    if-gt p1, v2, :cond_b

    const/4 v1, 0x3

    goto :goto_16

    .line 219
    :cond_b
    const/16 p0, 0x80

    if-gt p1, p0, :cond_10

    goto :goto_16

    .line 220
    :cond_10
    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    .line 218
    :goto_16
    return v1

    .line 222
    :cond_17
    const/16 v0, 0x400

    const/4 v3, 0x5

    if-lt p0, v0, :cond_2d

    .line 224
    if-gt p1, v2, :cond_1f

    goto :goto_2c

    .line 225
    :cond_1f
    const/16 p0, 0x70

    if-gt p1, p0, :cond_25

    move v1, v3

    goto :goto_2c

    .line 226
    :cond_25
    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 v1, p1, 0x5

    .line 224
    :goto_2c
    return v1

    .line 228
    :cond_2d
    const/16 v0, 0x200

    const/16 v1, 0x50

    if-lt p0, v0, :cond_41

    .line 230
    if-gt p1, v1, :cond_36

    goto :goto_40

    .line 231
    :cond_36
    const/4 v3, 0x7

    if-gt p1, v2, :cond_3a

    goto :goto_40

    .line 232
    :cond_3a
    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v3, p1

    .line 230
    :goto_40
    return v3

    .line 236
    :cond_41
    const/16 p0, 0x28

    if-gt p1, v1, :cond_46

    goto :goto_4c

    .line 237
    :cond_46
    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    .line 236
    :goto_4c
    return p0
.end method


# virtual methods
.method protected blacklist chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 8

    .line 169
    const/4 v0, 0x0

    :goto_1
    mul-int/lit8 v1, p1, 0x5

    if-eq v0, v1, :cond_46

    .line 171
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomPrime(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 173
    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 175
    goto :goto_42

    .line 178
    :cond_1d
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_28

    .line 180
    goto :goto_42

    .line 183
    :cond_28
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 185
    goto :goto_42

    .line 188
    :cond_2f
    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 190
    nop

    .line 169
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :cond_45
    return-object v1

    .line 196
    :cond_46
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unable to generate prime number for RSA key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist generateKeyPair()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .registers 26

    .line 40
    move-object/from16 v0, p0

    .line 41
    nop

    .line 46
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getStrength()I

    move-result v1

    .line 47
    add-int/lit8 v2, v1, 0x1

    div-int/lit8 v2, v2, 0x2

    .line 48
    sub-int v3, v1, v2

    .line 49
    div-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v4, -0x64

    .line 51
    div-int/lit8 v6, v1, 0x3

    if-ge v5, v6, :cond_18

    .line 53
    move v5, v6

    .line 56
    :cond_18
    shr-int/lit8 v6, v1, 0x2

    .line 59
    const-wide/16 v7, 0x2

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 61
    sget-object v7, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v7

    .line 63
    sget-object v8, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 65
    :goto_34
    if-nez v11, :cond_e2

    .line 69
    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v15

    .line 71
    invoke-virtual {v0, v2, v15, v7}, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 78
    :goto_40
    invoke-virtual {v0, v3, v15, v7}, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 81
    invoke-virtual {v13, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v14

    .line 82
    invoke-virtual {v14}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    if-lt v10, v5, :cond_d9

    invoke-virtual {v14, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-gtz v10, :cond_5d

    .line 84
    move/from16 v23, v1

    const/4 v10, 0x0

    goto/16 :goto_dc

    .line 90
    :cond_5d
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 92
    invoke-virtual {v14}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    if-eq v10, v1, :cond_6c

    .line 98
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 99
    goto :goto_40

    .line 108
    :cond_6c
    invoke-static {v14}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v10

    if-ge v10, v6, :cond_77

    .line 110
    invoke-virtual {v0, v2, v15, v7}, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 111
    goto :goto_40

    .line 117
    :cond_77
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-gez v10, :cond_84

    .line 119
    nop

    .line 120
    nop

    .line 121
    move-object/from16 v24, v13

    move-object v13, v12

    move-object/from16 v12, v24

    .line 124
    :cond_84
    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 125
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 126
    move/from16 v23, v1

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 127
    invoke-virtual {v10, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 132
    invoke-virtual {v15, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 134
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-gtz v16, :cond_ad

    .line 136
    move-object/from16 v0, p0

    move/from16 v1, v23

    goto :goto_34

    .line 140
    :cond_ad
    nop

    .line 148
    invoke-virtual {v1, v10}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    .line 149
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    .line 150
    invoke-static {v12, v13}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    .line 152
    new-instance v9, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {v0, v10, v14, v15, v11}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Z)V

    move-object/from16 v18, v13

    new-instance v13, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    const/16 v22, 0x1

    move-object/from16 v16, v1

    move-object/from16 v17, v12

    invoke-direct/range {v13 .. v22}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    invoke-direct {v9, v0, v13}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    .line 155
    move-object/from16 v0, p0

    move/from16 v1, v23

    goto/16 :goto_34

    .line 82
    :cond_d9
    move/from16 v23, v1

    const/4 v10, 0x0

    .line 78
    :goto_dc
    move-object/from16 v0, p0

    move/from16 v1, v23

    goto/16 :goto_40

    .line 157
    :cond_e2
    return-object v9
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 6

    .line 33
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityForFF(I)I

    move-result p1

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    const-string v3, "RSAKeyGen"

    invoke-direct {v0, v3, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 36
    return-void
.end method

.method protected blacklist isProbablePrime(Ljava/math/BigInteger;)Z
    .registers 4

    .line 201
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getCertainty()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->getNumberOfIterations(II)I

    move-result v0

    .line 206
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/Primes;->hasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/android/internal/org/bouncycastle/math/Primes;->isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    return p1
.end method
