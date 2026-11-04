.class public Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;
.super Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;
.source "DefaultBufferedBlockCipher.java"


# instance fields
.field protected blacklist buf:[B

.field protected blacklist bufOff:I

.field protected blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field protected blacklist forEncryption:Z

.field protected blacklist mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

.field protected blacklist partialBlockOkay:Z

.field protected blacklist pgpCFB:Z


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 7

    .line 43
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 46
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    if-eqz v0, :cond_19

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    .line 49
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;->getMultiBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    goto :goto_24

    .line 53
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    .line 54
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    .line 57
    :goto_24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 62
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    .line 63
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 65
    if-lez v2, :cond_3f

    const-string v4, "PGP"

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3f

    move v4, v3

    goto :goto_40

    :cond_3f
    move v4, v0

    :goto_40
    iput-boolean v4, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->pgpCFB:Z

    .line 67
    iget-boolean v4, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->pgpCFB:Z

    if-nez v4, :cond_59

    instance-of p1, p1, Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;

    if-eqz p1, :cond_4b

    goto :goto_59

    .line 73
    :cond_4b
    if-lez v2, :cond_56

    const-string p1, "OpenPGP"

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_56

    move v0, v3

    :cond_56
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->partialBlockOkay:Z

    goto :goto_5b

    .line 69
    :cond_59
    :goto_59
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->partialBlockOkay:Z

    .line 75
    :goto_5b
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 309
    nop

    .line 311
    :try_start_1
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_31

    .line 316
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 318
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->partialBlockOkay:Z

    if-eqz v0, :cond_24

    .line 323
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 324
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 325
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 326
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    goto :goto_2c

    .line 320
    :cond_24
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p2, "data not block size aligned"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_39

    .line 329
    :cond_2c
    :goto_2c
    nop

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->reset()V

    .line 329
    return v1

    .line 313
    :cond_31
    :try_start_31
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short for doFinal()"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_39

    .line 333
    :catchall_39
    move-exception p1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->reset()V

    .line 334
    throw p1
.end method

.method public blacklist getBlockSize()I
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public blacklist getOutputSize(I)I
    .registers 3

    .line 162
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->pgpCFB:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_15

    .line 164
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    return p1

    .line 168
    :cond_15
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    return p1
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 4

    .line 129
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    .line 132
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->pgpCFB:Z

    if-eqz v0, :cond_20

    .line 134
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_1a

    .line 136
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v0, p1, v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_25

    .line 140
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v0, p1, v0

    goto :goto_25

    .line 145
    :cond_20
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v0, p1, v0

    .line 148
    :goto_25
    sub-int/2addr p1, v0

    return p1
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 101
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->forEncryption:Z

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->reset()V

    .line 105
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 106
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

    .line 187
    nop

    .line 189
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    aput-byte p1, v0, v1

    .line 191
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1e

    .line 193
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p1

    .line 194
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    move v1, p1

    .line 197
    :cond_1e
    return v1
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 220
    if-ltz p3, :cond_97

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->getBlockSize()I

    move-result v0

    .line 226
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    .line 228
    if-lez v1, :cond_19

    .line 230
    add-int/2addr v1, p5

    array-length v2, p4

    if-gt v1, v2, :cond_11

    goto :goto_19

    .line 232
    :cond_11
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 236
    :cond_19
    :goto_19
    nop

    .line 237
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    sub-int/2addr v1, v2

    .line 239
    const/4 v2, 0x0

    if-le p3, v1, :cond_74

    .line 241
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-interface {v3, v4, v2, p4, p5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v3, v2

    .line 245
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 246
    sub-int/2addr p3, v1

    .line 247
    add-int v6, p2, v1

    .line 249
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    if-eqz p2, :cond_60

    .line 251
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;->getMultiBlockSize()I

    move-result p2

    div-int v7, p3, p2

    .line 253
    if-lez v7, :cond_5c

    .line 255
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    add-int v9, p5, v3

    move-object v5, p1

    move-object v8, p4

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;->processBlocks([BII[BI)I

    move-result p1

    add-int/2addr v3, p1

    .line 257
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;->getMultiBlockSize()I

    move-result p1

    mul-int/2addr v7, p1

    .line 259
    sub-int/2addr p3, v7

    .line 260
    add-int/2addr v6, v7

    move p2, v6

    goto :goto_5f

    .line 253
    :cond_5c
    move-object v5, p1

    move-object v8, p4

    move p2, v6

    .line 262
    :goto_5f
    goto :goto_77

    .line 249
    :cond_60
    move-object v5, p1

    move-object v8, p4

    move p2, v6

    .line 265
    :goto_63
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length p1, p1

    if-le p3, p1, :cond_77

    .line 267
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    add-int p4, p5, v3

    invoke-interface {p1, v5, p2, v8, p4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p1

    add-int/2addr v3, p1

    .line 269
    sub-int/2addr p3, v0

    .line 270
    add-int/2addr p2, v0

    goto :goto_63

    .line 239
    :cond_74
    move-object v5, p1

    move-object v8, p4

    move v3, v2

    .line 275
    :cond_77
    :goto_77
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    iget p4, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    invoke-static {v5, p2, p1, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 279
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length p2, p2

    if-ne p1, p2, :cond_96

    .line 281
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    add-int/2addr p5, v3

    invoke-interface {p1, p2, v2, v8, p5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p1

    add-int/2addr v3, p1

    .line 282
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 285
    :cond_96
    return v3

    .line 222
    :cond_97
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist reset()V
    .registers 4

    .line 346
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_e

    .line 348
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    aput-byte v0, v2, v1

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 351
    :cond_e
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 356
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 357
    return-void
.end method
