.class public Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;
.super Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;
.source "DESedeEngine.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;


# static fields
.field protected static final blacklist BLOCK_SIZE:I = 0x8


# instance fields
.field private blacklist forEncryption:Z

.field private blacklist workingKey1:[I

.field private blacklist workingKey2:[I

.field private blacklist workingKey3:[I


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 32
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    .line 23
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    .line 24
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 33
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->bitsOfSecurity()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 34
    return-void
.end method

.method private blacklist bitsOfSecurity()I
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    if-ne v0, v1, :cond_d

    .line 142
    const/16 v0, 0x50

    return v0

    .line 144
    :cond_d
    const/16 v0, 0x70

    return v0
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 86
    const-string v0, "DESede"

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .registers 2

    .line 91
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 10

    .line 48
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_65

    .line 53
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 55
    array-length v1, v0

    const/16 v2, 0x10

    const/16 v3, 0x18

    if-eq v1, v3, :cond_1e

    array-length v1, v0

    if-ne v1, v2, :cond_16

    goto :goto_1e

    .line 57
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key size must be 16 or 24 bytes."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_1e
    :goto_1e
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    .line 62
    const/16 v1, 0x8

    new-array v4, v1, [B

    .line 63
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    invoke-virtual {p0, p1, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    .line 66
    new-array v4, v1, [B

    .line 67
    invoke-static {v0, v1, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    xor-int/lit8 v6, p1, 0x1

    invoke-virtual {p0, v6, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    .line 70
    array-length v4, v0

    if-ne v4, v3, :cond_4a

    .line 72
    new-array v3, v1, [B

    .line 73
    invoke-static {v0, v2, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 75
    goto :goto_4e

    .line 78
    :cond_4a
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 81
    :goto_4e
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->bitsOfSecurity()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v2

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 82
    return-void

    .line 50
    :cond_65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter passed to DESede init - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist processBlock([BI[BI)I
    .registers 12

    .line 100
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    if-eqz v0, :cond_5a

    .line 105
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-gt v0, v1, :cond_52

    .line 110
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-gt v0, v1, :cond_4a

    .line 115
    const/16 v0, 0x8

    new-array v3, v0, [B

    .line 117
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    if-eqz v1, :cond_2f

    .line 119
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p2

    move-object v5, v3

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 120
    move-object v3, v5

    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 121
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    goto :goto_49

    .line 125
    :cond_2f
    move-object v1, p0

    move v4, p2

    move p2, p4

    move-object v5, v3

    move-object v3, p1

    move-object p1, p3

    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 126
    move-object v3, v5

    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 127
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 130
    :goto_49
    return v0

    .line 112
    :cond_4a
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_52
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DESede engine not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist reset()V
    .registers 1

    .line 135
    return-void
.end method
