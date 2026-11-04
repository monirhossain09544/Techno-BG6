.class abstract Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;
.super Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;,
        Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;,
        Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;
    }
.end annotation


# static fields
.field private static final blacklist BLOCK_SIZE_BYTES:I = 0x10


# instance fields
.field private blacklist mIv:[B

.field private blacklist mIvHasBeenUsed:Z

.field private final blacklist mKeymasterBlockMode:I

.field private final blacklist mKeymasterPadding:I


# direct methods
.method constructor blacklist <init>(II)V
    .registers 3

    .line 270
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;-><init>()V

    .line 271
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mKeymasterBlockMode:I

    .line 272
    iput p2, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mKeymasterPadding:I

    .line 273
    return-void
.end method


# virtual methods
.method protected blacklist addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    if-nez v0, :cond_b

    goto :goto_13

    .line 301
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "IV has already been used. Reusing IV in encryption mode violates security best practices."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 305
    :cond_13
    :goto_13
    const v0, 0x10000002

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    const v0, 0x20000004

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mKeymasterBlockMode:I

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    const v0, 0x20000006

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mKeymasterPadding:I

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    if-eqz v0, :cond_47

    .line 319
    const v0, -0x6ffffc17

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_47
    return-void
.end method

.method protected final whitelist test-api engineGetBlockSize()I
    .registers 2

    .line 348
    const/16 v0, 0x10

    return v0
.end method

.method protected final whitelist test-api engineGetIV()[B
    .registers 2

    .line 353
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getIv()[B
    .registers 2

    .line 361
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    return-object v0
.end method

.method protected final blacklist initKey(ILjava/security/Key;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 284
    instance-of p1, p2, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-nez p1, :cond_2b

    .line 285
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 286
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

    .line 288
    :cond_2b
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 293
    check-cast p2, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    invoke-virtual {p0, p2}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->setKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V

    .line 294
    return-void

    .line 289
    :cond_3d
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 290
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

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    .line 329
    nop

    .line 330
    if-eqz p1, :cond_1d

    .line 331
    array-length v0, p1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1d

    aget-object v2, p1, v1

    .line 332
    iget v3, v2, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v4, -0x6ffffc17

    if-ne v3, v4, :cond_1a

    .line 333
    iget-object p1, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object p1

    .line 334
    goto :goto_1e

    .line 331
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 339
    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    if-nez v0, :cond_25

    .line 340
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    goto :goto_38

    .line 341
    :cond_25
    if-eqz p1, :cond_38

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_30

    goto :goto_38

    .line 342
    :cond_30
    new-instance p1, Ljava/security/ProviderException;

    const-string v0, "IV in use differs from provided IV"

    invoke-direct {p1, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 344
    :cond_38
    :goto_38
    return-void
.end method

.method protected blacklist resetAll()V
    .registers 2

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    .line 279
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 280
    return-void
.end method

.method protected blacklist setIv([B)V
    .registers 2

    .line 357
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    .line 358
    return-void
.end method
