.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;
.super Ljava/lang/Object;
.source "SecP224R1Field.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL

.field static final blacklist P:[I

.field private static final blacklist P6:I = -0x1

.field private static final blacklist PExt:[I

.field private static final blacklist PExt13:I = -0x1

.field private static final blacklist PExtInv:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    .line 22
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExt:[I

    .line 24
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    return-void

    nop

    :array_1c
    .array-data 4
        0x1
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2e
    .array-data 4
        0x1
        0x0
        0x0
        -0x2
        -0x1
        -0x1
        0x0
        0x2
        0x0
        0x0
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_4e
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        0x0
        -0x1
        -0x3
        -0x1
        -0x1
        0x1
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

    .line 31
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->add([I[I[I)I

    move-result p0

    .line 32
    if-nez p0, :cond_14

    const/4 p0, 0x6

    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_17

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 34
    :cond_14
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    .line 36
    :cond_17
    return-void
.end method

.method public static blacklist addExt([I[I[I)V
    .registers 4

    .line 40
    const/16 v0, 0xe

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result p0

    .line 41
    if-nez p0, :cond_17

    const/16 p0, 0xd

    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_28

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExt:[I

    invoke-static {v0, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 43
    :cond_17
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length p0, p0

    sget-object p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result p0

    if-eqz p0, :cond_28

    .line 45
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length p0, p0

    invoke-static {v0, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 48
    :cond_28
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 3

    .line 52
    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result p0

    .line 53
    if-nez p0, :cond_15

    const/4 p0, 0x6

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_18

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 55
    :cond_15
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    .line 57
    :cond_18
    return-void
.end method

.method private static blacklist addPInvTo([I)V
    .registers 13

    .line 299
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    .line 300
    long-to-int v7, v1

    aput v7, p0, v0

    .line 301
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 302
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2d

    .line 304
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 305
    long-to-int v10, v1

    aput v10, p0, v9

    .line 306
    shr-long/2addr v1, v0

    .line 307
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 308
    long-to-int v10, v1

    aput v10, p0, v9

    .line 309
    shr-long/2addr v1, v0

    .line 311
    :cond_2d
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 312
    long-to-int v3, v1

    aput v3, p0, v9

    .line 313
    shr-long v0, v1, v0

    .line 314
    cmp-long v0, v0, v7

    if-eqz v0, :cond_42

    .line 316
    const/4 v0, 0x7

    const/4 v1, 0x4

    invoke-static {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 318
    :cond_42
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 3

    .line 61
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p0

    .line 62
    const/4 v0, 0x6

    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 64
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->subFrom([I[I)I

    .line 66
    :cond_17
    return-object p0
.end method

.method public static blacklist half([I[I)V
    .registers 5

    .line 71
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x7

    if-nez v1, :cond_c

    .line 73
    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_15

    .line 77
    :cond_c
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->add([I[I[I)I

    move-result p0

    .line 78
    invoke-static {v2, p1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 80
    :goto_15
    return-void
.end method

.method public static blacklist inv([I[I)V
    .registers 3

    .line 84
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    .line 85
    return-void
.end method

.method public static blacklist isZero([I)I
    .registers 4

    .line 89
    nop

    .line 90
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    const/4 v2, 0x7

    if-ge v0, v2, :cond_c

    .line 92
    aget v2, p0, v0

    or-int/2addr v1, v2

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 94
    :cond_c
    ushr-int/lit8 p0, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    or-int/2addr p0, v0

    .line 95
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist multiply([I[I[I)V
    .registers 4

    .line 100
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 101
    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->mul([I[I[I)V

    .line 102
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    .line 103
    return-void
.end method

.method public static blacklist multiplyAddToExt([I[I[I)V
    .registers 4

    .line 107
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->mulAddTo([I[I[I)I

    move-result p0

    .line 108
    const/16 p1, 0xe

    if-nez p0, :cond_17

    const/16 p0, 0xd

    aget p0, p2, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_28

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExt:[I

    invoke-static {p1, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 110
    :cond_17
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length p0, p0

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    invoke-static {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result p0

    if-eqz p0, :cond_28

    .line 112
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length p0, p0

    invoke-static {p1, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 115
    :cond_28
    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 3

    .line 119
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_e

    .line 121
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    goto :goto_13

    .line 125
    :cond_e
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    .line 127
    :goto_13
    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .registers 5

    .line 131
    const/16 v0, 0x1c

    new-array v0, v0, [B

    .line 134
    :cond_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 135
    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 137
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    return-void
.end method

.method public static blacklist randomMult(Ljava/security/SecureRandom;[I)V
    .registers 3

    .line 144
    nop

    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 146
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_1

    .line 147
    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 36

    .line 151
    move-object/from16 v0, p1

    const/16 v1, 0xa

    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v5, 0xb

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0xc

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/16 v9, 0xd

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 155
    const/4 v11, 0x7

    aget v12, p0, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    add-long/2addr v12, v5

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    .line 156
    const/16 v16, 0x8

    move-wide/from16 v17, v3

    aget v3, p0, v16

    int-to-long v3, v3

    and-long v3, v3, v17

    add-long/2addr v3, v7

    .line 157
    const/16 v16, 0x9

    move-wide/from16 v19, v14

    aget v14, p0, v16

    int-to-long v14, v14

    and-long v14, v14, v17

    add-long/2addr v14, v9

    .line 159
    nop

    .line 160
    const/16 v16, 0x0

    aget v11, p0, v16

    move-wide/from16 v21, v1

    int-to-long v1, v11

    and-long v1, v1, v17

    sub-long/2addr v1, v12

    const-wide/16 v23, 0x0

    add-long v1, v1, v23

    .line 161
    and-long v25, v1, v17

    .line 162
    const/16 v11, 0x20

    shr-long/2addr v1, v11

    .line 163
    const/16 v27, 0x1

    move/from16 v28, v11

    aget v11, p0, v27

    move-wide/from16 v29, v1

    int-to-long v1, v11

    and-long v1, v1, v17

    sub-long/2addr v1, v3

    add-long v1, v29, v1

    .line 164
    long-to-int v11, v1

    aput v11, v0, v27

    .line 165
    shr-long v1, v1, v28

    .line 166
    const/16 v29, 0x2

    aget v11, p0, v29

    move-wide/from16 v30, v1

    int-to-long v1, v11

    and-long v1, v1, v17

    sub-long/2addr v1, v14

    add-long v1, v30, v1

    .line 167
    long-to-int v11, v1

    aput v11, v0, v29

    .line 168
    shr-long v1, v1, v28

    .line 169
    const/16 v30, 0x3

    aget v11, p0, v30

    move-wide/from16 v31, v1

    int-to-long v1, v11

    and-long v1, v1, v17

    add-long/2addr v1, v12

    sub-long v1, v1, v21

    add-long v1, v31, v1

    .line 170
    and-long v11, v1, v17

    .line 171
    shr-long v1, v1, v28

    .line 172
    const/16 v31, 0x4

    aget v13, p0, v31

    move-wide/from16 v32, v1

    int-to-long v1, v13

    and-long v1, v1, v17

    add-long/2addr v1, v3

    sub-long/2addr v1, v5

    add-long v1, v32, v1

    .line 173
    long-to-int v3, v1

    aput v3, v0, v31

    .line 174
    shr-long v1, v1, v28

    .line 175
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v4, v4

    and-long v4, v4, v17

    add-long/2addr v4, v14

    sub-long/2addr v4, v7

    add-long/2addr v1, v4

    .line 176
    long-to-int v4, v1

    aput v4, v0, v3

    .line 177
    shr-long v1, v1, v28

    .line 178
    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v4, v4

    and-long v4, v4, v17

    add-long v4, v4, v21

    sub-long/2addr v4, v9

    add-long/2addr v1, v4

    .line 179
    long-to-int v4, v1

    aput v4, v0, v3

    .line 180
    shr-long v1, v1, v28

    .line 181
    add-long v1, v1, v19

    .line 185
    add-long/2addr v11, v1

    .line 187
    sub-long v1, v25, v1

    .line 188
    long-to-int v4, v1

    aput v4, v0, v16

    .line 189
    shr-long v1, v1, v28

    .line 190
    cmp-long v4, v1, v23

    if-eqz v4, :cond_da

    .line 192
    aget v4, v0, v27

    int-to-long v4, v4

    and-long v4, v4, v17

    add-long/2addr v1, v4

    .line 193
    long-to-int v4, v1

    aput v4, v0, v27

    .line 194
    shr-long v1, v1, v28

    .line 195
    aget v4, v0, v29

    int-to-long v4, v4

    and-long v4, v4, v17

    add-long/2addr v1, v4

    .line 196
    long-to-int v4, v1

    aput v4, v0, v29

    .line 197
    shr-long v1, v1, v28

    add-long/2addr v11, v1

    .line 199
    :cond_da
    long-to-int v1, v11

    aput v1, v0, v30

    .line 200
    shr-long v1, v11, v28

    .line 204
    cmp-long v1, v1, v23

    if-eqz v1, :cond_ec

    move/from16 v2, v31

    const/4 v1, 0x7

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v1

    if-nez v1, :cond_f9

    :cond_ec
    aget v1, v0, v3

    const/4 v2, -0x1

    if-ne v1, v2, :cond_fc

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    .line 205
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 207
    :cond_f9
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    .line 209
    :cond_fc
    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .registers 13

    .line 213
    nop

    .line 215
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_3e

    .line 217
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 219
    const/4 p0, 0x0

    aget v6, p1, p0

    int-to-long v6, v6

    and-long/2addr v6, v4

    sub-long/2addr v6, v2

    add-long/2addr v6, v0

    .line 220
    long-to-int v8, v6

    aput v8, p1, p0

    .line 221
    const/16 p0, 0x20

    shr-long/2addr v6, p0

    .line 222
    cmp-long v8, v6, v0

    if-eqz v8, :cond_31

    .line 224
    const/4 v8, 0x1

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v6, v9

    .line 225
    long-to-int v9, v6

    aput v9, p1, v8

    .line 226
    shr-long/2addr v6, p0

    .line 227
    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v6, v9

    .line 228
    long-to-int v9, v6

    aput v9, p1, v8

    .line 229
    shr-long/2addr v6, p0

    .line 231
    :cond_31
    const/4 v8, 0x3

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v4, v2

    add-long/2addr v6, v4

    .line 232
    long-to-int v2, v6

    aput v2, p1, v8

    .line 233
    shr-long v2, v6, p0

    goto :goto_3f

    .line 215
    :cond_3e
    move-wide v2, v0

    .line 238
    :goto_3f
    cmp-long p0, v2, v0

    if-eqz p0, :cond_4b

    const/4 p0, 0x7

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    if-nez p0, :cond_59

    :cond_4b
    const/4 p0, 0x6

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_5c

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    .line 239
    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_5c

    .line 241
    :cond_59
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    .line 243
    :cond_5c
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3

    .line 247
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 248
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 249
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    .line 250
    return-void
.end method

.method public static blacklist squareN([II[I)V
    .registers 4

    .line 256
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 257
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 258
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    .line 260
    :goto_a
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_15

    .line 262
    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 263
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    goto :goto_a

    .line 265
    :cond_15
    return-void
.end method

.method private static blacklist subPInvFrom([I)V
    .registers 13

    .line 322
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 323
    long-to-int v7, v1

    aput v7, p0, v0

    .line 324
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 325
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2d

    .line 327
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 328
    long-to-int v10, v1

    aput v10, p0, v9

    .line 329
    shr-long/2addr v1, v0

    .line 330
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 331
    long-to-int v10, v1

    aput v10, p0, v9

    .line 332
    shr-long/2addr v1, v0

    .line 334
    :cond_2d
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 335
    long-to-int v3, v1

    aput v3, p0, v9

    .line 336
    shr-long v0, v1, v0

    .line 337
    cmp-long v0, v0, v7

    if-eqz v0, :cond_42

    .line 339
    const/4 v0, 0x7

    const/4 v1, 0x4

    invoke-static {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 341
    :cond_42
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 3

    .line 269
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    move-result p0

    .line 270
    if-eqz p0, :cond_9

    .line 272
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subPInvFrom([I)V

    .line 274
    :cond_9
    return-void
.end method

.method public static blacklist subtractExt([I[I[I)V
    .registers 4

    .line 278
    const/16 v0, 0xe

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result p0

    .line 279
    if-eqz p0, :cond_19

    .line 281
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length p0, p0

    sget-object p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result p0

    if-eqz p0, :cond_19

    .line 283
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length p0, p0

    invoke-static {v0, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 286
    :cond_19
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 4

    .line 290
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result p0

    .line 291
    if-nez p0, :cond_16

    const/4 p0, 0x6

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_19

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 293
    :cond_16
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    .line 295
    :cond_19
    return-void
.end method
