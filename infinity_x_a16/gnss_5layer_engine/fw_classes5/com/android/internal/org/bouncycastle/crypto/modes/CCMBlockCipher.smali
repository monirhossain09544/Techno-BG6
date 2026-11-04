.class public Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;
.super Ljava/lang/Object;
.source "CCMBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/CCMModeCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;
    }
.end annotation


# instance fields
.field private blacklist associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private blacklist blockSize:I

.field private blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private blacklist forEncryption:Z

.field private blacklist initialAssociatedText:[B

.field private blacklist keyParam:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

.field private blacklist macBlock:[B

.field private blacklist macSize:I

.field private blacklist nonce:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    .line 36
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    .line 56
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 57
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    .line 58
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    .line 60
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_26

    .line 64
    return-void

    .line 62
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cipher required with a block size of 16."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist calculateMac([BII[B)I
    .registers 15

    .line 365
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V

    .line 367
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 372
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 374
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_22

    .line 376
    aget-byte v3, v2, v4

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 379
    :cond_22
    aget-byte v3, v2, v4

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v5

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    div-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 381
    aget-byte v3, v2, v4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v5, v5

    rsub-int/lit8 v5, v5, 0xf

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    and-int/lit8 v5, v5, 0x7

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 383
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v5, v5

    invoke-static {v3, v4, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    nop

    .line 386
    move v3, p3

    move v5, v7

    .line 387
    :goto_4d
    if-lez v3, :cond_5a

    .line 389
    rsub-int/lit8 v8, v5, 0x10

    and-int/lit16 v9, v3, 0xff

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    .line 390
    ushr-int/lit8 v3, v3, 0x8

    .line 391
    add-int/2addr v5, v7

    goto :goto_4d

    .line 394
    :cond_5a
    invoke-interface {v0, v2, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 399
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 403
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v2

    .line 404
    const v3, 0xff00

    if-ge v2, v3, :cond_77

    .line 406
    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    invoke-interface {v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 407
    int-to-byte v3, v2

    invoke-interface {v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 409
    goto :goto_96

    .line 413
    :cond_77
    const/4 v3, -0x1

    invoke-interface {v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 414
    const/4 v3, -0x2

    invoke-interface {v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 415
    shr-int/lit8 v3, v2, 0x18

    int-to-byte v3, v3

    invoke-interface {v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 416
    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    invoke-interface {v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 417
    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    invoke-interface {v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 418
    int-to-byte v3, v2

    invoke-interface {v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 420
    const/4 v6, 0x6

    .line 423
    :goto_96
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-eqz v3, :cond_a2

    .line 425
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    array-length v5, v5

    invoke-interface {v0, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 427
    :cond_a2
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v3

    if-lez v3, :cond_b9

    .line 429
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v5

    invoke-interface {v0, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 432
    :cond_b9
    add-int/2addr v6, v2

    rem-int/2addr v6, v1

    .line 433
    if-eqz v6, :cond_c6

    .line 435
    nop

    :goto_be
    if-eq v6, v1, :cond_c6

    .line 437
    invoke-interface {v0, v4}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 435
    add-int/lit8 v6, v6, 0x1

    goto :goto_be

    .line 445
    :cond_c6
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 447
    invoke-interface {v0, p4, v4}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    move-result p1

    return p1
.end method

.method private blacklist getAssociatedTextLength()I
    .registers 3

    .line 462
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_f

    :cond_c
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    array-length v1, v1

    :goto_f
    add-int/2addr v0, v1

    return v0
.end method

.method private blacklist getMacSize(ZI)I
    .registers 3

    .line 452
    if-eqz p1, :cond_17

    const/16 p1, 0x20

    if-lt p2, p1, :cond_f

    const/16 p1, 0x80

    if-gt p2, p1, :cond_f

    and-int/lit8 p1, p2, 0xf

    if-nez p1, :cond_f

    goto :goto_17

    .line 454
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tag length in octets must be one of {4,6,8,10,12,14,16}"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 457
    :cond_17
    :goto_17
    ushr-int/lit8 p1, p2, 0x3

    return p1
.end method

.method private blacklist hasAssociatedText()Z
    .registers 2

    .line 467
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/CCMModeCipher;
    .registers 2

    .line 45
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v4

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    move-result p1

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    .line 163
    return p1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMac()[B
    .registers 5

    .line 181
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    new-array v1, v0, [B

    .line 183
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    return-object v1
.end method

.method public blacklist getOutputSize(I)I
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr p1, v0

    .line 197
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_f

    .line 199
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr p1, v0

    return p1

    .line 202
    :cond_f
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-ge p1, v0, :cond_15

    const/4 p1, 0x0

    goto :goto_18

    :cond_15
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int/2addr p1, v0

    :goto_18
    return p1
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 2

    .line 190
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 80
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    .line 83
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_23

    .line 85
    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    .line 87
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    .line 88
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    .line 89
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->getMacSize(ZI)I

    move-result p1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .line 90
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object p1

    .line 91
    goto :goto_3f

    .line 92
    :cond_23
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_60

    .line 94
    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 96
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    .line 98
    const/16 v0, 0x40

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->getMacSize(ZI)I

    move-result p1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .line 99
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    .line 100
    nop

    .line 107
    :goto_3f
    if-eqz p1, :cond_43

    .line 109
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 112
    :cond_43
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    if-eqz p1, :cond_58

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length p1, p1

    const/4 p2, 0x7

    if-lt p1, p2, :cond_58

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length p1, p1

    const/16 p2, 0xd

    if-gt p1, p2, :cond_58

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    .line 118
    return-void

    .line 114
    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "nonce must have length from 7 to 13 octets"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameters passed to CCM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist processAADByte(B)V
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    .line 128
    return-void
.end method

.method public blacklist processAADBytes([BII)V
    .registers 5

    .line 133
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    .line 134
    return-void
.end method

.method public blacklist processByte(B[BI)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 139
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {p2, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    .line 141
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 147
    array-length p4, p1

    add-int p5, p2, p3

    if-lt p4, p5, :cond_c

    .line 151
    iget-object p4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    .line 153
    const/4 p1, 0x0

    return p1

    .line 149
    :cond_c
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p2, "Input buffer too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist processPacket([BII[BI)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;,
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    if-eqz v0, :cond_102

    .line 261
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v0, v0

    .line 262
    rsub-int/lit8 v0, v0, 0xf

    .line 263
    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1c

    .line 265
    mul-int/lit8 v1, v0, 0x8

    shl-int v1, v2, v1

    .line 266
    if-ge p3, v1, :cond_14

    goto :goto_1c

    .line 268
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CCM packet too large for choice of q."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 272
    :cond_1c
    :goto_1c
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v1, v1, [B

    .line 273
    sub-int/2addr v0, v2

    and-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    const/4 v3, 0x0

    aput-byte v0, v1, v3

    .line 274
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v4, v4

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/CTRModeCipher;

    move-result-object v0

    .line 277
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    invoke-direct {v4, v5, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v0, v2, v4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 280
    nop

    .line 281
    nop

    .line 283
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    const-string v2, "Output buffer too short."

    if-eqz v1, :cond_8e

    .line 285
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v1, p3

    .line 286
    array-length v4, p4

    add-int v5, v1, p5

    if-lt v4, v5, :cond_88

    .line 291
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 293
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v2, v2, [B

    .line 295
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-interface {v0, v4, v3, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move v4, p2

    move v5, p5

    .line 297
    :goto_61
    add-int v6, p2, p3

    iget v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int v7, v6, v7

    if-ge v4, v7, :cond_73

    .line 299
    invoke-interface {v0, p1, v4, p4, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 300
    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v5, v6

    .line 301
    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v4, v6

    goto :goto_61

    .line 304
    :cond_73
    iget p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array p2, p2, [B

    .line 306
    sub-int/2addr v6, v4

    invoke-static {p1, v4, p2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    invoke-interface {v0, p2, v3, p2, v3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 310
    invoke-static {p2, v3, p4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    add-int/2addr p5, p3

    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-static {v2, v3, p4, p5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    goto :goto_eb

    .line 288
    :cond_88
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p1, v2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :cond_8e
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-lt p3, v1, :cond_fa

    .line 320
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v1, p3, v1

    .line 321
    array-length p3, p4

    add-int v4, v1, p5

    if-lt p3, v4, :cond_f4

    .line 326
    add-int p3, p2, v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-static {p1, p3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-interface {v0, v2, v3, v4, v3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 330
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    :goto_ad
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v4, v4

    if-eq v2, v4, :cond_b9

    .line 332
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    aput-byte v3, v4, v2

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_ad

    :cond_b9
    move v2, p2

    move v4, p5

    .line 335
    :goto_bb
    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int v5, p3, v5

    if-ge v2, v5, :cond_cb

    .line 337
    invoke-interface {v0, p1, v2, p4, v4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 338
    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v4, v5

    .line 339
    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v2, v5

    goto :goto_bb

    .line 342
    :cond_cb
    iget p3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array p3, p3, [B

    .line 344
    sub-int p2, v2, p2

    sub-int p2, v1, p2

    invoke-static {p1, v2, p3, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    invoke-interface {v0, p3, v3, p3, v3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 348
    invoke-static {p3, v3, p4, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array p1, p1, [B

    .line 352
    invoke-direct {p0, p4, p5, v1, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 354
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-static {p2, p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_ec

    .line 360
    :goto_eb
    return v1

    .line 356
    :cond_ec
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "mac check in CCM failed"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 323
    :cond_f4
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p1, v2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 318
    :cond_fa
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "data too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 258
    :cond_102
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CCM cipher unitialized."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist processPacket([BII)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 220
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_b

    .line 222
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v0, p3

    new-array v0, v0, [B

    move-object v5, v0

    goto :goto_16

    .line 226
    :cond_b
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-lt p3, v0, :cond_1f

    .line 230
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v0, p3, v0

    new-array v0, v0, [B

    move-object v5, v0

    .line 233
    :goto_16
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    .line 235
    return-object v5

    .line 228
    :cond_1f
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "data too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist reset()V
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 169
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    .line 170
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    .line 171
    return-void
.end method
