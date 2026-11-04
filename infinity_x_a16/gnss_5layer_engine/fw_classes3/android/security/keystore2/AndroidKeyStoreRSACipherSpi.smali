.class abstract Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;
.super Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStoreRSACipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithSHA512AndMGF1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithSHA384AndMGF1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithSHA256AndMGF1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithSHA224AndMGF1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithSHA1AndMGF1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$PKCS1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$NoPadding;
    }
.end annotation


# instance fields
.field private final blacklist mKeymasterPadding:I

.field private blacklist mKeymasterPaddingOverride:I

.field private blacklist mModulusSizeBytes:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3

    .line 392
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;-><init>()V

    .line 390
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    .line 393
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    .line 394
    return-void
.end method


# virtual methods
.method protected blacklist addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation

    .line 505
    const v0, 0x10000002

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->getKeymasterPaddingOverride()I

    move-result v0

    .line 509
    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 510
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    .line 512
    :cond_14
    const v2, 0x20000006

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->getKeymasterPurposeOverride()I

    move-result v0

    .line 516
    if-eq v0, v1, :cond_35

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_35

    .line 521
    :cond_2a
    const v0, 0x20000005

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_35
    return-void
.end method

.method protected blacklist adjustConfigForEncryptingWithPrivateKey()Z
    .registers 2

    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method protected final whitelist test-api engineGetBlockSize()I
    .registers 2

    .line 535
    const/4 v0, 0x0

    return v0
.end method

.method protected final whitelist test-api engineGetIV()[B
    .registers 2

    .line 541
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final whitelist test-api engineGetOutputSize(I)I
    .registers 2

    .line 546
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->getModulusSizeBytes()I

    move-result p1

    return p1
.end method

.method protected final blacklist getKeymasterPaddingOverride()I
    .registers 2

    .line 564
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    return v0
.end method

.method protected final blacklist getModulusSizeBytes()I
    .registers 3

    .line 550
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 553
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    return v0

    .line 551
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist getTransform()Ljava/lang/String;
    .registers 3

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RSA/ECB/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    invoke-static {v1}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final blacklist initKey(ILjava/security/Key;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 403
    if-eqz p2, :cond_16b

    .line 406
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 411
    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-eqz v0, :cond_15

    .line 412
    check-cast p2, Landroid/security/keystore2/AndroidKeyStoreKey;

    goto :goto_1b

    .line 413
    :cond_15
    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz v0, :cond_125

    .line 414
    check-cast p2, Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 419
    :goto_1b
    instance-of v0, p2, Ljava/security/PrivateKey;

    const-string v1, " and padding "

    if-eqz v0, :cond_78

    .line 421
    packed-switch p1, :pswitch_data_174

    .line 437
    new-instance p2, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RSA private keys cannot be used with opmode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 425
    :pswitch_3d
    goto/16 :goto_c8

    .line 428
    :pswitch_3f
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->adjustConfigForEncryptingWithPrivateKey()Z

    move-result v0

    if-eqz v0, :cond_47

    goto/16 :goto_c8

    .line 429
    :cond_47
    new-instance p2, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSA private keys cannot be used with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 430
    invoke-static {p1}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    .line 432
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". Only RSA public keys supported for this mode"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 442
    :cond_78
    const-string v0, "RSA public keys cannot be used with "

    packed-switch p1, :pswitch_data_180

    .line 456
    new-instance p2, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 457
    invoke-static {p1}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 449
    :pswitch_98
    new-instance p2, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 450
    invoke-static {p1}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    .line 452
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". Only RSA private keys supported for this opmode."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 446
    :pswitch_c7
    nop

    .line 461
    :goto_c8
    nop

    .line 462
    invoke-virtual {p2}, Landroid/security/keystore2/AndroidKeyStoreKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object p1

    array-length v0, p1

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_d2
    if-ge v3, v0, :cond_e6

    aget-object v6, p1, v3

    .line 463
    iget-object v7, v6, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v7, v7, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v8, 0x30000003

    if-ne v7, v8, :cond_e3

    .line 464
    invoke-static {v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getUnsignedInt(Landroid/system/keystore2/Authorization;)J

    move-result-wide v4

    .line 462
    :cond_e3
    add-int/lit8 v3, v3, 0x1

    goto :goto_d2

    .line 468
    :cond_e6
    cmp-long p1, v4, v1

    if-eqz p1, :cond_11d

    .line 470
    const-wide/32 v0, 0x7fffffff

    cmp-long p1, v4, v0

    if-gtz p1, :cond_fe

    .line 473
    const-wide/16 v0, 0x7

    add-long/2addr v4, v0

    const-wide/16 v0, 0x8

    div-long/2addr v4, v0

    long-to-int p1, v4

    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    .line 475
    invoke-virtual {p0, p2}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->setKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V

    .line 476
    return-void

    .line 471
    :cond_fe
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key too large: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " bits"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 469
    :cond_11d
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "Size of key not known"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 416
    :cond_125
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported key type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 407
    :cond_13e
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ". Only "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " supported"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 404
    :cond_16b
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "Unsupported key: null"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_174
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3d
        :pswitch_3f
        :pswitch_3d
    .end packed-switch

    :pswitch_data_180
    .packed-switch 0x1
        :pswitch_c7
        :pswitch_98
        :pswitch_c7
        :pswitch_98
    .end packed-switch
.end method

.method protected blacklist loadAlgorithmSpecificParametersFromBeginResult([Landroid/hardware/security/keymint/KeyParameter;)V
    .registers 2

    .line 530
    return-void
.end method

.method protected final blacklist resetAll()V
    .registers 2

    .line 492
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    .line 493
    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    .line 494
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 495
    return-void
.end method

.method protected final blacklist resetWhilePreservingInitState()V
    .registers 1

    .line 499
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    .line 500
    return-void
.end method

.method protected final blacklist setKeymasterPaddingOverride(I)V
    .registers 2

    .line 560
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    .line 561
    return-void
.end method
