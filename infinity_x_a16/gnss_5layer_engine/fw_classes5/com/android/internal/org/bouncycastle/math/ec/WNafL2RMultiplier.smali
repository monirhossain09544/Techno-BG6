.class public Lcom/android/internal/org/bouncycastle/math/ec/WNafL2RMultiplier;
.super Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "WNafL2RMultiplier.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist multiplyPositive(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 13

    .line 24
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v0

    .line 26
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 28
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 29
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    .line 31
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->generateCompactWindowNaf(ILjava/math/BigInteger;)[I

    move-result-object p2

    .line 33
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 35
    array-length v4, p2

    .line 41
    const v5, 0xffff

    if-le v4, v1, :cond_67

    .line 43
    add-int/lit8 v4, v4, -0x1

    aget p1, p2, v4

    .line 44
    shr-int/lit8 v6, p1, 0x10

    and-int/2addr p1, v5

    .line 46
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 47
    if-gez v6, :cond_3a

    move-object v6, v3

    goto :goto_3b

    :cond_3a
    move-object v6, v2

    .line 50
    :goto_3b
    shl-int/lit8 v8, v7, 0x2

    shl-int v9, v1, v0

    if-ge v8, v9, :cond_5f

    .line 52
    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x20

    .line 55
    sub-int v9, v0, v8

    .line 56
    sub-int/2addr v8, v1

    shl-int v8, v1, v8

    xor-int/2addr v7, v8

    .line 58
    sub-int/2addr v0, v1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    .line 59
    shl-int/2addr v7, v9

    add-int/2addr v7, v1

    .line 60
    ushr-int/2addr v0, v1

    aget-object v0, v6, v0

    ushr-int/2addr v7, v1

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 62
    sub-int/2addr p1, v9

    .line 65
    goto :goto_63

    .line 68
    :cond_5f
    ushr-int/lit8 v0, v7, 0x1

    aget-object v0, v6, v0

    .line 71
    :goto_63
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 74
    :cond_67
    :goto_67
    if-lez v4, :cond_85

    .line 76
    add-int/lit8 v4, v4, -0x1

    aget v0, p2, v4

    .line 77
    shr-int/lit8 v6, v0, 0x10

    and-int/2addr v0, v5

    .line 79
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 80
    if-gez v6, :cond_78

    move-object v6, v3

    goto :goto_79

    :cond_78
    move-object v6, v2

    .line 81
    :goto_79
    ushr-int/2addr v7, v1

    aget-object v6, v6, v7

    .line 83
    invoke-virtual {p1, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 84
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 85
    goto :goto_67

    .line 87
    :cond_85
    return-object p1
.end method
