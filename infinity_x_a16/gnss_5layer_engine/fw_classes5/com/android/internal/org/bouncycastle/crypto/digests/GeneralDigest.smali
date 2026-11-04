.class public abstract Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;
.super Ljava/lang/Object;
.source "GeneralDigest.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;
.implements Lcom/android/internal/org/bouncycastle/util/Memoable;


# static fields
.field private static final blacklist BYTE_LENGTH:I = 0x40


# instance fields
.field private blacklist byteCount:J

.field private final blacklist xBuf:[B

.field private blacklist xBufOff:I


# direct methods
.method protected constructor blacklist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 30
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 40
    return-void
.end method

.method protected constructor blacklist <init>([B)V
    .registers 6

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x4

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    .line 44
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 46
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 47
    return-void
.end method


# virtual methods
.method protected blacklist copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V
    .registers 6

    .line 51
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 54
    iget-wide v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 55
    return-void
.end method

.method public blacklist finish()V
    .registers 4

    .line 118
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    .line 123
    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    .line 125
    :goto_9
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    if-eqz v2, :cond_12

    .line 127
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    goto :goto_9

    .line 130
    :cond_12
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->processLength(J)V

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->processBlock()V

    .line 133
    return-void
.end method

.method public blacklist getByteLength()I
    .registers 2

    .line 155
    const/16 v0, 0x40

    return v0
.end method

.method protected blacklist populateState([B)V
    .registers 5

    .line 148
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 150
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 151
    return-void
.end method

.method protected abstract blacklist processBlock()V
.end method

.method protected abstract blacklist processLength(J)V
.end method

.method protected abstract blacklist processWord([BI)V
.end method

.method public blacklist reset()V
    .registers 4

    .line 137
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 140
    move v1, v0

    :goto_8
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_14

    .line 142
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    aput-byte v0, v2, v1

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 144
    :cond_14
    return-void
.end method

.method public blacklist update(B)V
    .registers 6

    .line 60
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    aput-byte p1, v0, v1

    .line 62
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v0, v0

    if-ne p1, v0, :cond_19

    .line 64
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    .line 65
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 68
    :cond_19
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 69
    return-void
.end method

.method public blacklist update([BII)V
    .registers 9

    .line 76
    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 81
    nop

    .line 82
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    if-eqz v1, :cond_2d

    move v1, v0

    .line 84
    :goto_b
    if-ge v1, p3, :cond_2c

    .line 86
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    aput-byte v1, v2, v3

    .line 87
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2a

    .line 89
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    .line 90
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 91
    move v0, v4

    goto :goto_2d

    .line 87
    :cond_2a
    move v1, v4

    goto :goto_b

    .line 84
    :cond_2c
    move v0, v1

    .line 99
    :cond_2d
    :goto_2d
    sub-int v1, p3, v0

    and-int/lit8 v1, v1, -0x4

    add-int/2addr v1, v0

    .line 100
    :goto_32
    if-ge v0, v1, :cond_3c

    .line 102
    add-int v2, p2, v0

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    .line 100
    add-int/lit8 v0, v0, 0x4

    goto :goto_32

    .line 108
    :cond_3c
    :goto_3c
    if-ge v0, p3, :cond_4f

    .line 110
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    aput-byte v0, v1, v2

    move v0, v3

    goto :goto_3c

    .line 113
    :cond_4f
    iget-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 114
    return-void
.end method
