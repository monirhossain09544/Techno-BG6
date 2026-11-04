.class public Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;
.super Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "GLVMultiplier.java"


# instance fields
.field protected final blacklist curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

.field protected final blacklist glvEndomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    .line 19
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 24
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 25
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    .line 26
    return-void

    .line 21
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Need curve with known group order"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected blacklist multiplyPositive(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 30
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 35
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p2

    .line 37
    const/4 v0, 0x0

    aget-object v0, p2, v0

    const/4 v1, 0x1

    aget-object p2, p2, v1

    .line 39
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;->hasEfficientPointMap()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 41
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-static {v1, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 44
    :cond_33
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-static {v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 46
    invoke-static {p1, v0, v1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 32
    :cond_3e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
