.class abstract Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;
.super Ljavax/crypto/CipherSpi;
.source "AndroidKeyStoreCipherSpiBase.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# static fields
.field public static final blacklist DEFAULT_MGF1_DIGEST:Ljava/lang/String; = "SHA-1"

.field private static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreCipherSpiBase"


# instance fields
.field private blacklist mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

.field private blacklist mAdditionalAuthenticationDataStreamerClosed:Z

.field private blacklist mCachedException:Ljava/lang/Exception;

.field private blacklist mCipher:Ljavax/crypto/Cipher;

.field private blacklist mEncrypting:Z

.field private blacklist mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

.field private blacklist mKeymasterPurposeOverride:I

.field private blacklist mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

.field private blacklist mOperation:Landroid/security/KeyStoreOperation;

.field private blacklist mOperationChallenge:J

.field private blacklist mRng:Ljava/security/SecureRandom;


# direct methods
.method constructor blacklist <init>()V
    .registers 6

    .line 111
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    .line 113
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 114
    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 115
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 116
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    .line 117
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperationChallenge:J

    .line 118
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 119
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 120
    iput-boolean v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 121
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 122
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    .line 123
    return-void
.end method

.method private blacklist abortOperation()V
    .registers 2

    .line 283
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-static {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->abortOperation(Landroid/security/KeyStoreOperation;)V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    .line 285
    return-void
.end method

.method private blacklist ensureKeystoreOperationInitialized([Landroid/system/keystore2/Authorization;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_5

    .line 331
    return-void

    .line 333
    :cond_5
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_a

    .line 334
    return-void

    .line 336
    :cond_a
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    if-eqz v0, :cond_89

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    invoke-virtual {p0, v0, p1}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->addAlgorithmSpecificParametersToBegin(Ljava/util/List;[Landroid/system/keystore2/Authorization;)V

    .line 344
    iget p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1f

    .line 345
    iget p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    goto :goto_26

    .line 347
    :cond_1f
    iget-boolean p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    if-eqz p1, :cond_25

    .line 348
    move p1, v2

    goto :goto_26

    :cond_25
    const/4 p1, 0x1

    .line 351
    :goto_26
    const v1, 0x20000001

    invoke-static {v1, p1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    :try_start_30
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 355
    iget-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-virtual {p1}, Landroid/security/keystore2/AndroidKeyStoreKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object p1

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 356
    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStoreKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v1

    .line 355
    invoke-virtual {p1, v1, v0}, Landroid/security/KeyStoreSecurityLevel;->createOperation(Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;)Landroid/security/KeyStoreOperation;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;
    :try_end_45
    .catch Landroid/security/KeyStoreException; {:try_start_30 .. :try_end_45} :catch_6c

    .line 369
    nop

    .line 374
    iget-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-static {p1, v0}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getOrMakeOperationChallenge(Landroid/security/KeyStoreOperation;Landroid/security/keystore2/AndroidKeyStoreKey;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperationChallenge:J

    .line 377
    iget-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-virtual {p1}, Landroid/security/KeyStoreOperation;->getParameters()[Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->loadAlgorithmSpecificParametersFromBeginResult([Landroid/hardware/security/keymint/KeyParameter;)V

    .line 378
    iget-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-virtual {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->createMainDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 379
    iget-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    .line 380
    invoke-virtual {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 381
    iput-boolean v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 382
    return-void

    .line 359
    :catch_6c
    move-exception p1

    .line 360
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-static {v0, p1}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getExceptionForCipherInit(Landroid/security/keystore2/AndroidKeyStoreKey;Landroid/security/KeyStoreException;)Ljava/security/GeneralSecurityException;

    move-result-object p1

    .line 362
    instance-of v0, p1, Ljava/security/InvalidKeyException;

    if-nez v0, :cond_86

    .line 364
    instance-of v0, p1, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v0, :cond_7e

    .line 365
    check-cast p1, Ljava/security/InvalidAlgorithmParameterException;

    throw p1

    .line 367
    :cond_7e
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Unexpected exception type"

    invoke-direct {v0, v1, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 363
    :cond_86
    check-cast p1, Ljava/security/InvalidKeyException;

    throw p1

    .line 337
    :cond_89
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist flushAAD()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    if-nez v0, :cond_40

    .line 452
    const/4 v0, 0x1

    :try_start_9
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v4, v3}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->doFinal([BII[B)[B

    move-result-object v1
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_3c

    .line 456
    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 457
    nop

    .line 458
    if-eqz v1, :cond_40

    array-length v0, v1

    if-gtz v0, :cond_1c

    goto :goto_40

    .line 459
    :cond_1c
    new-instance v0, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AAD update unexpectedly returned data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :catchall_3c
    move-exception v1

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 457
    throw v1

    .line 463
    :cond_40
    :goto_40
    return-void
.end method

.method private blacklist getKeyCharacteristics(Ljava/security/Key;)[Landroid/system/keystore2/Authorization;
    .registers 3

    .line 126
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStoreKey;

    if-nez v0, :cond_8

    .line 127
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/system/keystore2/Authorization;

    return-object p1

    .line 130
    :cond_8
    check-cast p1, Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-virtual {p1}, Landroid/security/keystore2/AndroidKeyStoreKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object p1

    return-object p1
.end method

.method private blacklist init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 263
    packed-switch p1, :pswitch_data_36

    .line 273
    new-instance p2, Ljava/security/InvalidParameterException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported opmode: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 270
    :pswitch_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 271
    goto :goto_24

    .line 266
    :pswitch_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 267
    nop

    .line 275
    :goto_24
    invoke-virtual {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->initKey(ILjava/security/Key;)V

    .line 276
    iget-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    if-eqz p1, :cond_2e

    .line 279
    iput-object p3, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    .line 280
    return-void

    .line 277
    :cond_2e
    new-instance p1, Ljava/security/ProviderException;

    const-string p2, "initKey did not initialize the key"

    invoke-direct {p1, p2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1c
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method

.method static blacklist opmodeToString(I)Ljava/lang/String;
    .registers 1

    .line 924
    packed-switch p0, :pswitch_data_14

    .line 934
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 932
    :pswitch_8
    const-string p0, "UNWRAP_MODE"

    return-object p0

    .line 930
    :pswitch_b
    const-string p0, "WRAP_MODE"

    return-object p0

    .line 928
    :pswitch_e
    const-string p0, "DECRYPT_MODE"

    return-object p0

    .line 926
    :pswitch_11
    const-string p0, "ENCRYPT_MODE"

    return-object p0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method protected abstract blacklist addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation
.end method

.method protected blacklist addAlgorithmSpecificParametersToBegin(Ljava/util/List;[Landroid/system/keystore2/Authorization;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;[",
            "Landroid/system/keystore2/Authorization;",
            ")V"
        }
    .end annotation

    .line 1045
    invoke-virtual {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V

    .line 1046
    return-void
.end method

.method protected blacklist createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;
    .registers 2

    .line 408
    const/4 p1, 0x0

    return-object p1
.end method

.method protected blacklist createMainDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;
    .registers 4

    .line 393
    new-instance v0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    invoke-direct {v1, p1}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStoreOperation;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V

    return-object v0
.end method

.method protected final whitelist test-api engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 666
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_b

    .line 667
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1

    .line 670
    :cond_b
    if-eqz p1, :cond_79

    .line 673
    if-eqz p2, :cond_70

    .line 677
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 679
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 680
    nop

    .line 682
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    .line 681
    invoke-virtual {p0, v1, v3, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v1

    .line 683
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3e

    .line 685
    :cond_35
    new-array v1, v0, [B

    .line 686
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 687
    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v1

    .line 690
    :goto_3e
    if-eqz v1, :cond_41

    array-length v2, v1

    .line 691
    :cond_41
    if-lez v2, :cond_6f

    .line 692
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    .line 694
    :try_start_47
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_4a
    .catch Ljava/nio/BufferOverflowException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 699
    goto :goto_6f

    .line 695
    :catch_4b
    move-exception p2

    .line 696
    new-instance p2, Ljavax/crypto/ShortBufferException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Output buffer too small. Produced: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 701
    :cond_6f
    :goto_6f
    return v2

    .line 674
    :cond_70
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "output == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 671
    :cond_79
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "input == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final whitelist test-api engineDoFinal([BII[BI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 646
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_b

    .line 647
    iget-object p5, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {p5, p1, p2, p3, p4}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result p1

    return p1

    .line 650
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object p1

    .line 651
    const/4 p2, 0x0

    if-nez p1, :cond_13

    .line 652
    return p2

    .line 654
    :cond_13
    array-length p3, p4

    sub-int/2addr p3, p5

    .line 655
    array-length v0, p1

    if-gt v0, p3, :cond_1e

    .line 659
    array-length p3, p1

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 660
    array-length p1, p1

    return p1

    .line 656
    :cond_1e
    new-instance p2, Ljavax/crypto/ShortBufferException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Output buffer too short. Produced: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    array-length p1, p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, ", available: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected final whitelist test-api engineDoFinal([BII)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 602
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_16

    .line 603
    if-nez p1, :cond_f

    if-nez p3, :cond_f

    .line 604
    iget-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p1

    return-object p1

    .line 606
    :cond_f
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 610
    :cond_16
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-nez v0, :cond_6c

    .line 616
    :try_start_1a
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getKeyCharacteristics(Ljava/security/Key;)[Landroid/system/keystore2/Authorization;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized([Landroid/system/keystore2/Authorization;)V
    :try_end_23
    .catch Ljava/security/InvalidKeyException; {:try_start_1a .. :try_end_23} :catch_5f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1a .. :try_end_23} :catch_5f

    .line 619
    nop

    .line 623
    :try_start_24
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->flushAAD()V

    .line 624
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->doFinal([BII[B)[B

    move-result-object p1
    :try_end_2e
    .catch Landroid/security/KeyStoreException; {:try_start_24 .. :try_end_2e} :catch_33

    .line 636
    nop

    .line 638
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    .line 639
    return-object p1

    .line 627
    :catch_33
    move-exception p1

    .line 628
    invoke-virtual {p1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_7a

    .line 634
    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {p2}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {p2, p1}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljavax/crypto/IllegalBlockSizeException;

    throw p1

    .line 632
    :sswitch_47
    new-instance p2, Ljavax/crypto/AEADBadTagException;

    invoke-direct {p2}, Ljavax/crypto/AEADBadTagException;-><init>()V

    invoke-virtual {p2, p1}, Ljavax/crypto/AEADBadTagException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljavax/crypto/AEADBadTagException;

    throw p1

    .line 630
    :sswitch_53
    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-direct {p2}, Ljavax/crypto/BadPaddingException;-><init>()V

    invoke-virtual {p2, p1}, Ljavax/crypto/BadPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljavax/crypto/BadPaddingException;

    throw p1

    .line 617
    :catch_5f
    move-exception p1

    .line 618
    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {p2}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {p2, p1}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljavax/crypto/IllegalBlockSizeException;

    throw p1

    .line 611
    :cond_6c
    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    iget-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 612
    invoke-virtual {p1, p2}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljavax/crypto/IllegalBlockSizeException;

    throw p1

    :sswitch_data_7a
    .sparse-switch
        -0x26 -> :sswitch_53
        -0x1e -> :sswitch_47
    .end sparse-switch
.end method

.method protected final whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 868
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected abstract whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
.end method

.method protected final whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 206
    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-nez v0, :cond_2b

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-nez v0, :cond_f

    instance-of v0, p2, Ljava/security/PublicKey;

    if-eqz v0, :cond_2b

    .line 209
    :cond_f
    :try_start_f
    const-string v0, "engineInit"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getTransform()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    .line 211
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_23} :catch_24
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_f .. :try_end_23} :catch_24

    .line 212
    return-void

    .line 213
    :catch_24
    move-exception p1

    .line 214
    new-instance p2, Ljava/security/InvalidKeyException;

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 218
    :cond_2b
    nop

    .line 220
    :try_start_2c
    invoke-direct {p0, p1, p2, p4}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 221
    invoke-virtual {p0, p3}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V

    .line 222
    invoke-direct {p0, p2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getKeyCharacteristics(Ljava/security/Key;)[Landroid/system/keystore2/Authorization;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized([Landroid/system/keystore2/Authorization;)V
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_3c

    .line 223
    nop

    .line 225
    nop

    .line 229
    return-void

    .line 225
    :catchall_3c
    move-exception p1

    .line 226
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 228
    throw p1
.end method

.method protected final whitelist test-api engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 139
    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-nez v0, :cond_a3

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-nez v0, :cond_f

    instance-of v0, p2, Ljava/security/PublicKey;

    if-eqz v0, :cond_a3

    .line 142
    :cond_f
    :try_start_f
    const-string v0, "engineInit"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getTransform()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    .line 144
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getTransform()Ljava/lang/String;

    move-result-object v0

    .line 146
    const-string v1, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_28} :catch_9c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_f .. :try_end_28} :catch_9c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_f .. :try_end_28} :catch_9c

    const-string v2, "SHA-1"

    const-string v3, "MGF1"

    if-eqz v1, :cond_42

    .line 147
    :try_start_2e
    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v1, "SHA-224"

    new-instance v4, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v4, v2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v0, v1, v3, v4, v2}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 151
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1, p2, v0, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 152
    goto :goto_9b

    :cond_42
    const-string v1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 153
    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v1, "SHA-256"

    new-instance v4, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v4, v2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v0, v1, v3, v4, v2}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 157
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1, p2, v0, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 159
    goto :goto_9b

    :cond_5e
    const-string v1, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 160
    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v1, "SHA-384"

    new-instance v4, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v4, v2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v0, v1, v3, v4, v2}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 164
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1, p2, v0, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 166
    goto :goto_9b

    :cond_7a
    const-string v1, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 167
    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v1, "SHA-512"

    new-instance v4, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v4, v2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v0, v1, v3, v4, v2}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 171
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1, p2, v0, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 172
    goto :goto_9b

    .line 173
    :cond_96
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    :try_end_9b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2e .. :try_end_9b} :catch_9c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2e .. :try_end_9b} :catch_9c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2e .. :try_end_9b} :catch_9c

    .line 175
    :goto_9b
    return-void

    .line 176
    :catch_9c
    move-exception p1

    .line 179
    new-instance p2, Ljava/security/InvalidKeyException;

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 183
    :cond_a3
    nop

    .line 185
    :try_start_a4
    invoke-direct {p0, p1, p2, p3}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 186
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters()V
    :try_end_aa
    .catchall {:try_start_a4 .. :try_end_aa} :catchall_bc

    .line 188
    :try_start_aa
    invoke-direct {p0, p2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getKeyCharacteristics(Ljava/security/Key;)[Landroid/system/keystore2/Authorization;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized([Landroid/system/keystore2/Authorization;)V
    :try_end_b1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_aa .. :try_end_b1} :catch_b5
    .catchall {:try_start_aa .. :try_end_b1} :catchall_bc

    .line 191
    nop

    .line 192
    nop

    .line 194
    nop

    .line 198
    return-void

    .line 189
    :catch_b5
    move-exception p1

    .line 190
    :try_start_b6
    new-instance p2, Ljava/security/InvalidKeyException;

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_bc
    .catchall {:try_start_b6 .. :try_end_bc} :catchall_bc

    .line 194
    :catchall_bc
    move-exception p1

    .line 195
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 197
    throw p1
.end method

.method protected final whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 237
    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-nez v0, :cond_2b

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-nez v0, :cond_f

    instance-of v0, p2, Ljava/security/PublicKey;

    if-eqz v0, :cond_2b

    .line 240
    :cond_f
    :try_start_f
    const-string v0, "engineInit"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getTransform()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    .line 242
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_23} :catch_24
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_f .. :try_end_23} :catch_24

    .line 243
    return-void

    .line 244
    :catch_24
    move-exception p1

    .line 245
    new-instance p2, Ljava/security/InvalidKeyException;

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 249
    :cond_2b
    nop

    .line 251
    :try_start_2c
    invoke-direct {p0, p1, p2, p4}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 252
    invoke-virtual {p0, p3}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 253
    invoke-direct {p0, p2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getKeyCharacteristics(Ljava/security/Key;)[Landroid/system/keystore2/Authorization;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized([Landroid/system/keystore2/Authorization;)V
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_3c

    .line 254
    nop

    .line 256
    nop

    .line 260
    return-void

    .line 256
    :catchall_3c
    move-exception p1

    .line 257
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 259
    throw p1
.end method

.method protected final whitelist test-api engineSetMode(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 856
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected final whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 863
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected final whitelist test-api engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 793
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_b

    .line 794
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p1

    return-object p1

    .line 797
    :cond_b
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    if-eqz v0, :cond_8d

    .line 801
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->isEncrypting()Z

    move-result v0

    if-nez v0, :cond_85

    .line 806
    if-eqz p1, :cond_7c

    .line 812
    :try_start_17
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object p1
    :try_end_1d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_17 .. :try_end_1d} :catch_73
    .catch Ljavax/crypto/BadPaddingException; {:try_start_17 .. :try_end_1d} :catch_73

    .line 815
    nop

    .line 817
    const-string v0, "engineUnwrap"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 818
    packed-switch p3, :pswitch_data_96

    .line 847
    new-instance p1, Ljava/security/InvalidParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported wrappedKeyType: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 821
    :pswitch_3f
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p3, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p3

    .line 826
    :pswitch_45
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p2

    .line 828
    :try_start_49
    new-instance p3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {p3, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p2, p3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1
    :try_end_52
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_49 .. :try_end_52} :catch_53

    return-object p1

    .line 829
    :catch_53
    move-exception p1

    .line 830
    new-instance p2, Ljava/security/InvalidKeyException;

    const-string p3, "Failed to create private key from its PKCS#8 encoded form"

    invoke-direct {p2, p3, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 837
    :pswitch_5c
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p2

    .line 839
    :try_start_60
    new-instance p3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {p3, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p2, p3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1
    :try_end_69
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_60 .. :try_end_69} :catch_6a

    return-object p1

    .line 840
    :catch_6a
    move-exception p1

    .line 841
    new-instance p2, Ljava/security/InvalidKeyException;

    const-string p3, "Failed to create public key from its X.509 encoded form"

    invoke-direct {p2, p3, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 813
    :catch_73
    move-exception p1

    .line 814
    new-instance p2, Ljava/security/InvalidKeyException;

    const-string p3, "Failed to unwrap key"

    invoke-direct {p2, p3, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 807
    :cond_7c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "wrappedKey == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 802
    :cond_85
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cipher must be initialized in Cipher.WRAP_MODE to wrap keys"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 798
    :cond_8d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not initilized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_45
        :pswitch_3f
    .end packed-switch
.end method

.method protected final whitelist test-api engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 487
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_b

    .line 488
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1

    .line 491
    :cond_b
    if-eqz p1, :cond_79

    .line 494
    if-eqz p2, :cond_70

    .line 498
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 500
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 501
    nop

    .line 503
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    .line 502
    invoke-virtual {p0, v1, v3, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object v1

    .line 504
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3e

    .line 506
    :cond_35
    new-array v1, v0, [B

    .line 507
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 508
    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object v1

    .line 511
    :goto_3e
    if-eqz v1, :cond_41

    array-length v2, v1

    .line 512
    :cond_41
    if-lez v2, :cond_6f

    .line 513
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    .line 515
    :try_start_47
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_4a
    .catch Ljava/nio/BufferOverflowException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 520
    goto :goto_6f

    .line 516
    :catch_4b
    move-exception p2

    .line 517
    new-instance p2, Ljavax/crypto/ShortBufferException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Output buffer too small. Produced: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 522
    :cond_6f
    :goto_6f
    return v2

    .line 495
    :cond_70
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "output == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 492
    :cond_79
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "input == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final whitelist test-api engineUpdate([BII[BI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 468
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_b

    .line 469
    iget-object p5, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {p5, p1, p2, p3, p4}, Ljavax/crypto/Cipher;->update([BII[B)I

    move-result p1

    return p1

    .line 471
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object p1

    .line 472
    const/4 p2, 0x0

    if-nez p1, :cond_13

    .line 473
    return p2

    .line 475
    :cond_13
    array-length p3, p4

    sub-int/2addr p3, p5

    .line 476
    array-length v0, p1

    if-gt v0, p3, :cond_1e

    .line 480
    array-length p3, p1

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    array-length p1, p1

    return p1

    .line 477
    :cond_1e
    new-instance p2, Ljavax/crypto/ShortBufferException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Output buffer too short. Produced: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    array-length p1, p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, ", available: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected final whitelist test-api engineUpdate([BII)[B
    .registers 6

    .line 413
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_b

    .line 414
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object p1

    return-object p1

    .line 417
    :cond_b
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 418
    return-object v1

    .line 421
    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getKeyCharacteristics(Ljava/security/Key;)[Landroid/system/keystore2/Authorization;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized([Landroid/system/keystore2/Authorization;)V
    :try_end_1a
    .catch Ljava/security/InvalidKeyException; {:try_start_11 .. :try_end_1a} :catch_31
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_11 .. :try_end_1a} :catch_31

    .line 425
    nop

    .line 427
    if-nez p3, :cond_1e

    .line 428
    return-object v1

    .line 433
    :cond_1e
    :try_start_1e
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->flushAAD()V

    .line 434
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->update([BII)[B

    move-result-object p1
    :try_end_27
    .catch Landroid/security/KeyStoreException; {:try_start_1e .. :try_end_27} :catch_2d

    .line 438
    nop

    .line 440
    array-length p2, p1

    if-nez p2, :cond_2c

    .line 441
    return-object v1

    .line 444
    :cond_2c
    return-object p1

    .line 435
    :catch_2d
    move-exception p1

    .line 436
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 437
    return-object v1

    .line 422
    :catch_31
    move-exception p1

    .line 423
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 424
    return-object v1
.end method

.method protected final whitelist test-api engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .registers 6

    .line 569
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_f

    .line 570
    const-string v0, "engineUpdateAAD"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->updateAAD(Ljava/nio/ByteBuffer;)V

    .line 572
    return-void

    .line 575
    :cond_f
    if-eqz p1, :cond_47

    .line 578
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_18

    .line 579
    return-void

    .line 585
    :cond_18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 586
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 587
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 588
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 589
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_43

    .line 591
    :cond_37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v0, v2, [B

    .line 592
    nop

    .line 593
    nop

    .line 594
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 596
    :goto_43
    invoke-virtual {p0, v0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineUpdateAAD([BII)V

    .line 597
    return-void

    .line 576
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "src == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final whitelist test-api engineUpdateAAD([BII)V
    .registers 5

    .line 527
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_f

    .line 528
    const-string v0, "engineUpdateAAD"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    .line 530
    return-void

    .line 533
    :cond_f
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_14

    .line 534
    return-void

    .line 538
    :cond_14
    :try_start_14
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getKeyCharacteristics(Ljava/security/Key;)[Landroid/system/keystore2/Authorization;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized([Landroid/system/keystore2/Authorization;)V
    :try_end_1d
    .catch Ljava/security/InvalidKeyException; {:try_start_14 .. :try_end_1d} :catch_68
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_14 .. :try_end_1d} :catch_68

    .line 542
    nop

    .line 544
    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    if-nez v0, :cond_60

    .line 549
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_58

    .line 555
    :try_start_26
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->update([BII)[B

    move-result-object p1
    :try_end_2c
    .catch Landroid/security/KeyStoreException; {:try_start_26 .. :try_end_2c} :catch_54

    .line 559
    nop

    .line 561
    if-eqz p1, :cond_53

    array-length p2, p1

    if-gtz p2, :cond_33

    goto :goto_53

    .line 562
    :cond_33
    new-instance p2, Ljava/security/ProviderException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AAD update unexpectedly produced output: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " bytes"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 565
    :cond_53
    :goto_53
    return-void

    .line 556
    :catch_54
    move-exception p1

    .line 557
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 558
    return-void

    .line 550
    :cond_58
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This cipher does not support AAD"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 545
    :cond_60
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AAD can only be provided before Cipher.update is invoked"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 539
    :catch_68
    move-exception p1

    .line 540
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 541
    return-void
.end method

.method protected final whitelist test-api engineWrap(Ljava/security/Key;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 707
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_b

    .line 708
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1

    return-object p1

    .line 711
    :cond_b
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    if-eqz v0, :cond_105

    .line 715
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 720
    if-eqz p1, :cond_f5

    .line 723
    nop

    .line 724
    const-string v0, "engineWrap"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 725
    instance-of v0, p1, Ljavax/crypto/SecretKey;

    const-string v1, "Failed to wrap key because it does not export its key material"

    const/4 v2, 0x0

    if-eqz v0, :cond_54

    .line 726
    const-string v0, "RAW"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 727
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    .line 729
    :cond_34
    if-nez v2, :cond_b8

    .line 731
    :try_start_36
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 732
    check-cast p1, Ljavax/crypto/SecretKey;

    const-class v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 733
    invoke-virtual {v0, p1, v2}, Ljavax/crypto/SecretKeyFactory;->getKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p1

    check-cast p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 735
    invoke-virtual {p1}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v2
    :try_end_4c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_36 .. :try_end_4c} :catch_4d
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_36 .. :try_end_4c} :catch_4d

    .line 740
    goto :goto_b8

    .line 736
    :catch_4d
    move-exception p1

    .line 737
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v1, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 742
    :cond_54
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_86

    .line 743
    const-string v0, "PKCS8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 744
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    .line 746
    :cond_68
    if-nez v2, :cond_b8

    .line 748
    :try_start_6a
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 749
    const-class v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 750
    invoke-virtual {v0, p1, v2}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p1

    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 751
    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v2
    :try_end_7e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6a .. :try_end_7e} :catch_7f
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_6a .. :try_end_7e} :catch_7f

    .line 756
    goto :goto_b8

    .line 752
    :catch_7f
    move-exception p1

    .line 753
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v1, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 758
    :cond_86
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_d4

    .line 759
    const-string v0, "X.509"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 760
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    .line 762
    :cond_9a
    if-nez v2, :cond_b8

    .line 764
    :try_start_9c
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 765
    const-class v2, Ljava/security/spec/X509EncodedKeySpec;

    .line 766
    invoke-virtual {v0, p1, v2}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p1

    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .line 767
    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v2
    :try_end_b0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9c .. :try_end_b0} :catch_b1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_9c .. :try_end_b0} :catch_b1

    .line 772
    goto :goto_b8

    .line 768
    :catch_b1
    move-exception p1

    .line 769
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v1, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 778
    :cond_b8
    :goto_b8
    if-eqz v2, :cond_ce

    .line 784
    :try_start_ba
    array-length p1, v2

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, p1}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object p1
    :try_end_c0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_ba .. :try_end_c0} :catch_c1

    return-object p1

    .line 785
    :catch_c1
    move-exception p1

    .line 786
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v0, p1}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljavax/crypto/IllegalBlockSizeException;

    throw p1

    .line 779
    :cond_ce
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 775
    :cond_d4
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/Key;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_f5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 716
    :cond_fd
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cipher must be initialized in Cipher.WRAP_MODE to wrap keys"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 712
    :cond_105
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not initilized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 875
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->abortOperation()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 877
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 878
    nop

    .line 879
    return-void

    .line 877
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 878
    throw v0
.end method

.method protected abstract blacklist getAdditionalEntropyAmountForBegin()I
.end method

.method protected abstract blacklist getAdditionalEntropyAmountForFinish()I
.end method

.method protected final blacklist getConsumedInputSizeBytes()J
    .registers 3

    .line 910
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_b

    .line 913
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->getConsumedInputSizeBytes()J

    move-result-wide v0

    return-wide v0

    .line 911
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final blacklist getKeymasterPurposeOverride()I
    .registers 2

    .line 898
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    return v0
.end method

.method public final blacklist getOperationHandle()J
    .registers 3

    .line 883
    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperationChallenge:J

    return-wide v0
.end method

.method protected final blacklist getProducedOutputSizeBytes()J
    .registers 3

    .line 917
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_b

    .line 920
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->getProducedOutputSizeBytes()J

    move-result-wide v0

    return-wide v0

    .line 918
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract blacklist getTransform()Ljava/lang/String;
.end method

.method protected abstract blacklist initAlgorithmSpecificParameters()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract blacklist initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract blacklist initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract blacklist initKey(ILjava/security/Key;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected final blacklist isEncrypting()Z
    .registers 2

    .line 906
    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    return v0
.end method

.method protected abstract blacklist loadAlgorithmSpecificParametersFromBeginResult([Landroid/hardware/security/keymint/KeyParameter;)V
.end method

.method protected blacklist resetAll()V
    .registers 5

    .line 296
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->abortOperation()V

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 298
    const/4 v1, -0x1

    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 299
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 300
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    .line 301
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperationChallenge:J

    .line 302
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 303
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 304
    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 305
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 306
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    .line 307
    return-void
.end method

.method protected blacklist resetWhilePreservingInitState()V
    .registers 3

    .line 319
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->abortOperation()V

    .line 320
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperationChallenge:J

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 322
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 323
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 324
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 325
    return-void
.end method

.method protected final blacklist setKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V
    .registers 2

    .line 887
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 888
    return-void
.end method

.method protected final blacklist setKeymasterPurposeOverride(I)V
    .registers 2

    .line 894
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 895
    return-void
.end method
