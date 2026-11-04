.class public Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;
.super Ljava/lang/Object;
.source "RFC3394WrapEngine.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Wrapper;


# static fields
.field private static final blacklist DEFAULT_IV:[B


# instance fields
.field private final blacklist engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist forWrapping:Z

.field private final blacklist iv:[B

.field private blacklist param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

.field private final blacklist wrapCipherMode:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->DEFAULT_IV:[B

    return-void

    :array_a
    .array-data 1
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
    .end array-data
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Z)V

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Z)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    .line 53
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 54
    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    .line 55
    return-void
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    .line 61
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    .line 63
    instance-of p1, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_c

    .line 65
    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 68
    :cond_c
    instance-of p1, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    .line 70
    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 71
    sget-object p1, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->DEFAULT_IV:[B

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_42

    .line 73
    :cond_1f
    instance-of p1, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_42

    .line 75
    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 77
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    .line 78
    array-length v2, p1

    if-ne v2, v0, :cond_3a

    .line 83
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 84
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_42

    .line 80
    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IV not equal to 8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_42
    :goto_42
    return-void
.end method

.method public blacklist unwrap([BII)[B
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 165
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-boolean v4, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-nez v4, :cond_132

    .line 169
    const/16 v4, 0x10

    if-lt v3, v4, :cond_12a

    .line 174
    div-int/lit8 v4, v3, 0x8

    .line 176
    mul-int/lit8 v5, v4, 0x8

    if-ne v5, v3, :cond_122

    .line 181
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-boolean v6, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v5, v6, v8}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 183
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v5, v5

    sub-int v5, v3, v5

    new-array v5, v5, [B

    .line 184
    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v6, v6

    new-array v6, v6, [B

    .line 185
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v8, v8

    const/16 v9, 0x8

    add-int/2addr v8, v9

    new-array v8, v8, [B

    .line 187
    sub-int/2addr v4, v7

    .line 189
    const/4 v11, 0x0

    if-ne v4, v7, :cond_4d

    .line 191
    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v12, v1, v2, v8, v11}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 192
    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v12, v12

    invoke-static {v8, v11, v6, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v12, v12

    invoke-static {v8, v12, v5, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v17, v7

    goto :goto_aa

    .line 197
    :cond_4d
    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v12, v12

    invoke-static {v1, v2, v6, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v12, v12

    add-int/2addr v12, v2

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v13, v13

    sub-int v13, v3, v13

    invoke-static {v1, v12, v5, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    const/4 v12, 0x5

    :goto_60
    if-ltz v12, :cond_a8

    .line 202
    move v13, v4

    :goto_63
    if-lt v13, v7, :cond_a3

    .line 204
    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v14, v14

    invoke-static {v6, v11, v8, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    add-int/lit8 v14, v13, -0x1

    mul-int/2addr v14, v9

    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v15, v15

    invoke-static {v5, v14, v8, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    mul-int v15, v4, v12

    add-int/2addr v15, v13

    .line 208
    move/from16 v16, v7

    :goto_79
    if-eqz v15, :cond_91

    .line 210
    int-to-byte v10, v15

    .line 212
    move/from16 v17, v7

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v7, v7

    sub-int v7, v7, v16

    aget-byte v18, v8, v7

    xor-int v10, v18, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v7

    .line 214
    ushr-int/lit8 v15, v15, 0x8

    .line 208
    add-int/lit8 v16, v16, 0x1

    move/from16 v7, v17

    goto :goto_79

    .line 217
    :cond_91
    move/from16 v17, v7

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v8, v11, v8, v11}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 218
    invoke-static {v8, v11, v6, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    invoke-static {v8, v9, v5, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    add-int/lit8 v13, v13, -0x1

    move/from16 v7, v17

    goto :goto_63

    .line 200
    :cond_a3
    move/from16 v17, v7

    add-int/lit8 v12, v12, -0x1

    goto :goto_60

    :cond_a8
    move/from16 v17, v7

    .line 224
    :goto_aa
    const-string v7, "checksum failed"

    move/from16 v10, v17

    if-eq v4, v10, :cond_bf

    .line 226
    iget-object v0, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v6, v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_b9

    goto :goto_121

    .line 228
    :cond_b9
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    invoke-direct {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_bf
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v6, v10}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v10

    if-nez v10, :cond_121

    .line 236
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v10, v10

    invoke-static {v1, v2, v6, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v10, v10

    add-int/2addr v2, v10

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v10, v10

    sub-int/2addr v3, v10

    invoke-static {v1, v2, v5, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    const/4 v10, 0x5

    :goto_d9
    if-ltz v10, :cond_112

    .line 241
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v1, v1

    invoke-static {v6, v11, v8, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v1, v1

    invoke-static {v5, v11, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    mul-int v1, v4, v10

    const/16 v17, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 245
    const/4 v2, 0x1

    :goto_ee
    if-eqz v1, :cond_102

    .line 247
    int-to-byte v3, v1

    .line 249
    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v12, v12

    sub-int/2addr v12, v2

    aget-byte v13, v8, v12

    xor-int/2addr v3, v13

    int-to-byte v3, v3

    aput-byte v3, v8, v12

    .line 251
    ushr-int/lit8 v1, v1, 0x8

    .line 245
    const/16 v17, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_ee

    .line 254
    :cond_102
    const/16 v17, 0x1

    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1, v8, v11, v8, v11}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 255
    invoke-static {v8, v11, v6, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    invoke-static {v8, v9, v5, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    add-int/lit8 v10, v10, -0x1

    goto :goto_d9

    .line 259
    :cond_112
    iget-object v0, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v6, v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_11b

    goto :goto_121

    .line 261
    :cond_11b
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    invoke-direct {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_121
    :goto_121
    return-object v5

    .line 178
    :cond_122
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_12a
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "unwrap data too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not set for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist wrap([BII)[B
    .registers 15

    .line 102
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-eqz v0, :cond_87

    .line 106
    const/16 v0, 0x8

    if-lt p3, v0, :cond_7f

    .line 111
    div-int/lit8 v1, p3, 0x8

    .line 113
    mul-int/lit8 v2, v1, 0x8

    if-ne v2, p3, :cond_77

    .line 118
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-boolean v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 120
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v2, v2

    add-int/2addr v2, p3

    new-array v2, v2, [B

    .line 121
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v3, v3

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    const/4 p1, 0x1

    if-ne v1, p1, :cond_35

    .line 126
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1, v2, v5, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_76

    .line 130
    :cond_35
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length p2, p2

    add-int/2addr p2, v0

    new-array p2, p2, [B

    .line 132
    move p3, v5

    :goto_3c
    const/4 v3, 0x6

    if-eq p3, v3, :cond_76

    .line 134
    move v3, p1

    :goto_40
    if-gt v3, v1, :cond_73

    .line 136
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v4, v4

    invoke-static {v2, v5, p2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    mul-int/lit8 v4, v3, 0x8

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v6, v6

    invoke-static {v2, v4, p2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v6, p2, v5, p2, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 140
    mul-int v6, v1, p3

    add-int/2addr v6, v3

    .line 141
    move v7, p1

    :goto_59
    if-eqz v6, :cond_6a

    .line 143
    int-to-byte v8, v6

    .line 145
    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    sub-int/2addr v9, v7

    aget-byte v10, p2, v9

    xor-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, p2, v9

    .line 147
    ushr-int/lit8 v6, v6, 0x8

    .line 141
    add-int/2addr v7, p1

    goto :goto_59

    .line 150
    :cond_6a
    invoke-static {p2, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    invoke-static {p2, v0, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 132
    :cond_73
    add-int/lit8 p3, p3, 0x1

    goto :goto_3c

    .line 156
    :cond_76
    :goto_76
    return-object v2

    .line 115
    :cond_77
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p2, "wrap data must be a multiple of 8 bytes"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_7f
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p2, "wrap data must be at least 8 bytes"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_87
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not set for wrapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
