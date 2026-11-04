.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Mod;
.super Ljava/lang/Object;
.source "Mod.java"


# static fields
.field private static final blacklist M30:I = 0x3fffffff

.field private static final blacklist M32L:J = 0xffffffffL


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist add30(I[I[I)I
    .registers 7

    .line 224
    add-int/lit8 p0, p0, -0x1

    .line 225
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v0, p0, :cond_17

    .line 227
    aget v2, p1, v0

    aget v3, p2, v0

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 228
    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v1

    aput v2, p1, v0

    shr-int/lit8 v1, v1, 0x1e

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 230
    :cond_17
    aget v0, p1, p0

    aget p2, p2, p0

    add-int/2addr v0, p2

    add-int/2addr v1, v0

    .line 231
    aput v1, p1, p0

    shr-int/lit8 p0, v1, 0x1e

    .line 232
    return p0
.end method

.method public static blacklist checkedModOddInverse([I[I[I)V
    .registers 3

    .line 23
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->modOddInverse([I[I[I)I

    move-result p0

    if-eqz p0, :cond_7

    .line 27
    return-void

    .line 25
    :cond_7
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Inverse does not exist."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist checkedModOddInverseVar([I[I[I)V
    .registers 3

    .line 31
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->modOddInverseVar([I[I[I)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 35
    return-void

    .line 33
    :cond_7
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Inverse does not exist."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist cnegate30(II[I)V
    .registers 6

    .line 240
    add-int/lit8 p0, p0, -0x1

    .line 241
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v0, p0, :cond_16

    .line 243
    aget v2, p2, v0

    xor-int/2addr v2, p1

    sub-int/2addr v2, p1

    add-int/2addr v1, v2

    .line 244
    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v1

    aput v2, p2, v0

    shr-int/lit8 v1, v1, 0x1e

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 246
    :cond_16
    aget v0, p2, p0

    xor-int/2addr v0, p1

    sub-int/2addr v0, p1

    add-int/2addr v1, v0

    .line 247
    aput v1, p2, p0

    .line 248
    return-void
.end method

.method private static blacklist cnormalize30(II[I[I)V
    .registers 11

    .line 255
    add-int/lit8 p0, p0, -0x1

    .line 258
    aget v0, p2, p0

    shr-int/lit8 v0, v0, 0x1f

    .line 259
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_9
    const v4, 0x3fffffff    # 1.9999999f

    if-ge v2, p0, :cond_1f

    .line 261
    aget v5, p2, v2

    aget v6, p3, v2

    and-int/2addr v6, v0

    add-int/2addr v5, v6

    .line 262
    xor-int/2addr v5, p1

    sub-int/2addr v5, p1

    .line 263
    add-int/2addr v3, v5

    and-int/2addr v4, v3

    aput v4, p2, v2

    shr-int/lit8 v3, v3, 0x1e

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 266
    :cond_1f
    aget v2, p2, p0

    aget v5, p3, p0

    and-int/2addr v0, v5

    add-int/2addr v2, v0

    .line 267
    xor-int v0, v2, p1

    sub-int/2addr v0, p1

    .line 268
    add-int/2addr v3, v0

    aput v3, p2, p0

    .line 273
    aget p1, p2, p0

    shr-int/lit8 p1, p1, 0x1f

    .line 274
    move v0, v1

    :goto_30
    if-ge v1, p0, :cond_42

    .line 276
    aget v2, p2, v1

    aget v3, p3, v1

    and-int/2addr v3, p1

    add-int/2addr v2, v3

    .line 277
    add-int/2addr v0, v2

    and-int v2, v0, v4

    aput v2, p2, v1

    shr-int/lit8 v0, v0, 0x1e

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 280
    :cond_42
    aget v1, p2, p0

    aget p3, p3, p0

    and-int/2addr p1, p3

    add-int/2addr v1, p1

    .line 281
    add-int/2addr v0, v1

    aput v0, p2, p0

    .line 285
    return-void
.end method

.method private static blacklist decode30(I[II[II)V
    .registers 11

    .line 292
    nop

    .line 293
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 295
    :goto_4
    if-lez p0, :cond_25

    .line 297
    :goto_6
    const/16 v3, 0x20

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v0, v4, :cond_19

    .line 299
    add-int/lit8 v3, p2, 0x1

    aget p2, p1, p2

    int-to-long v4, p2

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    .line 300
    add-int/lit8 v0, v0, 0x1e

    move p2, v3

    goto :goto_6

    .line 303
    :cond_19
    add-int/lit8 v4, p4, 0x1

    long-to-int v5, v1

    aput v5, p3, p4

    ushr-long/2addr v1, v3

    .line 304
    add-int/lit8 v0, v0, -0x20

    .line 305
    add-int/lit8 p0, p0, -0x20

    move p4, v4

    goto :goto_4

    .line 307
    :cond_25
    return-void
.end method

.method private static blacklist divsteps30(III[I)I
    .registers 16

    .line 311
    nop

    .line 312
    nop

    .line 314
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_9
    const/16 v6, 0x1e

    const/4 v7, 0x1

    if-ge v3, v6, :cond_35

    .line 320
    shr-int/lit8 v6, p0, 0x1f

    .line 321
    and-int/lit8 v8, p2, 0x1

    neg-int v8, v8

    .line 323
    xor-int v9, p1, v6

    .line 324
    xor-int v10, v0, v6

    .line 325
    xor-int v11, v4, v6

    .line 327
    and-int/2addr v9, v8

    sub-int/2addr p2, v9

    .line 328
    and-int v9, v10, v8

    sub-int/2addr v5, v9

    .line 329
    and-int v9, v11, v8

    sub-int/2addr v2, v9

    .line 331
    not-int v6, v6

    and-int/2addr v6, v8

    .line 332
    xor-int/2addr p0, v6

    add-int/lit8 v8, v6, -0x1

    sub-int/2addr p0, v8

    .line 334
    and-int v8, p2, v6

    add-int/2addr p1, v8

    .line 335
    and-int v8, v5, v6

    add-int/2addr v0, v8

    .line 336
    and-int/2addr v6, v2

    add-int/2addr v4, v6

    .line 338
    shr-int/2addr p2, v7

    .line 339
    shr-int/2addr v5, v7

    .line 340
    shr-int/2addr v2, v7

    .line 314
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 343
    :cond_35
    aput v0, p3, v1

    .line 344
    aput v4, p3, v7

    .line 345
    const/4 p1, 0x2

    aput v5, p3, p1

    .line 346
    const/4 p1, 0x3

    aput v2, p3, p1

    .line 348
    return p0
.end method

.method private static blacklist divsteps30Var(III[I)I
    .registers 16

    .line 353
    nop

    .line 354
    nop

    .line 355
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x1e

    move v3, v0

    move v6, v3

    move v4, v1

    move v5, v4

    .line 360
    :goto_a
    const/4 v7, -0x1

    shl-int v8, v7, v2

    or-int/2addr v8, p2

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfTrailingZeros(I)I

    move-result v8

    .line 362
    shr-int/2addr p2, v8

    .line 363
    shl-int/2addr v3, v8

    .line 364
    shl-int/2addr v4, v8

    .line 365
    sub-int/2addr p0, v8

    .line 366
    sub-int/2addr v2, v8

    .line 368
    const/4 v8, 0x2

    if-gtz v2, :cond_25

    .line 370
    nop

    .line 408
    aput v3, p3, v1

    .line 409
    aput v4, p3, v0

    .line 410
    aput v5, p3, v8

    .line 411
    const/4 p1, 0x3

    aput v6, p3, p1

    .line 413
    return p0

    .line 378
    :cond_25
    if-gez p0, :cond_46

    .line 380
    neg-int p0, p0

    .line 381
    neg-int p1, p1

    .line 382
    neg-int v3, v3

    .line 383
    neg-int v4, v4

    .line 386
    add-int/lit8 v9, p0, 0x1

    if-le v9, v2, :cond_30

    move v9, v2

    .line 387
    :cond_30
    rsub-int/lit8 v9, v9, 0x20

    ushr-int/2addr v7, v9

    and-int/lit8 v7, v7, 0x3f

    .line 389
    mul-int v9, p2, p1

    mul-int v10, p2, p2

    sub-int/2addr v10, v8

    mul-int/2addr v9, v10

    and-int/2addr v7, v9

    move v11, p2

    move p2, p1

    move p1, v11

    move v11, v5

    move v5, v3

    move v3, v11

    move v11, v6

    move v6, v4

    move v4, v11

    goto :goto_59

    .line 394
    :cond_46
    add-int/lit8 v8, p0, 0x1

    if-le v8, v2, :cond_4b

    move v8, v2

    .line 395
    :cond_4b
    rsub-int/lit8 v8, v8, 0x20

    ushr-int/2addr v7, v8

    and-int/lit8 v7, v7, 0xf

    .line 397
    add-int/lit8 v8, p1, 0x1

    and-int/lit8 v8, v8, 0x4

    shl-int/2addr v8, v0

    add-int/2addr v8, p1

    .line 398
    neg-int v8, v8

    mul-int/2addr v8, p2

    and-int/2addr v7, v8

    .line 401
    :goto_59
    mul-int v8, p1, v7

    add-int/2addr p2, v8

    .line 402
    mul-int v8, v3, v7

    add-int/2addr v5, v8

    .line 403
    mul-int/2addr v7, v4

    add-int/2addr v6, v7

    goto :goto_a
.end method

.method private static blacklist encode30(I[II[II)V
    .registers 14

    .line 421
    nop

    .line 422
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 424
    :goto_4
    if-lez p0, :cond_2e

    .line 426
    const/16 v3, 0x1e

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v0, v4, :cond_1e

    .line 428
    add-int/lit8 v4, p2, 0x1

    aget p2, p1, p2

    int-to-long v5, p2

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    shl-long/2addr v5, v0

    or-long/2addr v1, v5

    .line 429
    add-int/lit8 v0, v0, 0x20

    move p2, v4

    .line 432
    :cond_1e
    add-int/lit8 v4, p4, 0x1

    long-to-int v5, v1

    const v6, 0x3fffffff    # 1.9999999f

    and-int/2addr v5, v6

    aput v5, p3, p4

    ushr-long/2addr v1, v3

    .line 433
    add-int/lit8 v0, v0, -0x1e

    .line 434
    add-int/lit8 p0, p0, -0x1e

    move p4, v4

    goto :goto_4

    .line 436
    :cond_2e
    return-void
.end method

.method private static blacklist getMaximumDivsteps(I)I
    .registers 3

    .line 440
    mul-int/lit8 v0, p0, 0x31

    const/16 v1, 0x2e

    if-ge p0, v1, :cond_9

    const/16 p0, 0x50

    goto :goto_b

    :cond_9
    const/16 p0, 0x2f

    :goto_b
    add-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public static blacklist inverse32(I)I
    .registers 3

    .line 41
    nop

    .line 42
    mul-int v0, p0, p0

    rsub-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, p0

    .line 43
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 44
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 45
    mul-int/2addr p0, v0

    rsub-int/lit8 p0, p0, 0x2

    mul-int/2addr v0, p0

    .line 47
    return v0
.end method

.method public static blacklist modOddInverse([I[I[I)I
    .registers 19

    .line 52
    move-object/from16 v0, p0

    array-length v1, v0

    .line 57
    shl-int/lit8 v2, v1, 0x5

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget v1, v0, v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v1

    sub-int/2addr v2, v1

    .line 58
    add-int/lit8 v1, v2, 0x1d

    div-int/lit8 v4, v1, 0x1e

    .line 60
    const/4 v1, 0x4

    new-array v7, v1, [I

    .line 61
    new-array v5, v4, [I

    .line 62
    new-array v6, v4, [I

    .line 63
    new-array v1, v4, [I

    .line 64
    new-array v10, v4, [I

    .line 65
    new-array v9, v4, [I

    .line 67
    const/4 v11, 0x0

    aput v3, v6, v11

    .line 68
    move-object/from16 v8, p1

    invoke-static {v2, v8, v11, v10, v11}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->encode30(I[II[II)V

    .line 69
    invoke-static {v2, v0, v11, v9, v11}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->encode30(I[II[II)V

    .line 70
    invoke-static {v9, v11, v1, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    nop

    .line 73
    aget v0, v9, v11

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->inverse32(I)I

    move-result v8

    .line 74
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->getMaximumDivsteps(I)I

    move-result v0

    .line 76
    move v12, v11

    move v13, v12

    :goto_3a
    if-ge v12, v0, :cond_4d

    .line 78
    aget v14, v1, v11

    aget v15, v10, v11

    invoke-static {v13, v14, v15, v7}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->divsteps30(III[I)I

    move-result v13

    .line 79
    invoke-static/range {v4 .. v9}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->updateDE30(I[I[I[II[I)V

    .line 80
    invoke-static {v4, v1, v10, v7}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->updateFG30(I[I[I[I)V

    .line 76
    add-int/lit8 v12, v12, 0x1e

    goto :goto_3a

    .line 83
    :cond_4d
    add-int/lit8 v0, v4, -0x1

    aget v0, v1, v0

    shr-int/lit8 v0, v0, 0x1f

    .line 84
    invoke-static {v4, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->cnegate30(II[I)V

    .line 91
    invoke-static {v4, v0, v5, v9}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->cnormalize30(II[I[I)V

    .line 93
    move-object/from16 v0, p2

    invoke-static {v2, v5, v11, v0, v11}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->decode30(I[II[II)V

    .line 96
    invoke-static {v4, v1, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->equalTo(I[II)I

    move-result v0

    invoke-static {v4, v10}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->equalToZero(I[I)I

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public static blacklist modOddInverseVar([I[I[I)Z
    .registers 24

    .line 101
    move-object/from16 v0, p0

    array-length v1, v0

    .line 106
    shl-int/lit8 v2, v1, 0x5

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget v1, v0, v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v1

    sub-int/2addr v2, v1

    .line 107
    add-int/lit8 v1, v2, 0x1d

    div-int/lit8 v4, v1, 0x1e

    .line 109
    const/4 v1, 0x4

    new-array v7, v1, [I

    .line 110
    new-array v5, v4, [I

    .line 111
    new-array v6, v4, [I

    .line 112
    new-array v1, v4, [I

    .line 113
    new-array v10, v4, [I

    .line 114
    new-array v9, v4, [I

    .line 116
    const/4 v11, 0x0

    aput v3, v6, v11

    .line 117
    move-object/from16 v8, p1

    invoke-static {v2, v8, v11, v10, v11}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->encode30(I[II[II)V

    .line 118
    invoke-static {v2, v0, v11, v9, v11}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->encode30(I[II[II)V

    .line 119
    invoke-static {v9, v11, v1, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    add-int/lit8 v0, v4, -0x1

    aget v8, v10, v0

    or-int/2addr v8, v3

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v8

    mul-int/lit8 v12, v4, 0x1e

    add-int/lit8 v12, v12, 0x2

    sub-int/2addr v12, v2

    sub-int/2addr v8, v12

    .line 122
    rsub-int/lit8 v8, v8, -0x1

    .line 123
    nop

    .line 124
    aget v12, v9, v11

    invoke-static {v12}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->inverse32(I)I

    move-result v12

    .line 125
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->getMaximumDivsteps(I)I

    move-result v13

    .line 127
    move v14, v4

    move v15, v11

    .line 128
    :goto_4b
    invoke-static {v14, v10}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v16

    if-nez v16, :cond_99

    .line 130
    if-lt v15, v13, :cond_54

    .line 132
    return v11

    .line 135
    :cond_54
    add-int/lit8 v15, v15, 0x1e

    .line 137
    move/from16 v16, v3

    aget v3, v1, v11

    move/from16 v17, v11

    aget v11, v10, v17

    invoke-static {v8, v3, v11, v7}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->divsteps30Var(III[I)I

    move-result v3

    .line 138
    move v8, v12

    invoke-static/range {v4 .. v9}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->updateDE30(I[I[I[II[I)V

    .line 139
    invoke-static {v14, v1, v10, v7}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->updateFG30(I[I[I[I)V

    .line 141
    add-int/lit8 v11, v14, -0x1

    aget v12, v1, v11

    .line 142
    aget v11, v10, v11

    .line 144
    add-int/lit8 v18, v14, -0x2

    shr-int/lit8 v19, v18, 0x1f

    .line 145
    shr-int/lit8 v20, v12, 0x1f

    xor-int v20, v12, v20

    or-int v19, v19, v20

    .line 146
    shr-int/lit8 v20, v11, 0x1f

    xor-int v20, v11, v20

    or-int v19, v19, v20

    .line 148
    if-nez v19, :cond_92

    .line 150
    aget v19, v1, v18

    shl-int/lit8 v12, v12, 0x1e

    or-int v12, v19, v12

    aput v12, v1, v18

    .line 151
    aget v12, v10, v18

    shl-int/lit8 v11, v11, 0x1e

    or-int/2addr v11, v12

    aput v11, v10, v18

    .line 152
    add-int/lit8 v14, v14, -0x1

    .line 154
    :cond_92
    move v12, v8

    move/from16 v11, v17

    move v8, v3

    move/from16 v3, v16

    goto :goto_4b

    .line 156
    :cond_99
    move/from16 v16, v3

    move/from16 v17, v11

    add-int/lit8 v3, v14, -0x1

    aget v3, v1, v3

    shr-int/lit8 v3, v3, 0x1f

    .line 163
    aget v0, v5, v0

    shr-int/lit8 v0, v0, 0x1f

    .line 164
    if-gez v0, :cond_ad

    .line 166
    invoke-static {v4, v5, v9}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->add30(I[I[I)I

    move-result v0

    .line 168
    :cond_ad
    if-gez v3, :cond_b6

    .line 170
    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->negate30(I[I)I

    move-result v0

    .line 171
    invoke-static {v14, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->negate30(I[I)I

    .line 175
    :cond_b6
    invoke-static {v14, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v1

    if-nez v1, :cond_bd

    .line 177
    return v17

    .line 180
    :cond_bd
    if-gez v0, :cond_c2

    .line 182
    invoke-static {v4, v5, v9}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->add30(I[I[I)I

    .line 186
    :cond_c2
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-static {v2, v5, v1, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->decode30(I[II[II)V

    .line 189
    return v16
.end method

.method private static blacklist negate30(I[I)I
    .registers 5

    .line 448
    add-int/lit8 p0, p0, -0x1

    .line 449
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v0, p0, :cond_14

    .line 451
    aget v2, p1, v0

    sub-int/2addr v1, v2

    .line 452
    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v1

    aput v2, p1, v0

    shr-int/lit8 v1, v1, 0x1e

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 454
    :cond_14
    aget v0, p1, p0

    sub-int/2addr v1, v0

    .line 455
    aput v1, p1, p0

    shr-int/lit8 p0, v1, 0x1e

    .line 456
    return p0
.end method

.method public static blacklist random([I)[I
    .registers 8

    .line 194
    array-length v0, p0

    .line 195
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 196
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    .line 198
    add-int/lit8 v3, v0, -0x1

    aget v4, p0, v3

    .line 199
    ushr-int/lit8 v5, v4, 0x1

    or-int/2addr v4, v5

    .line 200
    ushr-int/lit8 v5, v4, 0x2

    or-int/2addr v4, v5

    .line 201
    ushr-int/lit8 v5, v4, 0x4

    or-int/2addr v4, v5

    .line 202
    ushr-int/lit8 v5, v4, 0x8

    or-int/2addr v4, v5

    .line 203
    ushr-int/lit8 v5, v4, 0x10

    or-int/2addr v4, v5

    .line 207
    :cond_1d
    const/4 v5, 0x0

    :goto_1e
    if-eq v5, v0, :cond_29

    .line 209
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v6

    aput v6, v2, v5

    .line 207
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 211
    :cond_29
    aget v5, v2, v3

    and-int/2addr v5, v4

    aput v5, v2, v3

    .line 213
    invoke-static {v0, v2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 215
    return-object v2
.end method

.method private static blacklist updateDE30(I[I[I[II[I)V
    .registers 40

    .line 467
    move/from16 v0, p0

    const/4 v1, 0x0

    aget v2, p3, v1

    const/4 v3, 0x1

    aget v4, p3, v3

    const/4 v5, 0x2

    aget v5, p3, v5

    const/4 v6, 0x3

    aget v6, p3, v6

    .line 476
    add-int/lit8 v7, v0, -0x1

    aget v8, p1, v7

    shr-int/lit8 v8, v8, 0x1f

    .line 477
    aget v9, p2, v7

    shr-int/lit8 v9, v9, 0x1f

    .line 479
    and-int v10, v2, v8

    and-int v11, v4, v9

    add-int/2addr v10, v11

    .line 480
    and-int/2addr v8, v5

    and-int/2addr v9, v6

    add-int/2addr v8, v9

    .line 482
    aget v9, p5, v1

    .line 483
    aget v11, p1, v1

    .line 484
    aget v1, p2, v1

    .line 486
    int-to-long v12, v2

    int-to-long v14, v11

    mul-long v16, v12, v14

    int-to-long v3, v4

    move-wide/from16 v18, v3

    int-to-long v2, v1

    mul-long v20, v18, v2

    move-wide/from16 v22, v2

    add-long v1, v16, v20

    .line 487
    int-to-long v3, v5

    mul-long/2addr v14, v3

    int-to-long v5, v6

    mul-long v16, v5, v22

    add-long v14, v14, v16

    .line 494
    long-to-int v11, v1

    mul-int v11, v11, p4

    add-int/2addr v11, v10

    const v16, 0x3fffffff    # 1.9999999f

    and-int v11, v11, v16

    sub-int/2addr v10, v11

    .line 495
    long-to-int v11, v14

    mul-int v11, v11, p4

    add-int/2addr v11, v8

    and-int v11, v11, v16

    sub-int/2addr v8, v11

    .line 497
    move-wide/from16 v20, v1

    int-to-long v1, v9

    int-to-long v9, v10

    mul-long v22, v1, v9

    add-long v20, v20, v22

    .line 498
    move-wide/from16 v22, v1

    int-to-long v1, v8

    mul-long v22, v22, v1

    add-long v14, v14, v22

    .line 503
    const/16 v8, 0x1e

    shr-long v20, v20, v8

    .line 504
    shr-long/2addr v14, v8

    .line 506
    move/from16 p3, v8

    const/4 v11, 0x1

    move-wide/from16 v32, v20

    move-wide/from16 v20, v9

    move-wide/from16 v8, v32

    :goto_69
    if-ge v11, v0, :cond_a9

    .line 508
    aget v10, p5, v11

    .line 509
    aget v0, p1, v11

    .line 510
    move-wide/from16 v22, v1

    aget v1, p2, v11

    .line 512
    move-wide/from16 v24, v3

    int-to-long v2, v0

    mul-long v26, v12, v2

    int-to-long v0, v1

    mul-long v28, v18, v0

    add-long v26, v26, v28

    move-wide/from16 v28, v0

    int-to-long v0, v10

    mul-long v30, v0, v20

    add-long v26, v26, v30

    add-long v8, v8, v26

    .line 513
    mul-long v3, v24, v2

    mul-long v26, v5, v28

    add-long v3, v3, v26

    mul-long v0, v0, v22

    add-long/2addr v3, v0

    add-long/2addr v14, v3

    .line 515
    add-int/lit8 v0, v11, -0x1

    long-to-int v1, v8

    and-int v1, v1, v16

    aput v1, p1, v0

    shr-long v8, v8, p3

    .line 516
    long-to-int v1, v14

    and-int v1, v1, v16

    aput v1, p2, v0

    shr-long v14, v14, p3

    .line 506
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    goto :goto_69

    .line 519
    :cond_a9
    long-to-int v0, v8

    aput v0, p1, v7

    .line 520
    long-to-int v0, v14

    aput v0, p2, v7

    .line 521
    return-void
.end method

.method private static blacklist updateFG30(I[I[I[I)V
    .registers 27

    .line 529
    move/from16 v0, p0

    const/4 v1, 0x0

    aget v2, p3, v1

    const/4 v3, 0x1

    aget v4, p3, v3

    const/4 v5, 0x2

    aget v5, p3, v5

    const/4 v6, 0x3

    aget v6, p3, v6

    .line 533
    aget v7, p1, v1

    .line 534
    aget v1, p2, v1

    .line 536
    int-to-long v8, v2

    int-to-long v10, v7

    mul-long v12, v8, v10

    int-to-long v14, v4

    int-to-long v1, v1

    mul-long v16, v14, v1

    add-long v12, v12, v16

    .line 537
    int-to-long v4, v5

    mul-long/2addr v10, v4

    int-to-long v6, v6

    mul-long/2addr v1, v6

    add-long/2addr v10, v1

    .line 542
    const/16 v1, 0x1e

    shr-long/2addr v12, v1

    .line 543
    shr-long/2addr v10, v1

    .line 545
    move v2, v3

    :goto_26
    if-ge v2, v0, :cond_5d

    .line 547
    move/from16 p3, v1

    aget v1, p1, v2

    .line 548
    move/from16 v16, v3

    aget v3, p2, v2

    .line 550
    int-to-long v0, v1

    mul-long v17, v8, v0

    move-wide/from16 v19, v0

    int-to-long v0, v3

    mul-long v21, v14, v0

    add-long v17, v17, v21

    add-long v12, v12, v17

    .line 551
    mul-long v17, v4, v19

    mul-long/2addr v0, v6

    add-long v17, v17, v0

    add-long v10, v10, v17

    .line 553
    add-int/lit8 v0, v2, -0x1

    long-to-int v1, v12

    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v1, v3

    aput v1, p1, v0

    shr-long v12, v12, p3

    .line 554
    long-to-int v1, v10

    and-int/2addr v1, v3

    aput v1, p2, v0

    shr-long v10, v10, p3

    .line 545
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p0

    move/from16 v1, p3

    move/from16 v3, v16

    goto :goto_26

    .line 557
    :cond_5d
    move/from16 v16, v3

    add-int/lit8 v0, p0, -0x1

    long-to-int v1, v12

    aput v1, p1, v0

    .line 558
    long-to-int v1, v10

    aput v1, p2, v0

    .line 559
    return-void
.end method
