.class public Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;
.super Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;
.source "SICBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/CTRModeCipher;


# instance fields
.field private blacklist IV:[B

.field private final blacklist blockSize:I

.field private blacklist byteCount:I

.field private final blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist counter:[B

.field private blacklist counterOut:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    .line 50
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 51
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    .line 52
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    .line 53
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    .line 54
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    .line 55
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 56
    return-void
.end method

.method private blacklist adjustCounter(J)V
    .registers 16

    .line 269
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x5

    const-wide/16 v5, 0xff

    const-wide/16 v7, 0x1

    if-ltz v2, :cond_3e

    .line 271
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v9, v2

    div-long/2addr v0, v9

    .line 273
    nop

    .line 274
    cmp-long v2, v0, v5

    if-lez v2, :cond_2c

    .line 276
    move-wide v5, v0

    :goto_1a
    if-lt v4, v3, :cond_2d

    .line 278
    mul-int/lit8 v2, v4, 0x8

    shl-long v9, v7, v2

    .line 279
    :goto_20
    cmp-long v2, v5, v9

    if-ltz v2, :cond_29

    .line 281
    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterAt(I)V

    .line 282
    sub-long/2addr v5, v9

    goto :goto_20

    .line 276
    :cond_29
    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    .line 274
    :cond_2c
    move-wide v5, v0

    .line 287
    :cond_2d
    long-to-int v2, v5

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter(I)V

    .line 289
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v2, v2

    add-long/2addr p1, v2

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    sub-long/2addr p1, v2

    long-to-int p1, p1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 290
    goto :goto_82

    .line 293
    :cond_3e
    neg-long v9, p1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v11, v2

    sub-long/2addr v9, v11

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v11, v2

    div-long/2addr v9, v11

    .line 295
    nop

    .line 296
    cmp-long v2, v9, v5

    if-lez v2, :cond_5f

    .line 298
    move-wide v5, v9

    :goto_4d
    if-lt v4, v3, :cond_60

    .line 300
    mul-int/lit8 v2, v4, 0x8

    shl-long v11, v7, v2

    .line 301
    :goto_53
    cmp-long v2, v5, v11

    if-lez v2, :cond_5c

    .line 303
    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    .line 304
    sub-long/2addr v5, v11

    goto :goto_53

    .line 298
    :cond_5c
    add-int/lit8 v4, v4, -0x1

    goto :goto_4d

    .line 296
    :cond_5f
    move-wide v5, v9

    .line 309
    :cond_60
    nop

    :goto_61
    cmp-long v2, v0, v5

    const/4 v3, 0x0

    if-eqz v2, :cond_6b

    .line 311
    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    .line 309
    add-long/2addr v0, v7

    goto :goto_61

    .line 314
    :cond_6b
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long p1, p1

    mul-long/2addr p1, v9

    add-long/2addr v0, p1

    long-to-int p1, v0

    .line 316
    if-ltz p1, :cond_7a

    .line 318
    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    goto :goto_82

    .line 322
    :cond_7a
    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    .line 323
    iget p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 326
    :goto_82
    return-void
.end method

.method private blacklist checkCounter()V
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_23

    .line 197
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_23

    .line 199
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_1b

    .line 197
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 201
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Counter in CTR/SIC mode out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_23
    return-void
.end method

.method private blacklist checkLastIncrement()V
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_24

    .line 212
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_1c

    goto :goto_24

    .line 214
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Counter in CTR/SIC mode out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_24
    :goto_24
    return-void
.end method

.method private blacklist decrementCounterAt(I)V
    .registers 5

    .line 257
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    .line 258
    :cond_4
    const/4 p1, -0x1

    add-int/2addr v0, p1

    if-ltz v0, :cond_14

    .line 260
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    if-eq v2, p1, :cond_4

    .line 262
    return-void

    .line 265
    :cond_14
    return-void
.end method

.method private blacklist incrementCounter()V
    .registers 4

    .line 221
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    .line 222
    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    .line 224
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    if-eqz v2, :cond_3

    .line 226
    nop

    .line 229
    :cond_13
    return-void
.end method

.method private blacklist incrementCounter(I)V
    .registers 7

    .line 245
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v0, v0, v1

    .line 247
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v3, v3

    sub-int/2addr v3, v2

    aget-byte v4, v1, v3

    add-int/2addr v4, p1

    int-to-byte p1, v4

    aput-byte p1, v1, v3

    .line 249
    if-eqz v0, :cond_24

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v1, v1

    sub-int/2addr v1, v2

    aget-byte p1, p1, v1

    if-ge p1, v0, :cond_24

    .line 251
    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterAt(I)V

    .line 253
    :cond_24
    return-void
.end method

.method private blacklist incrementCounterAt(I)V
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    .line 234
    :cond_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    .line 236
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    if-eqz v1, :cond_4

    .line 238
    nop

    .line 241
    :cond_14
    return-void
.end method

.method public static blacklist newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/CTRModeCipher;
    .registers 2

    .line 37
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method


# virtual methods
.method protected blacklist calculateByte(B)B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 172
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 174
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->checkLastIncrement()V

    .line 176
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 178
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v0, v0, v1

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    return p1

    .line 181
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    .line 183
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v2, v2

    if-ne v0, v2, :cond_36

    .line 185
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 186
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter()V

    .line 189
    :cond_36
    return p1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public blacklist getPosition()J
    .registers 8

    .line 356
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    new-array v1, v0, [B

    .line 358
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    add-int/lit8 v2, v0, -0x1

    :goto_d
    const/4 v3, 0x1

    if-lt v2, v3, :cond_37

    .line 363
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v4, v4

    if-ge v2, v4, :cond_21

    .line 365
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    aget-byte v5, v5, v2

    and-int/lit16 v5, v5, 0xff

    sub-int/2addr v4, v5

    goto :goto_25

    .line 369
    :cond_21
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    .line 372
    :goto_25
    if-gez v4, :cond_31

    .line 374
    add-int/lit8 v5, v2, -0x1

    aget-byte v6, v1, v5

    sub-int/2addr v6, v3

    int-to-byte v3, v6

    aput-byte v3, v1, v5

    .line 375
    add-int/lit16 v4, v4, 0x100

    .line 378
    :cond_31
    int-to-byte v3, v4

    aput-byte v3, v1, v2

    .line 360
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 381
    :cond_37
    add-int/lit8 v0, v0, -0x8

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 63
    instance-of p1, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_81

    .line 65
    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 66
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    .line 68
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v0, v0

    const-string v1, " bytes."

    if-lt p1, v0, :cond_62

    .line 73
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    div-int/lit8 p1, p1, 0x2

    const/16 v0, 0x8

    if-le v0, p1, :cond_25

    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    div-int/lit8 v0, p1, 0x2

    .line 75
    :cond_25
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v2, v2

    sub-int/2addr p1, v2

    if-gt p1, v0, :cond_42

    .line 81
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 83
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 86
    :cond_3d
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    .line 87
    nop

    .line 92
    return-void

    .line 77
    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CTR/SIC mode requires IV of at least: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    sub-int/2addr v2, v0

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_62
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CTR/SIC mode requires IV no greater than: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CTR/SIC mode requires ParametersWithIV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist processBlock([BI[BI)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 107
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    if-eqz v0, :cond_11

    .line 109
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->processBytes([BII[BI)I

    .line 110
    iget p1, v1, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    return p1

    .line 113
    :cond_11
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    iget p1, v1, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    add-int p2, v3, p1

    array-length p1, v2

    if-gt p2, p1, :cond_52

    .line 117
    iget p1, v1, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    add-int p4, v6, p1

    array-length p1, v5

    if-gt p4, p1, :cond_4a

    .line 122
    iget-object p1, v1, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object p2, v1, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object p3, v1, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    const/4 p4, 0x0

    invoke-interface {p1, p2, p4, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 123
    nop

    :goto_2f
    iget p1, v1, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    if-ge p4, p1, :cond_44

    .line 125
    add-int p1, v6, p4

    add-int p2, v3, p4

    aget-byte p2, v2, p2

    iget-object p3, v1, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    aget-byte p3, p3, p4

    xor-int/2addr p2, p3

    int-to-byte p2, p2

    aput-byte p2, v5, p1

    .line 123
    add-int/lit8 p4, p4, 0x1

    goto :goto_2f

    .line 127
    :cond_44
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter()V

    .line 128
    iget p1, v1, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    return p1

    .line 119
    :cond_4a
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_52
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too small"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 134
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_5b

    .line 138
    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_53

    .line 143
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, p3, :cond_52

    .line 147
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    if-nez v2, :cond_2f

    .line 149
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->checkLastIncrement()V

    .line 151
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v2, v3, v0, v4, v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 152
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    goto :goto_4b

    .line 156
    :cond_2f
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    .line 157
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v4, v4

    if-ne v3, v4, :cond_4b

    .line 159
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 160
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter()V

    .line 163
    :cond_4b
    :goto_4b
    add-int v3, p5, v1

    aput-byte v2, p4, v3

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 166
    :cond_52
    return p3

    .line 140
    :cond_53
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_5b
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too small"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist reset()V
    .registers 5

    .line 330
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 331
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 333
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 334
    return-void
.end method

.method public blacklist seekTo(J)J
    .registers 3

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    .line 351
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public blacklist skip(J)J
    .registers 7

    .line 338
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->adjustCounter(J)V

    .line 340
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->checkCounter()V

    .line 342
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v0, v1, v2, v3, v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 344
    return-wide p1
.end method
