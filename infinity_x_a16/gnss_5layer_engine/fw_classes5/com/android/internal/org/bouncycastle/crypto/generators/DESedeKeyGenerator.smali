.class public Lcom/android/internal/org/bouncycastle/crypto/generators/DESedeKeyGenerator;
.super Lcom/android/internal/org/bouncycastle/crypto/generators/DESKeyGenerator;
.source "DESedeKeyGenerator.java"


# static fields
.field private static final blacklist MAX_IT:I = 0x14


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DESKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist generateKey()[B
    .registers 6

    .line 55
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    new-array v1, v0, [B

    .line 56
    const/4 v2, 0x0

    move v3, v2

    .line 60
    :cond_6
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 62
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DESedeParameters;->setOddParity([B)V

    .line 64
    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x14

    if-ge v3, v4, :cond_20

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/DESedeParameters;->isRealEDEKey([BI)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 66
    :cond_20
    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/DESedeParameters;->isRealEDEKey([BI)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 71
    return-object v1

    .line 68
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to generate DES-EDE key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 6

    .line 30
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->random:Ljava/security/SecureRandom;

    .line 31
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    .line 33
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v0, 0x18

    if-eqz p1, :cond_39

    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v1, 0x15

    if-ne p1, v1, :cond_1d

    goto :goto_39

    .line 37
    :cond_1d
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v1, 0xe

    const/16 v2, 0x10

    if-ne p1, v1, :cond_28

    .line 39
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    goto :goto_3b

    .line 41
    :cond_28
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-eq p1, v0, :cond_3b

    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-ne p1, v2, :cond_31

    goto :goto_3b

    .line 44
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DESede key must be 192 or 128 bits long."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_39
    :goto_39
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    .line 50
    :cond_3b
    :goto_3b
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    const-string v2, "DESedeKeyGen"

    const/16 v3, 0x70

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 51
    return-void
.end method
