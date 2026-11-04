.class public abstract Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;
.super Ljava/lang/Object;
.source "GCMUtil.java"


# static fields
.field private static final blacklist E1:I = -0x1f000000

.field private static final blacklist E1L:J = -0x1f00000000000000L

.field public static final blacklist SIZE_BYTES:I = 0x10

.field public static final blacklist SIZE_INTS:I = 0x4

.field public static final blacklist SIZE_LONGS:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist areEqual([B[B)B
    .registers 6

    .line 43
    nop

    .line 44
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    const/16 v2, 0x10

    if-ge v0, v2, :cond_10

    .line 46
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 48
    :cond_10
    ushr-int/lit8 p0, v1, 0x1

    and-int/lit8 p1, v1, 0x1

    or-int/2addr p0, p1

    .line 49
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    int-to-byte p0, p0

    return p0
.end method

.method public static blacklist areEqual([I[I)I
    .registers 6

    .line 54
    nop

    .line 55
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 56
    const/4 v1, 0x1

    aget v2, p0, v1

    aget v3, p1, v1

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 57
    const/4 v2, 0x2

    aget v3, p0, v2

    aget v2, p1, v2

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 58
    const/4 v2, 0x3

    aget p0, p0, v2

    aget p1, p1, v2

    xor-int/2addr p0, p1

    or-int/2addr p0, v0

    .line 59
    ushr-int/lit8 p1, p0, 0x1

    and-int/2addr p0, v1

    or-int/2addr p0, p1

    .line 60
    sub-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist areEqual([J[J)J
    .registers 7

    .line 65
    nop

    .line 66
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long v0, v1, v3

    const-wide/16 v2, 0x0

    or-long/2addr v0, v2

    .line 67
    const/4 v2, 0x1

    aget-wide v3, p0, v2

    aget-wide p0, p1, v2

    xor-long/2addr p0, v3

    or-long/2addr p0, v0

    .line 68
    ushr-long v0, p0, v2

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    .line 69
    sub-long/2addr p0, v2

    const/16 v0, 0x3f

    shr-long/2addr p0, v0

    return-wide p0
.end method

.method public static blacklist asBytes([I[B)V
    .registers 4

    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1, p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian([III[BI)V

    .line 82
    return-void
.end method

.method public static blacklist asBytes([J[B)V
    .registers 4

    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian([JII[BI)V

    .line 94
    return-void
.end method

.method public static blacklist asBytes([I)[B
    .registers 4

    .line 74
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 75
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p0, v1, v2, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian([III[BI)V

    .line 76
    return-object v0
.end method

.method public static blacklist asBytes([J)[B
    .registers 4

    .line 86
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 87
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v1, v2, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian([JII[BI)V

    .line 88
    return-object v0
.end method

.method public static blacklist asInts([B[I)V
    .registers 4

    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI[III)V

    .line 106
    return-void
.end method

.method public static blacklist asInts([B)[I
    .registers 4

    .line 98
    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 99
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI[III)V

    .line 100
    return-object v1
.end method

.method public static blacklist asLongs([B[J)V
    .registers 4

    .line 117
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI[JII)V

    .line 118
    return-void
.end method

.method public static blacklist asLongs([B)[J
    .registers 4

    .line 110
    const/4 v0, 0x2

    new-array v1, v0, [J

    .line 111
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI[JII)V

    .line 112
    return-object v1
.end method

.method public static blacklist copy([B[B)V
    .registers 4

    .line 122
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_c

    .line 124
    aget-byte v1, p0, v0

    aput-byte v1, p1, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 126
    :cond_c
    return-void
.end method

.method public static blacklist copy([I[I)V
    .registers 4

    .line 130
    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    .line 131
    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    .line 132
    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    .line 133
    const/4 v0, 0x3

    aget p0, p0, v0

    aput p0, p1, v0

    .line 134
    return-void
.end method

.method public static blacklist copy([J[J)V
    .registers 5

    .line 138
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 139
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 140
    return-void
.end method

.method public static blacklist divideP([J[J)V
    .registers 12

    .line 144
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 145
    const/16 p0, 0x3f

    shr-long v6, v1, p0

    .line 146
    const-wide/high16 v8, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v8, v6

    xor-long/2addr v1, v8

    .line 147
    shl-long/2addr v1, v3

    ushr-long v8, v4, p0

    or-long/2addr v1, v8

    aput-wide v1, p1, v0

    .line 148
    shl-long v0, v4, v3

    neg-long v4, v6

    or-long/2addr v0, v4

    aput-wide v0, p1, v3

    .line 149
    return-void
.end method

.method private static blacklist implMul64(JJ)J
    .registers 36

    .line 516
    const-wide v0, 0x1111111111111111L

    and-long v2, p0, v0

    .line 517
    const-wide v4, 0x2222222222222222L

    and-long v6, p0, v4

    .line 518
    const-wide v8, 0x4444444444444444L    # 7.477080264543605E20

    and-long v10, p0, v8

    .line 519
    const-wide v12, -0x7777777777777778L    # -1.48603973805866E-267

    and-long v14, p0, v12

    .line 521
    and-long v16, p2, v0

    .line 522
    and-long v18, p2, v4

    .line 523
    and-long v20, p2, v8

    .line 524
    and-long v22, p2, v12

    .line 526
    mul-long v24, v2, v16

    mul-long v26, v6, v22

    xor-long v24, v24, v26

    mul-long v26, v10, v20

    xor-long v24, v24, v26

    mul-long v26, v14, v18

    xor-long v24, v24, v26

    .line 527
    mul-long v26, v2, v18

    mul-long v28, v6, v16

    xor-long v26, v26, v28

    mul-long v28, v10, v22

    xor-long v26, v26, v28

    mul-long v28, v14, v20

    xor-long v26, v26, v28

    .line 528
    mul-long v28, v2, v20

    mul-long v30, v6, v18

    xor-long v28, v28, v30

    mul-long v30, v10, v16

    xor-long v28, v28, v30

    mul-long v30, v14, v22

    xor-long v28, v28, v30

    .line 529
    mul-long v2, v2, v22

    mul-long v6, v6, v20

    xor-long/2addr v2, v6

    mul-long v10, v10, v18

    xor-long/2addr v2, v10

    mul-long v14, v14, v16

    xor-long/2addr v2, v14

    .line 531
    and-long v0, v24, v0

    .line 532
    and-long v4, v26, v4

    .line 533
    and-long v6, v28, v8

    .line 534
    and-long/2addr v2, v12

    .line 536
    or-long/2addr v0, v4

    or-long/2addr v0, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static blacklist multiply([B[B)V
    .registers 3

    .line 153
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B)[J

    move-result-object v0

    .line 154
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B)[J

    move-result-object p1

    .line 155
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([J[J)V

    .line 156
    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asBytes([J[B)V

    .line 157
    return-void
.end method

.method static blacklist multiply([B[J)V
    .registers 30

    .line 168
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    .line 169
    const/16 v4, 0x8

    invoke-static {v0, v4}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v5

    .line 170
    aget-wide v7, p1, v1

    const/4 v9, 0x1

    aget-wide v10, p1, v9

    .line 171
    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v12

    invoke-static {v5, v6}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v14

    .line 172
    move-wide/from16 v16, v5

    invoke-static {v7, v8}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v4

    move v6, v9

    move-wide/from16 v18, v10

    invoke-static/range {v18 .. v19}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v9

    .line 174
    invoke-static {v12, v13, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v20

    .line 175
    invoke-static {v2, v3, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v22

    shl-long v22, v22, v6

    .line 176
    invoke-static {v14, v15, v9, v10}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v24

    .line 177
    move/from16 p1, v6

    move-wide/from16 v26, v7

    move-wide/from16 v6, v16

    move-wide/from16 v16, v2

    move-wide/from16 v1, v18

    invoke-static {v6, v7, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v18

    shl-long v18, v18, p1

    .line 178
    xor-long v11, v12, v14

    xor-long v3, v4, v9

    invoke-static {v11, v12, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v3

    .line 179
    xor-long v5, v16, v6

    xor-long v1, v26, v1

    invoke-static {v5, v6, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v1

    shl-long v1, v1, p1

    .line 181
    nop

    .line 182
    xor-long v5, v22, v20

    xor-long v5, v5, v24

    xor-long/2addr v3, v5

    .line 183
    xor-long v5, v24, v22

    xor-long v5, v5, v18

    xor-long/2addr v1, v5

    .line 184
    nop

    .line 186
    ushr-long v5, v18, p1

    xor-long v5, v18, v5

    const/4 v7, 0x2

    ushr-long v9, v18, v7

    xor-long/2addr v5, v9

    const/4 v9, 0x7

    ushr-long v10, v18, v9

    xor-long/2addr v5, v10

    xor-long/2addr v3, v5

    .line 188
    const/16 v5, 0x3e

    shl-long v10, v18, v5

    const/16 v6, 0x39

    shl-long v12, v18, v6

    xor-long/2addr v10, v12

    xor-long/2addr v1, v10

    .line 190
    ushr-long v10, v1, p1

    xor-long/2addr v10, v1

    ushr-long v12, v1, v7

    xor-long/2addr v10, v12

    ushr-long v12, v1, v9

    xor-long v9, v10, v12

    xor-long v9, v20, v9

    .line 191
    const/16 v7, 0x3f

    shl-long v11, v1, v7

    shl-long v13, v1, v5

    xor-long/2addr v11, v13

    shl-long/2addr v1, v6

    xor-long/2addr v1, v11

    xor-long/2addr v1, v3

    .line 193
    const/4 v8, 0x0

    invoke-static {v9, v10, v0, v8}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 194
    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 195
    return-void
.end method

.method public static blacklist multiply([I[I)V
    .registers 19

    .line 199
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    const/4 v6, 0x3

    aget v7, p1, v6

    .line 200
    nop

    .line 202
    move v8, v0

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_12
    const/4 v13, 0x4

    if-ge v8, v13, :cond_50

    .line 204
    aget v13, p0, v8

    .line 205
    move v14, v0

    :goto_18
    const/16 v15, 0x20

    if-ge v14, v15, :cond_4d

    .line 207
    shr-int/lit8 v15, v13, 0x1f

    shl-int/2addr v13, v2

    .line 208
    and-int v16, v1, v15

    xor-int v9, v9, v16

    .line 209
    and-int v16, v3, v15

    xor-int v10, v10, v16

    .line 210
    and-int v16, v5, v15

    xor-int v11, v11, v16

    .line 211
    and-int/2addr v15, v7

    xor-int/2addr v12, v15

    .line 213
    shl-int/lit8 v15, v7, 0x1f

    shr-int/lit8 v15, v15, 0x8

    .line 214
    ushr-int/lit8 v7, v7, 0x1

    shl-int/lit8 v16, v5, 0x1f

    or-int v7, v7, v16

    .line 215
    ushr-int/lit8 v5, v5, 0x1

    shl-int/lit8 v16, v3, 0x1f

    or-int v5, v5, v16

    .line 216
    ushr-int/lit8 v3, v3, 0x1

    shl-int/lit8 v16, v1, 0x1f

    or-int v3, v3, v16

    .line 217
    ushr-int/lit8 v1, v1, 0x1

    const/high16 v16, -0x1f000000

    and-int v15, v15, v16

    xor-int/2addr v1, v15

    .line 205
    add-int/lit8 v14, v14, 0x1

    goto :goto_18

    .line 202
    :cond_4d
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 221
    :cond_50
    aput v9, p0, v0

    .line 222
    aput v10, p0, v2

    .line 223
    aput v11, p0, v4

    .line 224
    aput v12, p0, v6

    .line 225
    return-void
.end method

.method public static blacklist multiply([J[J)V
    .registers 29

    .line 261
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 262
    aget-wide v6, p1, v0

    aget-wide v8, p1, v3

    .line 263
    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v10

    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v12

    .line 264
    invoke-static {v6, v7}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v14

    move/from16 v16, v3

    move-wide/from16 v17, v4

    invoke-static {v8, v9}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v3

    .line 266
    invoke-static {v10, v11, v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v19

    .line 267
    invoke-static {v1, v2, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v21

    shl-long v21, v21, v16

    .line 268
    invoke-static {v12, v13, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v23

    .line 269
    move v5, v0

    move-wide/from16 v25, v1

    move-wide/from16 v0, v17

    invoke-static {v0, v1, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v17

    shl-long v17, v17, v16

    .line 270
    xor-long/2addr v10, v12

    xor-long v2, v14, v3

    invoke-static {v10, v11, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v2

    .line 271
    xor-long v0, v25, v0

    xor-long/2addr v6, v8

    invoke-static {v0, v1, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v0

    shl-long v0, v0, v16

    .line 273
    nop

    .line 274
    xor-long v6, v21, v19

    xor-long v6, v6, v23

    xor-long/2addr v2, v6

    .line 275
    xor-long v6, v23, v21

    xor-long v6, v6, v17

    xor-long/2addr v0, v6

    .line 276
    nop

    .line 278
    ushr-long v6, v17, v16

    xor-long v6, v17, v6

    const/4 v4, 0x2

    ushr-long v8, v17, v4

    xor-long/2addr v6, v8

    const/4 v8, 0x7

    ushr-long v9, v17, v8

    xor-long/2addr v6, v9

    xor-long/2addr v2, v6

    .line 280
    const/16 v6, 0x3e

    shl-long v9, v17, v6

    const/16 v7, 0x39

    shl-long v11, v17, v7

    xor-long/2addr v9, v11

    xor-long/2addr v0, v9

    .line 282
    ushr-long v9, v0, v16

    xor-long/2addr v9, v0

    ushr-long v11, v0, v4

    xor-long/2addr v9, v11

    ushr-long v11, v0, v8

    xor-long v8, v9, v11

    xor-long v8, v19, v8

    .line 283
    const/16 v4, 0x3f

    shl-long v10, v0, v4

    shl-long v12, v0, v6

    xor-long/2addr v10, v12

    shl-long/2addr v0, v7

    xor-long/2addr v0, v10

    xor-long/2addr v0, v2

    .line 285
    aput-wide v8, p0, v5

    .line 286
    aput-wide v0, p0, v16

    .line 287
    return-void
.end method

.method public static blacklist multiplyP([I)V
    .registers 12

    .line 291
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    .line 292
    shl-int/lit8 v8, v7, 0x1f

    shr-int/lit8 v8, v8, 0x1f

    .line 293
    ushr-int/lit8 v9, v1, 0x1

    const/high16 v10, -0x1f000000

    and-int/2addr v8, v10

    xor-int/2addr v8, v9

    aput v8, p0, v0

    .line 294
    ushr-int/lit8 v0, v3, 0x1

    shl-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    aput v0, p0, v2

    .line 295
    ushr-int/lit8 v0, v5, 0x1

    shl-int/lit8 v1, v3, 0x1f

    or-int/2addr v0, v1

    aput v0, p0, v4

    .line 296
    ushr-int/lit8 v0, v7, 0x1

    shl-int/lit8 v1, v5, 0x1f

    or-int/2addr v0, v1

    aput v0, p0, v6

    .line 297
    return-void
.end method

.method public static blacklist multiplyP([I[I)V
    .registers 12

    .line 301
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget p0, p0, v6

    .line 302
    shl-int/lit8 v7, p0, 0x1f

    shr-int/lit8 v7, v7, 0x1f

    .line 303
    ushr-int/lit8 v8, v1, 0x1

    const/high16 v9, -0x1f000000

    and-int/2addr v7, v9

    xor-int/2addr v7, v8

    aput v7, p1, v0

    .line 304
    ushr-int/lit8 v0, v3, 0x1

    shl-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    aput v0, p1, v2

    .line 305
    ushr-int/lit8 v0, v5, 0x1

    shl-int/lit8 v1, v3, 0x1f

    or-int/2addr v0, v1

    aput v0, p1, v4

    .line 306
    ushr-int/2addr p0, v2

    shl-int/lit8 v0, v5, 0x1f

    or-int/2addr p0, v0

    aput p0, p1, v6

    .line 307
    return-void
.end method

.method public static blacklist multiplyP([J)V
    .registers 14

    .line 311
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 312
    const/16 v6, 0x3f

    shl-long v7, v4, v6

    shr-long/2addr v7, v6

    .line 313
    ushr-long v9, v1, v3

    const-wide/high16 v11, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v7, v11

    xor-long/2addr v7, v9

    aput-wide v7, p0, v0

    .line 314
    ushr-long/2addr v4, v3

    shl-long v0, v1, v6

    or-long/2addr v0, v4

    aput-wide v0, p0, v3

    .line 315
    return-void
.end method

.method public static blacklist multiplyP([J[J)V
    .registers 14

    .line 319
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 320
    const/16 p0, 0x3f

    shl-long v6, v4, p0

    shr-long/2addr v6, p0

    .line 321
    ushr-long v8, v1, v3

    const-wide/high16 v10, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v6, v10

    xor-long/2addr v6, v8

    aput-wide v6, p1, v0

    .line 322
    ushr-long/2addr v4, v3

    shl-long v0, v1, p0

    or-long/2addr v0, v4

    aput-wide v0, p1, v3

    .line 323
    return-void
.end method

.method public static blacklist multiplyP16([J)V
    .registers 15

    .line 387
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 388
    const/16 v6, 0x30

    shl-long v7, v4, v6

    .line 389
    const/16 v9, 0x10

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long/2addr v7, v12

    xor-long/2addr v7, v10

    aput-wide v7, p0, v0

    .line 390
    ushr-long/2addr v4, v9

    shl-long v0, v1, v6

    or-long/2addr v0, v4

    aput-wide v0, p0, v3

    .line 391
    return-void
.end method

.method public static blacklist multiplyP3([J[J)V
    .registers 15

    .line 327
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 328
    const/16 p0, 0x3d

    shl-long v6, v4, p0

    .line 329
    const/4 v8, 0x3

    ushr-long v9, v1, v8

    xor-long/2addr v9, v6

    ushr-long v11, v6, v3

    xor-long/2addr v9, v11

    const/4 v11, 0x2

    ushr-long v11, v6, v11

    xor-long/2addr v9, v11

    const/4 v11, 0x7

    ushr-long/2addr v6, v11

    xor-long/2addr v6, v9

    aput-wide v6, p1, v0

    .line 330
    ushr-long/2addr v4, v8

    shl-long v0, v1, p0

    or-long/2addr v0, v4

    aput-wide v0, p1, v3

    .line 331
    return-void
.end method

.method public static blacklist multiplyP4([J[J)V
    .registers 15

    .line 335
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 336
    const/16 p0, 0x3c

    shl-long v6, v4, p0

    .line 337
    const/4 v8, 0x4

    ushr-long v9, v1, v8

    xor-long/2addr v9, v6

    ushr-long v11, v6, v3

    xor-long/2addr v9, v11

    const/4 v11, 0x2

    ushr-long v11, v6, v11

    xor-long/2addr v9, v11

    const/4 v11, 0x7

    ushr-long/2addr v6, v11

    xor-long/2addr v6, v9

    aput-wide v6, p1, v0

    .line 338
    ushr-long/2addr v4, v8

    shl-long v0, v1, p0

    or-long/2addr v0, v4

    aput-wide v0, p1, v3

    .line 339
    return-void
.end method

.method public static blacklist multiplyP7([J[J)V
    .registers 15

    .line 343
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 344
    const/16 p0, 0x39

    shl-long v6, v4, p0

    .line 345
    const/4 v8, 0x7

    ushr-long v9, v1, v8

    xor-long/2addr v9, v6

    ushr-long v11, v6, v3

    xor-long/2addr v9, v11

    const/4 v11, 0x2

    ushr-long v11, v6, v11

    xor-long/2addr v9, v11

    ushr-long/2addr v6, v8

    xor-long/2addr v6, v9

    aput-wide v6, p1, v0

    .line 346
    ushr-long/2addr v4, v8

    shl-long v0, v1, p0

    or-long/2addr v0, v4

    aput-wide v0, p1, v3

    .line 347
    return-void
.end method

.method public static blacklist multiplyP8([I)V
    .registers 12

    .line 351
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    .line 352
    shl-int/lit8 v8, v7, 0x18

    .line 353
    ushr-int/lit8 v9, v1, 0x8

    xor-int/2addr v9, v8

    ushr-int/lit8 v10, v8, 0x1

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x2

    xor-int/2addr v9, v10

    ushr-int/lit8 v8, v8, 0x7

    xor-int/2addr v8, v9

    aput v8, p0, v0

    .line 354
    ushr-int/lit8 v0, v3, 0x8

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    aput v0, p0, v2

    .line 355
    ushr-int/lit8 v0, v5, 0x8

    shl-int/lit8 v1, v3, 0x18

    or-int/2addr v0, v1

    aput v0, p0, v4

    .line 356
    ushr-int/lit8 v0, v7, 0x8

    shl-int/lit8 v1, v5, 0x18

    or-int/2addr v0, v1

    aput v0, p0, v6

    .line 357
    return-void
.end method

.method public static blacklist multiplyP8([I[I)V
    .registers 12

    .line 361
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget p0, p0, v6

    .line 362
    shl-int/lit8 v7, p0, 0x18

    .line 363
    ushr-int/lit8 v8, v1, 0x8

    xor-int/2addr v8, v7

    ushr-int/lit8 v9, v7, 0x1

    xor-int/2addr v8, v9

    ushr-int/lit8 v9, v7, 0x2

    xor-int/2addr v8, v9

    ushr-int/lit8 v7, v7, 0x7

    xor-int/2addr v7, v8

    aput v7, p1, v0

    .line 364
    ushr-int/lit8 v0, v3, 0x8

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    aput v0, p1, v2

    .line 365
    ushr-int/lit8 v0, v5, 0x8

    shl-int/lit8 v1, v3, 0x18

    or-int/2addr v0, v1

    aput v0, p1, v4

    .line 366
    ushr-int/lit8 p0, p0, 0x8

    shl-int/lit8 v0, v5, 0x18

    or-int/2addr p0, v0

    aput p0, p1, v6

    .line 367
    return-void
.end method

.method public static blacklist multiplyP8([J)V
    .registers 15

    .line 371
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 372
    const/16 v6, 0x38

    shl-long v7, v4, v6

    .line 373
    const/16 v9, 0x8

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long/2addr v7, v12

    xor-long/2addr v7, v10

    aput-wide v7, p0, v0

    .line 374
    ushr-long/2addr v4, v9

    shl-long v0, v1, v6

    or-long/2addr v0, v4

    aput-wide v0, p0, v3

    .line 375
    return-void
.end method

.method public static blacklist multiplyP8([J[J)V
    .registers 15

    .line 379
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 380
    const/16 p0, 0x38

    shl-long v6, v4, p0

    .line 381
    const/16 v8, 0x8

    ushr-long v9, v1, v8

    xor-long/2addr v9, v6

    ushr-long v11, v6, v3

    xor-long/2addr v9, v11

    const/4 v11, 0x2

    ushr-long v11, v6, v11

    xor-long/2addr v9, v11

    const/4 v11, 0x7

    ushr-long/2addr v6, v11

    xor-long/2addr v6, v9

    aput-wide v6, p1, v0

    .line 382
    ushr-long/2addr v4, v8

    shl-long v0, v1, p0

    or-long/2addr v0, v4

    aput-wide v0, p1, v3

    .line 383
    return-void
.end method

.method public static blacklist oneAsBytes()[B
    .registers 3

    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 23
    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 24
    return-object v0
.end method

.method public static blacklist oneAsInts()[I
    .registers 3

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 30
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    .line 31
    return-object v0
.end method

.method public static blacklist oneAsLongs()[J
    .registers 4

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 37
    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 38
    return-object v0
.end method

.method public static blacklist pAsLongs()[J
    .registers 4

    .line 395
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 396
    const/4 v1, 0x0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    aput-wide v2, v0, v1

    .line 397
    return-object v0
.end method

.method public static blacklist square([J[J)V
    .registers 20

    .line 402
    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 403
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Interleave;->expand64To128Rev(J[JI)V

    .line 404
    const/4 v2, 0x1

    aget-wide v3, p0, v2

    const/4 v5, 0x2

    invoke-static {v3, v4, v0, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Interleave;->expand64To128Rev(J[JI)V

    .line 406
    aget-wide v3, v0, v1

    aget-wide v6, v0, v2

    aget-wide v8, v0, v5

    const/4 v10, 0x3

    aget-wide v10, v0, v10

    .line 408
    ushr-long v12, v10, v2

    xor-long/2addr v12, v10

    ushr-long v14, v10, v5

    xor-long/2addr v12, v14

    const/4 v0, 0x7

    ushr-long v14, v10, v0

    xor-long/2addr v12, v14

    xor-long/2addr v6, v12

    .line 409
    const/16 v12, 0x3f

    shl-long v13, v10, v12

    const/16 v15, 0x3e

    shl-long v16, v10, v15

    xor-long v13, v13, v16

    const/16 v16, 0x39

    shl-long v10, v10, v16

    xor-long/2addr v10, v13

    xor-long/2addr v8, v10

    .line 411
    ushr-long v10, v8, v2

    xor-long/2addr v10, v8

    ushr-long v13, v8, v5

    xor-long/2addr v10, v13

    ushr-long v13, v8, v0

    xor-long/2addr v10, v13

    xor-long/2addr v3, v10

    .line 412
    shl-long v10, v8, v12

    shl-long v12, v8, v15

    xor-long/2addr v10, v12

    shl-long v8, v8, v16

    xor-long/2addr v8, v10

    xor-long v5, v6, v8

    .line 414
    aput-wide v3, p1, v1

    .line 415
    aput-wide v5, p1, v2

    .line 416
    return-void
.end method

.method public static blacklist xor([BI[BII)V
    .registers 8

    .line 467
    nop

    :goto_1
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_12

    .line 469
    add-int v0, p1, p4

    aget-byte v1, p0, v0

    add-int v2, p3, p4

    aget-byte v2, p2, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_1

    .line 471
    :cond_12
    return-void
.end method

.method public static blacklist xor([BI[BI[BI)V
    .registers 10

    .line 446
    const/4 v0, 0x0

    .line 449
    :cond_1
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    .line 450
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    .line 451
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    .line 452
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    .line 454
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 455
    return-void
.end method

.method public static blacklist xor([B[B)V
    .registers 5

    .line 420
    const/4 v0, 0x0

    .line 423
    :cond_1
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 424
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 425
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 426
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 428
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 429
    return-void
.end method

.method public static blacklist xor([B[BI)V
    .registers 6

    .line 433
    const/4 v0, 0x0

    .line 436
    :cond_1
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 437
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 438
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 439
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 441
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 442
    return-void
.end method

.method public static blacklist xor([B[BII)V
    .registers 6

    .line 459
    nop

    :goto_1
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_10

    .line 461
    aget-byte v0, p0, p3

    add-int v1, p2, p3

    aget-byte v1, p1, v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    goto :goto_1

    .line 463
    :cond_10
    return-void
.end method

.method public static blacklist xor([B[B[B)V
    .registers 6

    .line 475
    const/4 v0, 0x0

    .line 478
    :cond_1
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 479
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 480
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 481
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 483
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 484
    return-void
.end method

.method public static blacklist xor([I[I)V
    .registers 5

    .line 488
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 489
    const/4 v0, 0x1

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 490
    const/4 v0, 0x2

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 491
    const/4 v0, 0x3

    aget v1, p0, v0

    aget p1, p1, v0

    xor-int/2addr p1, v1

    aput p1, p0, v0

    .line 492
    return-void
.end method

.method public static blacklist xor([I[I[I)V
    .registers 6

    .line 496
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    .line 497
    const/4 v0, 0x1

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    .line 498
    const/4 v0, 0x2

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    .line 499
    const/4 v0, 0x3

    aget p0, p0, v0

    aget p1, p1, v0

    xor-int/2addr p0, p1

    aput p0, p2, v0

    .line 500
    return-void
.end method

.method public static blacklist xor([J[J)V
    .registers 7

    .line 504
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 505
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 506
    return-void
.end method

.method public static blacklist xor([J[J[J)V
    .registers 8

    .line 510
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 511
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide p0, p1, v0

    xor-long/2addr p0, v1

    aput-wide p0, p2, v0

    .line 512
    return-void
.end method
