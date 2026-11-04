.class Lcom/android/internal/org/bouncycastle/crypto/signers/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getDefaultProperties(Ljava/lang/String;ILcom/android/internal/org/bouncycastle/crypto/CipherParameters;Z)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;
    .registers 5

    .line 34
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/crypto/signers/Utils;->getPurpose(Z)Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method static blacklist getDefaultProperties(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;Z)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;
    .registers 5

    .line 18
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v1

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/crypto/signers/Utils;->getPurpose(Z)Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p2

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method static blacklist getDefaultProperties(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;Z)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;
    .registers 5

    .line 29
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)I

    move-result v1

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/crypto/signers/Utils;->getPurpose(Z)Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p2

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method static blacklist getPurpose(Z)Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;
    .registers 1

    .line 39
    if-eqz p0, :cond_5

    sget-object p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->SIGNING:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    goto :goto_7

    :cond_5
    sget-object p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->VERIFYING:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    :goto_7
    return-object p0
.end method
