.class public final Landroid/security/keystore/KeyStoreManager;
.super Ljava/lang/Object;
.source "KeyStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyStoreManager$SupplementaryAttestationInfoTagEnum;
    }
.end annotation


# static fields
.field public static final whitelist MODULE_HASH:I = -0x6ffffd2c

.field private static final blacklist TAG:Ljava/lang/String; = "KeyStoreManager"

.field private static blacklist sInstance:Landroid/security/keystore/KeyStoreManager;

.field private static final blacklist sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mKeyStore2:Landroid/security/KeyStore2;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/security/keystore/KeyStoreManager;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    .line 70
    return-void
.end method

.method private static blacklist createKeyDescriptorFromAlias(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .registers 4

    .line 342
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 343
    const/4 v1, 0x0

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 344
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 345
    iput-object p0, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 346
    const/4 p0, 0x0

    iput-object p0, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 347
    return-object v0
.end method

.method private static blacklist createKeyDescriptorFromId(JI)Landroid/system/keystore2/KeyDescriptor;
    .registers 4

    .line 355
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 356
    iput p2, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 357
    iput-wide p0, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 358
    const/4 p0, 0x0

    iput-object p0, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 359
    iput-object p0, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 360
    return-object v0
.end method

.method private static blacklist getCertificate([B)Ljava/security/cert/X509Certificate;
    .registers 3

    .line 269
    nop

    .line 270
    if-eqz p0, :cond_1d

    .line 272
    :try_start_3
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 273
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_15

    .line 277
    goto :goto_1e

    .line 275
    :catch_15
    move-exception p0

    .line 276
    const-string v0, "KeyStoreManager"

    const-string v1, "Caught an exception parsing the certificate: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return-object p0
.end method

.method private static blacklist getCertificates([B)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 288
    const-string v0, "KeyStoreManager"

    if-eqz p0, :cond_26

    .line 290
    :try_start_4
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 291
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 292
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p0

    .line 294
    if-nez p0, :cond_1f

    .line 295
    const-string p0, "Received null certificates from a non-null certificateChain"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_20

    return-object p0

    .line 298
    :cond_1f
    return-object p0

    .line 299
    :catch_20
    move-exception p0

    .line 300
    const-string v1, "Caught an exception parsing the certs: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    :cond_26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getInstance()Landroid/security/keystore/KeyStoreManager;
    .registers 2

    .line 78
    sget-object v0, Landroid/security/keystore/KeyStoreManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_3
    sget-object v1, Landroid/security/keystore/KeyStoreManager;->sInstance:Landroid/security/keystore/KeyStoreManager;

    if-nez v1, :cond_e

    .line 80
    new-instance v1, Landroid/security/keystore/KeyStoreManager;

    invoke-direct {v1}, Landroid/security/keystore/KeyStoreManager;-><init>()V

    sput-object v1, Landroid/security/keystore/KeyStoreManager;->sInstance:Landroid/security/keystore/KeyStoreManager;

    .line 82
    :cond_e
    sget-object v1, Landroid/security/keystore/KeyStoreManager;->sInstance:Landroid/security/keystore/KeyStoreManager;

    monitor-exit v0

    return-object v1

    .line 83
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public whitelist getGrantedCertificateChainFromId(J)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 239
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/security/keystore/KeyStoreManager;->createKeyDescriptorFromId(JI)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1

    .line 240
    iget-object p2, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    invoke-static {p2, p1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Ljava/security/KeyPair;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    .line 243
    instance-of p2, p1, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz p2, :cond_38

    .line 244
    check-cast p1, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    .line 246
    invoke-virtual {p1}, Landroid/security/keystore2/AndroidKeyStorePublicKey;->getCertificate()[B

    move-result-object p2

    .line 247
    invoke-static {p2}, Landroid/security/keystore/KeyStoreManager;->getCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object p2

    .line 249
    if-nez p2, :cond_24

    .line 250
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 252
    :cond_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {p1}, Landroid/security/keystore2/AndroidKeyStorePublicKey;->getCertificateChain()[B

    move-result-object p1

    .line 255
    invoke-static {p1}, Landroid/security/keystore/KeyStoreManager;->getCertificates([B)Ljava/util/Collection;

    move-result-object p1

    .line 256
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    return-object v0

    .line 259
    :cond_38
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "keyStoreKey is not of the expected type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyStoreManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getGrantedKeyFromId(J)Ljava/security/Key;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, p2, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;JI)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object p1

    .line 187
    if-eqz p1, :cond_b

    .line 190
    return-object p1

    .line 188
    :cond_b
    new-instance p1, Ljava/security/UnrecoverableKeyException;

    const-string p2, "No key found by the given alias"

    invoke-direct {p1, p2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getGrantedKeyPairFromId(J)Ljava/security/KeyPair;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 211
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/security/keystore/KeyStoreManager;->createKeyDescriptorFromId(JI)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1

    .line 212
    iget-object p2, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    invoke-static {p2, p1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Ljava/security/KeyPair;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getSupplementaryAttestationInfo(I)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    invoke-virtual {v0, p1}, Landroid/security/KeyStore2;->getSupplementaryAttestationInfo(I)[B

    move-result-object p1

    return-object p1
.end method

.method public whitelist grantKeyAccess(Ljava/lang/String;I)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 109
    invoke-static {p1}, Landroid/security/keystore/KeyStoreManager;->createKeyDescriptorFromAlias(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 112
    nop

    .line 114
    :try_start_5
    iget-object v1, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    const/16 v2, 0x104

    invoke-virtual {v1, v0, p2, v2}, Landroid/security/KeyStore2;->grant(Landroid/system/keystore2/KeyDescriptor;II)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0
    :try_end_d
    .catch Landroid/security/KeyStoreException; {:try_start_5 .. :try_end_d} :catch_7c

    .line 122
    nop

    .line 123
    const-string v1, " to uid "

    const/4 v2, 0x4

    const-string v3, "KeyStoreManager"

    if-eqz v0, :cond_56

    .line 128
    iget v4, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    .line 133
    iget-wide p1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    return-wide p1

    .line 129
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received a result outside the grant domain: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v0, Landroid/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain a grant ID for alias "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 124
    :cond_56
    const-string v0, "Received a null KeyDescriptor from grant"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Landroid/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No ID was returned for the grant request for alias "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 115
    :catch_7c
    move-exception p1

    .line 118
    invoke-virtual {p1}, Landroid/security/KeyStoreException;->getNumericErrorCode()I

    move-result p2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_8c

    .line 119
    new-instance p1, Ljava/security/UnrecoverableKeyException;

    const-string p2, "No key found by the given alias"

    invoke-direct {p1, p2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_8c
    throw p1
.end method

.method public whitelist revokeKeyAccess(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 152
    invoke-static {p1}, Landroid/security/keystore/KeyStoreManager;->createKeyDescriptorFromAlias(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1

    .line 154
    :try_start_4
    iget-object v0, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    invoke-virtual {v0, p1, p2}, Landroid/security/KeyStore2;->ungrant(Landroid/system/keystore2/KeyDescriptor;I)V
    :try_end_9
    .catch Landroid/security/KeyStoreException; {:try_start_4 .. :try_end_9} :catch_b

    .line 162
    nop

    .line 163
    return-void

    .line 155
    :catch_b
    move-exception p1

    .line 158
    invoke-virtual {p1}, Landroid/security/KeyStoreException;->getNumericErrorCode()I

    move-result p2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1b

    .line 159
    new-instance p1, Ljava/security/UnrecoverableKeyException;

    const-string p2, "No key found by the given alias"

    invoke-direct {p1, p2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_1b
    throw p1
.end method
