.class abstract Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;
.super Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "GCM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_TAG_LENGTH_BITS:I = 0x80

.field private static final blacklist IV_LENGTH_BYTES:I = 0xc

.field private static final blacklist MAX_SUPPORTED_TAG_LENGTH_BITS:I = 0x80

.field static final blacklist MIN_SUPPORTED_TAG_LENGTH_BITS:I = 0x60


# instance fields
.field private blacklist mTagLengthBits:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3

    .line 63
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;-><init>(II)V

    .line 60
    const/16 p1, 0x80

    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    .line 64
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

    .line 221
    invoke-super {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V

    .line 222
    const v0, 0x300003eb

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method protected final blacklist createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;
    .registers 5

    .line 199
    new-instance v0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;-><init>(Landroid/security/KeyStoreOperation;Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi-IA;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V

    return-object v0
.end method

.method protected blacklist createMainDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;
    .registers 4

    .line 183
    new-instance v0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    invoke-direct {v1, p1}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStoreOperation;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V

    .line 186
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 187
    return-object v0

    .line 191
    :cond_12
    new-instance p1, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi-IA;)V

    return-object p1
.end method

.method protected final whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 5

    .line 162
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->getIv()[B

    move-result-object v0

    .line 163
    if-eqz v0, :cond_2c

    array-length v1, v0

    if-lez v1, :cond_2c

    .line 165
    :try_start_9
    const-string v1, "GCM"

    invoke-static {v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 166
    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    invoke-direct {v2, v3, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_19} :catch_23
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_9 .. :try_end_19} :catch_1a

    .line 167
    return-object v1

    .line 171
    :catch_1a
    move-exception v0

    .line 172
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to initialize GCM AlgorithmParameters"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 168
    :catch_23
    move-exception v0

    .line 169
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to obtain GCM AlgorithmParameters"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 176
    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final blacklist getAdditionalEntropyAmountForBegin()I
    .registers 2

    .line 205
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->getIv()[B

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 207
    const/16 v0, 0xc

    return v0

    .line 210
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method protected final blacklist getAdditionalEntropyAmountForFinish()I
    .registers 2

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method protected final blacklist getTagLengthBits()I
    .registers 2

    .line 229
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    return v0
.end method

.method protected final blacklist getTransform()Ljava/lang/String;
    .registers 2

    .line 68
    const-string v0, "AES/GCM/NoPadding"

    return-object v0
.end method

.method protected final blacklist initAlgorithmSpecificParameters()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 88
    return-void

    .line 85
    :cond_7
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

    .line 129
    if-nez p1, :cond_11

    .line 130
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 135
    return-void

    .line 132
    :cond_9
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "IV required when decrypting. Use GCMParameterSpec or GCM AlgorithmParameters to provide it."

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_11
    const-string v0, "GCM"

    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 146
    :try_start_1d
    const-class v0, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/GCMParameterSpec;
    :try_end_25
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_1d .. :try_end_25} :catch_2a

    .line 155
    nop

    .line 156
    invoke-virtual {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 157
    return-void

    .line 147
    :catch_2a
    move-exception v0

    .line 148
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 153
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->setIv([B)V

    .line 154
    return-void

    .line 150
    :cond_36
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IV and tag length required when decrypting, but not found in parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 139
    :cond_4f
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported AlgorithmParameters algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ". Supported: GCM"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final blacklist initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 94
    if-nez p1, :cond_11

    .line 95
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 100
    return-void

    .line 97
    :cond_9
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "GCMParameterSpec must be provided when decrypting"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_11
    instance-of v0, p1, Ljavax/crypto/spec/GCMParameterSpec;

    if-eqz v0, :cond_89

    .line 105
    check-cast p1, Ljavax/crypto/spec/GCMParameterSpec;

    .line 106
    invoke-virtual {p1}, Ljavax/crypto/spec/GCMParameterSpec;->getIV()[B

    move-result-object v0

    .line 107
    if-eqz v0, :cond_81

    .line 109
    array-length v1, v0

    const/16 v2, 0xc

    if-ne v1, v2, :cond_57

    .line 114
    invoke-virtual {p1}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result p1

    .line 115
    const/16 v1, 0x60

    if-lt p1, v1, :cond_38

    const/16 v1, 0x80

    if-gt p1, v1, :cond_38

    rem-int/lit8 v1, p1, 0x8

    if-nez v1, :cond_38

    .line 122
    invoke-virtual {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->setIv([B)V

    .line 123
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    .line 124
    return-void

    .line 118
    :cond_38
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported tag length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " bits. Supported lengths: 96, 104, 112, 120, 128"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_57
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported IV length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes. Only "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes long IV supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_81
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Null IV in GCMParameterSpec"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_89
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Only GCMParameterSpec supported"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final blacklist resetAll()V
    .registers 2

    .line 73
    const/16 v0, 0x80

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    .line 74
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->resetAll()V

    .line 75
    return-void
.end method

.method protected final blacklist resetWhilePreservingInitState()V
    .registers 1

    .line 79
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->resetWhilePreservingInitState()V

    .line 80
    return-void
.end method
