.class public Lcom/android/internal/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;
.super Ljava/lang/Object;
.source "DHBasicKeyPairGenerator.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private blacklist param:Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist generateKeyPair()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .registers 6

    .line 40
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->INSTANCE:Lcom/android/internal/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    .line 41
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePrivate(Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePublic(Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 46
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-direct {v4, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    invoke-direct {v3, v4, v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v3
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 6

    .line 33
    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    .line 35
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    const-string v3, "DHBasicKeyGen"

    invoke-direct {p1, v3, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 36
    return-void
.end method
