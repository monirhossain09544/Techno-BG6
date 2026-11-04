.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;
.super Ljava/lang/Object;
.source "SecP384R1Field.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL

.field static final blacklist P:[I

.field private static final blacklist P11:I = -0x1

.field private static final blacklist PExt:[I

.field private static final blacklist PExt23:I = -0x1

.field private static final blacklist PExtInv:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    .line 22
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExt:[I

    .line 25
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    return-void

    :array_1c
    .array-data 4
        -0x1
        0x0
        0x0
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_38
    .array-data 4
        0x1
        -0x2
        0x0
        0x2
        0x0
        -0x2
        0x0
        0x2
        0x1
        0x0
        0x0
        0x0
        -0x2
        0x1
        0x0
        -0x2
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_6c
    .array-data 4
        -0x1
        0x1
        -0x1
        -0x3
        -0x1
        0x1
        -0x1
        -0x3
        -0x2
        -0x1
        -0x1
        -0x1
        0x1
        -0x2
        -0x1
        0x1
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
    .registers 4

    .line 33
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result p0

    .line 34
    if-nez p0, :cond_17

    const/16 p0, 0xb

    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1a

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 36
    :cond_17
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 38
    :cond_1a
    return-void
.end method

.method public static blacklist addExt([I[I[I)V
    .registers 4

    .line 42
    const/16 v0, 0x18

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result p0

    .line 43
    if-nez p0, :cond_17

    const/16 p0, 0x17

    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_28

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExt:[I

    invoke-static {v0, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 45
    :cond_17
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length p0, p0

    sget-object p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result p0

    if-eqz p0, :cond_28

    .line 47
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length p0, p0

    invoke-static {v0, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 50
    :cond_28
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 4

    .line 54
    const/16 v0, 0xc

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result p0

    .line 55
    if-nez p0, :cond_17

    const/16 p0, 0xb

    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1a

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 57
    :cond_17
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 59
    :cond_1a
    return-void
.end method

.method private static blacklist addPInvTo([I)V
    .registers 13

    .line 316
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 317
    long-to-int v7, v1

    aput v7, p0, v0

    .line 318
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 319
    const/4 v7, 0x1

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v8, v5

    add-long/2addr v1, v8

    .line 320
    long-to-int v8, v1

    aput v8, p0, v7

    .line 321
    shr-long/2addr v1, v0

    .line 322
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2e

    .line 324
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 325
    long-to-int v10, v1

    aput v10, p0, v9

    .line 326
    shr-long/2addr v1, v0

    .line 328
    :cond_2e
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 329
    long-to-int v10, v1

    aput v10, p0, v9

    .line 330
    shr-long/2addr v1, v0

    .line 331
    const/4 v9, 0x4

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 332
    long-to-int v3, v1

    aput v3, p0, v9

    .line 333
    shr-long v0, v1, v0

    .line 334
    cmp-long v0, v0, v7

    if-eqz v0, :cond_4f

    .line 336
    const/16 v0, 0xc

    const/4 v1, 0x5

    invoke-static {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 338
    :cond_4f
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 3

    .line 63
    const/16 v0, 0x180

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object p0

    .line 64
    const/16 v0, 0xb

    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    const/16 v1, 0xc

    invoke-static {v1, p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 66
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v1, v0, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 68
    :cond_1c
    return-object p0
.end method

.method public static blacklist half([I[I)V
    .registers 5

    .line 73
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/16 v2, 0xc

    if-nez v1, :cond_d

    .line 75
    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_16

    .line 79
    :cond_d
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result p0

    .line 80
    invoke-static {v2, p1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 82
    :goto_16
    return-void
.end method

.method public static blacklist inv([I[I)V
    .registers 3

    .line 86
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    .line 87
    return-void
.end method

.method public static blacklist isZero([I)I
    .registers 4

    .line 91
    nop

    .line 92
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    const/16 v2, 0xc

    if-ge v0, v2, :cond_d

    .line 94
    aget v2, p0, v0

    or-int/2addr v1, v2

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 96
    :cond_d
    ushr-int/lit8 p0, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    or-int/2addr p0, v0

    .line 97
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist multiply([I[I[I)V
    .registers 4

    .line 102
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 103
    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    .line 104
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 105
    return-void
.end method

.method public static blacklist multiply([I[I[I[I)V
    .registers 4

    .line 109
    invoke-static {p0, p1, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    .line 110
    invoke-static {p3, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 111
    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 4

    .line 115
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->isZero([I)I

    move-result v0

    const/16 v1, 0xc

    if-eqz v0, :cond_10

    .line 117
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v1, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    goto :goto_15

    .line 121
    :cond_10
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v1, v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    .line 123
    :goto_15
    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .registers 5

    .line 127
    const/16 v0, 0x30

    new-array v0, v0, [B

    .line 130
    :cond_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 131
    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 133
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 134
    return-void
.end method

.method public static blacklist randomMult(Ljava/security/SecureRandom;[I)V
    .registers 3

    .line 140
    nop

    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 142
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_1

    .line 143
    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 44

    .line 147
    move-object/from16 v0, p1

    const/16 v1, 0x10

    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v5, 0x11

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x12

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/16 v9, 0x13

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 148
    const/16 v11, 0x14

    aget v11, p0, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/16 v13, 0x15

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    const/16 v15, 0x16

    aget v15, p0, v15

    move-wide/from16 v16, v3

    int-to-long v3, v15

    and-long v3, v3, v16

    const/16 v15, 0x17

    aget v15, p0, v15

    move-wide/from16 v18, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    .line 152
    const/16 v15, 0xc

    aget v15, p0, v15

    move-wide/from16 v20, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v11

    const-wide/16 v22, 0x1

    sub-long v1, v1, v22

    .line 153
    const/16 v15, 0xd

    aget v15, p0, v15

    move-wide/from16 v24, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v3

    .line 154
    const/16 v15, 0xe

    aget v15, p0, v15

    move-wide/from16 v26, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v3

    add-long v1, v1, v20

    .line 155
    const/16 v15, 0xf

    aget v15, p0, v15

    move-wide/from16 v28, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v20

    .line 156
    add-long v30, v5, v13

    .line 157
    sub-long v32, v13, v20

    .line 158
    sub-long v3, v3, v20

    .line 159
    add-long v34, v24, v32

    .line 161
    nop

    .line 162
    const/16 v36, 0x0

    aget v15, p0, v36

    move-wide/from16 v37, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v34

    const-wide/16 v39, 0x0

    add-long v1, v1, v39

    .line 163
    long-to-int v15, v1

    aput v15, v0, v36

    .line 164
    const/16 v15, 0x20

    shr-long/2addr v1, v15

    .line 165
    const/16 v36, 0x1

    move/from16 v39, v15

    aget v15, p0, v36

    move-wide/from16 v40, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v20

    sub-long v1, v1, v24

    add-long v1, v1, v26

    add-long v1, v40, v1

    .line 166
    long-to-int v15, v1

    aput v15, v0, v36

    .line 167
    shr-long v1, v1, v39

    .line 168
    const/16 v20, 0x2

    aget v15, p0, v20

    move-wide/from16 v24, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    sub-long/2addr v1, v13

    sub-long v1, v1, v26

    add-long v1, v1, v28

    add-long v1, v24, v1

    .line 169
    long-to-int v15, v1

    aput v15, v0, v20

    .line 170
    shr-long v1, v1, v39

    .line 171
    const/16 v20, 0x3

    aget v15, p0, v20

    move-wide/from16 v24, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    sub-long v1, v1, v28

    add-long v1, v1, v37

    add-long v1, v1, v34

    add-long v1, v24, v1

    .line 172
    long-to-int v15, v1

    aput v15, v0, v20

    .line 173
    shr-long v1, v1, v39

    .line 174
    const/16 v20, 0x4

    aget v15, p0, v20

    move-wide/from16 v24, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v18

    add-long/2addr v1, v13

    add-long v1, v1, v26

    sub-long v1, v1, v37

    add-long v1, v1, v34

    add-long v1, v24, v1

    .line 175
    long-to-int v13, v1

    aput v13, v0, v20

    .line 176
    shr-long v1, v1, v39

    .line 177
    const/4 v13, 0x5

    aget v14, p0, v13

    int-to-long v14, v14

    and-long v14, v14, v16

    sub-long v14, v14, v18

    add-long v14, v14, v26

    add-long v14, v14, v28

    add-long v14, v14, v30

    add-long/2addr v1, v14

    .line 178
    long-to-int v14, v1

    aput v14, v0, v13

    .line 179
    shr-long v1, v1, v39

    .line 180
    const/4 v13, 0x6

    aget v14, p0, v13

    int-to-long v14, v14

    and-long v14, v14, v16

    add-long/2addr v14, v7

    sub-long/2addr v14, v5

    add-long v14, v14, v28

    add-long v14, v14, v37

    add-long/2addr v1, v14

    .line 181
    long-to-int v14, v1

    aput v14, v0, v13

    .line 182
    shr-long v1, v1, v39

    .line 183
    const/4 v13, 0x7

    aget v14, p0, v13

    int-to-long v14, v14

    and-long v14, v14, v16

    add-long v14, v14, v18

    add-long/2addr v14, v9

    sub-long/2addr v14, v7

    add-long v14, v14, v37

    add-long/2addr v1, v14

    .line 184
    long-to-int v14, v1

    aput v14, v0, v13

    .line 185
    shr-long v1, v1, v39

    .line 186
    const/16 v13, 0x8

    aget v14, p0, v13

    int-to-long v14, v14

    and-long v14, v14, v16

    add-long v14, v14, v18

    add-long/2addr v14, v5

    add-long/2addr v14, v11

    sub-long/2addr v14, v9

    add-long/2addr v1, v14

    .line 187
    long-to-int v5, v1

    aput v5, v0, v13

    .line 188
    shr-long v1, v1, v39

    .line 189
    const/16 v5, 0x9

    aget v6, p0, v5

    int-to-long v13, v6

    and-long v13, v13, v16

    add-long/2addr v13, v7

    sub-long/2addr v13, v11

    add-long v13, v13, v30

    add-long/2addr v1, v13

    .line 190
    long-to-int v6, v1

    aput v6, v0, v5

    .line 191
    shr-long v1, v1, v39

    .line 192
    const/16 v5, 0xa

    aget v6, p0, v5

    int-to-long v13, v6

    and-long v13, v13, v16

    add-long/2addr v13, v7

    add-long/2addr v13, v9

    sub-long v13, v13, v32

    add-long/2addr v13, v3

    add-long/2addr v1, v13

    .line 193
    long-to-int v6, v1

    aput v6, v0, v5

    .line 194
    shr-long v1, v1, v39

    .line 195
    const/16 v5, 0xb

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v6, v6, v16

    add-long/2addr v6, v9

    add-long/2addr v6, v11

    sub-long/2addr v6, v3

    add-long/2addr v1, v6

    .line 196
    long-to-int v3, v1

    aput v3, v0, v5

    .line 197
    shr-long v1, v1, v39

    .line 198
    add-long v1, v1, v22

    .line 202
    long-to-int v1, v1

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 203
    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .registers 13

    .line 207
    nop

    .line 209
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_4a

    .line 211
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 213
    const/4 p0, 0x0

    aget v6, p1, p0

    int-to-long v6, v6

    and-long/2addr v6, v4

    add-long/2addr v6, v2

    add-long/2addr v6, v0

    .line 214
    long-to-int v8, v6

    aput v8, p1, p0

    .line 215
    const/16 p0, 0x20

    shr-long/2addr v6, p0

    .line 216
    const/4 v8, 0x1

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v4

    sub-long/2addr v9, v2

    add-long/2addr v6, v9

    .line 217
    long-to-int v9, v6

    aput v9, p1, v8

    .line 218
    shr-long/2addr v6, p0

    .line 219
    cmp-long v8, v6, v0

    if-eqz v8, :cond_32

    .line 221
    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v6, v9

    .line 222
    long-to-int v9, v6

    aput v9, p1, v8

    .line 223
    shr-long/2addr v6, p0

    .line 225
    :cond_32
    const/4 v8, 0x3

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v9, v2

    add-long/2addr v6, v9

    .line 226
    long-to-int v9, v6

    aput v9, p1, v8

    .line 227
    shr-long/2addr v6, p0

    .line 228
    const/4 v8, 0x4

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v4, v2

    add-long/2addr v6, v4

    .line 229
    long-to-int v2, v6

    aput v2, p1, v8

    .line 230
    shr-long v2, v6, p0

    goto :goto_4b

    .line 209
    :cond_4a
    move-wide v2, v0

    .line 235
    :goto_4b
    cmp-long p0, v2, v0

    const/16 v0, 0xc

    if-eqz p0, :cond_58

    const/4 p0, 0x5

    invoke-static {v0, p1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    if-nez p0, :cond_67

    :cond_58
    const/16 p0, 0xb

    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_6a

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    .line 236
    invoke-static {v0, p1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_6a

    .line 238
    :cond_67
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 240
    :cond_6a
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3

    .line 244
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 245
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 246
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 247
    return-void
.end method

.method public static blacklist square([I[I[I)V
    .registers 3

    .line 251
    invoke-static {p0, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 252
    invoke-static {p2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 253
    return-void
.end method

.method public static blacklist squareN([II[I)V
    .registers 4

    .line 259
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 260
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 261
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 263
    :goto_c
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_17

    .line 265
    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 266
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    goto :goto_c

    .line 268
    :cond_17
    return-void
.end method

.method public static blacklist squareN([II[I[I)V
    .registers 4

    .line 274
    invoke-static {p0, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 275
    invoke-static {p3, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 277
    :goto_6
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_11

    .line 279
    invoke-static {p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 280
    invoke-static {p3, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    goto :goto_6

    .line 282
    :cond_11
    return-void
.end method

.method private static blacklist subPInvFrom([I)V
    .registers 13

    .line 342
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    .line 343
    long-to-int v7, v1

    aput v7, p0, v0

    .line 344
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 345
    const/4 v7, 0x1

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v8, v5

    add-long/2addr v1, v8

    .line 346
    long-to-int v8, v1

    aput v8, p0, v7

    .line 347
    shr-long/2addr v1, v0

    .line 348
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2e

    .line 350
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 351
    long-to-int v10, v1

    aput v10, p0, v9

    .line 352
    shr-long/2addr v1, v0

    .line 354
    :cond_2e
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    sub-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 355
    long-to-int v10, v1

    aput v10, p0, v9

    .line 356
    shr-long/2addr v1, v0

    .line 357
    const/4 v9, 0x4

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 358
    long-to-int v3, v1

    aput v3, p0, v9

    .line 359
    shr-long v0, v1, v0

    .line 360
    cmp-long v0, v0, v7

    if-eqz v0, :cond_4f

    .line 362
    const/16 v0, 0xc

    const/4 v1, 0x5

    invoke-static {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 364
    :cond_4f
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 4

    .line 286
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result p0

    .line 287
    if-eqz p0, :cond_b

    .line 289
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subPInvFrom([I)V

    .line 291
    :cond_b
    return-void
.end method

.method public static blacklist subtractExt([I[I[I)V
    .registers 4

    .line 295
    const/16 v0, 0x18

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result p0

    .line 296
    if-eqz p0, :cond_19

    .line 298
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length p0, p0

    sget-object p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result p0

    if-eqz p0, :cond_19

    .line 300
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length p0, p0

    invoke-static {v0, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 303
    :cond_19
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 4

    .line 307
    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-static {v1, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result p0

    .line 308
    if-nez p0, :cond_18

    const/16 p0, 0xb

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1b

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v1, p1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 310
    :cond_18
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 312
    :cond_1b
    return-void
.end method
