.class public Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;
.super Ljava/lang/Object;
.source "DHBasicAgreement.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/BasicAgreement;


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;


# instance fields
.field private blacklist dhParams:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

.field private blacklist key:Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 26
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist calculateAgreement(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .registers 4

    .line 69
    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 71
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 76
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object p1

    .line 79
    if-eqz p1, :cond_49

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_49

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_49

    .line 84
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 85
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 90
    return-object p1

    .line 87
    :cond_41
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Shared key can\'t be 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Diffie-Hellman public key is weak"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Diffie-Hellman public key has wrong parameters."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getFieldSize()I
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 3

    .line 36
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_d

    .line 38
    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 39
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 40
    goto :goto_f

    .line 43
    :cond_d
    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 46
    :goto_f
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    if-eqz v0, :cond_2b

    .line 51
    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 52
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 54
    const-string p1, "DHB"

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/agreement/Utils;->getDefaultProperties(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 55
    return-void

    .line 48
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DHEngine expects DHPrivateKeyParameters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
