.class public Landroid/security/keystore2/AndroidKeyStoreProvider;
.super Ljava/security/Provider;
.source "AndroidKeyStoreProvider.java"


# static fields
.field private static final blacklist DESEDE_SYSTEM_PROPERTY:Ljava/lang/String; = "ro.hardware.keystore_desede"

.field private static final blacklist ED25519_OID:Ljava/lang/String; = "1.3.101.112"

.field private static final blacklist EDDSA_ALGORITHM_NAME:Ljava/lang/String; = "EdDSA"

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "android.security.keystore2"

.field private static final blacklist PROVIDER_NAME:Ljava/lang/String; = "AndroidKeyStore"

.field private static final blacklist X25519_ALIAS:Ljava/lang/String; = "XDH"


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 84
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v2, "Android KeyStore security provider"

    const-string v3, "AndroidKeyStore"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 86
    const-string/jumbo v0, "ro.hardware.keystore_desede"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 89
    const-string v1, "KeyStore.AndroidKeyStore"

    const-string v2, "android.security.keystore2.AndroidKeyStoreSpi"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "KeyPairGenerator.EC"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyPairGeneratorSpi$EC"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "KeyPairGenerator.RSA"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyPairGeneratorSpi$RSA"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "KeyPairGenerator.XDH"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyPairGeneratorSpi$XDH"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "KeyPairGenerator.ED25519"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyPairGeneratorSpi$ED25519"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "EC"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    .line 100
    const-string v1, "RSA"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    .line 101
    const-string v1, "XDH"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    .line 102
    const-string v1, "ED25519"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    .line 105
    const-string v1, "KeyGenerator.AES"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$AES"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "KeyGenerator.HmacSHA1"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$HmacSHA1"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "KeyGenerator.HmacSHA224"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$HmacSHA224"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "KeyGenerator.HmacSHA256"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$HmacSHA256"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "KeyGenerator.HmacSHA384"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$HmacSHA384"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "KeyGenerator.HmacSHA512"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$HmacSHA512"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    if-eqz v0, :cond_81

    .line 113
    const-string v1, "KeyGenerator.DESede"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$DESede"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_81
    const-string v1, "KeyAgreement.ECDH"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyAgreementSpi$ECDH"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "KeyAgreement.XDH"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyAgreementSpi$XDH"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "AES"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 122
    if-eqz v0, :cond_9b

    .line 123
    const-string v0, "DESede"

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 125
    :cond_9b
    const-string v0, "HmacSHA1"

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 126
    const-string v0, "HmacSHA224"

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 127
    const-string v0, "HmacSHA256"

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 128
    const-string v0, "HmacSHA384"

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 129
    const-string v0, "HmacSHA512"

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static blacklist getKeyStoreOperationHandle(Ljava/lang/Object;)J
    .registers 5

    .line 184
    if-eqz p0, :cond_88

    .line 188
    instance-of v0, p0, Ljava/security/Signature;

    if-eqz v0, :cond_e

    .line 189
    move-object v0, p0

    check-cast v0, Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->getCurrentSpi()Ljava/security/SignatureSpi;

    move-result-object v0

    goto :goto_31

    .line 190
    :cond_e
    instance-of v0, p0, Ljavax/crypto/Mac;

    if-eqz v0, :cond_1a

    .line 191
    move-object v0, p0

    check-cast v0, Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getCurrentSpi()Ljavax/crypto/MacSpi;

    move-result-object v0

    goto :goto_31

    .line 192
    :cond_1a
    instance-of v0, p0, Ljavax/crypto/Cipher;

    if-eqz v0, :cond_26

    .line 193
    move-object v0, p0

    check-cast v0, Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getCurrentSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    goto :goto_31

    .line 194
    :cond_26
    instance-of v0, p0, Ljavax/crypto/KeyAgreement;

    if-eqz v0, :cond_69

    .line 195
    move-object v0, p0

    check-cast v0, Ljavax/crypto/KeyAgreement;

    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->getCurrentSpi()Ljavax/crypto/KeyAgreementSpi;

    move-result-object v0

    .line 200
    :goto_31
    if-eqz v0, :cond_61

    .line 202
    instance-of v1, v0, Landroid/security/keystore/KeyStoreCryptoOperation;

    if-eqz v1, :cond_3e

    .line 207
    check-cast v0, Landroid/security/keystore/KeyStoreCryptoOperation;

    invoke-interface {v0}, Landroid/security/keystore/KeyStoreCryptoOperation;->getOperationHandle()J

    move-result-wide v0

    return-wide v0

    .line 203
    :cond_3e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crypto primitive not backed by AndroidKeyStore provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ", spi: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_61
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Crypto primitive not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported crypto primitive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ". Supported: Signature, Mac, Cipher"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_88
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static blacklist install()V
    .registers 5

    .line 138
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    .line 139
    nop

    .line 140
    const/4 v1, 0x0

    :goto_6
    array-length v2, v0

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1d

    .line 141
    aget-object v2, v0, v1

    .line 142
    const-string v4, "BC"

    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 143
    nop

    .line 144
    goto :goto_1e

    .line 140
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1d
    move v1, v3

    .line 148
    :goto_1e
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreProvider;

    invoke-direct {v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 149
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreBCWorkaroundProvider;

    invoke-direct {v0}, Landroid/security/keystore2/AndroidKeyStoreBCWorkaroundProvider;-><init>()V

    .line 150
    if-eq v1, v3, :cond_33

    .line 153
    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    goto :goto_36

    .line 157
    :cond_33
    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 159
    :goto_36
    return-void
.end method

.method private static blacklist loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Landroid/security/keystore2/AndroidKeyStoreKey;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 416
    nop

    .line 418
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p0
    :try_end_6
    .catch Landroid/security/KeyStoreException; {:try_start_2 .. :try_end_6} :catch_91

    .line 432
    nop

    .line 434
    iget-object v1, p0, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    if-nez v1, :cond_c

    .line 436
    return-object v0

    .line 439
    :cond_c
    nop

    .line 441
    nop

    .line 442
    iget-object v1, p0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v1, v1, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    array-length v2, v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v5, v3

    :goto_16
    if-ge v4, v2, :cond_3d

    aget-object v6, v1, v4

    .line 443
    iget-object v7, v6, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v7, v7, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    sparse-switch v7, :sswitch_data_b0

    goto :goto_3a

    .line 448
    :sswitch_22
    if-ne v5, v3, :cond_3a

    iget-object v5, v6, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v5, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->getDigest()I

    move-result v5

    goto :goto_3a

    .line 445
    :sswitch_2d
    iget-object v0, v6, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getAlgorithm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 446
    nop

    .line 442
    :cond_3a
    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 452
    :cond_3d
    const-string v1, "Key algorithm unknown"

    if-eqz v0, :cond_8b

    .line 456
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x80

    if-eq v2, v3, :cond_81

    .line 457
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_81

    .line 458
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_5a

    goto :goto_81

    .line 461
    :cond_5a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6f

    .line 462
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_69

    goto :goto_6f

    .line 467
    :cond_69
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    invoke-direct {p0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 463
    :cond_6f
    :goto_6f
    iget-object v1, p0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    new-instance v2, Landroid/security/KeyStoreSecurityLevel;

    iget-object p0, p0, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    invoke-direct {v2, p0}, Landroid/security/KeyStoreSecurityLevel;-><init>(Landroid/system/keystore2/IKeystoreSecurityLevel;)V

    .line 465
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 463
    invoke-static {p1, v1, v2, p0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->makeAndroidKeyStorePublicKeyFromKeyEntryResponse(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Landroid/security/KeyStoreSecurityLevel;I)Landroid/security/keystore2/AndroidKeyStorePublicKey;

    move-result-object p0

    return-object p0

    .line 459
    :cond_81
    :goto_81
    nop

    .line 460
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 459
    invoke-static {p1, p0, v0, v5}, Landroid/security/keystore2/AndroidKeyStoreProvider;->makeAndroidKeyStoreSecretKeyFromKeyEntryResponse(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyEntryResponse;II)Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    move-result-object p0

    return-object p0

    .line 453
    :cond_8b
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    invoke-direct {p0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 419
    :catch_91
    move-exception p0

    .line 420
    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_ba

    .line 428
    new-instance p1, Ljava/security/UnrecoverableKeyException;

    const-string v0, "Failed to obtain information about key"

    invoke-direct {p1, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1, p0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/security/UnrecoverableKeyException;

    throw p0

    .line 424
    :sswitch_a7
    new-instance p1, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    const-string v0, "User changed or deleted their auth credentials"

    invoke-direct {p1, v0, p0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 422
    :sswitch_af
    return-object v0

    :sswitch_data_b0
    .sparse-switch
        0x10000002 -> :sswitch_2d
        0x20000005 -> :sswitch_22
    .end sparse-switch

    :sswitch_data_ba
    .sparse-switch
        0x7 -> :sswitch_af
        0x11 -> :sswitch_a7
    .end sparse-switch
.end method

.method public static blacklist loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStoreKey;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 370
    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 371
    nop

    .line 372
    const/4 p2, 0x0

    move v3, v0

    move v0, p2

    move p2, v3

    goto :goto_b

    .line 374
    :cond_9
    nop

    .line 375
    const/4 v0, 0x2

    .line 377
    :goto_b
    int-to-long v1, p2

    invoke-static {p0, p1, v1, v2, v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;JI)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;JI)Landroid/security/keystore2/AndroidKeyStoreKey;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 399
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 400
    iput-wide p2, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 401
    iput p4, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 402
    iput-object p1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 403
    const/4 p1, 0x0

    iput-object p1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 405
    invoke-static {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object p0

    .line 406
    instance-of p1, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz p1, :cond_1d

    .line 407
    check-cast p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStorePublicKey;->getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    move-result-object p0

    return-object p0

    .line 409
    :cond_1d
    return-object p0
.end method

.method public static blacklist loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Ljava/security/KeyPair;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 293
    nop

    .line 294
    invoke-static {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object p0

    .line 295
    instance-of p1, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz p1, :cond_15

    .line 296
    check-cast p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    .line 297
    new-instance p1, Ljava/security/KeyPair;

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStorePublicKey;->getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object p1

    .line 299
    :cond_15
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    const-string p1, "No asymmetric key found by the given alias."

    invoke-direct {p0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStorePrivateKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 308
    nop

    .line 309
    invoke-static {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object p0

    .line 310
    instance-of p1, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz p1, :cond_10

    .line 311
    check-cast p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStorePublicKey;->getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    move-result-object p0

    return-object p0

    .line 313
    :cond_10
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    const-string p1, "No asymmetric key found by the given alias."

    invoke-direct {p0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStorePublicKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 279
    nop

    .line 280
    invoke-static {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object p0

    .line 281
    instance-of p1, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz p1, :cond_c

    .line 282
    check-cast p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    return-object p0

    .line 284
    :cond_c
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    const-string p1, "No asymmetric key found by the given alias."

    invoke-direct {p0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Ljavax/crypto/SecretKey;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 323
    nop

    .line 324
    invoke-static {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object p0

    .line 325
    instance-of p1, p0, Ljavax/crypto/SecretKey;

    if-eqz p1, :cond_c

    .line 326
    check-cast p0, Ljavax/crypto/SecretKey;

    return-object p0

    .line 328
    :cond_c
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    const-string p1, "No secret key found by the given alias."

    invoke-direct {p0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist makeAndroidKeyStorePublicKeyFromKeyEntryResponse(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Landroid/security/KeyStoreSecurityLevel;I)Landroid/security/keystore2/AndroidKeyStorePublicKey;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 231
    iget-object p3, p1, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-eqz p3, :cond_98

    .line 235
    iget-object p3, p1, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    .line 237
    nop

    .line 238
    invoke-static {p3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object p3

    .line 239
    if-eqz p3, :cond_90

    .line 244
    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p3

    .line 246
    invoke-interface {p3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 248
    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 249
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;

    check-cast p3, Ljava/security/interfaces/ECPublicKey;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Landroid/security/KeyStoreSecurityLevel;Ljava/security/interfaces/ECPublicKey;)V

    return-object v0

    .line 251
    :cond_25
    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 252
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;

    check-cast p3, Ljava/security/interfaces/RSAPublicKey;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Landroid/security/KeyStoreSecurityLevel;Ljava/security/interfaces/RSAPublicKey;)V

    return-object v0

    .line 254
    :cond_35
    const-string v1, "1.3.101.112"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 258
    invoke-interface {p3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    .line 259
    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;

    const-string v5, "1.3.101.112"

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;[B)V

    return-object v2

    .line 261
    :cond_4c
    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    const-string p0, "EdDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_63

    .line 262
    invoke-interface {p3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v8

    .line 263
    new-instance v3, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;

    const-string v6, "EdDSA"

    invoke-direct/range {v3 .. v8}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;[B)V

    return-object v3

    .line 265
    :cond_63
    const-string p0, "XDH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_77

    .line 266
    new-instance v3, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;

    .line 267
    invoke-interface {p3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v8

    const-string v6, "XDH"

    invoke-direct/range {v3 .. v8}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;[B)V

    .line 266
    return-object v3

    .line 269
    :cond_77
    new-instance p0, Ljava/security/ProviderException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported Android Keystore public key algorithm: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 240
    :cond_90
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    const-string p1, "Failed to parse the X.509 certificate containing the public key. This likely indicates a hardware problem."

    invoke-direct {p0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 232
    :cond_98
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    const-string p1, "Failed to obtain X.509 form of public key. Keystore has no public certificate stored."

    invoke-direct {p0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist makeAndroidKeyStoreSecretKeyFromKeyEntryResponse(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyEntryResponse;II)Landroid/security/keystore2/AndroidKeyStoreSecretKey;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 339
    :try_start_0
    invoke-static {p2, p3}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterSecretKeyAlgorithm(II)Ljava/lang/String;

    move-result-object p2
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_14

    .line 344
    nop

    .line 346
    new-instance p3, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    iget-object v0, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    new-instance v1, Landroid/security/KeyStoreSecurityLevel;

    iget-object p1, p1, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    invoke-direct {v1, p1}, Landroid/security/KeyStoreSecurityLevel;-><init>(Landroid/system/keystore2/IKeystoreSecurityLevel;)V

    invoke-direct {p3, p0, v0, p2, v1}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    return-object p3

    .line 341
    :catch_14
    move-exception p0

    .line 342
    new-instance p1, Ljava/security/UnrecoverableKeyException;

    const-string p2, "Unsupported secret key type"

    invoke-direct {p1, p2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1, p0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/security/UnrecoverableKeyException;

    throw p0
.end method

.method private blacklist putKeyFactoryImpl(Ljava/lang/String;)V
    .registers 4

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.security.keystore2.AndroidKeyStoreKeyFactorySpi"

    invoke-virtual {p0, p1, v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method private blacklist putSecretKeyFactoryImpl(Ljava/lang/String;)V
    .registers 4

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecretKeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.security.keystore2.AndroidKeyStoreSecretKeyFactorySpi"

    invoke-virtual {p0, p1, v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void
.end method
