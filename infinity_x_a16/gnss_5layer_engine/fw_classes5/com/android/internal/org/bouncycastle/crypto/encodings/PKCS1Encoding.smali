.class public Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;
.super Ljava/lang/Object;
.source "PKCS1Encoding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final blacklist HEADER_LENGTH:I = 0xa

.field public static final blacklist NOT_STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "com.android.internal.org.bouncycastle.pkcs1.not_strict"

.field public static final blacklist STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "com.android.internal.org.bouncycastle.pkcs1.strict"


# instance fields
.field private blacklist blockBuffer:[B

.field private blacklist engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private blacklist fallback:[B

.field private blacklist forEncryption:Z

.field private blacklist forPrivateKey:Z

.field private blacklist pLen:I

.field private blacklist random:Ljava/security/SecureRandom;

.field private blacklist useStrictLength:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 57
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 58
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;I)V
    .registers 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 71
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 72
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 73
    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;[B)V
    .registers 4

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 87
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 88
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 89
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 90
    array-length p1, p2

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 91
    return-void
.end method

.method private static blacklist checkPkcs1Encoding1([B)I
    .registers 9

    .line 242
    nop

    .line 243
    nop

    .line 246
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    neg-int v1, v1

    .line 249
    move v3, v1

    move v4, v2

    move v1, v0

    :goto_d
    array-length v5, p0

    if-ge v4, v5, :cond_29

    .line 251
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    .line 252
    xor-int/lit8 v6, v5, 0x0

    sub-int/2addr v6, v2

    shr-int/lit8 v6, v6, 0x1f

    .line 253
    xor-int/lit16 v5, v5, 0xff

    sub-int/2addr v5, v2

    shr-int/lit8 v5, v5, 0x1f

    .line 254
    not-int v7, v1

    and-int/2addr v7, v4

    and-int/2addr v7, v6

    xor-int/2addr v0, v7

    .line 255
    or-int/2addr v1, v6

    .line 256
    or-int/2addr v5, v1

    not-int v5, v5

    or-int/2addr v3, v5

    .line 249
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 260
    :cond_29
    add-int/lit8 v1, v0, -0x9

    or-int/2addr v1, v3

    .line 262
    array-length p0, p0

    sub-int/2addr p0, v2

    sub-int/2addr p0, v0

    .line 263
    shr-int/lit8 v0, v1, 0x1f

    or-int/2addr p0, v0

    return p0
.end method

.method private static blacklist checkPkcs1Encoding2([B)I
    .registers 9

    .line 271
    nop

    .line 272
    nop

    .line 275
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    xor-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    .line 278
    const/4 v2, 0x1

    move v4, v0

    move v5, v4

    move v3, v2

    :goto_e
    array-length v6, p0

    if-ge v3, v6, :cond_21

    .line 280
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    .line 281
    xor-int/2addr v6, v0

    sub-int/2addr v6, v2

    shr-int/lit8 v6, v6, 0x1f

    .line 282
    not-int v7, v5

    and-int/2addr v7, v3

    and-int/2addr v7, v6

    xor-int/2addr v4, v7

    .line 283
    or-int/2addr v5, v6

    .line 278
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 287
    :cond_21
    add-int/lit8 v0, v4, -0x9

    or-int/2addr v0, v1

    .line 289
    array-length p0, p0

    sub-int/2addr p0, v2

    sub-int/2addr p0, v4

    .line 290
    shr-int/lit8 v0, v0, 0x1f

    or-int/2addr p0, v0

    return p0
.end method

.method private static blacklist checkPkcs1Encoding2([BI)I
    .registers 6

    .line 300
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    xor-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    .line 302
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    .line 305
    add-int/lit8 p1, v1, -0x9

    or-int/2addr p1, v0

    .line 308
    move v0, v2

    :goto_10
    if-ge v0, v1, :cond_1b

    .line 310
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v3, v2

    or-int/2addr p1, v3

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 314
    :cond_1b
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    neg-int p0, p0

    or-int/2addr p0, p1

    .line 316
    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method private blacklist decodeBlock([BII)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 388
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 390
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlockOrRandom([BII)[B

    move-result-object p1

    return-object p1

    .line 393
    :cond_e
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 394
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1

    .line 396
    iget-boolean p2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    array-length p3, p1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_22

    const/4 p3, 0x1

    goto :goto_23

    :cond_22
    move p3, v1

    :goto_23
    and-int/2addr p2, p3

    .line 398
    nop

    .line 399
    array-length p3, p1

    if-ge p3, v0, :cond_2b

    .line 401
    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    goto :goto_2c

    .line 399
    :cond_2b
    move-object p3, p1

    .line 404
    :goto_2c
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v0, :cond_35

    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->checkPkcs1Encoding2([B)I

    move-result v0

    goto :goto_39

    :cond_35
    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->checkPkcs1Encoding1([B)I

    move-result v0

    .line 408
    :goto_39
    if-ltz v0, :cond_5f

    .line 412
    if-nez p2, :cond_57

    .line 417
    :try_start_3d
    new-array p2, v0, [B

    .line 418
    array-length v2, p3

    sub-int/2addr v2, v0

    invoke-static {p3, v2, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_67

    .line 419
    nop

    .line 423
    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 424
    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    array-length v0, v0

    array-length p1, p1

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p3, v1, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 419
    return-object p2

    .line 414
    :cond_57
    :try_start_57
    new-instance p2, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p3, "block incorrect size"

    invoke-direct {p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 410
    :cond_5f
    new-instance p2, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p3, "block incorrect"

    invoke-direct {p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_67
    .catchall {:try_start_57 .. :try_end_67} :catchall_67

    .line 423
    :catchall_67
    move-exception p2

    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 424
    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    array-length v0, v0

    array-length p1, p1

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p3, v1, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 425
    throw p2
.end method

.method private blacklist decodeBlockOrRandom([BII)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 332
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v0, :cond_5e

    .line 337
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 339
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 340
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    if-nez v2, :cond_13

    .line 342
    new-array v1, v0, [B

    .line 343
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 346
    :cond_13
    nop

    .line 347
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v2

    .line 348
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1

    .line 350
    nop

    .line 351
    array-length p2, p1

    if-eq p2, v2, :cond_2e

    .line 353
    iget-boolean p2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    if-nez p2, :cond_2b

    array-length p2, p1

    if-ge p2, v2, :cond_2e

    .line 355
    :cond_2b
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    goto :goto_2f

    .line 359
    :cond_2e
    move-object p2, p1

    :goto_2f
    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->checkPkcs1Encoding2([BI)I

    move-result p3

    const/4 v2, 0x0

    or-int/2addr p3, v2

    .line 365
    array-length v3, p2

    sub-int/2addr v3, v0

    .line 366
    new-array v4, v0, [B

    .line 367
    move v5, v2

    :goto_3a
    if-ge v5, v0, :cond_4c

    .line 369
    add-int v6, v3, v5

    aget-byte v6, p2, v6

    not-int v7, p3

    and-int/2addr v6, v7

    aget-byte v7, v1, v5

    and-int/2addr v7, p3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 367
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 372
    :cond_4c
    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 373
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    array-length p3, p3

    array-length p1, p1

    sub-int/2addr p3, p1

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2, v2, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 375
    return-object v4

    .line 334
    :cond_5e
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "sorry, this method is only for decryption, not for signing"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist encodeBlock([BII)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->getInputBlockSize()I

    move-result v0

    if-gt p3, v0, :cond_51

    .line 201
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    new-array v1, v0, [B

    .line 203
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_22

    .line 205
    aput-byte v4, v1, v3

    .line 207
    move v2, v4

    :goto_17
    sub-int v5, v0, p3

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_41

    .line 209
    const/4 v5, -0x1

    aput-byte v5, v1, v2

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 214
    :cond_22
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 216
    const/4 v2, 0x2

    aput-byte v2, v1, v3

    .line 222
    move v2, v4

    :goto_2b
    sub-int v5, v0, p3

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_41

    .line 224
    :goto_30
    aget-byte v5, v1, v2

    if-nez v5, :cond_3e

    .line 226
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    goto :goto_30

    .line 222
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 231
    :cond_41
    sub-int v2, v0, p3

    add-int/lit8 v4, v2, -0x1

    aput-byte v3, v1, v4

    .line 232
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p1, v1, v3, v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1

    return-object p1

    .line 198
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input data too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist useStrict()Z
    .registers 4

    .line 99
    const-string v0, "com.android.internal.org.bouncycastle.pkcs1.not_strict"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSetTo(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 101
    return v2

    .line 104
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

    .line 148
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 150
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_d

    .line 152
    add-int/lit8 v0, v0, -0xa

    return v0

    .line 156
    :cond_d
    return v0
.end method

.method public blacklist getOutputBlockSize()I
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 164
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_b

    .line 166
    return v0

    .line 170
    :cond_b
    add-int/lit8 v0, v0, -0xa

    return v0
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 5

    .line 118
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_14

    .line 120
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 122
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 123
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 124
    goto :goto_25

    .line 127
    :cond_14
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 128
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_25

    if-eqz p1, :cond_25

    .line 130
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 134
    :cond_25
    :goto_25
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 136
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    .line 137
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    .line 138
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    .line 140
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    if-lez p1, :cond_51

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    if-nez p1, :cond_51

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    if-eqz p1, :cond_49

    goto :goto_51

    .line 142
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "encoder requires random"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_51
    :goto_51
    return-void
.end method

.method public blacklist processBlock([BII)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 180
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v0, :cond_9

    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->encodeBlock([BII)[B

    move-result-object p1

    return-object p1

    .line 186
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlock([BII)[B

    move-result-object p1

    return-object p1
.end method
