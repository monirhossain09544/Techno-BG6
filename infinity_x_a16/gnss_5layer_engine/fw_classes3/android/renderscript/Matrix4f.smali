.class public Landroid/renderscript/Matrix4f;
.super Ljava/lang/Object;
.source "Matrix4f.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final greylist mMat:[F


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 37
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 38
    return-void
.end method

.method public constructor whitelist <init>([F)V
    .registers 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 49
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    return-void
.end method

.method private greylist-max-o computeCofactor(II)F
    .registers 17

    .line 408
    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    .line 409
    add-int/lit8 v1, p1, 0x2

    rem-int/lit8 v1, v1, 0x4

    .line 410
    add-int/lit8 v2, p1, 0x3

    rem-int/lit8 v2, v2, 0x4

    .line 411
    add-int/lit8 v3, p2, 0x1

    rem-int/lit8 v3, v3, 0x4

    .line 412
    add-int/lit8 v4, p2, 0x2

    rem-int/lit8 v4, v4, 0x4

    .line 413
    add-int/lit8 v5, p2, 0x3

    rem-int/lit8 v5, v5, 0x4

    .line 415
    iget-object v6, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v3, v3, 0x4

    add-int v7, v0, v3

    aget v6, v6, v7

    iget-object v7, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v4, v4, 0x4

    add-int v8, v1, v4

    aget v7, v7, v8

    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v5, v5, 0x4

    add-int v10, v2, v5

    aget v9, v9, v10

    mul-float/2addr v7, v9

    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-int v11, v1, v5

    aget v9, v9, v11

    iget-object v12, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-int v13, v2, v4

    aget v12, v12, v13

    mul-float/2addr v9, v12

    sub-float/2addr v7, v9

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-int/2addr v4, v0

    aget v4, v7, v4

    iget-object v7, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-int/2addr v1, v3

    aget v7, v7, v1

    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v9, v9, v10

    mul-float/2addr v7, v9

    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v9, v9, v11

    iget-object v10, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-int/2addr v2, v3

    aget v3, v10, v2

    mul-float/2addr v9, v3

    sub-float/2addr v7, v9

    mul-float/2addr v4, v7

    sub-float/2addr v6, v4

    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-int/2addr v0, v5

    aget v0, v3, v0

    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v1, v3, v1

    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v3, v3, v13

    mul-float/2addr v1, v3

    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v3, v3, v8

    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v2, v4, v2

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v6, v0

    .line 422
    add-int v0, p1, p2

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7d

    neg-float v6, v6

    .line 423
    :cond_7d
    return v6
.end method


# virtual methods
.method public whitelist get(II)F
    .registers 4

    .line 71
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p2

    aget p1, v0, p1

    return p1
.end method

.method public whitelist getArray()[F
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    return-object v0
.end method

.method public whitelist inverse()Z
    .registers 9

    .line 431
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 433
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1e

    .line 434
    move v4, v1

    :goto_b
    if-ge v4, v3, :cond_1b

    .line 435
    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v6, v2, 0x4

    add-int/2addr v6, v4

    invoke-direct {p0, v2, v4}, Landroid/renderscript/Matrix4f;->computeCofactor(II)F

    move-result v7

    aput v7, v5, v6

    .line 434
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 433
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 440
    :cond_1e
    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v2, v2, v1

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v1

    mul-float/2addr v2, v4

    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v3, v4, v3

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v6, 0x2

    aget v4, v4, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v6, 0x3

    aget v4, v4, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 443
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v3, v3, v6

    if-gez v3, :cond_5b

    .line 444
    return v1

    .line 447
    :cond_5b
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    .line 448
    nop

    :goto_5f
    const/16 v2, 0x10

    if-ge v1, v2, :cond_6f

    .line 449
    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v1

    mul-float/2addr v4, v3

    aput v4, v2, v1

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 452
    :cond_6f
    return v5
.end method

.method public whitelist inverseTranspose()Z
    .registers 9

    .line 460
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 462
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1e

    .line 463
    move v4, v1

    :goto_b
    if-ge v4, v3, :cond_1b

    .line 464
    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v6, v4, 0x4

    add-int/2addr v6, v2

    invoke-direct {p0, v2, v4}, Landroid/renderscript/Matrix4f;->computeCofactor(II)F

    move-result v7

    aput v7, v5, v6

    .line 463
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 462
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 468
    :cond_1e
    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v2, v2, v1

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v1

    mul-float/2addr v2, v4

    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v3

    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v3, v5, v3

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v5, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v5, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 471
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v3, v3, v5

    if-gez v3, :cond_58

    .line 472
    return v1

    .line 475
    :cond_58
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    .line 476
    nop

    :goto_5c
    const/16 v2, 0x10

    if-ge v1, v2, :cond_6c

    .line 477
    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v1

    mul-float/2addr v4, v3

    aput v4, v2, v1

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 480
    :cond_6c
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o load(Landroid/renderscript/Matrix3f;)V
    .registers 7

    .line 125
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 126
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 127
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v0, v2

    .line 128
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 130
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v3, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v3, v1

    const/4 v3, 0x4

    aput v1, v0, v3

    .line 131
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v3

    const/4 v3, 0x5

    aput v1, v0, v3

    .line 132
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v3

    const/4 v3, 0x6

    aput v1, v0, v3

    .line 133
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 135
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v4, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v3, v4, v3

    const/16 v4, 0x8

    aput v3, v0, v4

    .line 136
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v3, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v3, v1

    const/16 v3, 0x9

    aput v1, v0, v3

    .line 137
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object p1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget p1, p1, v4

    const/16 v1, 0xa

    aput p1, v0, v1

    .line 138
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v0, 0xb

    aput v2, p1, v0

    .line 140
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v0, 0xc

    aput v2, p1, v0

    .line 141
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v0, 0xd

    aput v2, p1, v0

    .line 142
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v0, 0xe

    aput v2, p1, v0

    .line 143
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v0, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v0

    .line 144
    return-void
.end method

.method public whitelist load(Landroid/renderscript/Matrix4f;)V
    .registers 5

    .line 115
    invoke-virtual {p1}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object p1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    return-void
.end method

.method public whitelist loadFrustum(FFFFFF)V
    .registers 12

    .line 295
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 296
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p5

    sub-float v2, p2, p1

    div-float v3, v1, v2

    const/4 v4, 0x0

    aput v3, v0, v4

    .line 297
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    sub-float v3, p4, p3

    div-float/2addr v1, v3

    const/4 v4, 0x5

    aput v1, v0, v4

    .line 298
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float/2addr p2, p1

    div-float/2addr p2, v2

    const/16 p1, 0x8

    aput p2, v0, p1

    .line 299
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float/2addr p4, p3

    div-float/2addr p4, v3

    const/16 p2, 0x9

    aput p4, p1, p2

    .line 300
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float p2, p6, p5

    neg-float p2, p2

    sub-float p3, p6, p5

    div-float/2addr p2, p3

    const/16 p4, 0xa

    aput p2, p1, p4

    .line 301
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 p2, 0xb

    const/high16 p4, -0x40800000    # -1.0f

    aput p4, p1, p2

    .line 302
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/high16 p2, -0x40000000    # -2.0f

    mul-float/2addr p6, p2

    mul-float/2addr p6, p5

    div-float/2addr p6, p3

    const/16 p2, 0xe

    aput p6, p1, p2

    .line 303
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 p2, 0xf

    const/4 p3, 0x0

    aput p3, p1, p2

    .line 304
    return-void
.end method

.method public whitelist loadIdentity()V
    .registers 5

    .line 88
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 89
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    .line 90
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 91
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 93
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 94
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 95
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 96
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 98
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 99
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 100
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    aput v2, v0, v1

    .line 101
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 103
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput v3, v0, v1

    .line 104
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    aput v3, v0, v1

    .line 105
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    aput v3, v0, v1

    .line 106
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xf

    aput v2, v0, v1

    .line 107
    return-void
.end method

.method public whitelist loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V
    .registers 16

    .line 230
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_41

    .line 231
    nop

    .line 232
    nop

    .line 233
    nop

    .line 234
    nop

    .line 235
    const/4 v3, 0x0

    move v7, v0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_e
    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v7, v2, :cond_32

    .line 236
    invoke-virtual {p2, v1, v7}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v11

    .line 237
    invoke-virtual {p1, v7, v0}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v12

    mul-float/2addr v12, v11

    add-float/2addr v3, v12

    .line 238
    invoke-virtual {p1, v7, v10}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v10

    mul-float/2addr v10, v11

    add-float/2addr v4, v10

    .line 239
    invoke-virtual {p1, v7, v9}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v9

    mul-float/2addr v9, v11

    add-float/2addr v5, v9

    .line 240
    invoke-virtual {p1, v7, v8}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v8

    mul-float/2addr v8, v11

    add-float/2addr v6, v8

    .line 235
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 242
    :cond_32
    invoke-virtual {p0, v1, v0, v3}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 243
    invoke-virtual {p0, v1, v10, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 244
    invoke-virtual {p0, v1, v9, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 245
    invoke-virtual {p0, v1, v8, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 247
    :cond_41
    return-void
.end method

.method public whitelist loadOrtho(FFFFFF)V
    .registers 13

    .line 260
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 261
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    sub-float v1, p2, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v2, v1

    const/4 v4, 0x0

    aput v3, v0, v4

    .line 262
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    sub-float v3, p4, p3

    div-float/2addr v2, v3

    const/4 v4, 0x5

    aput v2, v0, v4

    .line 263
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    sub-float v2, p6, p5

    const/high16 v4, -0x40000000    # -2.0f

    div-float/2addr v4, v2

    const/16 v5, 0xa

    aput v4, v0, v5

    .line 264
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float/2addr p2, p1

    neg-float p1, p2

    div-float/2addr p1, v1

    const/16 p2, 0xc

    aput p1, v0, p2

    .line 265
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float/2addr p4, p3

    neg-float p2, p4

    div-float/2addr p2, v3

    const/16 p3, 0xd

    aput p2, p1, p3

    .line 266
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float/2addr p6, p5

    neg-float p2, p6

    div-float/2addr p2, v2

    const/16 p3, 0xe

    aput p2, p1, p3

    .line 267
    return-void
.end method

.method public whitelist loadOrthoWindow(II)V
    .registers 10

    .line 280
    int-to-float v2, p1

    int-to-float v3, p2

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    .line 281
    return-void
.end method

.method public whitelist loadPerspective(FFFF)V
    .registers 12

    .line 315
    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float v4, p3, p1

    .line 316
    neg-float v3, v4

    .line 317
    mul-float v1, v3, p2

    .line 318
    mul-float v2, v4, p2

    .line 319
    move-object v0, p0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 320
    return-void
.end method

.method public whitelist loadProjectionNormalized(II)V
    .registers 11

    .line 332
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 333
    new-instance v7, Landroid/renderscript/Matrix4f;

    invoke-direct {v7}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 335
    if-le p1, p2, :cond_1d

    .line 336
    int-to-float p1, p1

    int-to-float p2, p2

    div-float v2, p1, p2

    .line 337
    neg-float v1, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 338
    goto :goto_2d

    .line 339
    :cond_1d
    int-to-float p2, p2

    int-to-float p1, p1

    div-float v4, p2, p1

    .line 340
    neg-float v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 343
    :goto_2d
    const/high16 p1, 0x43340000    # 180.0f

    const/4 p2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v7, p1, p2, v1, p2}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 344
    invoke-virtual {v0, v0, v7}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 346
    const/high16 p1, -0x40000000    # -2.0f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v7, p1, v2, v1}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    .line 347
    invoke-virtual {v0, v0, v7}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 349
    invoke-virtual {v7, p2, p2, v2}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 350
    invoke-virtual {v0, v0, v7}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 352
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 353
    return-void
.end method

.method public whitelist loadRotate(FFFF)V
    .registers 14

    .line 157
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 158
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 159
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 160
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 161
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 162
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 163
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 164
    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    .line 165
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p1, v3

    .line 166
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 168
    mul-float v1, p2, p2

    mul-float v3, p3, p3

    add-float/2addr v1, v3

    mul-float v3, p4, p4

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 169
    cmpl-float v3, v1, v2

    if-nez v3, :cond_51

    .line 170
    div-float v1, v2, v1

    .line 171
    mul-float/2addr p2, v1

    .line 172
    mul-float/2addr p3, v1

    .line 173
    mul-float/2addr p4, v1

    .line 175
    :cond_51
    sub-float/2addr v2, p1

    .line 176
    mul-float v1, p2, p3

    .line 177
    mul-float v3, p3, p4

    .line 178
    mul-float v4, p4, p2

    .line 179
    mul-float v5, p2, v0

    .line 180
    mul-float v6, p3, v0

    .line 181
    mul-float/2addr v0, p4

    .line 182
    iget-object v7, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float/2addr p2, p2

    mul-float/2addr p2, v2

    add-float/2addr p2, p1

    const/4 v8, 0x0

    aput p2, v7, v8

    .line 183
    iget-object p2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float/2addr v1, v2

    sub-float v7, v1, v0

    const/4 v8, 0x4

    aput v7, p2, v8

    .line 184
    iget-object p2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float/2addr v4, v2

    add-float v7, v4, v6

    const/16 v8, 0x8

    aput v7, p2, v8

    .line 185
    iget-object p2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v7, 0x1

    add-float/2addr v1, v0

    aput v1, p2, v7

    .line 186
    iget-object p2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float/2addr p3, p3

    mul-float/2addr p3, v2

    add-float/2addr p3, p1

    const/4 v0, 0x5

    aput p3, p2, v0

    .line 187
    iget-object p2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float/2addr v3, v2

    sub-float p3, v3, v5

    const/16 v0, 0x9

    aput p3, p2, v0

    .line 188
    iget-object p2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 p3, 0x2

    sub-float/2addr v4, v6

    aput v4, p2, p3

    .line 189
    iget-object p2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 p3, 0x6

    add-float/2addr v3, v5

    aput v3, p2, p3

    .line 190
    iget-object p2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float/2addr p4, p4

    mul-float/2addr p4, v2

    add-float/2addr p4, p1

    const/16 p1, 0xa

    aput p4, p2, p1

    .line 191
    return-void
.end method

.method public whitelist loadScale(FFF)V
    .registers 6

    .line 201
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 202
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 203
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v0, 0x5

    aput p2, p1, v0

    .line 204
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 p2, 0xa

    aput p3, p1, p2

    .line 205
    return-void
.end method

.method public whitelist loadTranslate(FFF)V
    .registers 6

    .line 216
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 217
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 218
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v0, 0xd

    aput p2, p1, v0

    .line 219
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 p2, 0xe

    aput p3, p1, p2

    .line 220
    return-void
.end method

.method public whitelist multiply(Landroid/renderscript/Matrix4f;)V
    .registers 3

    .line 361
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 362
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 363
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 364
    return-void
.end method

.method public whitelist rotate(FFFF)V
    .registers 6

    .line 375
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 376
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 377
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 378
    return-void
.end method

.method public whitelist scale(FFF)V
    .registers 5

    .line 389
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 390
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    .line 391
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 392
    return-void
.end method

.method public whitelist set(IIF)V
    .registers 5

    .line 81
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p2

    aput p3, v0, p1

    .line 82
    return-void
.end method

.method public whitelist translate(FFF)V
    .registers 5

    .line 403
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 404
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 405
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 406
    return-void
.end method

.method public whitelist transpose()V
    .registers 9

    .line 487
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_25

    .line 488
    add-int/lit8 v1, v0, 0x1

    move v2, v1

    :goto_7
    const/4 v3, 0x4

    if-ge v2, v3, :cond_23

    .line 489
    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v2

    aget v3, v3, v4

    .line 490
    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v6, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v7, v2, 0x4

    add-int/2addr v7, v0

    aget v6, v6, v7

    aput v6, v5, v4

    .line 491
    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aput v3, v4, v7

    .line 488
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 487
    :cond_23
    move v0, v1

    goto :goto_1

    .line 494
    :cond_25
    return-void
.end method
