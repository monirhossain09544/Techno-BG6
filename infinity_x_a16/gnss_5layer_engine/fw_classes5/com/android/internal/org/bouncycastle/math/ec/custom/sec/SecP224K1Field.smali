.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;
.super Ljava/lang/Object;
.source "SecP224K1Field.java"


# static fields
.field static final blacklist P:[I

.field private static final blacklist P6:I = -0x1

.field private static final blacklist PExt:[I

.field private static final blacklist PExt13:I = -0x1

.field private static final blacklist PExtInv:[I

.field private static final blacklist PInv33:I = 0x1a93


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    .line 20
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExt:[I

    .line 22
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    return-void

    nop

    :array_1c
    .array-data 4
        -0x1a93
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2e
    .array-data 4
        0x2c23069
        0x3526
        0x1
        0x0
        0x0
        0x0
        0x0
        -0x3526
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_4e
    .array-data 4
        -0x2c23069
        -0x3527
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        0x3525
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
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->add([I[I[I)I

    move-result p0

    .line 31
    if-nez p0, :cond_14

    const/4 p0, 0x6

    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1a

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    invoke-static {p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 33
    :cond_14
    const/4 p0, 0x7

    const/16 p1, 0x1a93

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 35
    :cond_1a
    return-void
.end method

.method public static blacklist addExt([I[I[I)V
    .registers 4

    .line 39
    const/16 v0, 0xe

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result p0

    .line 40
    if-nez p0, :cond_17

    const/16 p0, 0xd

    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_28

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExt:[I

    invoke-static {v0, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 42
    :cond_17
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    array-length p0, p0

    sget-object p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result p0

    if-eqz p0, :cond_28

    .line 44
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    array-length p0, p0

    invoke-static {v0, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 47
    :cond_28
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 4

    .line 51
    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result p0

    .line 52
    if-nez p0, :cond_15

    const/4 p0, 0x6

    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1a

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 54
    :cond_15
    const/16 p0, 0x1a93

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 56
    :cond_1a
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 3

    .line 60
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p0

    .line 61
    const/4 v0, 0x6

    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 63
    const/4 v0, 0x7

    const/16 v1, 0x1a93

    invoke-static {v0, v1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 65
    :cond_18
    return-object p0
.end method

.method public static blacklist half([I[I)V
    .registers 5

    .line 70
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x7

    if-nez v1, :cond_c

    .line 72
    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_15

    .line 76
    :cond_c
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->add([I[I[I)I

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
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

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
    const/4 v2, 0x7

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
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 100
    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->mul([I[I[I)V

    .line 101
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce([I[I)V

    .line 102
    return-void
.end method

.method public static blacklist multiplyAddToExt([I[I[I)V
    .registers 4

    .line 106
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->mulAddTo([I[I[I)I

    move-result p0

    .line 107
    const/16 p1, 0xe

    if-nez p0, :cond_17

    const/16 p0, 0xd

    aget p0, p2, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_28

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExt:[I

    invoke-static {p1, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 109
    :cond_17
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    array-length p0, p0

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    invoke-static {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result p0

    if-eqz p0, :cond_28

    .line 111
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    array-length p0, p0

    invoke-static {p1, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 114
    :cond_28
    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 3

    .line 118
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_e

    .line 120
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    goto :goto_13

    .line 124
    :cond_e
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    .line 126
    :goto_13
    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .registers 5

    .line 130
    const/16 v0, 0x1c

    new-array v0, v0, [B

    .line 133
    :cond_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 134
    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 136
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

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
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 145
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_1

    .line 146
    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 9

    .line 150
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x1a93

    const/4 v2, 0x7

    move-object v3, p0

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->mul33Add(I[II[II[II)J

    move-result-wide p0

    .line 151
    const/4 v0, 0x0

    const/16 v1, 0x1a93

    invoke-static {v1, p0, p1, v5, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->mul33DWordAdd(IJ[II)I

    move-result p0

    .line 155
    if-nez p0, :cond_23

    const/4 p0, 0x6

    aget p0, v5, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_27

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    invoke-static {v5, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 157
    :cond_23
    const/4 p0, 0x7

    invoke-static {p0, v1, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 159
    :cond_27
    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .registers 4

    .line 163
    const/16 v0, 0x1a93

    if-eqz p0, :cond_b

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->mul33WordAdd(II[II)I

    move-result p0

    if-nez p0, :cond_19

    :cond_b
    const/4 p0, 0x6

    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1d

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    .line 164
    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 166
    :cond_19
    const/4 p0, 0x7

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 168
    :cond_1d
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3

    .line 172
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 173
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 174
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce([I[I)V

    .line 175
    return-void
.end method

.method public static blacklist squareN([II[I)V
    .registers 4

    .line 181
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 182
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 183
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce([I[I)V

    .line 185
    :goto_a
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_15

    .line 187
    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 188
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce([I[I)V

    goto :goto_a

    .line 190
    :cond_15
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 3

    .line 194
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    move-result p0

    .line 195
    if-eqz p0, :cond_c

    .line 197
    const/4 p0, 0x7

    const/16 p1, 0x1a93

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub33From(II[I)I

    .line 199
    :cond_c
    return-void
.end method

.method public static blacklist subtractExt([I[I[I)V
    .registers 4

    .line 203
    const/16 v0, 0xe

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result p0

    .line 204
    if-eqz p0, :cond_19

    .line 206
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    array-length p0, p0

    sget-object p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result p0

    if-eqz p0, :cond_19

    .line 208
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    array-length p0, p0

    invoke-static {v0, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 211
    :cond_19
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 4

    .line 215
    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-static {v1, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result p0

    .line 216
    if-nez p0, :cond_16

    const/4 p0, 0x6

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1b

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 218
    :cond_16
    const/16 p0, 0x1a93

    invoke-static {v1, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 220
    :cond_1b
    return-void
.end method
