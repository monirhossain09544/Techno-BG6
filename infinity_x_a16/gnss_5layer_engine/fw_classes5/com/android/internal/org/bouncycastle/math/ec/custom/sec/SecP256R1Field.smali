.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;
.super Ljava/lang/Object;
.source "SecP256R1Field.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL

.field static final blacklist P:[I

.field private static final blacklist P7:I = -0x1

.field private static final blacklist PExt:[I

.field private static final blacklist PExt15s1:I = 0x7fffffff


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    return-void

    nop

    :array_14
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x0
        0x0
        0x0
        0x1
        -0x1
    .end array-data

    :array_28
    .array-data 4
        0x1
        0x0
        0x0
        -0x2
        -0x1
        -0x1
        -0x2
        0x1
        -0x2
        0x1
        -0x2
        0x1
        0x1
        -0x2
        0x2
        -0x2
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add([I[I[I)V
    .registers 3

    .line 30
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result p0

    .line 31
    if-nez p0, :cond_14

    const/4 p0, 0x7

    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_17

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 33
    :cond_14
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 35
    :cond_17
    return-void
.end method

.method public static blacklist addExt([I[I[I)V
    .registers 4

    .line 39
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result p0

    .line 40
    if-nez p0, :cond_1b

    const/16 p0, 0xf

    aget p0, p2, p0

    ushr-int/lit8 p0, p0, 0x1

    const p1, 0x7fffffff

    if-lt p0, p1, :cond_20

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v0, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 42
    :cond_1b
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v0, p0, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 44
    :cond_20
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 3

    .line 48
    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result p0

    .line 49
    if-nez p0, :cond_16

    const/4 p0, 0x7

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_19

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 51
    :cond_16
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 53
    :cond_19
    return-void
.end method

.method private static blacklist addPInvTo([I)V
    .registers 13

    .line 317
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 318
    long-to-int v7, v1

    aput v7, p0, v0

    .line 319
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 320
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2d

    .line 322
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 323
    long-to-int v10, v1

    aput v10, p0, v9

    .line 324
    shr-long/2addr v1, v0

    .line 325
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 326
    long-to-int v10, v1

    aput v10, p0, v9

    .line 327
    shr-long/2addr v1, v0

    .line 329
    :cond_2d
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    sub-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 330
    long-to-int v10, v1

    aput v10, p0, v9

    .line 331
    shr-long/2addr v1, v0

    .line 332
    cmp-long v7, v1, v7

    if-eqz v7, :cond_50

    .line 334
    const/4 v7, 0x4

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 335
    long-to-int v8, v1

    aput v8, p0, v7

    .line 336
    shr-long/2addr v1, v0

    .line 337
    const/4 v7, 0x5

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 338
    long-to-int v8, v1

    aput v8, p0, v7

    .line 339
    shr-long/2addr v1, v0

    .line 341
    :cond_50
    const/4 v7, 0x6

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v8, v5

    add-long/2addr v1, v8

    .line 342
    long-to-int v8, v1

    aput v8, p0, v7

    .line 343
    shr-long v0, v1, v0

    .line 344
    const/4 v2, 0x7

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v3, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 345
    long-to-int v0, v0

    aput v0, p0, v2

    .line 347
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 3

    .line 57
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p0

    .line 58
    const/4 v0, 0x7

    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 60
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

    .line 62
    :cond_17
    return-object p0
.end method

.method public static blacklist half([I[I)V
    .registers 5

    .line 67
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    if-nez v1, :cond_d

    .line 69
    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_16

    .line 73
    :cond_d
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result p0

    .line 74
    invoke-static {v2, p1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 76
    :goto_16
    return-void
.end method

.method public static blacklist inv([I[I)V
    .registers 3

    .line 80
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    .line 81
    return-void
.end method

.method public static blacklist isZero([I)I
    .registers 4

    .line 85
    nop

    .line 86
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    const/16 v2, 0x8

    if-ge v0, v2, :cond_d

    .line 88
    aget v2, p0, v0

    or-int/2addr v1, v2

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 90
    :cond_d
    ushr-int/lit8 p0, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    or-int/2addr p0, v0

    .line 91
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist multiply([I[I[I)V
    .registers 4

    .line 96
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 97
    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 98
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 99
    return-void
.end method

.method public static blacklist multiply([I[I[I[I)V
    .registers 4

    .line 103
    invoke-static {p0, p1, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 104
    invoke-static {p3, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 105
    return-void
.end method

.method public static blacklist multiplyAddToExt([I[I[I)V
    .registers 4

    .line 109
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    move-result p0

    .line 110
    const/16 p1, 0x10

    if-nez p0, :cond_1b

    const/16 p0, 0xf

    aget p0, p2, p0

    ushr-int/lit8 p0, p0, 0x1

    const v0, 0x7fffffff

    if-lt p0, v0, :cond_20

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {p1, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 112
    :cond_1b
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {p1, p0, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 114
    :cond_20
    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 3

    .line 118
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_e

    .line 120
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    goto :goto_13

    .line 124
    :cond_e
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    .line 126
    :goto_13
    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .registers 5

    .line 130
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 133
    :cond_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 134
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 136
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    return-void
.end method

.method public static blacklist randomMult(Ljava/security/SecureRandom;[I)V
    .registers 3

    .line 143
    nop

    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 145
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_1

    .line 146
    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 35

    .line 150
    move-object/from16 v0, p1

    const/16 v1, 0x8

    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v5, 0x9

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0xa

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/16 v9, 0xb

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 151
    const/16 v11, 0xc

    aget v11, p0, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/16 v13, 0xd

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    const/16 v15, 0xe

    aget v15, p0, v15

    move-wide/from16 v16, v3

    int-to-long v3, v15

    and-long v3, v3, v16

    const/16 v15, 0xf

    aget v15, p0, v15

    move-wide/from16 v18, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    .line 155
    const-wide/16 v20, 0x6

    sub-long v18, v18, v20

    .line 157
    add-long v22, v18, v5

    .line 158
    add-long/2addr v5, v7

    .line 159
    add-long/2addr v7, v9

    sub-long/2addr v7, v1

    .line 160
    add-long/2addr v9, v11

    .line 161
    add-long/2addr v11, v13

    .line 162
    add-long/2addr v13, v3

    .line 163
    add-long v24, v3, v1

    .line 164
    sub-long v22, v13, v22

    .line 166
    nop

    .line 167
    const/16 v26, 0x0

    aget v15, p0, v26

    move-wide/from16 v27, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    sub-long/2addr v1, v9

    sub-long v1, v1, v22

    const-wide/16 v29, 0x0

    add-long v1, v1, v29

    .line 168
    long-to-int v15, v1

    aput v15, v0, v26

    .line 169
    const/16 v15, 0x20

    shr-long/2addr v1, v15

    .line 170
    const/16 v26, 0x1

    move/from16 v29, v15

    aget v15, p0, v26

    move-wide/from16 v30, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v5

    sub-long/2addr v1, v11

    sub-long v1, v1, v24

    add-long v1, v30, v1

    .line 171
    long-to-int v15, v1

    aput v15, v0, v26

    .line 172
    shr-long v1, v1, v29

    .line 173
    const/16 v30, 0x2

    aget v15, p0, v30

    move-wide/from16 v31, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v7

    sub-long/2addr v1, v13

    add-long v1, v31, v1

    .line 174
    long-to-int v15, v1

    aput v15, v0, v30

    .line 175
    shr-long v1, v1, v29

    .line 176
    const/16 v30, 0x3

    aget v15, p0, v30

    move-wide/from16 v31, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    shl-long v9, v9, v26

    add-long/2addr v1, v9

    add-long v1, v1, v22

    sub-long v1, v1, v24

    add-long v1, v31, v1

    .line 177
    long-to-int v9, v1

    aput v9, v0, v30

    .line 178
    shr-long v1, v1, v29

    .line 179
    const/4 v9, 0x4

    aget v10, p0, v9

    move v15, v9

    int-to-long v9, v10

    and-long v9, v9, v16

    shl-long v30, v11, v26

    add-long v9, v9, v30

    add-long/2addr v9, v3

    sub-long/2addr v9, v5

    add-long/2addr v1, v9

    .line 180
    long-to-int v3, v1

    aput v3, v0, v15

    .line 181
    shr-long v1, v1, v29

    .line 182
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v4, v4

    and-long v4, v4, v16

    shl-long v9, v13, v26

    add-long/2addr v4, v9

    sub-long/2addr v4, v7

    add-long/2addr v1, v4

    .line 183
    long-to-int v4, v1

    aput v4, v0, v3

    .line 184
    shr-long v1, v1, v29

    .line 185
    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v4, v4

    and-long v4, v4, v16

    shl-long v9, v24, v26

    add-long/2addr v4, v9

    add-long v4, v4, v22

    add-long/2addr v1, v4

    .line 186
    long-to-int v4, v1

    aput v4, v0, v3

    .line 187
    shr-long v1, v1, v29

    .line 188
    const/4 v3, 0x7

    aget v4, p0, v3

    int-to-long v4, v4

    and-long v4, v4, v16

    shl-long v9, v27, v26

    add-long/2addr v4, v9

    add-long v4, v4, v18

    sub-long/2addr v4, v7

    sub-long/2addr v4, v11

    add-long/2addr v1, v4

    .line 189
    long-to-int v4, v1

    aput v4, v0, v3

    .line 190
    shr-long v1, v1, v29

    .line 191
    add-long v1, v1, v20

    .line 195
    long-to-int v1, v1

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    .line 196
    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .registers 14

    .line 200
    nop

    .line 202
    const/4 v0, 0x7

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_6c

    .line 204
    int-to-long v3, p0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 206
    const/4 p0, 0x0

    aget v7, p1, p0

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v7, v3

    add-long/2addr v7, v1

    .line 207
    long-to-int v9, v7

    aput v9, p1, p0

    .line 208
    const/16 p0, 0x20

    shr-long/2addr v7, p0

    .line 209
    cmp-long v9, v7, v1

    if-eqz v9, :cond_32

    .line 211
    const/4 v9, 0x1

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v5

    add-long/2addr v7, v10

    .line 212
    long-to-int v10, v7

    aput v10, p1, v9

    .line 213
    shr-long/2addr v7, p0

    .line 214
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v5

    add-long/2addr v7, v10

    .line 215
    long-to-int v10, v7

    aput v10, p1, v9

    .line 216
    shr-long/2addr v7, p0

    .line 218
    :cond_32
    const/4 v9, 0x3

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v5

    sub-long/2addr v10, v3

    add-long/2addr v7, v10

    .line 219
    long-to-int v10, v7

    aput v10, p1, v9

    .line 220
    shr-long/2addr v7, p0

    .line 221
    cmp-long v9, v7, v1

    if-eqz v9, :cond_55

    .line 223
    const/4 v9, 0x4

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v5

    add-long/2addr v7, v10

    .line 224
    long-to-int v10, v7

    aput v10, p1, v9

    .line 225
    shr-long/2addr v7, p0

    .line 226
    const/4 v9, 0x5

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v5

    add-long/2addr v7, v10

    .line 227
    long-to-int v10, v7

    aput v10, p1, v9

    .line 228
    shr-long/2addr v7, p0

    .line 230
    :cond_55
    const/4 v9, 0x6

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v5

    sub-long/2addr v10, v3

    add-long/2addr v7, v10

    .line 231
    long-to-int v10, v7

    aput v10, p1, v9

    .line 232
    shr-long/2addr v7, p0

    .line 233
    aget v9, p1, v0

    int-to-long v9, v9

    and-long/2addr v5, v9

    add-long/2addr v5, v3

    add-long/2addr v7, v5

    .line 234
    long-to-int v3, v7

    aput v3, p1, v0

    .line 235
    shr-long v3, v7, p0

    goto :goto_6d

    .line 202
    :cond_6c
    move-wide v3, v1

    .line 240
    :goto_6d
    cmp-long p0, v3, v1

    if-nez p0, :cond_7e

    aget p0, p1, v0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_81

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_81

    .line 242
    :cond_7e
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 244
    :cond_81
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3

    .line 248
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 249
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 250
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 251
    return-void
.end method

.method public static blacklist square([I[I[I)V
    .registers 3

    .line 255
    invoke-static {p0, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 256
    invoke-static {p2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 257
    return-void
.end method

.method public static blacklist squareN([II[I)V
    .registers 4

    .line 263
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 264
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 265
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 267
    :goto_a
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_15

    .line 269
    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 270
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    goto :goto_a

    .line 272
    :cond_15
    return-void
.end method

.method public static blacklist squareN([II[I[I)V
    .registers 4

    .line 278
    invoke-static {p0, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 279
    invoke-static {p3, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 281
    :goto_6
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_11

    .line 283
    invoke-static {p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 284
    invoke-static {p3, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    goto :goto_6

    .line 286
    :cond_11
    return-void
.end method

.method private static blacklist subPInvFrom([I)V
    .registers 13

    .line 351
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    .line 352
    long-to-int v7, v1

    aput v7, p0, v0

    .line 353
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 354
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2d

    .line 356
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 357
    long-to-int v10, v1

    aput v10, p0, v9

    .line 358
    shr-long/2addr v1, v0

    .line 359
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 360
    long-to-int v10, v1

    aput v10, p0, v9

    .line 361
    shr-long/2addr v1, v0

    .line 363
    :cond_2d
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 364
    long-to-int v10, v1

    aput v10, p0, v9

    .line 365
    shr-long/2addr v1, v0

    .line 366
    cmp-long v7, v1, v7

    if-eqz v7, :cond_50

    .line 368
    const/4 v7, 0x4

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 369
    long-to-int v8, v1

    aput v8, p0, v7

    .line 370
    shr-long/2addr v1, v0

    .line 371
    const/4 v7, 0x5

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 372
    long-to-int v8, v1

    aput v8, p0, v7

    .line 373
    shr-long/2addr v1, v0

    .line 375
    :cond_50
    const/4 v7, 0x6

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v8, v5

    add-long/2addr v1, v8

    .line 376
    long-to-int v8, v1

    aput v8, p0, v7

    .line 377
    shr-long v0, v1, v0

    .line 378
    const/4 v2, 0x7

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v3, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 379
    long-to-int v0, v0

    aput v0, p0, v2

    .line 381
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 3

    .line 290
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result p0

    .line 291
    if-eqz p0, :cond_9

    .line 293
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subPInvFrom([I)V

    .line 295
    :cond_9
    return-void
.end method

.method public static blacklist subtractExt([I[I[I)V
    .registers 4

    .line 299
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result p0

    .line 300
    if-eqz p0, :cond_d

    .line 302
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v0, p0, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    .line 304
    :cond_d
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 4

    .line 308
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result p0

    .line 309
    if-nez p0, :cond_17

    const/4 p0, 0x7

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1a

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 311
    :cond_17
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 313
    :cond_1a
    return-void
.end method
