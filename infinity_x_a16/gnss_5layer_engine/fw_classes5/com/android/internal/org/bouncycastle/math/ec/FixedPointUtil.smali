.class public Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil;
.super Ljava/lang/Object;
.source "FixedPointUtil.java"


# static fields
.field public static final blacklist PRECOMP_NAME:Ljava/lang/String; = "bc_fixed_point"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getCombSize(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)I
    .registers 2

    .line 15
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    .line 16
    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    :goto_11
    return p0
.end method

.method public static blacklist getFixedPointPreCompInfo(Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;
    .registers 2

    .line 21
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public static blacklist precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;
    .registers 4

    .line 26
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 28
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    const-string v2, "bc_fixed_point"

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    return-object p0
.end method
