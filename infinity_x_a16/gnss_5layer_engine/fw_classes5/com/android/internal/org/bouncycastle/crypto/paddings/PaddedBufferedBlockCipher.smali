.class public Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;
.super Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;
.source "PaddedBufferedBlockCipher.java"


# instance fields
.field blacklist padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3

    .line 50
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PKCS7Padding;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PKCS7Padding;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 36
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 38
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    .line 39
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 250
    nop

    .line 252
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->forEncryption:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    .line 254
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    if-ne v1, v0, :cond_2c

    .line 256
    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_21

    .line 263
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 264
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    goto :goto_2d

    .line 258
    :cond_21
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 260
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 254
    :cond_2c
    move v0, v2

    .line 267
    :goto_2d
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    invoke-interface {v1, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    .line 269
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    add-int/2addr p2, v0

    invoke-interface {v1, v3, v2, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p1

    add-int/2addr v0, p1

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    goto :goto_66

    .line 275
    :cond_44
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    if-ne v1, v0, :cond_6c

    .line 277
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    invoke-interface {v0, v1, v2, v3, v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 278
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    .line 289
    :try_start_54
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    invoke-interface {v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;->padCount([B)I

    move-result v1

    sub-int/2addr v0, v1

    .line 291
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_62
    .catchall {:try_start_54 .. :try_end_62} :catchall_67

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 296
    nop

    .line 299
    :goto_66
    return v0

    .line 295
    :catchall_67
    move-exception p1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 296
    throw p1

    .line 282
    :cond_6c
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 284
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p2, "last block incomplete in decryption"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getOutputSize(I)I
    .registers 3

    .line 98
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    .line 99
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v0, p1, v0

    .line 101
    if-nez v0, :cond_14

    .line 103
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_13

    .line 105
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v0, v0

    add-int/2addr p1, v0

    return p1

    .line 108
    :cond_13
    return p1

    .line 111
    :cond_14
    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v0, v0

    add-int/2addr p1, v0

    return p1
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 3

    .line 125
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    .line 126
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v0, p1, v0

    .line 128
    if-nez v0, :cond_14

    .line 130
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v0, v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    .line 133
    :cond_14
    sub-int/2addr p1, v0

    return p1
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 67
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->forEncryption:Z

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 71
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_1e

    .line 73
    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 75
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 78
    goto :goto_29

    .line 81
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    .line 83
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 85
    :goto_29
    return-void
.end method

.method public blacklist processByte(B[BI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 152
    nop

    .line 154
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_14

    .line 156
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p2

    .line 157
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    move v2, p2

    .line 160
    :cond_14
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget p3, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    aput-byte p1, p2, p3

    .line 162
    return v2
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 185
    if-ltz p3, :cond_56

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getBlockSize()I

    move-result v0

    .line 191
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    .line 193
    if-lez v1, :cond_19

    .line 195
    add-int/2addr v1, p5

    array-length v2, p4

    if-gt v1, v2, :cond_11

    goto :goto_19

    .line 197
    :cond_11
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_19
    :goto_19
    nop

    .line 202
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    sub-int/2addr v1, v2

    .line 204
    const/4 v2, 0x0

    if-le p3, v1, :cond_49

    .line 206
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    invoke-interface {v3, v4, v2, p4, p5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v3, v2

    .line 210
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    .line 211
    sub-int/2addr p3, v1

    .line 212
    add-int/2addr p2, v1

    move v2, v3

    .line 214
    :goto_38
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v1, v1

    if-le p3, v1, :cond_49

    .line 216
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    add-int v3, p5, v2

    invoke-interface {v1, p1, p2, p4, v3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    add-int/2addr v2, v1

    .line 218
    sub-int/2addr p3, v0

    .line 219
    add-int/2addr p2, v0

    goto :goto_38

    .line 223
    :cond_49
    iget-object p4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget p5, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    .line 227
    return v2

    .line 187
    :cond_56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
