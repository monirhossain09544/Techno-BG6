.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;
.source "SecP256K1FieldElement.java"


# static fields
.field public static final blacklist Q:Ljava/math/BigInteger;


# instance fields
.field protected blacklist x:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Ljava/math/BigInteger;

    .line 17
    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    .line 16
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 33
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 23
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1a

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1a

    .line 28
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 29
    return-void

    .line 25
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "x value invalid for SecP256K1FieldElement"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor blacklist <init>([I)V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    .line 73
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->add([I[I[I)V

    .line 75
    new-instance p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object p1
.end method

.method public blacklist addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 80
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->addOne([I[I)V

    .line 82
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 102
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 103
    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->inv([I[I)V

    .line 104
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 105
    new-instance p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 204
    if-ne p1, p0, :cond_4

    .line 206
    const/4 p1, 0x1

    return p1

    .line 209
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    if-nez v0, :cond_a

    .line 211
    const/4 p1, 0x0

    return p1

    .line 214
    :cond_a
    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 215
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->eq([I[I)Z

    move-result p1

    return p1
.end method

.method public blacklist getFieldName()Ljava/lang/String;
    .registers 2

    .line 63
    const-string v0, "SecP256K1Field"

    return-object v0
.end method

.method public blacklist getFieldSize()I
    .registers 2

    .line 68
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 220
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 125
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->inv([I[I)V

    .line 127
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist isOne()Z
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public blacklist isZero()Z
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v0

    return v0
.end method

.method public blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    .line 94
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 96
    new-instance p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object p1
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 110
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->negate([I[I)V

    .line 112
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 13

    .line 147
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 148
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v1

    if-nez v1, :cond_a2

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->isOne([I)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_a2

    .line 153
    :cond_10
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v1

    .line 155
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v2

    .line 156
    invoke-static {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 157
    invoke-static {v2, v0, v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 158
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v3

    .line 159
    invoke-static {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 160
    invoke-static {v3, v0, v3, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 161
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v4

    .line 162
    const/4 v5, 0x3

    invoke-static {v3, v5, v4, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 163
    invoke-static {v4, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 164
    nop

    .line 165
    invoke-static {v4, v5, v4, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 166
    invoke-static {v4, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 167
    nop

    .line 168
    const/4 v6, 0x2

    invoke-static {v4, v6, v4, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 169
    invoke-static {v4, v2, v4, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 170
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v7

    .line 171
    const/16 v8, 0xb

    invoke-static {v4, v8, v7, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 172
    invoke-static {v7, v4, v7, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 173
    nop

    .line 174
    const/16 v8, 0x16

    invoke-static {v7, v8, v4, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 175
    invoke-static {v4, v7, v4, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 176
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v8

    .line 177
    const/16 v9, 0x2c

    invoke-static {v4, v9, v8, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 178
    invoke-static {v8, v4, v8, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 179
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v10

    .line 180
    const/16 v11, 0x58

    invoke-static {v8, v11, v10, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 181
    invoke-static {v10, v8, v10, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 182
    nop

    .line 183
    invoke-static {v10, v9, v8, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 184
    invoke-static {v8, v4, v8, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 185
    nop

    .line 186
    invoke-static {v8, v5, v4, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 187
    invoke-static {v4, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 189
    nop

    .line 190
    const/16 v3, 0x17

    invoke-static {v4, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 191
    invoke-static {v4, v7, v4, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 192
    const/4 v3, 0x6

    invoke-static {v4, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 193
    invoke-static {v4, v2, v4, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 194
    invoke-static {v4, v6, v4, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 196
    nop

    .line 197
    invoke-static {v4, v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 199
    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->eq([I[I)Z

    move-result v0

    if-eqz v0, :cond_a0

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    goto :goto_a1

    :cond_a0
    const/4 v0, 0x0

    :goto_a1
    return-object v0

    .line 150
    :cond_a2
    :goto_a2
    return-object p0
.end method

.method public blacklist square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 117
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    .line 119
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    .line 87
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 89
    new-instance p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object p1
.end method

.method public blacklist testBitZero()Z
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->getBit([II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v1, v2

    :cond_b
    return v1
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
