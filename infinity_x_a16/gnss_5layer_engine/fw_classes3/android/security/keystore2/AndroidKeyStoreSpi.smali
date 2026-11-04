.class public Landroid/security/keystore2/AndroidKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "AndroidKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;
    }
.end annotation


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "AndroidKeyStore"

.field public static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreSpi"

.field private static final blacklist sInHack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mKeyStore:Landroid/security/KeyStore2;

.field private blacklist mNamespace:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetAliasesBatch(Landroid/security/keystore2/AndroidKeyStoreSpi;Ljava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;
    .registers 2

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getAliasesBatch(Ljava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 122
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreSpi;->sInHack:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 115
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    return-void
.end method

.method private static blacklist assertCanReplace(Ljava/lang/String;IILandroid/system/keystore2/KeyDescriptor;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 710
    iget-object v0, p3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1a

    iget v0, p3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    if-ne v0, p1, :cond_1a

    iget v0, p3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    if-ne v0, v1, :cond_19

    iget-wide v2, p3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    int-to-long v4, p2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_19

    goto :goto_1a

    .line 720
    :cond_19
    return-void

    .line 713
    :cond_1a
    :goto_1a
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can only replace keys with same alias: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " != "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v3, p3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " in the same target domain: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v3, p3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 716
    if-ne p1, v1, :cond_6b

    .line 717
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " in the same target namespace: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide p2, p3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6d

    :cond_6b
    const-string p1, ""

    :goto_6d
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getAliasesBatch(Ljava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;
    .registers 6

    .line 1145
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 1146
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1147
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v1

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v2, v2

    .line 1146
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/security/KeyStore2;->listBatch(IJLjava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1
    :try_end_10
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p1

    .line 1151
    :catch_11
    move-exception p1

    .line 1152
    const-string v0, "AndroidKeyStoreSpi"

    const-string v1, "Failed to list keystore entries."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1153
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/system/keystore2/KeyDescriptor;

    return-object p1
.end method

.method private blacklist getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 4

    .line 167
    if-eqz p1, :cond_21

    .line 171
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1

    .line 174
    :try_start_6
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 175
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v0, p1}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p1
    :try_end_f
    .catch Landroid/security/KeyStoreException; {:try_start_6 .. :try_end_f} :catch_10

    return-object p1

    .line 176
    :catch_10
    move-exception p1

    .line 177
    invoke-virtual {p1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1f

    .line 178
    const-string v0, "AndroidKeyStoreSpi"

    const-string v1, "Could not get key metadata from Keystore."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :cond_1f
    const/4 p1, 0x0

    return-object p1

    .line 168
    :cond_21
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "alias == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist getKeymasterEcCurve(Ljava/security/PrivateKey;)I
    .registers 5

    .line 674
    instance-of v0, p1, Ljava/security/interfaces/ECKey;

    if-eqz v0, :cond_17

    .line 675
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 676
    invoke-static {v0}, Landroid/security/keystore2/KeymasterUtils;->getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore2/KeymasterUtils;->getKeymasterEcCurve(Ljava/lang/String;)I

    move-result v0

    .line 677
    if-ltz v0, :cond_16

    .line 678
    return v0

    .line 680
    :cond_16
    goto :goto_4e

    :cond_17
    instance-of v0, p1, Ljava/security/interfaces/XECKey;

    const/4 v1, 0x4

    if-eqz v0, :cond_2d

    .line 681
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/XECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/XECPrivateKey;->getParams()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 682
    sget-object v2, Ljava/security/spec/NamedParameterSpec;->X25519:Ljava/security/spec/NamedParameterSpec;

    invoke-interface {v0, v2}, Ljava/security/spec/AlgorithmParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 683
    return v1

    .line 685
    :cond_2c
    goto :goto_4e

    :cond_2d
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XDH"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 688
    return v1

    .line 689
    :cond_3a
    instance-of v0, p1, Ljava/security/interfaces/EdECKey;

    if-eqz v0, :cond_4e

    .line 690
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/EdECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/EdECPrivateKey;->getParams()Ljava/security/spec/NamedParameterSpec;

    move-result-object v0

    .line 691
    sget-object v2, Ljava/security/spec/NamedParameterSpec;->ED25519:Ljava/security/spec/NamedParameterSpec;

    invoke-interface {v0, v2}, Ljava/security/spec/AlgorithmParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 692
    return v1

    .line 695
    :cond_4e
    :goto_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/PrivateKey;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 332
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    .line 334
    const-string v0, "EC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 335
    new-instance p0, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 340
    const-string v6, "SHA-384"

    const-string v7, "SHA-512"

    const-string v2, "NONE"

    const-string v3, "SHA-1"

    const-string v4, "SHA-224"

    const-string v5, "SHA-256"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    goto :goto_67

    .line 347
    :cond_28
    const-string v0, "RSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 348
    new-instance p0, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 355
    const-string v7, "SHA-384"

    const-string v8, "SHA-512"

    const-string v2, "NONE"

    const-string v3, "MD5"

    const-string v4, "SHA-1"

    const-string v5, "SHA-224"

    const-string v6, "SHA-256"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 365
    const-string v0, "PKCS1Padding"

    const-string v2, "OAEPPadding"

    const-string v3, "NoPadding"

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 369
    const-string v0, "PKCS1"

    const-string v2, "PSS"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 374
    invoke-virtual {p0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 378
    :goto_67
    invoke-virtual {p0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 380
    invoke-virtual {p0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object p0

    return-object p0

    .line 376
    :cond_6f
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getMgf1DigestSetterFlag()Z
    .registers 3

    .line 267
    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->mgf1DigestSetterV2()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 268
    :catch_5
    move-exception v0

    .line 269
    const-string v1, "AndroidKeyStore"

    const-string v2, "Cannot read MGF1 Digest setter flag value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getTargetDomain()I
    .registers 3

    .line 162
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 163
    const/4 v0, 0x0

    goto :goto_8

    .line 164
    :cond_7
    const/4 v0, 0x2

    .line 162
    :goto_8
    return v0
.end method

.method private static blacklist hackCertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    .registers 4

    .line 275
    if-eqz p0, :cond_58

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_58

    .line 278
    :cond_6
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreSpi;->sInHack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 279
    return-object p0

    .line 281
    :cond_15
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreSpi;->sInHack:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 283
    :try_start_1c
    invoke-static {}, Landroid/security/trickystore/TrickyStoreService;->getInstance()Landroid/security/trickystore/TrickyStoreService;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Landroid/security/trickystore/TrickyStoreService;->hasKeyboxes()Z

    move-result v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_3e
    .catchall {:try_start_1c .. :try_end_24} :catchall_4f

    if-nez v0, :cond_2f

    .line 285
    nop

    .line 295
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreSpi;->sInHack:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 285
    return-object p0

    .line 288
    :cond_2f
    :try_start_2f
    invoke-static {p0}, Landroid/security/trickystore/CertificateHacker;->hackCertificateChain([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;

    move-result-object v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_3e
    .catchall {:try_start_2f .. :try_end_33} :catchall_4f

    .line 289
    if-eqz v0, :cond_46

    .line 290
    nop

    .line 295
    sget-object p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->sInHack:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 290
    return-object v0

    .line 292
    :catch_3e
    move-exception v0

    .line 293
    :try_start_3f
    const-string v1, "AndroidKeyStoreSpi"

    const-string v2, "TrickyStore: Failed to hack certificate chain"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_4f

    .line 295
    :cond_46
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreSpi;->sInHack:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 296
    nop

    .line 297
    return-object p0

    .line 295
    :catchall_4f
    move-exception p0

    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreSpi;->sInHack:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 296
    throw p0

    .line 276
    :cond_58
    :goto_58
    return-object p0
.end method

.method private blacklist isKeyEntry(Ljava/lang/String;)Z
    .registers 3

    .line 1189
    if-eqz p1, :cond_10

    .line 1193
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p1

    .line 1196
    if-eqz p1, :cond_e

    iget-object p1, p1, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1

    .line 1190
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "alias == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic blacklist lambda$setPrivateKeyEntry$1(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 3

    .line 527
    nop

    .line 529
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Purpose;->toKeymaster(I)I

    move-result p1

    .line 527
    const v0, 0x20000001

    invoke-static {v0, p1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    return-void
.end method

.method static synthetic blacklist lambda$setSecretKeyEntry$2(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 3

    .line 836
    nop

    .line 838
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Purpose;->toKeymaster(I)I

    move-result p1

    .line 836
    const v0, 0x20000001

    invoke-static {v0, p1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    return-void
.end method

.method static synthetic blacklist lambda$static$0()Ljava/lang/Boolean;
    .registers 1

    .line 122
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private blacklist makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .registers 5

    .line 153
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 154
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v1

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 155
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v1, v1

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 156
    iput-object p1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 157
    const/4 p1, 0x0

    iput-object p1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 158
    return-object v0
.end method

.method private blacklist setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 385
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "SHA-1"

    .line 386
    nop

    .line 388
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v3, :cond_16

    .line 389
    invoke-static {v0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v3

    move v8, v6

    move v12, v7

    goto :goto_3e

    .line 390
    :cond_16
    instance-of v8, v3, Landroid/security/KeyStoreParameter;

    if-eqz v8, :cond_24

    .line 391
    invoke-static {v0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v8

    .line 392
    check-cast v3, Landroid/security/KeyStoreParameter;

    .line 393
    move v12, v7

    move-object v3, v8

    move v8, v6

    goto :goto_3e

    :cond_24
    instance-of v8, v3, Landroid/security/keystore/KeyProtection;

    if-eqz v8, :cond_388

    .line 394
    check-cast v3, Landroid/security/keystore/KeyProtection;

    .line 395
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v8

    if-eqz v8, :cond_32

    .line 401
    move v8, v6

    goto :goto_33

    .line 395
    :cond_32
    move v8, v7

    .line 405
    :goto_33
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isStrongBoxBacked()Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 406
    move v12, v8

    const/4 v8, 0x2

    goto :goto_3e

    .line 405
    :cond_3c
    move v12, v8

    move v8, v6

    .line 416
    :goto_3e
    if-eqz v2, :cond_380

    array-length v9, v2

    if-eqz v9, :cond_380

    .line 421
    array-length v9, v2

    new-array v10, v9, [Ljava/security/cert/X509Certificate;

    .line 422
    move v11, v7

    :goto_47
    array-length v13, v2

    if-ge v11, v13, :cond_97

    .line 423
    aget-object v13, v2, v11

    invoke-virtual {v13}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v13

    const-string v14, "X.509"

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "Certificates must be in X.509 format: invalid cert #"

    if-eqz v13, :cond_80

    .line 428
    aget-object v13, v2, v11

    instance-of v13, v13, Ljava/security/cert/X509Certificate;

    if-eqz v13, :cond_69

    .line 433
    aget-object v13, v2, v11

    check-cast v13, Ljava/security/cert/X509Certificate;

    aput-object v13, v10, v11

    .line 422
    add-int/lit8 v11, v11, 0x1

    goto :goto_47

    .line 429
    :cond_69
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_80
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_97
    :try_start_97
    aget-object v11, v10, v7

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v14
    :try_end_9d
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_97 .. :try_end_9d} :catch_377

    .line 441
    nop

    .line 449
    array-length v2, v2

    if-le v2, v6, :cond_f3

    .line 454
    sub-int/2addr v9, v6

    new-array v2, v9, [[B

    .line 455
    nop

    .line 456
    move v13, v7

    move v15, v13

    :goto_a7
    if-ge v13, v9, :cond_d9

    .line 458
    add-int/lit8 v16, v13, 0x1

    :try_start_ab
    aget-object v17, v10, v16

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v17

    aput-object v17, v2, v13

    .line 459
    move/from16 v17, v6

    aget-object v6, v2, v13

    array-length v6, v6
    :try_end_b8
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_ab .. :try_end_b8} :catch_bf

    add-int/2addr v15, v6

    .line 462
    nop

    .line 456
    move/from16 v13, v16

    move/from16 v6, v17

    goto :goto_a7

    .line 460
    :catch_bf
    move-exception v0

    .line 461
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to encode certificate #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 469
    :cond_d9
    move/from16 v17, v6

    new-array v6, v15, [B

    .line 470
    nop

    .line 471
    move v10, v7

    move v13, v10

    :goto_e0
    if-ge v10, v9, :cond_f2

    .line 472
    aget-object v15, v2, v10

    array-length v15, v15

    .line 473
    const/16 p3, 0x0

    aget-object v11, v2, v10

    invoke-static {v11, v7, v6, v13, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    add-int/2addr v13, v15

    .line 475
    aput-object p3, v2, v10

    .line 471
    add-int/lit8 v10, v10, 0x1

    goto :goto_e0

    .line 477
    :cond_f2
    goto :goto_f9

    .line 478
    :cond_f3
    move/from16 v17, v6

    const/16 p3, 0x0

    move-object/from16 v6, p3

    .line 481
    :goto_f9
    invoke-direct {v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v2

    .line 485
    instance-of v9, v0, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    const-string v15, "Failed to store certificate and certificate chain"

    if-eqz v9, :cond_128

    .line 486
    move-object v3, v0

    check-cast v3, Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 487
    invoke-virtual {v3}, Landroid/security/keystore2/AndroidKeyStoreKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v3

    .line 490
    iget v4, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    move-object/from16 v9, p1

    invoke-static {v9, v2, v4, v3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->assertCanReplace(Ljava/lang/String;IILandroid/system/keystore2/KeyDescriptor;)V

    .line 493
    :try_start_111
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 494
    iget-object v1, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    check-cast v0, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 495
    invoke-virtual {v0}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 494
    invoke-virtual {v1, v0, v14, v6}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_11f
    .catch Landroid/security/KeyStoreException; {:try_start_111 .. :try_end_11f} :catch_121

    .line 499
    nop

    .line 500
    return-void

    .line 497
    :catch_121
    move-exception v0

    .line 498
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v15, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 504
    :cond_128
    move-object/from16 v9, p1

    invoke-interface {v0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    .line 505
    if-eqz v2, :cond_358

    const-string v10, "PKCS#8"

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_358

    .line 513
    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v13

    .line 514
    if-eqz v13, :cond_350

    .line 518
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 521
    nop

    .line 524
    :try_start_144
    invoke-interface {v0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 523
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v2

    .line 521
    const v10, 0x10000002

    invoke-static {v10, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v2

    new-instance v10, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda0;

    invoke-direct {v10, v11}, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v2, v10}, Landroid/security/keystore2/KeyStore2ParameterUtils;->forEachSetFlag(ILjava/util/function/Consumer;)V

    .line 532
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v2

    if-eqz v2, :cond_187

    .line 533
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v2

    array-length v10, v2

    :goto_16d
    if-ge v7, v10, :cond_187

    aget-object v18, v2, v7

    .line 534
    nop

    .line 536
    invoke-static/range {v18 .. v18}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v5

    .line 534
    move-object/from16 p3, v2

    const v2, 0x20000005

    invoke-static {v2, v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p3

    goto :goto_16d

    .line 540
    :cond_187
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    const/4 v7, 0x0

    :goto_18d
    if-ge v7, v5, :cond_1a7

    aget-object v10, v2, v7

    .line 541
    nop

    .line 543
    invoke-static {v10}, Landroid/security/keystore/KeyProperties$BlockMode;->toKeymaster(Ljava/lang/String;)I

    move-result v10

    .line 541
    move-object/from16 p3, v2

    const v2, 0x20000004

    invoke-static {v2, v10}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p3

    goto :goto_18d

    .line 546
    :cond_1a7
    nop

    .line 548
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v2

    .line 547
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    .line 549
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1f1

    .line 550
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v5

    if-eqz v5, :cond_1f1

    .line 551
    array-length v5, v2

    const/4 v7, 0x0

    :goto_1c0
    if-ge v7, v5, :cond_1f1

    aget v10, v2, v7

    .line 552
    nop

    .line 553
    invoke-static {v10}, Landroid/security/keystore2/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v17

    if-eqz v17, :cond_1ce

    .line 551
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c0

    .line 555
    :cond_1ce
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Randomized encryption (IND-CPA) required but is violated by encryption padding mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 558
    invoke-static {v10}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". See KeyProtection documentation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_1f1
    array-length v5, v2

    const/4 v7, 0x0

    :goto_1f3
    if-ge v7, v5, :cond_286

    aget v10, v2, v7

    .line 565
    move-object/from16 p4, v2

    const v2, 0x20000006

    invoke-static {v2, v10}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    const/4 v2, 0x2

    if-ne v10, v2, :cond_27c

    .line 570
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isMgf1DigestsSpecified()Z

    move-result v10

    if-eqz v10, :cond_237

    .line 571
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getMgf1Digests()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_214
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_234

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 572
    nop

    .line 574
    invoke-static/range {v17 .. v17}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v2

    .line 572
    move-object/from16 v17, v4

    const v4, 0x200000cb

    invoke-static {v4, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    move-object/from16 v4, v17

    goto :goto_214

    :cond_234
    move-object/from16 v17, v4

    goto :goto_27e

    .line 587
    :cond_237
    move-object/from16 v17, v4

    .line 589
    invoke-static/range {v17 .. v17}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v2

    .line 587
    const v4, 0x200000cb

    invoke-static {v4, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getMgf1DigestSetterFlag()Z

    move-result v2

    if-nez v2, :cond_27e

    .line 592
    invoke-static/range {v17 .. v17}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v2

    .line 594
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v4

    array-length v10, v4

    move-object/from16 v18, v4

    const/4 v4, 0x0

    :goto_259
    if-ge v4, v10, :cond_27e

    aget-object v19, v18, v4

    .line 595
    move/from16 v20, v4

    invoke-static/range {v19 .. v19}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v4

    .line 598
    if-eq v4, v2, :cond_272

    .line 599
    move/from16 v19, v2

    const v2, 0x200000cb

    invoke-static {v2, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_277

    .line 598
    :cond_272
    move/from16 v19, v2

    const v2, 0x200000cb

    .line 594
    :goto_277
    add-int/lit8 v4, v20, 0x1

    move/from16 v2, v19

    goto :goto_259

    .line 569
    :cond_27c
    move-object/from16 v17, v4

    .line 564
    :cond_27e
    :goto_27e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p4

    move-object/from16 v4, v17

    goto/16 :goto_1f3

    .line 609
    :cond_286
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v7, 0x0

    :goto_28c
    if-ge v7, v4, :cond_2a2

    aget-object v5, v2, v7

    .line 610
    nop

    .line 612
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$SignaturePadding;->toKeymaster(Ljava/lang/String;)I

    move-result v5

    .line 610
    const v10, 0x20000006

    invoke-static {v10, v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    add-int/lit8 v7, v7, 0x1

    goto :goto_28c

    .line 615
    :cond_2a2
    invoke-static {v11, v3}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V

    .line 616
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_2ba

    .line 617
    nop

    .line 618
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v2

    .line 617
    const v4, 0x60000190

    invoke-static {v4, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    :cond_2ba
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_2cf

    .line 622
    nop

    .line 624
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v2

    .line 622
    const v4, 0x60000191

    invoke-static {v4, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_2cf
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_2e4

    .line 628
    nop

    .line 630
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v2

    .line 628
    const v4, 0x60000192

    invoke-static {v4, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_2e4
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2fa

    .line 634
    nop

    .line 636
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v2

    .line 634
    const v3, 0x30000195

    invoke-static {v3, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_2fa
    nop

    .line 641
    invoke-interface {v0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 640
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v3, v2, :cond_315

    .line 642
    nop

    .line 644
    invoke-direct {v1, v0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeymasterEcCurve(Ljava/security/PrivateKey;)I

    move-result v0

    .line 642
    const v2, 0x1000000a

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_315
    .catch Ljava/lang/IllegalArgumentException; {:try_start_144 .. :try_end_315} :catch_349
    .catch Ljava/lang/IllegalStateException; {:try_start_144 .. :try_end_315} :catch_349

    .line 649
    :cond_315
    nop

    .line 652
    :try_start_316
    iget-object v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v0, v8}, Landroid/security/KeyStore2;->getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;

    move-result-object v8

    .line 655
    invoke-direct/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v9

    .line 657
    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/security/KeyStoreSecurityLevel;->importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v2
    :try_end_325
    .catch Landroid/security/KeyStoreException; {:try_start_316 .. :try_end_325} :catch_340

    .line 661
    :try_start_325
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 662
    iget-object v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    iget-object v3, v2, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    invoke-virtual {v0, v3, v14, v6}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_32f
    .catch Landroid/security/KeyStoreException; {:try_start_325 .. :try_end_32f} :catch_332

    .line 666
    nop

    .line 670
    nop

    .line 671
    return-void

    .line 663
    :catch_332
    move-exception v0

    .line 664
    :try_start_333
    iget-object v1, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    invoke-virtual {v1, v2}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    .line 665
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v15, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_340
    .catch Landroid/security/KeyStoreException; {:try_start_333 .. :try_end_340} :catch_340

    .line 668
    :catch_340
    move-exception v0

    .line 669
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "Failed to store private key"

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 647
    :catch_349
    move-exception v0

    .line 648
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 515
    :cond_350
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Private key did not export any key material"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_358
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported private key export format: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Only private keys which export their key material in PKCS#8 format are supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :catch_377
    move-exception v0

    .line 440
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "Failed to encode certificate #0"

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 417
    :cond_380
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Must supply at least one Certificate with PrivateKey"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_388
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported protection parameter class:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 410
    invoke-interface {v3}, Ljava/security/KeyStore$ProtectionParameter;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyProtection;

    .line 411
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/KeyStoreParameter;

    .line 412
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 725
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v2, :cond_3e

    instance-of v3, v2, Landroid/security/keystore/KeyProtection;

    if-eqz v3, :cond_d

    goto :goto_3e

    .line 726
    :cond_d
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported protection parameter class: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 727
    invoke-interface {v2}, Ljava/security/KeyStore$ProtectionParameter;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyProtection;

    .line 728
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_3e
    :goto_3e
    move-object v3, v2

    check-cast v3, Landroid/security/keystore/KeyProtection;

    .line 732
    invoke-direct {v0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v4

    .line 734
    instance-of v5, v1, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-eqz v5, :cond_67

    .line 735
    check-cast v1, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    .line 736
    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    iget-object v2, v2, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 738
    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v1

    .line 741
    iget v0, v0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    move-object/from16 v5, p1

    invoke-static {v5, v4, v0, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->assertCanReplace(Ljava/lang/String;IILandroid/system/keystore2/KeyDescriptor;)V

    .line 744
    if-nez v3, :cond_5f

    .line 748
    return-void

    .line 745
    :cond_5f
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Modifying KeyStore-backed key using protection parameters not supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :cond_67
    move-object/from16 v5, p1

    if-eqz v3, :cond_2db

    .line 757
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v4

    .line 758
    if-eqz v4, :cond_2d3

    .line 761
    const-string v6, "RAW"

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2ba

    .line 765
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v12

    .line 766
    if-eqz v12, :cond_2b2

    .line 771
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 774
    nop

    .line 776
    :try_start_85
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 775
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I

    move-result v4

    .line 778
    const v6, 0x10000002

    invoke-static {v6, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    const/16 v6, 0x80

    const v7, 0x30000008

    const v8, 0x20000005

    const/4 v9, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x1

    if-ne v4, v6, :cond_152

    .line 789
    nop

    .line 790
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterDigest(Ljava/lang/String;)I

    move-result v6

    .line 791
    if-eq v6, v9, :cond_135

    .line 797
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v14

    if-eqz v14, :cond_103

    .line 800
    nop

    .line 801
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v14

    .line 802
    array-length v15, v14

    if-ne v15, v13, :cond_c6

    aget v14, v14, v11

    if-ne v14, v6, :cond_c6

    goto :goto_103

    .line 804
    :cond_c6
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported digests specification: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 806
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 807
    invoke-static {v6}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " supported for HMAC key algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 809
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 812
    :cond_103
    :goto_103
    invoke-static {v6}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v1

    .line 813
    if-eq v1, v9, :cond_118

    .line 818
    invoke-static {v8, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    invoke-static {v7, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    goto :goto_171

    .line 814
    :cond_118
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HMAC key authorized for unsupported digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 816
    invoke-static {v6}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_135
    new-instance v0, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HMAC key algorithm digest unknown for key algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 794
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_152
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v1

    if-eqz v1, :cond_171

    .line 826
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    move v14, v11

    :goto_15e
    if-ge v14, v6, :cond_171

    aget-object v15, v1, v14

    .line 827
    nop

    .line 829
    invoke-static {v15}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v15

    .line 827
    invoke-static {v8, v15}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    add-int/lit8 v14, v14, 0x1

    goto :goto_15e

    .line 835
    :cond_171
    :goto_171
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v1

    new-instance v6, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda2;

    invoke-direct {v6, v10}, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-static {v1, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->forEachSetFlag(ILjava/util/function/Consumer;)V

    .line 842
    nop

    .line 843
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v1

    and-int/2addr v1, v13

    if-eqz v1, :cond_19a

    .line 844
    move-object v1, v2

    check-cast v1, Landroid/security/keystore/KeyProtection;

    invoke-virtual {v1}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v1

    if-eqz v1, :cond_190

    .line 845
    move v1, v13

    goto :goto_19b

    .line 847
    :cond_190
    const v1, 0x70000007

    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    :cond_19a
    move v1, v11

    :goto_19b
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    move v8, v11

    :goto_1a1
    if-ge v8, v6, :cond_1ed

    aget-object v14, v2, v8

    .line 854
    invoke-static {v14}, Landroid/security/keystore/KeyProperties$BlockMode;->toKeymaster(Ljava/lang/String;)I

    move-result v15

    .line 855
    if-eqz v1, :cond_1d1

    .line 856
    invoke-static {v15}, Landroid/security/keystore2/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    move-result v16

    if-eqz v16, :cond_1b2

    goto :goto_1d1

    .line 858
    :cond_1b2
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Randomized encryption (IND-CPA) required but may be violated by block mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". See KeyProtection documentation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_1d1
    :goto_1d1
    const/16 v14, 0x20

    if-ne v4, v14, :cond_1e0

    if-ne v15, v14, :cond_1e0

    .line 866
    const/16 v14, 0x60

    invoke-static {v7, v14}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    :cond_1e0
    const v14, 0x20000004

    invoke-static {v14, v15}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a1

    .line 878
    :cond_1ed
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_2a3

    .line 882
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v4, v11

    :goto_1fa
    if-ge v4, v2, :cond_210

    aget-object v6, v1, v4

    .line 883
    nop

    .line 885
    invoke-static {v6}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->toKeymaster(Ljava/lang/String;)I

    move-result v6

    .line 883
    const v7, 0x20000006

    invoke-static {v7, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    add-int/lit8 v4, v4, 0x1

    goto :goto_1fa

    .line 889
    :cond_210
    invoke-static {v10, v3}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V

    .line 891
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_228

    .line 892
    nop

    .line 893
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v1

    .line 892
    const v2, 0x60000190

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    :cond_228
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_23d

    .line 897
    nop

    .line 899
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v1

    .line 897
    const v2, 0x60000191

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    :cond_23d
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_252

    .line 903
    nop

    .line 905
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v1

    .line 903
    const v2, 0x60000192

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    :cond_252
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v1

    if-eq v1, v9, :cond_267

    .line 909
    nop

    .line 911
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v1

    .line 909
    const v2, 0x30000195

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    :cond_267
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isRollbackResistant()Z

    move-result v1

    if-eqz v1, :cond_277

    .line 916
    const v1, 0x7000012f

    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_277
    .catch Ljava/lang/IllegalArgumentException; {:try_start_85 .. :try_end_277} :catch_2ab
    .catch Ljava/lang/IllegalStateException; {:try_start_85 .. :try_end_277} :catch_2ab

    .line 922
    :cond_277
    nop

    .line 924
    nop

    .line 925
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v1

    if-eqz v1, :cond_280

    .line 926
    move v11, v13

    .line 929
    :cond_280
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isStrongBoxBacked()Z

    move-result v1

    if-eqz v1, :cond_288

    const/4 v13, 0x2

    goto :goto_289

    .line 930
    :cond_288
    nop

    :goto_289
    nop

    .line 933
    :try_start_28a
    iget-object v1, v0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v1, v13}, Landroid/security/KeyStore2;->getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;

    move-result-object v7

    .line 936
    invoke-direct/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v8

    .line 938
    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/security/KeyStoreSecurityLevel;->importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    :try_end_298
    .catch Landroid/security/KeyStoreException; {:try_start_28a .. :try_end_298} :catch_29a

    .line 942
    nop

    .line 943
    return-void

    .line 940
    :catch_29a
    move-exception v0

    .line 941
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "Failed to import secret key."

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 879
    :cond_2a3
    :try_start_2a3
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Signature paddings not supported for symmetric keys"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2ab
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a3 .. :try_end_2ab} :catch_2ab
    .catch Ljava/lang/IllegalStateException; {:try_start_2a3 .. :try_end_2ab} :catch_2ab

    .line 920
    :catch_2ab
    move-exception v0

    .line 921
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 767
    :cond_2b2
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Key did not export its key material despite supporting RAW format export"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_2ba
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported secret key material export format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_2d3
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Only secret keys that export their key material are supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_2db
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Protection parameters must be specified when importing a symmetric key"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setWrappedKeyEntry(Ljava/lang/String;Landroid/security/keystore/WrappedKeyEntry;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 947
    move-object/from16 v0, p0

    const-string v1, "Failed to import wrapped key. Keystore error code: "

    if-nez p3, :cond_18b

    .line 951
    nop

    .line 953
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getTransformation()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 955
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 957
    const/4 v3, 0x0

    aget-object v4, v2, v3

    .line 958
    const-string v5, "RSA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16c

    .line 959
    const v4, 0x10000002

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    array-length v4, v2

    if-le v4, v5, :cond_40

    .line 969
    aget-object v4, v2, v5

    .line 970
    nop

    .line 972
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$BlockMode;->toKeymaster(Ljava/lang/String;)I

    move-result v4

    .line 970
    const v6, 0x20000004

    invoke-static {v6, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    :cond_40
    array-length v4, v2

    const/4 v6, 0x2

    if-le v4, v6, :cond_56

    .line 977
    aget-object v4, v2, v6

    .line 978
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->toKeymaster(Ljava/lang/String;)I

    move-result v4

    .line 979
    if-eq v4, v5, :cond_56

    .line 980
    const v7, 0x20000006

    invoke-static {v7, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 987
    :cond_56
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v4

    check-cast v4, Landroid/security/keystore/KeyGenParameterSpec;

    .line 988
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v7

    if-eqz v7, :cond_79

    .line 989
    nop

    .line 990
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v4

    .line 991
    if-eqz v4, :cond_79

    .line 992
    const v7, 0x20000005

    invoke-static {v7, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    :cond_79
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getWrappingKeyAlias()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v4

    .line 1001
    nop

    .line 1003
    :try_start_82
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 1004
    iget-object v7, v0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v7, v4}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v7
    :try_end_8b
    .catch Landroid/security/KeyStoreException; {:try_start_82 .. :try_end_8b} :catch_150

    .line 1008
    nop

    .line 1010
    invoke-direct/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 1012
    new-instance v9, Landroid/security/KeyStoreSecurityLevel;

    iget-object v10, v7, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    invoke-direct {v9, v10}, Landroid/security/KeyStoreSecurityLevel;-><init>(Landroid/system/keystore2/IKeystoreSecurityLevel;)V

    .line 1014
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v10

    const-class v11, Landroid/hardware/biometrics/BiometricManager;

    .line 1015
    invoke-virtual {v10, v11}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/biometrics/BiometricManager;

    .line 1017
    invoke-virtual {v10}, Landroid/hardware/biometrics/BiometricManager;->getAuthenticatorIds()[J

    move-result-object v10

    .line 1019
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1021
    new-instance v12, Landroid/system/keystore2/AuthenticatorSpec;

    invoke-direct {v12}, Landroid/system/keystore2/AuthenticatorSpec;-><init>()V

    .line 1022
    iput v5, v12, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorType:I

    .line 1023
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v13

    iput-wide v13, v12, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorId:J

    .line 1024
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    array-length v5, v10

    move v12, v3

    :goto_be
    if-ge v12, v5, :cond_d1

    aget-wide v13, v10, v12

    .line 1027
    new-instance v15, Landroid/system/keystore2/AuthenticatorSpec;

    invoke-direct {v15}, Landroid/system/keystore2/AuthenticatorSpec;-><init>()V

    .line 1028
    iput v6, v15, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorType:I

    .line 1029
    iput-wide v13, v15, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorId:J

    .line 1030
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    add-int/lit8 v12, v12, 0x1

    goto :goto_be

    .line 1033
    :cond_d1
    array-length v5, v2

    if-le v5, v6, :cond_10b

    .line 1034
    aget-object v2, v2, v6

    .line 1035
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->toKeymaster(Ljava/lang/String;)I

    move-result v2

    .line 1036
    if-ne v2, v6, :cond_10b

    iget-object v2, v7, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    if-eqz v2, :cond_10b

    iget-object v2, v7, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    if-eqz v2, :cond_10b

    .line 1039
    iget-object v2, v7, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    .line 1041
    array-length v5, v2

    move v6, v3

    :goto_ec
    if-ge v6, v5, :cond_10b

    aget-object v7, v2, v6

    .line 1044
    iget-object v7, v7, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v7, v7, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v10, 0x200000cb

    if-ne v7, v10, :cond_108

    .line 1049
    nop

    .line 1051
    const-string v2, "SHA-1"

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v2

    .line 1049
    invoke-static {v10, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    goto :goto_10b

    .line 1041
    :cond_108
    add-int/lit8 v6, v6, 0x1

    goto :goto_ec

    .line 1060
    :cond_10b
    :goto_10b
    :try_start_10b
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 1061
    nop

    .line 1063
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getWrappedKeyBytes()[B

    move-result-object v6

    new-array v2, v3, [Landroid/system/keystore2/AuthenticatorSpec;

    .line 1066
    invoke-interface {v11, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/system/keystore2/AuthenticatorSpec;

    .line 1061
    const/4 v7, 0x0

    move-object v5, v4

    move-object v3, v9

    move-object v4, v0

    move-object v9, v2

    invoke-virtual/range {v3 .. v9}, Landroid/security/KeyStoreSecurityLevel;->importWrappedKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[B[BLjava/util/Collection;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;
    :try_end_123
    .catch Landroid/security/KeyStoreException; {:try_start_10b .. :try_end_123} :catch_125

    .line 1076
    nop

    .line 1077
    return-void

    .line 1067
    :catch_125
    move-exception v0

    .line 1068
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    packed-switch v2, :pswitch_data_194

    .line 1073
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1074
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1070
    :pswitch_148
    new-instance v0, Landroid/security/keystore/SecureKeyImportUnavailableException;

    const-string v1, "Could not import wrapped key"

    invoke-direct {v0, v1}, Landroid/security/keystore/SecureKeyImportUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1005
    :catch_150
    move-exception v0

    .line 1006
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1007
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 964
    :cond_16c
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Algorithm \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" not supported for wrapping. Only RSA wrapping keys are supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 948
    :cond_18b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Protection parameters are specified inside wrapped keys"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_194
    .packed-switch -0x64
        :pswitch_148
    .end packed-switch
.end method

.method static blacklist toCertificate([B)Ljava/security/cert/X509Certificate;
    .registers 3

    .line 244
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 245
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_11
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    .line 247
    :catch_12
    move-exception p0

    .line 248
    const-string v0, "AndroidKeyStore"

    const-string v1, "Couldn\'t parse certificate in keystore"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist toCertificates([B)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 256
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 257
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p0
    :try_end_f
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_f} :catch_10

    return-object p0

    .line 259
    :catch_10
    move-exception p0

    .line 260
    const-string v0, "AndroidKeyStore"

    const-string v1, "Couldn\'t parse certificates in keystore"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public whitelist test-api engineAliases()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1159
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;-><init>(Landroid/security/keystore2/AndroidKeyStoreSpi;Landroid/security/keystore2/AndroidKeyStoreSpi-IA;)V

    return-object v0
.end method

.method public whitelist test-api engineContainsAlias(Ljava/lang/String;)Z
    .registers 3

    .line 1164
    if-eqz p1, :cond_c

    .line 1168
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1

    .line 1165
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "alias == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineDeleteEntry(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1132
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 1134
    :try_start_4
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 1135
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_c
    .catch Landroid/security/KeyStoreException; {:try_start_4 .. :try_end_c} :catch_d

    .line 1140
    goto :goto_15

    .line 1136
    :catch_d
    move-exception v0

    .line 1137
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_16

    .line 1141
    :goto_15
    return-void

    .line 1138
    :cond_16
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 4

    .line 222
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p1

    .line 224
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 225
    return-object v0

    .line 228
    :cond_8
    iget-object v1, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v1, v1, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    .line 229
    if-eqz v1, :cond_13

    .line 230
    invoke-static {v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1

    .line 233
    :cond_13
    iget-object p1, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object p1, p1, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    .line 234
    if-eqz p1, :cond_1e

    .line 235
    invoke-static {p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1

    .line 239
    :cond_1e
    return-object v0
.end method

.method public whitelist test-api engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 9

    .line 1217
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1218
    return-object v0

    .line 1220
    :cond_4
    const-string v1, "X.509"

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "AndroidKeyStoreSpi"

    if-nez v1, :cond_18

    .line 1221
    const-string p1, "In engineGetCertificateAlias: only X.509 certificates are supported."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    return-object v0

    .line 1226
    :cond_18
    :try_start_18
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1
    :try_end_1c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_18 .. :try_end_1c} :catch_74

    .line 1230
    nop

    .line 1231
    if-nez p1, :cond_20

    .line 1232
    return-object v0

    .line 1235
    :cond_20
    nop

    .line 1237
    :try_start_21
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 1238
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1239
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v3

    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v4, v4

    .line 1238
    invoke-virtual {v1, v3, v4, v5}, Landroid/security/KeyStore2;->list(IJ)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object v1
    :try_end_31
    .catch Landroid/security/KeyStoreException; {:try_start_21 .. :try_end_31} :catch_32

    .line 1244
    goto :goto_39

    .line 1242
    :catch_32
    move-exception v1

    .line 1243
    const-string v3, "Failed to get list of keystore entries."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    .line 1246
    :goto_39
    nop

    .line 1247
    array-length v2, v1

    const/4 v3, 0x0

    :goto_3c
    if-ge v3, v2, :cond_73

    aget-object v4, v1, v3

    .line 1248
    iget-object v5, v4, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v5

    .line 1249
    if-nez v5, :cond_49

    .line 1250
    goto :goto_70

    .line 1260
    :cond_49
    iget-object v6, v5, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v6, v6, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-eqz v6, :cond_5c

    .line 1261
    iget-object v5, v5, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v5, v5, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    invoke-static {v5, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 1262
    iget-object p1, v4, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    return-object p1

    .line 1264
    :cond_5c
    iget-object v6, v5, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v6, v6, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    if-eqz v6, :cond_70

    if-nez v0, :cond_70

    .line 1265
    iget-object v5, v5, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v5, v5, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    invoke-static {v5, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 1266
    iget-object v0, v4, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 1247
    :cond_70
    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 1270
    :cond_73
    return-object v0

    .line 1227
    :catch_74
    move-exception p1

    .line 1228
    const-string v1, "While trying to get the alias for a certificate."

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1229
    return-object v0
.end method

.method public whitelist test-api engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 7

    .line 186
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p1

    .line 188
    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    iget-object v1, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v1, v1, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-nez v1, :cond_e

    goto :goto_4d

    .line 192
    :cond_e
    iget-object v1, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v1, v1, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    invoke-static {v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 193
    if-nez v1, :cond_19

    .line 194
    return-object v0

    .line 199
    :cond_19
    iget-object p1, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object p1, p1, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    .line 201
    const/4 v0, 0x1

    if-eqz p1, :cond_43

    .line 202
    invoke-static {p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificates([B)Ljava/util/Collection;

    move-result-object p1

    .line 204
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/security/cert/Certificate;

    .line 206
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 207
    nop

    .line 208
    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 209
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    aput-object v4, v2, v0

    move v0, v3

    goto :goto_30

    .line 211
    :cond_42
    goto :goto_45

    .line 212
    :cond_43
    new-array v2, v0, [Ljava/security/cert/Certificate;

    .line 215
    :goto_45
    const/4 p1, 0x0

    aput-object v1, v2, p1

    .line 217
    invoke-static {v2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->hackCertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;

    move-result-object p1

    return-object p1

    .line 189
    :cond_4d
    :goto_4d
    return-object v0
.end method

.method public whitelist test-api engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 7

    .line 302
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p1

    .line 304
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 305
    return-object v0

    .line 308
    :cond_8
    iget-object v1, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-wide v1, v1, Landroid/system/keystore2/KeyMetadata;->modificationTimeMs:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_13

    .line 309
    return-object v0

    .line 311
    :cond_13
    new-instance v0, Ljava/util/Date;

    iget-object p1, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-wide v1, p1, Landroid/system/keystore2/KeyMetadata;->modificationTimeMs:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public whitelist test-api engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 128
    :try_start_0
    iget-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    invoke-static {p2, p1, v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object p1
    :try_end_8
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_8} :catch_1e
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 133
    :catch_9
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/security/UnrecoverableKeyException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 135
    instance-of v0, p2, Landroid/security/KeyStoreException;

    if-eqz v0, :cond_1d

    .line 136
    check-cast p2, Landroid/security/KeyStoreException;

    invoke-virtual {p2}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_1d

    .line 138
    const/4 p1, 0x0

    return-object p1

    .line 141
    :cond_1d
    throw p1

    .line 131
    :catch_1e
    move-exception p1

    .line 132
    new-instance p2, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {p1}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist test-api engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 3

    .line 1202
    if-eqz p1, :cond_16

    .line 1205
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p1

    .line 1210
    if-eqz p1, :cond_14

    iget-object v0, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v0, v0, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    if-eqz v0, :cond_14

    iget-object p1, p1, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    if-nez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1

    .line 1203
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "alias == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 2

    .line 1185
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1293
    if-nez p1, :cond_17

    .line 1297
    if-nez p2, :cond_e

    .line 1302
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1303
    const/4 p1, -0x1

    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    .line 1304
    return-void

    .line 1298
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "password not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1294
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "InputStream not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1309
    nop

    .line 1310
    if-eqz p1, :cond_2b

    .line 1311
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    if-eqz v0, :cond_e

    .line 1312
    check-cast p1, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    invoke-virtual {p1}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;->getNamespace()I

    move-result p1

    goto :goto_2c

    .line 1314
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported param type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1315
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1310
    :cond_2b
    const/4 p1, -0x1

    .line 1318
    :goto_2c
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1319
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    .line 1320
    return-void
.end method

.method public whitelist test-api engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1104
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 1109
    if-eqz p2, :cond_2c

    .line 1115
    :try_start_8
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p2
    :try_end_c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_8 .. :try_end_c} :catch_25

    .line 1118
    nop

    .line 1121
    :try_start_d
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 1122
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_1a
    .catch Landroid/security/KeyStoreException; {:try_start_d .. :try_end_1a} :catch_1c

    .line 1127
    nop

    .line 1128
    return-void

    .line 1125
    :catch_1c
    move-exception p1

    .line 1126
    new-instance p2, Ljava/security/KeyStoreException;

    const-string v0, "Couldn\'t insert certificate."

    invoke-direct {p2, v0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 1116
    :catch_25
    move-exception p1

    .line 1117
    new-instance p2, Ljava/security/KeyStoreException;

    invoke-direct {p2, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1110
    :cond_2c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cert == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1105
    :cond_34
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "Entry exists and is not a trusted certificate"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1325
    if-eqz p2, :cond_57

    .line 1329
    instance-of v0, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-eqz v0, :cond_13

    .line 1330
    check-cast p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 1336
    invoke-virtual {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 1337
    invoke-virtual {p2}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1338
    return-void

    .line 1341
    :cond_13
    instance-of v0, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v0, :cond_25

    .line 1342
    check-cast p2, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 1343
    invoke-virtual {p2}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-virtual {p2}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1344
    goto :goto_3d

    :cond_25
    instance-of v0, p2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v0, :cond_33

    .line 1345
    check-cast p2, Ljava/security/KeyStore$SecretKeyEntry;

    .line 1346
    invoke-virtual {p2}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1347
    goto :goto_3d

    :cond_33
    instance-of v0, p2, Landroid/security/keystore/WrappedKeyEntry;

    if-eqz v0, :cond_3e

    .line 1348
    check-cast p2, Landroid/security/keystore/WrappedKeyEntry;

    .line 1349
    invoke-direct {p0, p1, p2, p3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setWrappedKeyEntry(Ljava/lang/String;Landroid/security/keystore/WrappedKeyEntry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1350
    nop

    .line 1355
    :goto_3d
    return-void

    .line 1351
    :cond_3e
    new-instance p1, Ljava/security/KeyStoreException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Entry must be a PrivateKeyEntry, SecretKeyEntry, WrappedKeyEntry or TrustedCertificateEntry; was "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1326
    :cond_57
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "entry == null"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 317
    if-eqz p3, :cond_e

    array-length p3, p3

    if-gtz p3, :cond_6

    goto :goto_e

    .line 318
    :cond_6
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "entries cannot be protected with passwords"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_e
    :goto_e
    instance-of p3, p2, Ljava/security/PrivateKey;

    const/4 v0, 0x0

    if-eqz p3, :cond_19

    .line 322
    check-cast p2, Ljava/security/PrivateKey;

    invoke-direct {p0, p1, p2, p4, v0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_22

    .line 323
    :cond_19
    instance-of p3, p2, Ljavax/crypto/SecretKey;

    if-eqz p3, :cond_23

    .line 324
    check-cast p2, Ljavax/crypto/SecretKey;

    invoke-direct {p0, p1, p2, v0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 328
    :goto_22
    return-void

    .line 326
    :cond_23
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "Only PrivateKey and SecretKey are supported"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1082
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "Operation not supported because key encoding is unknown"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineSize()I
    .registers 5

    .line 1173
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 1174
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1175
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v1

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v2, v2

    .line 1174
    invoke-virtual {v0, v1, v2, v3}, Landroid/security/KeyStore2;->getNumberOfEntries(IJ)I

    move-result v0
    :try_end_10
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 1178
    :catch_11
    move-exception v0

    .line 1179
    const-string v1, "AndroidKeyStoreSpi"

    const-string v2, "Failed to get the number of keystore entries."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1180
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1287
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Can not serialize AndroidKeyStore to OutputStream"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist initForTesting(Landroid/security/KeyStore2;)V
    .registers 2

    .line 1280
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1281
    const/4 p1, -0x1

    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    .line 1282
    return-void
.end method
