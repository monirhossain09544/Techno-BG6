.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP192R1Point.java"


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 4

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 18
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 23
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 16

    .line 33
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 35
    return-object p1

    .line 37
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    return-object p0

    .line 41
    :cond_e
    if-ne p0, p1, :cond_15

    .line 43
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 46
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .line 49
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .line 51
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .line 52
    invoke-virtual {p1, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .line 55
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v7

    .line 56
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v8

    .line 57
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v9

    .line 58
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v10

    .line 60
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->isOne()Z

    move-result v11

    .line 62
    if-eqz v11, :cond_55

    .line 64
    iget-object v3, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    .line 65
    iget-object v4, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    goto :goto_6d

    .line 69
    :cond_55
    nop

    .line 70
    iget-object v12, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v12, v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 72
    nop

    .line 73
    iget-object v3, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v9, v3, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 75
    iget-object v3, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v9, v3, v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 76
    iget-object v3, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v9, v3, v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    move-object v3, v8

    move-object v4, v9

    .line 79
    :goto_6d
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->isOne()Z

    move-result v12

    .line 81
    if-eqz v12, :cond_78

    .line 83
    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    .line 84
    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    goto :goto_90

    .line 88
    :cond_78
    nop

    .line 89
    iget-object v13, p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v13, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 91
    nop

    .line 92
    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v10, v1, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 94
    iget-object v1, p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v10, v1, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 95
    iget-object v1, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v10, v1, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    move-object v1, v7

    move-object v2, v10

    .line 98
    :goto_90
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v13

    .line 99
    invoke-static {v1, v3, v13}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 101
    nop

    .line 102
    invoke-static {v2, v4, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 105
    invoke-static {v13}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->isZero([I)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 107
    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->isZero([I)Z

    move-result p1

    if-eqz p1, :cond_ac

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 114
    :cond_ac
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 117
    :cond_b1
    nop

    .line 118
    invoke-static {v13, v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 120
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v3

    .line 121
    invoke-static {v9, v13, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 123
    nop

    .line 124
    invoke-static {v9, v1, v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 126
    invoke-static {v3, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->negate([I[I)V

    .line 127
    invoke-static {v2, v3, v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 129
    invoke-static {v9, v9, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->addBothTo([I[I[I)I

    move-result v1

    .line 130
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce32(I[I)V

    .line 132
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v1, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 133
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v8, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 134
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 136
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 137
    iget-object v3, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v4, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v9, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 138
    iget-object v3, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v3, v8, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiplyAddToExt([I[I[I)V

    .line 139
    iget-object v3, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v7, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    .line 141
    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v3, v13}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 142
    if-nez v11, :cond_104

    .line 144
    iget-object v4, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v5, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v7, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v4, v5, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 146
    :cond_104
    if-nez v12, :cond_10f

    .line 148
    iget-object v4, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v5, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v4, p1, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 151
    :cond_10f
    const/4 p1, 0x1

    new-array p1, p1, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v3, p1, v6

    .line 153
    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v3
.end method

.method protected blacklist detach()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 27
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->getAffineYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 6

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 268
    return-object p0

    .line 271
    :cond_7
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_18

    .line 261
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 257
    :cond_18
    :goto_18
    return-object p0
.end method

.method public blacklist twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 13

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 161
    return-object p0

    .line 164
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .line 167
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 169
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 172
    :cond_1a
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .line 175
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v5

    .line 176
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v6

    .line 178
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v7

    .line 179
    iget-object v8, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v8, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 181
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v8

    .line 182
    invoke-static {v7, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 184
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->isOne()Z

    move-result v9

    .line 186
    iget-object v10, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    .line 187
    if-nez v9, :cond_4c

    .line 189
    nop

    .line 190
    iget-object v10, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v10, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    move-object v10, v6

    .line 193
    :cond_4c
    iget-object v11, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v11, v10, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 195
    nop

    .line 196
    iget-object v11, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v11, v10, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->add([I[I[I)V

    .line 197
    invoke-static {v6, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 198
    invoke-static {v6, v6, v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->addBothTo([I[I[I)I

    move-result v10

    .line 199
    invoke-static {v10, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce32(I[I)V

    .line 201
    nop

    .line 202
    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v7, v2, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 203
    const/4 v2, 0x2

    const/4 v10, 0x6

    invoke-static {v10, v7, v2, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v2

    .line 204
    invoke-static {v2, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce32(I[I)V

    .line 206
    const/4 v2, 0x3

    invoke-static {v10, v8, v2, v4, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v2

    .line 207
    invoke-static {v2, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce32(I[I)V

    .line 209
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v2, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 210
    iget-object v8, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v6, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 211
    iget-object v8, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v10, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v8, v7, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 212
    iget-object v8, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v10, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v8, v7, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 214
    new-instance v8, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v8, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 215
    iget-object v10, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v11, v8, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v7, v10, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 216
    iget-object v7, v8, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v10, v8, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v7, v6, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 217
    iget-object v7, v8, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v10, v8, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v7, v5, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 219
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 220
    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v6, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v1, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->twice([I[I)V

    .line 221
    if-nez v9, :cond_c1

    .line 223
    iget-object v1, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v3, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v6, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v1, v3, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 226
    :cond_c1
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v5, v3, v4

    invoke-direct {v1, v0, v2, v8, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v1
.end method

.method public blacklist twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    .line 231
    if-ne p0, p1, :cond_7

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 235
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 237
    return-object p1

    .line 239
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 244
    :cond_19
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 245
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 247
    return-object p1

    .line 250
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method
