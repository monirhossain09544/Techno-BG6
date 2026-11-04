.class abstract Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;
.super Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStoreUnauthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$CTR;,
        Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC;,
        Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB;
    }
.end annotation


# static fields
.field private static final blacklist BLOCK_SIZE_BYTES:I = 0x10


# instance fields
.field private blacklist mIv:[B

.field private blacklist mIvHasBeenUsed:Z

.field private final blacklist mIvRequired:Z

.field private final blacklist mKeymasterBlockMode:I

.field private final blacklist mKeymasterPadding:I


# direct methods
.method constructor blacklist <init>(IIZ)V
    .registers 4

    .line 135
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;-><init>()V

    .line 136
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mKeymasterBlockMode:I

    .line 137
    iput p2, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mKeymasterPadding:I

    .line 138
    iput-boolean p3, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    .line 139
    return-void
.end method


# virtual methods
.method protected final blacklist addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    if-nez v0, :cond_f

    goto :goto_17

    .line 272
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "IV has already been used. Reusing IV in encryption mode violates security best practices."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 277
    :cond_17
    :goto_17
    const v0, 0x10000002

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    const v0, 0x20000004

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mKeymasterBlockMode:I

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    const v0, 0x20000006

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mKeymasterPadding:I

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_4f

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-eqz v0, :cond_4f

    .line 287
    const v0, -0x6ffffc17

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_4f
    return-void
.end method

.method protected final whitelist test-api engineGetBlockSize()I
    .registers 2

    .line 325
    const/16 v0, 0x10

    return v0
.end method

.method protected final whitelist test-api engineGetIV()[B
    .registers 2

    .line 335
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected final whitelist test-api engineGetOutputSize(I)I
    .registers 2

    .line 330
    add-int/lit8 p1, p1, 0x30

    return p1
.end method

.method protected final whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 4

    .line 341
    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 342
    return-object v1

    .line 344
    :cond_6
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    array-length v0, v0

    if-lez v0, :cond_32

    .line 346
    :try_start_f
    const-string v0, "AES"

    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    .line 347
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_1f} :catch_29
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_f .. :try_end_1f} :catch_20

    .line 348
    return-object v0

    .line 352
    :catch_20
    move-exception v0

    .line 353
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to initialize AES AlgorithmParameters with an IV"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 349
    :catch_29
    move-exception v0

    .line 350
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to obtain AES AlgorithmParameters"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 358
    :cond_32
    return-object v1
.end method

.method protected final blacklist getAdditionalEntropyAmountForBegin()I
    .registers 2

    .line 254
    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 256
    const/16 v0, 0x10

    return v0

    .line 259
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method protected final blacklist getAdditionalEntropyAmountForFinish()I
    .registers 2

    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method protected final blacklist initAlgorithmSpecificParameters()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 169
    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-nez v0, :cond_5

    .line 170
    return-void

    .line 174
    :cond_5
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 178
    return-void

    .line 175
    :cond_c
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final blacklist initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 211
    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-nez v0, :cond_20

    .line 212
    if-nez p1, :cond_7

    .line 215
    return-void

    .line 213
    :cond_7
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_20
    if-nez p1, :cond_31

    .line 220
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 225
    return-void

    .line 222
    :cond_29
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it."

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :cond_31
    const-string v0, "AES"

    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 236
    :try_start_3d
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;
    :try_end_45
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_3d .. :try_end_45} :catch_59

    .line 245
    nop

    .line 246
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    .line 247
    iget-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-eqz p1, :cond_51

    .line 250
    return-void

    .line 248
    :cond_51
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Null IV in AlgorithmParameters"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 237
    :catch_59
    move-exception v0

    .line 238
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 243
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    .line 244
    return-void

    .line 240
    :cond_64
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IV required when decrypting, but not found in parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 229
    :cond_7d
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported AlgorithmParameters algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 230
    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ". Supported: AES"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final blacklist initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 183
    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-nez v0, :cond_20

    .line 184
    if-nez p1, :cond_7

    .line 187
    return-void

    .line 185
    :cond_7
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_20
    if-nez p1, :cond_31

    .line 192
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 197
    return-void

    .line 194
    :cond_29
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "IvParameterSpec must be provided when decrypting"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
    :cond_31
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_4a

    .line 202
    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    .line 203
    iget-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-eqz p1, :cond_42

    .line 206
    return-void

    .line 204
    :cond_42
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Null IV in IvParameterSpec"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_4a
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Only IvParameterSpec supported"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final blacklist initKey(ILjava/security/Key;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 155
    instance-of p1, p2, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-nez p1, :cond_2b

    .line 156
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    if-eqz p2, :cond_1c

    invoke-interface {p2}, Ljava/security/Key;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_1f

    :cond_1c
    const-string/jumbo p2, "null"

    :goto_1f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_2b
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 164
    check-cast p2, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    invoke-virtual {p0, p2}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->setKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V

    .line 165
    return-void

    .line 160
    :cond_3d
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 161
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ". Only "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " supported"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final blacklist loadAlgorithmSpecificParametersFromBeginResult([Landroid/hardware/security/keymint/KeyParameter;)V
    .registers 7

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    .line 299
    nop

    .line 300
    if-eqz p1, :cond_1d

    .line 301
    array-length v0, p1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1d

    aget-object v2, p1, v1

    .line 302
    iget v3, v2, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v4, -0x6ffffc17

    if-ne v3, v4, :cond_1a

    .line 303
    iget-object p1, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object p1

    .line 304
    goto :goto_1e

    .line 301
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 309
    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_3c

    .line 310
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-nez v0, :cond_29

    .line 311
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    goto :goto_3e

    .line 312
    :cond_29
    if-eqz p1, :cond_3e

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_34

    goto :goto_3e

    .line 313
    :cond_34
    new-instance p1, Ljava/security/ProviderException;

    const-string v0, "IV in use differs from provided IV"

    invoke-direct {p1, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :cond_3c
    if-nez p1, :cond_3f

    .line 321
    :cond_3e
    :goto_3e
    return-void

    .line 317
    :cond_3f
    new-instance p1, Ljava/security/ProviderException;

    const-string v0, "IV in use despite IV not being used by this transformation"

    invoke-direct {p1, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final blacklist resetAll()V
    .registers 2

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    .line 145
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 146
    return-void
.end method

.method protected final blacklist resetWhilePreservingInitState()V
    .registers 1

    .line 150
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    .line 151
    return-void
.end method
