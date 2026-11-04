.class public Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;
.super Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;
.source "OFBBlockCipher.java"


# instance fields
.field private blacklist IV:[B

.field private final blacklist blockSize:I

.field private blacklist byteCount:I

.field private final blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist ofbOutV:[B

.field private blacklist ofbV:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V
    .registers 5

    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    .line 38
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    if-gt p2, v0, :cond_30

    if-lt p2, v1, :cond_30

    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_30

    .line 43
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 44
    div-int/2addr p2, v1

    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    .line 46
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    .line 47
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    .line 48
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    .line 49
    return-void

    .line 40
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0FB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " not supported"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected blacklist calculateByte(B)B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 168
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 170
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 173
    :cond_e
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    .line 175
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    if-ne v0, v2, :cond_40

    .line 177
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    .line 179
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    array-length v3, v3

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    :cond_40
    return p1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/OFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .registers 2

    .line 125
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    return v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 67
    instance-of p1, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v0, 0x1

    if-eqz p1, :cond_47

    .line 69
    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 70
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    .line 72
    array-length v1, p1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2c

    .line 75
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v2, v2

    array-length v4, p1

    sub-int/2addr v2, v4

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    move v1, v3

    :goto_1e
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v2, v2

    array-length v4, p1

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_34

    .line 78
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    aput-byte v3, v2, v1

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 83
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v2, v2

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    :cond_34
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->reset()V

    .line 89
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 91
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 93
    :cond_46
    goto :goto_51

    .line 96
    :cond_47
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->reset()V

    .line 99
    if-eqz p2, :cond_51

    .line 101
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1, v0, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 104
    :cond_51
    :goto_51
    return-void
.end method

.method public blacklist processBlock([BI[BI)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 148
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->processBytes([BII[BI)I

    .line 150
    iget p1, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    return p1
.end method

.method public blacklist reset()V
    .registers 5

    .line 159
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    .line 162
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 163
    return-void
.end method
