.class public Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
.super Ljava/lang/Object;
.source "DSAParameters.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private blacklist g:Ljava/math/BigInteger;

.field private blacklist p:Ljava/math/BigInteger;

.field private blacklist q:Ljava/math/BigInteger;

.field private blacklist validation:Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->g:Ljava/math/BigInteger;

    .line 25
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->p:Ljava/math/BigInteger;

    .line 26
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->q:Ljava/math/BigInteger;

    .line 27
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->g:Ljava/math/BigInteger;

    .line 36
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->p:Ljava/math/BigInteger;

    .line 37
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->q:Ljava/math/BigInteger;

    .line 38
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->validation:Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 64
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 66
    return v1

    .line 69
    :cond_6
    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    .line 71
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->g:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    return v1
.end method

.method public blacklist getG()Ljava/math/BigInteger;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getP()Ljava/math/BigInteger;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getQ()Ljava/math/BigInteger;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getValidationParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->validation:Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
