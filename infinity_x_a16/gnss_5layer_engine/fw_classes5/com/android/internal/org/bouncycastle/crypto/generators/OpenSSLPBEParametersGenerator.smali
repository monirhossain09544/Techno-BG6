.class public Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;
.super Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
.source "OpenSSLPBEParametersGenerator.java"


# instance fields
.field private blacklist digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 27
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 34
    return-void
.end method

.method private blacklist generateDerivedKey(I)[B
    .registers 10

    .line 55
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    .line 56
    new-array v2, p1, [B

    .line 57
    const/4 v3, 0x0

    move v4, v3

    .line 61
    :goto_c
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->password:[B

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->password:[B

    array-length v7, v7

    invoke-interface {v5, v6, v3, v7}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 62
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->salt:[B

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->salt:[B

    array-length v7, v7

    invoke-interface {v5, v6, v3, v7}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 64
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v5, v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 66
    if-le p1, v0, :cond_29

    move v5, v0

    goto :goto_2a

    :cond_29
    move v5, p1

    .line 67
    :goto_2a
    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    add-int/2addr v4, v5

    .line 71
    sub-int/2addr p1, v5

    .line 72
    if-nez p1, :cond_33

    .line 74
    nop

    .line 82
    return-object v2

    .line 78
    :cond_33
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    .line 79
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v5, v1, v3, v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 80
    goto :goto_c
.end method


# virtual methods
.method public blacklist generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 2

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    return-object p1
.end method

.method public blacklist generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 5

    .line 96
    div-int/lit8 p1, p1, 0x8

    .line 98
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 100
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public blacklist generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 7

    .line 117
    div-int/lit8 p1, p1, 0x8

    .line 118
    div-int/lit8 p2, p2, 0x8

    .line 120
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 122
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method

.method public blacklist init([B[B)V
    .registers 4

    .line 46
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 47
    return-void
.end method
