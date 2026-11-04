.class public Landroid/renderscript/Matrix2f;
.super Ljava/lang/Object;
.source "Matrix2f.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final greylist-max-o mMat:[F


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    .line 35
    invoke-virtual {p0}, Landroid/renderscript/Matrix2f;->loadIdentity()V

    .line 36
    return-void
.end method

.method public constructor whitelist <init>([F)V
    .registers 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    .line 47
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist get(II)F
    .registers 4

    .line 69
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    aget p1, v0, p1

    return p1
.end method

.method public whitelist getArray()[F
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    return-object v0
.end method

.method public whitelist load(Landroid/renderscript/Matrix2f;)V
    .registers 5

    .line 99
    invoke-virtual {p1}, Landroid/renderscript/Matrix2f;->getArray()[F

    move-result-object p1

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    return-void
.end method

.method public whitelist loadIdentity()V
    .registers 5

    .line 86
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 87
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    .line 89
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 90
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 91
    return-void
.end method

.method public whitelist loadMultiply(Landroid/renderscript/Matrix2f;Landroid/renderscript/Matrix2f;)V
    .registers 12

    .line 138
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x2

    if-ge v1, v2, :cond_29

    .line 139
    nop

    .line 140
    nop

    .line 141
    const/4 v3, 0x0

    move v5, v0

    move v4, v3

    :goto_a
    const/4 v6, 0x1

    if-ge v5, v2, :cond_20

    .line 142
    invoke-virtual {p2, v1, v5}, Landroid/renderscript/Matrix2f;->get(II)F

    move-result v7

    .line 143
    invoke-virtual {p1, v5, v0}, Landroid/renderscript/Matrix2f;->get(II)F

    move-result v8

    mul-float/2addr v8, v7

    add-float/2addr v3, v8

    .line 144
    invoke-virtual {p1, v5, v6}, Landroid/renderscript/Matrix2f;->get(II)F

    move-result v6

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    .line 141
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 146
    :cond_20
    invoke-virtual {p0, v1, v0, v3}, Landroid/renderscript/Matrix2f;->set(IIF)V

    .line 147
    invoke-virtual {p0, v1, v6, v4}, Landroid/renderscript/Matrix2f;->set(IIF)V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 149
    :cond_29
    return-void
.end method

.method public whitelist loadRotate(F)V
    .registers 6

    .line 109
    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    .line 110
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 111
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 112
    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 113
    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v2, 0x1

    neg-float v3, v0

    aput v3, v1, v2

    .line 114
    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v2, 0x2

    aput v0, v1, v2

    .line 115
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 116
    return-void
.end method

.method public whitelist loadScale(FF)V
    .registers 5

    .line 125
    invoke-virtual {p0}, Landroid/renderscript/Matrix2f;->loadIdentity()V

    .line 126
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 127
    iget-object p1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v0, 0x3

    aput p2, p1, v0

    .line 128
    return-void
.end method

.method public whitelist multiply(Landroid/renderscript/Matrix2f;)V
    .registers 3

    .line 157
    new-instance v0, Landroid/renderscript/Matrix2f;

    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    .line 158
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix2f;->loadMultiply(Landroid/renderscript/Matrix2f;Landroid/renderscript/Matrix2f;)V

    .line 159
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix2f;->load(Landroid/renderscript/Matrix2f;)V

    .line 160
    return-void
.end method

.method public whitelist rotate(F)V
    .registers 3

    .line 168
    new-instance v0, Landroid/renderscript/Matrix2f;

    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    .line 169
    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix2f;->loadRotate(F)V

    .line 170
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix2f;->multiply(Landroid/renderscript/Matrix2f;)V

    .line 171
    return-void
.end method

.method public whitelist scale(FF)V
    .registers 4

    .line 180
    new-instance v0, Landroid/renderscript/Matrix2f;

    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    .line 181
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix2f;->loadScale(FF)V

    .line 182
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix2f;->multiply(Landroid/renderscript/Matrix2f;)V

    .line 183
    return-void
.end method

.method public whitelist set(IIF)V
    .registers 5

    .line 79
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    aput p3, v0, p1

    .line 80
    return-void
.end method

.method public whitelist transpose()V
    .registers 6

    .line 188
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 189
    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    iget-object v3, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    aput v3, v2, v1

    .line 190
    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    aput v0, v1, v4

    .line 191
    return-void
.end method
