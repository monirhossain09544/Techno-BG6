.class public Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;
.super Ljava/lang/Object;
.source "BufferedBlockCipher.java"


# instance fields
.field protected blacklist buf:[B

.field protected blacklist bufOff:I

.field protected blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field protected blacklist forEncryption:Z

.field protected blacklist mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

.field protected blacklist partialBlockOkay:Z

.field protected blacklist pgpCFB:Z


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 7

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 44
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    if-eqz v0, :cond_19

    .line 46
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    .line 47
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;->getMultiBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    goto :goto_24

    .line 51
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    .line 52
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    .line 55
    :goto_24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 60
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    .line 61
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 63
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
    iput-boolean v4, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    .line 65
    iget-boolean v4, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    if-nez v4, :cond_59

    instance-of p1, p1, Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;

    if-eqz p1, :cond_4b

    goto :goto_59

    .line 71
    :cond_4b
    if-lez v2, :cond_56

    const-string p1, "OpenPGP"

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_56

    move v0, v3

    :cond_56
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    goto :goto_5b

    .line 67
    :cond_59
    :goto_59
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    .line 73
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

    .line 307
    nop

    .line 309
    :try_start_1
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_31

    .line 314
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 316
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    if-eqz v0, :cond_24

    .line 321
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 322
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 323
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 324
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    goto :goto_2c

    .line 318
    :cond_24
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p2, "data not block size aligned"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_39

    .line 327
    :cond_2c
    :goto_2c
    nop

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    .line 327
    return v1

    .line 311
    :cond_31
    :try_start_31
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short for doFinal()"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_39

    .line 331
    :catchall_39
    move-exception p1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    .line 332
    throw p1
.end method

.method public blacklist getBlockSize()I
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public blacklist getOutputSize(I)I
    .registers 3

    .line 160
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_15

    .line 162
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    return p1

    .line 166
    :cond_15
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    return p1
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 4

    .line 127
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    .line 130
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    if-eqz v0, :cond_20

    .line 132
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_1a

    .line 134
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v0, p1, v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_25

    .line 138
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v0, p1, v0

    goto :goto_25

    .line 143
    :cond_20
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v0, p1, v0

    .line 146
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

    .line 99
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    .line 103
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 104
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

    .line 185
    nop

    .line 187
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    aput-byte p1, v0, v1

    .line 189
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1e

    .line 191
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p1

    .line 192
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    move v1, p1

    .line 195
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

    .line 218
    if-ltz p3, :cond_97

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v0

    .line 224
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    .line 226
    if-lez v1, :cond_19

    .line 228
    add-int/2addr v1, p5

    array-length v2, p4

    if-gt v1, v2, :cond_11

    goto :goto_19

    .line 230
    :cond_11
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 234
    :cond_19
    :goto_19
    nop

    .line 235
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int/2addr v1, v2

    .line 237
    const/4 v2, 0x0

    if-le p3, v1, :cond_74

    .line 239
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v3, v4, v2, p4, p5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v3, v2

    .line 243
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 244
    sub-int/2addr p3, v1

    .line 245
    add-int v6, p2, v1

    .line 247
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    if-eqz p2, :cond_60

    .line 249
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;->getMultiBlockSize()I

    move-result p2

    div-int v7, p3, p2

    .line 251
    if-lez v7, :cond_5c

    .line 253
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    add-int v9, p5, v3

    move-object v5, p1

    move-object v8, p4

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;->processBlocks([BII[BI)I

    move-result p1

    add-int/2addr v3, p1

    .line 255
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;->getMultiBlockSize()I

    move-result p1

    mul-int/2addr v7, p1

    .line 257
    sub-int/2addr p3, v7

    .line 258
    add-int/2addr v6, v7

    move p2, v6

    goto :goto_5f

    .line 251
    :cond_5c
    move-object v5, p1

    move-object v8, p4

    move p2, v6

    .line 260
    :goto_5f
    goto :goto_77

    .line 247
    :cond_60
    move-object v5, p1

    move-object v8, p4

    move p2, v6

    .line 263
    :goto_63
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length p1, p1

    if-le p3, p1, :cond_77

    .line 265
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    add-int p4, p5, v3

    invoke-interface {p1, v5, p2, v8, p4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p1

    add-int/2addr v3, p1

    .line 267
    sub-int/2addr p3, v0

    .line 268
    add-int/2addr p2, v0

    goto :goto_63

    .line 237
    :cond_74
    move-object v5, p1

    move-object v8, p4

    move v3, v2

    .line 273
    :cond_77
    :goto_77
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget p4, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {v5, p2, p1, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 277
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length p2, p2

    if-ne p1, p2, :cond_96

    .line 279
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    add-int/2addr p5, v3

    invoke-interface {p1, p2, v2, v8, p5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p1

    add-int/2addr v3, p1

    .line 280
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 283
    :cond_96
    return v3

    .line 220
    :cond_97
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist reset()V
    .registers 4

    .line 344
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_e

    .line 346
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    aput-byte v0, v2, v1

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 349
    :cond_e
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 354
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 355
    return-void
.end method
