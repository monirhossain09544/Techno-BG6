.class public abstract Landroid/security/keystore/AttestationUtils;
.super Ljava/lang/Object;
.source "AttestationUtils.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist ID_TYPE_IMEI:I = 0x2

.field public static final whitelist ID_TYPE_MEID:I = 0x3

.field public static final whitelist ID_TYPE_SERIAL:I = 0x1

.field public static final whitelist USE_INDIVIDUAL_ATTESTATION:I = 0x4


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static whitelist attestDeviceIds(Landroid/content/Context;[I[B)[Ljava/security/cert/X509Certificate;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/DeviceIdAttestationException;
        }
    .end annotation

    .line 140
    const-string p0, "AndroidKeyStore"

    if-eqz p2, :cond_91

    .line 143
    if-eqz p1, :cond_89

    .line 147
    invoke-static {}, Landroid/security/keystore/AttestationUtils;->generateRandomAlias()Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string/jumbo v3, "secp256r1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v2, "SHA-256"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 152
    invoke-virtual {v1, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    .line 154
    if-eqz p1, :cond_33

    .line 155
    invoke-virtual {p2, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationIds([I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 156
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDevicePropertiesAttestationIncluded(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 160
    :cond_33
    :try_start_33
    const-string p1, "EC"

    invoke-static {p1, p0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p1

    .line 162
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 163
    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 165
    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    .line 166
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 168
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p1

    .line 169
    array-length p2, p1

    const-class v1, [Ljava/security/cert/X509Certificate;

    .line 170
    invoke-static {p1, p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    .line 172
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_5b} :catch_87
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_5b} :catch_5c

    .line 174
    return-object p1

    .line 177
    :catch_5c
    move-exception p0

    .line 180
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Landroid/security/keystore/DeviceIdAttestationException;

    if-nez p1, :cond_80

    .line 185
    instance-of p1, p0, Ljava/security/ProviderException;

    if-eqz p1, :cond_78

    .line 186
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/IllegalArgumentException;

    if-eqz p1, :cond_78

    .line 187
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/IllegalArgumentException;

    throw p0

    .line 189
    :cond_78
    new-instance p1, Landroid/security/keystore/DeviceIdAttestationException;

    const-string p2, "Unable to perform attestation"

    invoke-direct {p1, p2, p0}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 181
    :cond_80
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Landroid/security/keystore/DeviceIdAttestationException;

    throw p0

    .line 175
    :catch_87
    move-exception p0

    .line 176
    throw p0

    .line 144
    :cond_89
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Missing id types"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 141
    :cond_91
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Missing attestation challenge"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist generateRandomAlias()Ljava/lang/String;
    .registers 4

    .line 194
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    const/4 v2, 0x0

    :goto_b
    const/16 v3, 0x14

    if-ge v2, v3, :cond_1d

    .line 199
    const/16 v3, 0x1a

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x41

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 201
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o isChainValid(Landroid/security/keymaster/KeymasterCertificateChain;)Z
    .registers 2

    .line 209
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/security/keymaster/KeymasterCertificateChain;->getCertificates()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public static greylist-max-o parseCertificateChain(Landroid/security/keymaster/KeymasterCertificateChain;)[Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/KeyAttestationException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Landroid/security/keymaster/KeymasterCertificateChain;->getCertificates()Ljava/util/List;

    move-result-object p0

    .line 90
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4a

    .line 94
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    :try_start_10
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 97
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 98
    goto :goto_14

    .line 99
    :cond_24
    const-string p0, "X.509"

    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 100
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 99
    invoke-virtual {p0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 101
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/X509Certificate;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_40} :catch_41

    .line 99
    return-object p0

    .line 102
    :catch_41
    move-exception p0

    .line 103
    new-instance v0, Landroid/security/keystore/KeyAttestationException;

    const-string v1, "Unable to construct certificate chain"

    invoke-direct {v0, v1, p0}, Landroid/security/keystore/KeyAttestationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 91
    :cond_4a
    new-instance v0, Landroid/security/keystore/KeyAttestationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attestation certificate chain contained "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " entries. At least two are required."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/security/keystore/KeyAttestationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
