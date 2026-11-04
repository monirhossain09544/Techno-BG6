.class public Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;
.super Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;
.source "CTSBlockCipher.java"


# instance fields
.field private blacklist blockSize:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;-><init>()V

    .line 29
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;

    if-nez v0, :cond_1b

    .line 34
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 36
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    .line 38
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    .line 39
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .line 40
    return-void

    .line 31
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CTSBlockCipher can only accept ECB, or CBC ciphers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 196
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_d5

    .line 201
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 202
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    sub-int/2addr v1, v0

    .line 203
    new-array v2, v0, [B

    .line 205
    iget-boolean v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->forEncryption:Z

    const-string v4, "need at least one block of input for CTS"

    const/4 v5, 0x0

    if-eqz v3, :cond_77

    .line 207
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-lt v3, v0, :cond_71

    .line 212
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v3, v4, v5, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 214
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-le v3, v0, :cond_6d

    .line 216
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    :goto_29
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v4, v4

    if-eq v3, v4, :cond_39

    .line 218
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    sub-int v6, v3, v0

    aget-byte v6, v2, v6

    aput-byte v6, v4, v3

    .line 216
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 221
    :cond_39
    move v3, v0

    :goto_3a
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-eq v3, v4, :cond_4d

    .line 223
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    aget-byte v6, v4, v3

    sub-int v7, v3, v0

    aget-byte v7, v2, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 226
    :cond_4d
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    instance-of v3, v3, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCModeCipher;

    if-eqz v3, :cond_61

    .line 228
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCModeCipher;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCModeCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    .line 230
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v3, v4, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 231
    goto :goto_68

    .line 234
    :cond_61
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v3, v4, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 237
    :goto_68
    add-int/2addr p2, v0

    invoke-static {v2, v5, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c9

    .line 241
    :cond_6d
    invoke-static {v2, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c9

    .line 209
    :cond_71
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    invoke-direct {p1, v4}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 246
    :cond_77
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-lt v3, v0, :cond_cf

    .line 251
    new-array v3, v0, [B

    .line 253
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-le v4, v0, :cond_bf

    .line 255
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    instance-of v4, v4, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCModeCipher;

    if-eqz v4, :cond_95

    .line 257
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    check-cast v4, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCModeCipher;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCModeCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v4

    .line 259
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v4, v6, v5, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 260
    goto :goto_9c

    .line 263
    :cond_95
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v4, v6, v5, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 266
    :goto_9c
    move v4, v0

    :goto_9d
    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-eq v4, v6, :cond_b0

    .line 268
    sub-int v6, v4, v0

    aget-byte v7, v2, v6

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    aget-byte v8, v8, v4

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 266
    add-int/lit8 v4, v4, 0x1

    goto :goto_9d

    .line 271
    :cond_b0
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v2, v5, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 274
    add-int/2addr p2, v0

    invoke-static {v3, v5, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c9

    .line 278
    :cond_bf
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v1, v3, v5, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 280
    invoke-static {v2, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    :goto_c9
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->reset()V

    .line 288
    return p1

    .line 248
    :cond_cf
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    invoke-direct {p1, v4}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :cond_d5
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer to small in doFinal"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getOutputSize(I)I
    .registers 3

    .line 75
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    return p1
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 3

    .line 53
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    .line 54
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v0, p1, v0

    .line 56
    if-nez v0, :cond_f

    .line 58
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v0, v0

    sub-int/2addr p1, v0

    return p1

    .line 61
    :cond_f
    sub-int/2addr p1, v0

    return p1
.end method

.method public blacklist processByte(B[BI)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 94
    nop

    .line 96
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_21

    .line 98
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p2

    .line 99
    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    invoke-static {p3, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget p3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    iput p3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    move v2, p2

    .line 104
    :cond_21
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget p3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    aput-byte p1, p2, p3

    .line 106
    return v2
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 129
    if-ltz p3, :cond_6a

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->getBlockSize()I

    move-result v0

    .line 135
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    .line 137
    if-lez v1, :cond_19

    .line 139
    add-int/2addr v1, p5

    array-length v2, p4

    if-gt v1, v2, :cond_11

    goto :goto_19

    .line 141
    :cond_11
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_19
    :goto_19
    nop

    .line 146
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    sub-int/2addr v1, v2

    .line 148
    const/4 v2, 0x0

    if-le p3, v1, :cond_5d

    .line 150
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v3, v4, v2, p4, p5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v3, v2

    .line 153
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .line 157
    sub-int/2addr p3, v1

    .line 158
    add-int/2addr p2, v1

    .line 160
    :goto_3e
    if-le p3, v0, :cond_5c

    .line 162
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    add-int v5, p5, v3

    invoke-interface {v1, v4, v2, p4, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    add-int/2addr v3, v1

    .line 164
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v1, v0, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    sub-int/2addr p3, v0

    .line 167
    add-int/2addr p2, v0

    goto :goto_3e

    .line 160
    :cond_5c
    move v2, v3

    .line 171
    :cond_5d
    iget-object p4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget p5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .line 175
    return v2

    .line 131
    :cond_6a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
