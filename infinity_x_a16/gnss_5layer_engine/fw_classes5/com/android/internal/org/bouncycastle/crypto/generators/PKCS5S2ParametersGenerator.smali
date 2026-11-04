.class public Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;
.super Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS5S2ParametersGenerator.java"


# instance fields
.field private blacklist hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

.field private blacklist state:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 43
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    .line 44
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    .line 45
    return-void
.end method

.method private blacklist F([BI[B[BI)V
    .registers 10

    .line 54
    if-eqz p2, :cond_4d

    .line 59
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 61
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    array-length v2, p1

    invoke-interface {v1, p1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 64
    :cond_b
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    array-length v1, p3

    invoke-interface {p1, p3, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 65
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    invoke-interface {p1, p3, v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 67
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length p3, p3

    invoke-static {p1, v0, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    const/4 p1, 0x1

    :goto_21
    if-ge p1, p2, :cond_4c

    .line 71
    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v2, v2

    invoke-interface {p3, v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 72
    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    invoke-interface {p3, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 74
    move p3, v0

    :goto_35
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v1, v1

    if-eq p3, v1, :cond_49

    .line 76
    add-int v1, p5, p3

    aget-byte v2, p4, v1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    aget-byte v3, v3, p3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    .line 74
    add-int/lit8 p3, p3, 0x1

    goto :goto_35

    .line 69
    :cond_49
    add-int/lit8 p1, p1, 0x1

    goto :goto_21

    .line 79
    :cond_4c
    return-void

    .line 56
    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "iteration count must be at least 1."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist generateDerivedKey(I)[B
    .registers 11

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    .line 85
    add-int/2addr p1, v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    div-int/2addr p1, v0

    .line 86
    const/4 v2, 0x4

    new-array v6, v2, [B

    .line 87
    mul-int v2, p1, v0

    new-array v7, v2, [B

    .line 88
    nop

    .line 90
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->password:[B

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 92
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v3, v2}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 94
    const/4 v2, 0x0

    move v8, v2

    move v2, v1

    :goto_21
    if-gt v2, p1, :cond_3b

    .line 97
    const/4 v3, 0x3

    .line 98
    :goto_24
    aget-byte v4, v6, v3

    add-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v6, v3

    if-nez v4, :cond_2f

    .line 100
    add-int/lit8 v3, v3, -0x1

    goto :goto_24

    .line 103
    :cond_2f
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->salt:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->iterationCount:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->F([BI[B[BI)V

    .line 104
    add-int/2addr v8, v0

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 107
    :cond_3b
    return-object v7
.end method


# virtual methods
.method public blacklist generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    return-object p1
.end method

.method public blacklist generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 5

    .line 120
    div-int/lit8 p1, p1, 0x8

    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 124
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public blacklist generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 7

    .line 140
    div-int/lit8 p1, p1, 0x8

    .line 141
    div-int/lit8 p2, p2, 0x8

    .line 143
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 145
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method
