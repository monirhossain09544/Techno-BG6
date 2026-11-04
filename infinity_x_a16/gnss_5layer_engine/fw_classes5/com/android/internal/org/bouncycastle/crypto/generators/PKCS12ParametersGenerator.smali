.class public Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;
.super Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS12ParametersGenerator.java"


# static fields
.field public static final blacklist IV_MATERIAL:I = 0x2

.field public static final blacklist KEY_MATERIAL:I = 0x1

.field public static final blacklist MAC_MATERIAL:I = 0x3


# instance fields
.field private blacklist digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

.field private blacklist u:I

.field private blacklist v:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 42
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;

    if-eqz v0, :cond_18

    .line 44
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    .line 45
    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result p1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    .line 51
    return-void

    .line 49
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Digest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " unsupported"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist adjust([BI[B)V
    .registers 9

    .line 63
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    array-length v1, p3

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 65
    array-length v1, p3

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, v0

    aput-byte v2, p1, v1

    .line 66
    ushr-int/lit8 v0, v0, 0x8

    .line 68
    array-length v1, p3

    add-int/lit8 v1, v1, -0x2

    :goto_1e
    if-ltz v1, :cond_34

    .line 70
    aget-byte v2, p3, v1

    and-int/lit16 v2, v2, 0xff

    add-int v3, p2, v1

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 71
    int-to-byte v2, v0

    aput-byte v2, p1, v3

    .line 72
    ushr-int/lit8 v0, v0, 0x8

    .line 68
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    .line 74
    :cond_34
    return-void
.end method

.method private blacklist generateDerivedKey(II)[B
    .registers 19

    .line 83
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v3, v2, [B

    .line 84
    new-array v4, v1, [B

    .line 86
    const/4 v5, 0x0

    move v6, v5

    :goto_c
    if-eq v6, v2, :cond_16

    .line 88
    move/from16 v7, p1

    int-to-byte v8, v7

    aput-byte v8, v3, v6

    .line 86
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 93
    :cond_16
    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    const/4 v7, 0x1

    if-eqz v6, :cond_40

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length v6, v6

    if-eqz v6, :cond_40

    .line 95
    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length v8, v8

    iget v9, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v7

    iget v9, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v8, v9

    mul-int/2addr v6, v8

    new-array v8, v6, [B

    .line 97
    move v9, v5

    :goto_30
    if-eq v9, v6, :cond_42

    .line 99
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length v11, v11

    rem-int v11, v9, v11

    aget-byte v10, v10, v11

    aput-byte v10, v8, v9

    .line 97
    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    .line 104
    :cond_40
    new-array v8, v5, [B

    .line 109
    :cond_42
    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    if-eqz v6, :cond_6b

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v6, v6

    if-eqz v6, :cond_6b

    .line 111
    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v9, v9

    iget v10, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    add-int/2addr v9, v10

    sub-int/2addr v9, v7

    iget v10, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v9, v10

    mul-int/2addr v6, v9

    new-array v9, v6, [B

    .line 113
    move v10, v5

    :goto_5b
    if-eq v10, v6, :cond_6d

    .line 115
    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v12, v12

    rem-int v12, v10, v12

    aget-byte v11, v11, v12

    aput-byte v11, v9, v10

    .line 113
    add-int/lit8 v10, v10, 0x1

    goto :goto_5b

    .line 120
    :cond_6b
    new-array v9, v5, [B

    .line 123
    :cond_6d
    array-length v6, v8

    array-length v10, v9

    add-int/2addr v6, v10

    new-array v10, v6, [B

    .line 125
    array-length v11, v8

    invoke-static {v8, v5, v10, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    array-length v8, v8

    array-length v11, v9

    invoke-static {v9, v5, v10, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v9, v8, [B

    .line 129
    iget v11, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    add-int/2addr v11, v1

    sub-int/2addr v11, v7

    iget v12, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    div-int/2addr v11, v12

    .line 130
    iget v12, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    new-array v13, v12, [B

    .line 132
    move v14, v7

    :goto_8b
    if-gt v14, v11, :cond_ea

    .line 134
    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v15, v3, v5, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 135
    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v15, v10, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 136
    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v15, v13, v5}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 137
    move v15, v7

    :goto_9d
    iget v7, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->iterationCount:I

    if-ge v15, v7, :cond_af

    .line 139
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v7, v13, v5, v12}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 140
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v7, v13, v5}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 137
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x1

    goto :goto_9d

    .line 143
    :cond_af
    move v7, v5

    :goto_b0
    if-eq v7, v8, :cond_bb

    .line 145
    rem-int v15, v7, v12

    aget-byte v15, v13, v15

    aput-byte v15, v9, v7

    .line 143
    add-int/lit8 v7, v7, 0x1

    goto :goto_b0

    .line 148
    :cond_bb
    move v7, v5

    :goto_bc
    iget v15, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int v15, v6, v15

    if-eq v7, v15, :cond_cb

    .line 150
    iget v15, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    mul-int/2addr v15, v7

    invoke-direct {v0, v10, v15, v9}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->adjust([BI[B)V

    .line 148
    add-int/lit8 v7, v7, 0x1

    goto :goto_bc

    .line 153
    :cond_cb
    if-ne v14, v11, :cond_dc

    .line 155
    add-int/lit8 v7, v14, -0x1

    iget v15, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v15, v7

    iget v5, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v7, v5

    sub-int v5, v1, v7

    const/4 v7, 0x0

    invoke-static {v13, v7, v4, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e5

    .line 159
    :cond_dc
    move v7, v5

    add-int/lit8 v5, v14, -0x1

    iget v15, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v5, v15

    invoke-static {v13, v7, v4, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    :goto_e5
    add-int/lit8 v14, v14, 0x1

    move v5, v7

    const/4 v7, 0x1

    goto :goto_8b

    .line 163
    :cond_ea
    return-object v4
.end method


# virtual methods
.method public blacklist generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 5

    .line 216
    div-int/lit8 p1, p1, 0x8

    .line 218
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 220
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public blacklist generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 5

    .line 176
    div-int/lit8 p1, p1, 0x8

    .line 178
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 180
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public blacklist generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 8

    .line 196
    div-int/lit8 p1, p1, 0x8

    .line 197
    div-int/lit8 p2, p2, 0x8

    .line 199
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 201
    const/4 v1, 0x2

    invoke-direct {p0, v1, p2}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v1

    .line 203
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v2, v3, v1, v4, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v2
.end method
