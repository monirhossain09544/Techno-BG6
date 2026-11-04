.class Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;
.super Ljava/lang/Object;
.source "RSACoreEngine.java"


# instance fields
.field private blacklist forEncryption:Z

.field private blacklist key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist getPurpose(ZZ)Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;
    .registers 7

    .line 230
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    move v2, v0

    goto :goto_9

    :cond_8
    move v2, v1

    .line 231
    :goto_9
    if-nez p1, :cond_f

    if-eqz p2, :cond_f

    move v3, v0

    goto :goto_10

    :cond_f
    move v3, v1

    .line 232
    :goto_10
    if-nez p1, :cond_15

    if-nez p2, :cond_15

    goto :goto_16

    :cond_15
    move v0, v1

    .line 234
    :goto_16
    if-eqz v2, :cond_1b

    .line 236
    sget-object p1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->SIGNING:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object p1

    .line 238
    :cond_1b
    if-eqz v3, :cond_20

    .line 240
    sget-object p1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object p1

    .line 242
    :cond_20
    if-eqz v0, :cond_25

    .line 244
    sget-object p1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->VERIFYING:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object p1

    .line 247
    :cond_25
    sget-object p1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object p1
.end method


# virtual methods
.method public blacklist convertInput([BII)Ljava/math/BigInteger;
    .registers 8

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const-string v2, "input too large for RSA cipher."

    if-gt p3, v0, :cond_42

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v0

    add-int/2addr v0, v1

    if-ne p3, v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v0, :cond_16

    goto :goto_1c

    .line 104
    :cond_16
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    invoke-direct {p1, v2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_1c
    :goto_1c
    if-nez p2, :cond_23

    array-length v0, p1

    if-eq p3, v0, :cond_22

    goto :goto_23

    .line 117
    :cond_22
    goto :goto_2a

    .line 111
    :cond_23
    :goto_23
    new-array v0, p3, [B

    .line 113
    const/4 v3, 0x0

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 120
    :goto_2a
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 121
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_3c

    .line 126
    return-object p2

    .line 123
    :cond_3c
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    invoke-direct {p1, v2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_42
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    invoke-direct {p1, v2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist convertOutput(Ljava/math/BigInteger;)[B
    .registers 6

    .line 132
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 134
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_32

    .line 136
    aget-byte v0, p1, v2

    if-nez v0, :cond_1d

    array-length v0, p1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v3

    if-le v0, v3, :cond_1d

    .line 138
    array-length v0, p1

    sub-int/2addr v0, v1

    new-array v3, v0, [B

    .line 140
    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    return-object v3

    .line 145
    :cond_1d
    array-length v0, p1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v0

    new-array v1, v0, [B

    .line 149
    array-length v3, p1

    sub-int/2addr v0, v3

    array-length v3, p1

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    return-object v1

    .line 154
    :cond_31
    return-object p1

    .line 159
    :cond_32
    aget-byte v0, p1, v2

    if-nez v0, :cond_3e

    .line 161
    array-length v0, p1

    sub-int/2addr v0, v1

    new-array v3, v0, [B

    .line 163
    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_44

    .line 167
    :cond_3e
    array-length v0, p1

    new-array v3, v0, [B

    .line 169
    invoke-static {p1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    :goto_44
    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 174
    return-object v3
.end method

.method public blacklist getInputBlockSize()I
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 62
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v1, :cond_15

    .line 64
    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 68
    :cond_15
    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public blacklist getOutputBlockSize()I
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 83
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v1, :cond_13

    .line 85
    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0

    .line 89
    :cond_13
    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    .line 35
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_f

    .line 37
    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 39
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 40
    goto :goto_13

    .line 43
    :cond_f
    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 46
    :goto_13
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    .line 48
    new-instance p2, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->isPrivate()Z

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->getPurpose(ZZ)Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p1

    const-string v2, "RSA"

    invoke-direct {p2, v2, v0, v1, p1}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 49
    return-void
.end method

.method public blacklist processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 10

    .line 180
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v0, :cond_5f

    .line 187
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .line 189
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_5f

    .line 192
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 193
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    .line 194
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDP()Ljava/math/BigInteger;

    move-result-object v4

    .line 195
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 196
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQInv()Ljava/math/BigInteger;

    move-result-object v6

    .line 201
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v4, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 204
    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v5, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 207
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 208
    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 209
    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 212
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 215
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 221
    return-object v2

    .line 218
    :cond_57
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RSA engine faulty decryption/signing detected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_5f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method
