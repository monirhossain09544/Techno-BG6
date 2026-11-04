.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;
.super Ljava/lang/Object;
.source "CustomPkcs1Encoding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final blacklist HEADER_LENGTH:I = 0xa


# instance fields
.field private blacklist blockBuffer:[B

.field private blacklist engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private blacklist forEncryption:Z

.field private blacklist forPrivateKey:Z

.field private blacklist random:Ljava/security/SecureRandom;

.field private blacklist useStrictLength:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 40
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->useStrict()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->useStrictLength:Z

    .line 41
    return-void
.end method

.method private static blacklist checkPkcs1Encoding1([B)I
    .registers 9

    .line 176
    nop

    .line 177
    nop

    .line 180
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    neg-int v1, v1

    .line 183
    move v3, v1

    move v4, v2

    move v1, v0

    :goto_d
    array-length v5, p0

    if-ge v4, v5, :cond_29

    .line 185
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    .line 186
    xor-int/lit8 v6, v5, 0x0

    sub-int/2addr v6, v2

    shr-int/lit8 v6, v6, 0x1f

    .line 187
    xor-int/lit16 v5, v5, 0xff

    sub-int/2addr v5, v2

    shr-int/lit8 v5, v5, 0x1f

    .line 188
    not-int v7, v1

    and-int/2addr v7, v4

    and-int/2addr v7, v6

    xor-int/2addr v0, v7

    .line 189
    or-int/2addr v1, v6

    .line 190
    or-int/2addr v5, v1

    not-int v5, v5

    or-int/2addr v3, v5

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 194
    :cond_29
    add-int/lit8 v1, v0, -0x9

    or-int/2addr v1, v3

    .line 196
    array-length p0, p0

    sub-int/2addr p0, v2

    sub-int/2addr p0, v0

    .line 197
    shr-int/lit8 v0, v1, 0x1f

    or-int/2addr p0, v0

    return p0
.end method

.method private static blacklist checkPkcs1Encoding2([B)I
    .registers 9

    .line 205
    nop

    .line 206
    nop

    .line 209
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    xor-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    .line 212
    const/4 v2, 0x1

    move v4, v0

    move v5, v4

    move v3, v2

    :goto_e
    array-length v6, p0

    if-ge v3, v6, :cond_21

    .line 214
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    .line 215
    xor-int/2addr v6, v0

    sub-int/2addr v6, v2

    shr-int/lit8 v6, v6, 0x1f

    .line 216
    not-int v7, v5

    and-int/2addr v7, v3

    and-int/2addr v7, v6

    xor-int/2addr v4, v7

    .line 217
    or-int/2addr v5, v6

    .line 212
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 221
    :cond_21
    add-int/lit8 v0, v4, -0x9

    or-int/2addr v0, v1

    .line 223
    array-length p0, p0

    sub-int/2addr p0, v2

    sub-int/2addr p0, v4

    .line 224
    shr-int/lit8 v0, v0, 0x1f

    or-int/2addr p0, v0

    return p0
.end method

.method private blacklist decodeBlock([BII)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1

    .line 236
    iget-boolean p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->useStrictLength:Z

    array-length p3, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p3, v0, :cond_15

    move p3, v1

    goto :goto_16

    :cond_15
    move p3, v2

    :goto_16
    and-int/2addr p2, p3

    .line 238
    nop

    .line 239
    array-length p3, p1

    if-ge p3, v0, :cond_1e

    .line 241
    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    goto :goto_1f

    .line 239
    :cond_1e
    move-object p3, p1

    .line 244
    :goto_1f
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forPrivateKey:Z

    if-eqz v0, :cond_28

    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->checkPkcs1Encoding2([B)I

    move-result v0

    goto :goto_2c

    :cond_28
    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->checkPkcs1Encoding1([B)I

    move-result v0

    .line 248
    :goto_2c
    if-gez v0, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    or-int/2addr p2, v1

    if-eqz p2, :cond_47

    .line 251
    nop

    .line 260
    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 261
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    array-length p3, p3

    array-length p1, p1

    sub-int/2addr p3, p1

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2, v2, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 251
    const/4 p1, 0x0

    return-object p1

    .line 254
    :cond_47
    :try_start_47
    new-array p2, v0, [B

    .line 255
    array-length v1, p3

    sub-int/2addr v1, v0

    invoke-static {p3, v1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_61

    .line 256
    nop

    .line 260
    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 261
    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    array-length v0, v0

    array-length p1, p1

    sub-int/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p3, v2, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 256
    return-object p2

    .line 260
    :catchall_61
    move-exception p2

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 261
    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    array-length v0, v0

    array-length p1, p1

    sub-int/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p3, v2, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 262
    throw p2
.end method

.method private blacklist encodeBlock([BII)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->getInputBlockSize()I

    move-result v0

    if-gt p3, v0, :cond_51

    .line 135
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    new-array v1, v0, [B

    .line 137
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forPrivateKey:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_22

    .line 139
    aput-byte v4, v1, v3

    .line 141
    move v2, v4

    :goto_17
    sub-int v5, v0, p3

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_41

    .line 143
    const/4 v5, -0x1

    aput-byte v5, v1, v2

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 148
    :cond_22
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 150
    const/4 v2, 0x2

    aput-byte v2, v1, v3

    .line 156
    move v2, v4

    :goto_2b
    sub-int v5, v0, p3

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_41

    .line 158
    :goto_30
    aget-byte v5, v1, v2

    if-nez v5, :cond_3e

    .line 160
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    goto :goto_30

    .line 156
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 165
    :cond_41
    sub-int v2, v0, p3

    add-int/lit8 v4, v2, -0x1

    aput-byte v3, v1, v4

    .line 166
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p1, v1, v3, v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1

    return-object p1

    .line 132
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input data too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist useStrict()Z
    .registers 4

    .line 48
    const-string v0, "com.android.internal.org.bouncycastle.pkcs1.not_strict"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSetTo(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 50
    return v2

    .line 53
    :cond_b
    const-string v0, "com.android.internal.org.bouncycastle.pkcs1.strict"

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSetTo(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public blacklist getInputBlockSize()I
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 92
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_d

    .line 94
    add-int/lit8 v0, v0, -0xa

    return v0

    .line 98
    :cond_d
    return v0
.end method

.method public blacklist getOutputBlockSize()I
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 106
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_b

    .line 108
    return v0

    .line 112
    :cond_b
    add-int/lit8 v0, v0, -0xa

    return v0
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 5

    .line 65
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_14

    .line 67
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 69
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 70
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 71
    goto :goto_25

    .line 74
    :cond_14
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 75
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_25

    if-eqz p1, :cond_25

    .line 77
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 81
    :cond_25
    :goto_25
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 83
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forPrivateKey:Z

    .line 84
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forEncryption:Z

    .line 85
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    .line 86
    return-void
.end method

.method public blacklist processBlock([BII)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 118
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forEncryption:Z

    if-eqz v0, :cond_9

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->encodeBlock([BII)[B

    move-result-object p1

    return-object p1

    .line 124
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->decodeBlock([BII)[B

    move-result-object p1

    return-object p1
.end method
