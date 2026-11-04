.class public Landroid/net/vcn/persistablebundleutils/CertUtils;
.super Ljava/lang/Object;
.source "CertUtils.java"


# static fields
.field private static final blacklist CERT_TYPE_X509:Ljava/lang/String; = "X.509"

.field private static final blacklist PRIVATE_KEY_TYPE_RSA:Ljava/lang/String; = "RSA"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist certificateFromByteArray([B)Ljava/security/cert/X509Certificate;
    .registers 3

    .line 42
    const-string v0, "derEncoded is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    :try_start_5
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 47
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_16
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_16} :catch_17

    return-object p0

    .line 48
    :catch_17
    move-exception p0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fail to decode certificate"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static blacklist privateKeyFromByteArray([B)Ljava/security/interfaces/RSAPrivateKey;
    .registers 3

    .line 55
    const-string/jumbo v0, "pkcs8Encoded was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 59
    :try_start_b
    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 61
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPrivateKey;
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_17} :catch_18
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_b .. :try_end_17} :catch_18

    return-object p0

    .line 62
    :catch_18
    move-exception p0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fail to decode PrivateKey"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
