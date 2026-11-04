.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;
.super Ljava/lang/Object;
.source "SecP192R1Field.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL

.field static final blacklist P:[I

.field private static final blacklist P5:I = -0x1

.field private static final blacklist PExt:[I

.field private static final blacklist PExt11:I = -0x1

.field private static final blacklist PExtInv:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    .line 21
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    .line 23
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    return-void

    nop

    :array_1c
    .array-data 4
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2c
    .array-data 4
        0x1
        0x0
        0x2
        0x0
        0x1
        0x0
        -0x2
        -0x1
        -0x3
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_48
    .array-data 4
        -0x1
        -0x1
        -0x3
        -0x1
        -0x2
        -0x1
        0x1
        0x0
        0x2
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
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    move-result p0

    .line 31
    if-nez p0, :cond_14

    const/4 p0, 0x5

    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_17

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 33
    :cond_14
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 35
    :cond_17
    return-void
.end method

.method public static blacklist addExt([I[I[I)V
    .registers 4

    .line 39
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result p0

    .line 40
    if-nez p0, :cond_17

    const/16 p0, 0xb

    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_28

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    invoke-static {v0, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 42
    :cond_17
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length p0, p0

    sget-object p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result p0

    if-eqz p0, :cond_28

    .line 44
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length p0, p0

    invoke-static {v0, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 47
    :cond_28
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 3

    .line 51
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result p0

    .line 52
    if-nez p0, :cond_15

    const/4 p0, 0x5

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_18

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 54
    :cond_15
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 56
    :cond_18
    return-void
.end method

.method private static blacklist addPInvTo([I)V
    .registers 13

    .line 292
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 293
    long-to-int v7, v1

    aput v7, p0, v0

    .line 294
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 295
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_23

    .line 297
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 298
    long-to-int v10, v1

    aput v10, p0, v9

    .line 299
    shr-long/2addr v1, v0

    .line 301
    :cond_23
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 302
    long-to-int v3, v1

    aput v3, p0, v9

    .line 303
    shr-long v0, v1, v0

    .line 304
    cmp-long v0, v0, v7

    if-eqz v0, :cond_38

    .line 306
    const/4 v0, 0x6

    const/4 v1, 0x3

    invoke-static {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 308
    :cond_38
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 3

    .line 60
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p0

    .line 61
    const/4 v0, 0x5

    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 63
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->subFrom([I[I)I

    .line 65
    :cond_17
    return-object p0
.end method

.method public static blacklist half([I[I)V
    .registers 5

    .line 70
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x6

    if-nez v1, :cond_c

    .line 72
    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_15

    .line 76
    :cond_c
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    move-result p0

    .line 77
    invoke-static {v2, p1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 79
    :goto_15
    return-void
.end method

.method public static blacklist inv([I[I)V
    .registers 3

    .line 83
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    .line 84
    return-void
.end method

.method public static blacklist isZero([I)I
    .registers 4

    .line 88
    nop

    .line 89
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    const/4 v2, 0x6

    if-ge v0, v2, :cond_c

    .line 91
    aget v2, p0, v0

    or-int/2addr v1, v2

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 93
    :cond_c
    ushr-int/lit8 p0, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    or-int/2addr p0, v0

    .line 94
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist multiply([I[I[I)V
    .registers 4

    .line 99
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 100
    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 101
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    .line 102
    return-void
.end method

.method public static blacklist multiplyAddToExt([I[I[I)V
    .registers 4

    .line 106
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mulAddTo([I[I[I)I

    move-result p0

    .line 107
    const/16 p1, 0xc

    if-nez p0, :cond_17

    const/16 p0, 0xb

    aget p0, p2, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_28

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    invoke-static {p1, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 109
    :cond_17
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length p0, p0

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    invoke-static {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result p0

    if-eqz p0, :cond_28

    .line 111
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length p0, p0

    invoke-static {p1, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 114
    :cond_28
    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 3

    .line 118
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_e

    .line 120
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    goto :goto_13

    .line 124
    :cond_e
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    .line 126
    :goto_13
    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .registers 5

    .line 130
    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 133
    :cond_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 134
    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 136
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

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
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 145
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_1

    .line 146
    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 27

    .line 150
    move-object/from16 v0, p1

    const/4 v1, 0x6

    aget v2, p0, v1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x7

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    .line 151
    const/16 v10, 0x9

    aget v10, p0, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    const/16 v12, 0xa

    aget v12, p0, v12

    int-to-long v12, v12

    and-long/2addr v12, v4

    const/16 v14, 0xb

    aget v14, p0, v14

    int-to-long v14, v14

    and-long/2addr v14, v4

    .line 153
    add-long/2addr v12, v2

    .line 154
    add-long/2addr v14, v6

    .line 156
    nop

    .line 157
    const/16 v16, 0x0

    move-wide/from16 v17, v4

    aget v4, p0, v16

    int-to-long v4, v4

    and-long v4, v4, v17

    add-long/2addr v4, v12

    const-wide/16 v19, 0x0

    add-long v4, v4, v19

    .line 158
    long-to-int v1, v4

    .line 159
    const/16 v21, 0x20

    shr-long v4, v4, v21

    .line 160
    const/16 v22, 0x1

    move-wide/from16 v23, v2

    aget v2, p0, v22

    int-to-long v2, v2

    and-long v2, v2, v17

    add-long/2addr v2, v14

    add-long/2addr v4, v2

    .line 161
    long-to-int v2, v4

    aput v2, v0, v22

    .line 162
    shr-long v2, v4, v21

    .line 164
    add-long/2addr v12, v8

    .line 165
    add-long/2addr v14, v10

    .line 167
    const/4 v4, 0x2

    aget v5, p0, v4

    int-to-long v8, v5

    and-long v8, v8, v17

    add-long/2addr v8, v12

    add-long/2addr v2, v8

    .line 168
    and-long v8, v2, v17

    .line 169
    shr-long v2, v2, v21

    .line 170
    const/4 v5, 0x3

    aget v10, p0, v5

    int-to-long v10, v10

    and-long v10, v10, v17

    add-long/2addr v10, v14

    add-long/2addr v2, v10

    .line 171
    long-to-int v10, v2

    aput v10, v0, v5

    .line 172
    shr-long v2, v2, v21

    .line 174
    sub-long v12, v12, v23

    .line 175
    sub-long/2addr v14, v6

    .line 177
    const/4 v6, 0x4

    aget v7, p0, v6

    int-to-long v10, v7

    and-long v10, v10, v17

    add-long/2addr v10, v12

    add-long/2addr v2, v10

    .line 178
    long-to-int v7, v2

    aput v7, v0, v6

    .line 179
    shr-long v2, v2, v21

    .line 180
    const/4 v6, 0x5

    aget v7, p0, v6

    int-to-long v10, v7

    and-long v10, v10, v17

    add-long/2addr v10, v14

    add-long/2addr v2, v10

    .line 181
    long-to-int v7, v2

    aput v7, v0, v6

    .line 182
    shr-long v2, v2, v21

    .line 184
    add-long/2addr v8, v2

    .line 186
    int-to-long v10, v1

    and-long v10, v10, v17

    add-long/2addr v2, v10

    .line 187
    long-to-int v1, v2

    aput v1, v0, v16

    .line 188
    shr-long v1, v2, v21

    .line 189
    cmp-long v3, v1, v19

    if-eqz v3, :cond_a1

    .line 191
    aget v3, v0, v22

    int-to-long v10, v3

    and-long v10, v10, v17

    add-long/2addr v1, v10

    .line 192
    long-to-int v3, v1

    aput v3, v0, v22

    .line 193
    shr-long v1, v1, v21

    add-long/2addr v8, v1

    .line 195
    :cond_a1
    long-to-int v1, v8

    aput v1, v0, v4

    .line 196
    shr-long v1, v8, v21

    .line 200
    cmp-long v1, v1, v19

    if-eqz v1, :cond_b1

    const/4 v1, 0x6

    invoke-static {v1, v0, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v1

    if-nez v1, :cond_be

    :cond_b1
    aget v1, v0, v6

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c1

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    .line 201
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 203
    :cond_be
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 205
    :cond_c1
    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .registers 13

    .line 209
    nop

    .line 211
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_34

    .line 213
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 215
    const/4 p0, 0x0

    aget v6, p1, p0

    int-to-long v6, v6

    and-long/2addr v6, v4

    add-long/2addr v6, v2

    add-long/2addr v6, v0

    .line 216
    long-to-int v8, v6

    aput v8, p1, p0

    .line 217
    const/16 p0, 0x20

    shr-long/2addr v6, p0

    .line 218
    cmp-long v8, v6, v0

    if-eqz v8, :cond_27

    .line 220
    const/4 v8, 0x1

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v6, v9

    .line 221
    long-to-int v9, v6

    aput v9, p1, v8

    .line 222
    shr-long/2addr v6, p0

    .line 224
    :cond_27
    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v4, v2

    add-long/2addr v6, v4

    .line 225
    long-to-int v2, v6

    aput v2, p1, v8

    .line 226
    shr-long v2, v6, p0

    goto :goto_35

    .line 211
    :cond_34
    move-wide v2, v0

    .line 231
    :goto_35
    cmp-long p0, v2, v0

    if-eqz p0, :cond_41

    const/4 p0, 0x6

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    if-nez p0, :cond_4f

    :cond_41
    const/4 p0, 0x5

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_52

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    .line 232
    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_52

    .line 234
    :cond_4f
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 236
    :cond_52
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3

    .line 240
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 241
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 242
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    .line 243
    return-void
.end method

.method public static blacklist squareN([II[I)V
    .registers 4

    .line 249
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 250
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 251
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    .line 253
    :goto_a
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_15

    .line 255
    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 256
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    goto :goto_a

    .line 258
    :cond_15
    return-void
.end method

.method private static blacklist subPInvFrom([I)V
    .registers 13

    .line 312
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    .line 313
    long-to-int v7, v1

    aput v7, p0, v0

    .line 314
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 315
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_23

    .line 317
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 318
    long-to-int v10, v1

    aput v10, p0, v9

    .line 319
    shr-long/2addr v1, v0

    .line 321
    :cond_23
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 322
    long-to-int v3, v1

    aput v3, p0, v9

    .line 323
    shr-long v0, v1, v0

    .line 324
    cmp-long v0, v0, v7

    if-eqz v0, :cond_38

    .line 326
    const/4 v0, 0x6

    const/4 v1, 0x3

    invoke-static {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 328
    :cond_38
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 3

    .line 262
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    move-result p0

    .line 263
    if-eqz p0, :cond_9

    .line 265
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subPInvFrom([I)V

    .line 267
    :cond_9
    return-void
.end method

.method public static blacklist subtractExt([I[I[I)V
    .registers 4

    .line 271
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result p0

    .line 272
    if-eqz p0, :cond_19

    .line 274
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length p0, p0

    sget-object p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result p0

    if-eqz p0, :cond_19

    .line 276
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length p0, p0

    invoke-static {v0, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 279
    :cond_19
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 4

    .line 283
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result p0

    .line 284
    if-nez p0, :cond_16

    const/4 p0, 0x5

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_19

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 286
    :cond_16
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 288
    :cond_19
    return-void
.end method
