.class public Lcom/android/internal/org/bouncycastle/crypto/constraints/ConstraintUtils;
.super Ljava/lang/Object;
.source "ConstraintUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bitsOfSecurityFor(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)I
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    div-int/lit8 p0, p0, 0x2

    .line 34
    const/16 v0, 0x100

    if-le p0, v0, :cond_d

    move p0, v0

    :cond_d
    return p0
.end method

.method public static blacklist bitsOfSecurityFor(Ljava/math/BigInteger;)I
    .registers 1

    .line 21
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityForFF(I)I

    move-result p0

    return p0
.end method

.method public static blacklist bitsOfSecurityForFF(I)I
    .registers 2

    .line 39
    const/16 v0, 0x800

    if-lt p0, v0, :cond_1c

    .line 41
    const/16 v0, 0xc00

    if-lt p0, v0, :cond_19

    .line 42
    const/16 v0, 0x1e00

    if-lt p0, v0, :cond_16

    .line 43
    const/16 v0, 0x3c00

    if-lt p0, v0, :cond_13

    const/16 p0, 0x100

    goto :goto_1b

    .line 44
    :cond_13
    const/16 p0, 0xc0

    goto :goto_1b

    .line 45
    :cond_16
    const/16 p0, 0x80

    goto :goto_1b

    .line 46
    :cond_19
    const/16 p0, 0x70

    .line 41
    :goto_1b
    return p0

    .line 49
    :cond_1c
    const/16 v0, 0x400

    if-lt p0, v0, :cond_23

    const/16 p0, 0x50

    goto :goto_25

    :cond_23
    const/16 p0, 0x14

    :goto_25
    return p0
.end method
