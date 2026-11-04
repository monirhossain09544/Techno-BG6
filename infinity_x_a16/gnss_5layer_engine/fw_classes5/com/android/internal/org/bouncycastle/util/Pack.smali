.class public abstract Lcom/android/internal/org/bouncycastle/util/Pack;
.super Ljava/lang/Object;
.source "Pack.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bigEndianToInt([BI)I
    .registers 4

    .line 19
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    .line 20
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 21
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 22
    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    .line 23
    return p0
.end method

.method public static blacklist bigEndianToInt([BI[I)V
    .registers 5

    .line 28
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_f

    .line 30
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    aput v1, p2, v0

    .line 31
    add-int/lit8 p1, p1, 0x4

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 33
    :cond_f
    return-void
.end method

.method public static blacklist bigEndianToInt([BI[III)V
    .registers 8

    .line 37
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_10

    .line 39
    add-int v1, p3, v0

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, p2, v1

    .line 40
    add-int/lit8 p1, p1, 0x4

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    :cond_10
    return-void
.end method

.method public static blacklist bigEndianToLong([BI)J
    .registers 6

    .line 86
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    .line 87
    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result p0

    .line 88
    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static blacklist bigEndianToLong([BI[J)V
    .registers 6

    .line 93
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_f

    .line 95
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v1

    aput-wide v1, p2, v0

    .line 96
    add-int/lit8 p1, p1, 0x8

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    :cond_f
    return-void
.end method

.method public static blacklist bigEndianToLong([BI[JII)V
    .registers 9

    .line 102
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_10

    .line 104
    add-int v1, p3, v0

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 105
    add-int/lit8 p1, p1, 0x8

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_10
    return-void
.end method

.method public static blacklist bigEndianToShort([BI)S
    .registers 3

    .line 12
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 13
    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    .line 14
    int-to-short p0, p0

    return p0
.end method

.method public static blacklist intToBigEndian(I[BI)V
    .registers 4

    .line 53
    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 54
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 55
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 56
    add-int/lit8 p2, p2, 0x1

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    .line 57
    return-void
.end method

.method public static blacklist intToBigEndian([III[BI)V
    .registers 7

    .line 77
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_f

    .line 79
    add-int v1, p1, v0

    aget v1, p0, v1

    invoke-static {v1, p3, p4}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 80
    add-int/lit8 p4, p4, 0x4

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_f
    return-void
.end method

.method public static blacklist intToBigEndian([I[BI)V
    .registers 5

    .line 68
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 70
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 71
    add-int/lit8 p2, p2, 0x4

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_e
    return-void
.end method

.method public static blacklist intToBigEndian(I)[B
    .registers 3

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 47
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 48
    return-object v0
.end method

.method public static blacklist intToBigEndian([I)[B
    .registers 3

    .line 61
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 62
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian([I[BI)V

    .line 63
    return-object v0
.end method

.method public static blacklist intToLittleEndian(I[BI)V
    .registers 4

    .line 264
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 265
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 266
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 267
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    .line 268
    return-void
.end method

.method public static blacklist intToLittleEndian([III[BI)V
    .registers 7

    .line 288
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_f

    .line 290
    add-int v1, p1, v0

    aget v1, p0, v1

    invoke-static {v1, p3, p4}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 291
    add-int/lit8 p4, p4, 0x4

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 293
    :cond_f
    return-void
.end method

.method public static blacklist intToLittleEndian([I[BI)V
    .registers 5

    .line 279
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 281
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 282
    add-int/lit8 p2, p2, 0x4

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 284
    :cond_e
    return-void
.end method

.method public static blacklist intToLittleEndian(I)[B
    .registers 3

    .line 257
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 258
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 259
    return-object v0
.end method

.method public static blacklist intToLittleEndian([I)[B
    .registers 3

    .line 272
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 273
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 274
    return-object v0
.end method

.method public static blacklist littleEndianToInt([BI)I
    .registers 4

    .line 172
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 173
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 174
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 175
    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    .line 176
    return p0
.end method

.method public static blacklist littleEndianToInt([BI[I)V
    .registers 5

    .line 200
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_f

    .line 202
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, p2, v0

    .line 203
    add-int/lit8 p1, p1, 0x4

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_f
    return-void
.end method

.method public static blacklist littleEndianToInt([BI[III)V
    .registers 8

    .line 209
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_10

    .line 211
    add-int v1, p3, v0

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, p2, v1

    .line 212
    add-int/lit8 p1, p1, 0x4

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 214
    :cond_10
    return-void
.end method

.method public static blacklist littleEndianToInt([BII)[I
    .registers 6

    .line 218
    new-array v0, p2, [I

    .line 219
    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_10

    .line 221
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 222
    add-int/lit8 p1, p1, 0x4

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 224
    :cond_10
    return-object v0
.end method

.method public static blacklist littleEndianToInt_High([BII)I
    .registers 3

    .line 181
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result p0

    rsub-int/lit8 p1, p2, 0x4

    shl-int/lit8 p1, p1, 0x3

    shl-int/2addr p0, p1

    return p0
.end method

.method public static blacklist littleEndianToInt_Low([BII)I
    .registers 7

    .line 188
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 189
    nop

    .line 190
    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_7
    if-ge v2, p2, :cond_16

    .line 192
    add-int/lit8 v1, v1, 0x8

    .line 193
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 195
    :cond_16
    return v0
.end method

.method public static blacklist littleEndianToLong([BI)J
    .registers 7

    .line 297
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    .line 298
    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p0

    .line 299
    int-to-long p0, p0

    const-wide v1, 0xffffffffL

    and-long/2addr p0, v1

    const/16 v3, 0x20

    shl-long/2addr p0, v3

    int-to-long v3, v0

    and-long v0, v3, v1

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static blacklist littleEndianToLong([BI[J)V
    .registers 6

    .line 304
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_f

    .line 306
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v1

    aput-wide v1, p2, v0

    .line 307
    add-int/lit8 p1, p1, 0x8

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 309
    :cond_f
    return-void
.end method

.method public static blacklist littleEndianToLong([BI[JII)V
    .registers 9

    .line 313
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_10

    .line 315
    add-int v1, p3, v0

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 316
    add-int/lit8 p1, p1, 0x8

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 318
    :cond_10
    return-void
.end method

.method public static blacklist littleEndianToLong_High([BII)J
    .registers 3

    .line 339
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToLong_Low([BII)J

    move-result-wide p0

    rsub-int/lit8 p2, p2, 0x8

    shl-int/lit8 p2, p2, 0x3

    shl-long/2addr p0, p2

    return-wide p0
.end method

.method public static blacklist littleEndianToLong_Low([BII)J
    .registers 8

    .line 345
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 346
    const/4 v2, 0x1

    :goto_6
    if-ge v2, p2, :cond_16

    .line 348
    const/16 v3, 0x8

    shl-long/2addr v0, v3

    .line 349
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 351
    :cond_16
    return-wide v0
.end method

.method public static blacklist littleEndianToShort([BI)S
    .registers 3

    .line 165
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 166
    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    .line 167
    int-to-short p0, p0

    return p0
.end method

.method public static blacklist longToBigEndian(J[BI)V
    .registers 6

    .line 118
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 119
    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    add-int/lit8 p3, p3, 0x4

    invoke-static {p0, p2, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 120
    return-void
.end method

.method public static blacklist longToBigEndian(J[BII)V
    .registers 8

    .line 156
    add-int/lit8 p4, p4, -0x1

    :goto_2
    if-ltz p4, :cond_13

    .line 158
    add-int v0, p4, p3

    const-wide/16 v1, 0xff

    and-long/2addr v1, p0

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 159
    const/16 v0, 0x8

    ushr-long/2addr p0, v0

    .line 156
    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    .line 161
    :cond_13
    return-void
.end method

.method public static blacklist longToBigEndian([JII[BI)V
    .registers 8

    .line 140
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_f

    .line 142
    add-int v1, p1, v0

    aget-wide v1, p0, v1

    invoke-static {v1, v2, p3, p4}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 143
    add-int/lit8 p4, p4, 0x8

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_f
    return-void
.end method

.method public static blacklist longToBigEndian([J[BI)V
    .registers 6

    .line 131
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 133
    aget-wide v1, p0, v0

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 134
    add-int/lit8 p2, p2, 0x8

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    :cond_e
    return-void
.end method

.method public static blacklist longToBigEndian(J)[B
    .registers 4

    .line 111
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 112
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 113
    return-object v0
.end method

.method public static blacklist longToBigEndian([J)[B
    .registers 3

    .line 124
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 125
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian([J[BI)V

    .line 126
    return-object v0
.end method

.method public static blacklist longToLittleEndian(J[BI)V
    .registers 6

    .line 363
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 364
    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    add-int/lit8 p3, p3, 0x4

    invoke-static {p0, p2, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 365
    return-void
.end method

.method public static blacklist longToLittleEndian([JII[BI)V
    .registers 8

    .line 385
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_f

    .line 387
    add-int v1, p1, v0

    aget-wide v1, p0, v1

    invoke-static {v1, v2, p3, p4}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 388
    add-int/lit8 p4, p4, 0x8

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 390
    :cond_f
    return-void
.end method

.method public static blacklist longToLittleEndian([J[BI)V
    .registers 6

    .line 376
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 378
    aget-wide v1, p0, v0

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 379
    add-int/lit8 p2, p2, 0x8

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 381
    :cond_e
    return-void
.end method

.method public static blacklist longToLittleEndian(J)[B
    .registers 4

    .line 356
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 357
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 358
    return-object v0
.end method

.method public static blacklist longToLittleEndian([J)[B
    .registers 3

    .line 369
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 370
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    .line 371
    return-object v0
.end method

.method public static blacklist longToLittleEndian_High(J[BII)V
    .registers 10

    .line 323
    nop

    .line 324
    const/16 v0, 0x38

    ushr-long v1, p0, v0

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 325
    const/4 v1, 0x1

    :goto_a
    if-ge v1, p4, :cond_19

    .line 327
    add-int/lit8 v0, v0, -0x8

    .line 328
    add-int v2, p3, v1

    ushr-long v3, p0, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 330
    :cond_19
    return-void
.end method

.method public static blacklist shortToBigEndian(S[BI)V
    .registers 4

    .line 250
    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 251
    add-int/lit8 p2, p2, 0x1

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    .line 252
    return-void
.end method

.method public static blacklist shortToBigEndian(S)[B
    .registers 3

    .line 243
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 244
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->shortToBigEndian(S[BI)V

    .line 245
    return-object v0
.end method

.method public static blacklist shortToLittleEndian(S[BI)V
    .registers 4

    .line 236
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 237
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    .line 238
    return-void
.end method

.method public static blacklist shortToLittleEndian(S)[B
    .registers 3

    .line 229
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 230
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    .line 231
    return-object v0
.end method
