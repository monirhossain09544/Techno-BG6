.class public Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;
.super Ljava/lang/Object;
.source "X509V3CertificateGenerator.java"


# instance fields
.field private final blacklist bcHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private final blacklist certificateFactory:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

.field private blacklist extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

.field private blacklist sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist sigOID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist signatureAlgorithm:Ljava/lang/String;

.field private blacklist tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->bcHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 52
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->certificateFactory:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    .line 62
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    .line 63
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    .line 64
    return-void
.end method

.method private blacklist booleanToBitString([Z)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .registers 9

    .line 211
    array-length v0, p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 213
    const/4 v1, 0x0

    move v2, v1

    :goto_9
    array-length v3, p1

    if-eq v2, v3, :cond_24

    .line 215
    div-int/lit8 v3, v2, 0x8

    aget-byte v4, v0, v3

    aget-boolean v5, p1, v2

    if-eqz v5, :cond_1c

    rem-int/lit8 v5, v2, 0x8

    rsub-int/lit8 v5, v5, 0x7

    const/4 v6, 0x1

    shl-int v5, v6, v5

    goto :goto_1d

    :cond_1c
    move v5, v1

    :goto_1d
    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 213
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 218
    :cond_24
    array-length p1, p1

    rem-int/lit8 p1, p1, 0x8

    .line 220
    if-nez p1, :cond_2f

    .line 222
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    return-object p1

    .line 226
    :cond_2f
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    rsub-int/lit8 p1, p1, 0x8

    invoke-direct {v1, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v1
.end method

.method private blacklist generateJcaObject(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;[B)Ljava/security/cert/X509Certificate;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 516
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 518
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 519
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 520
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 522
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->certificateFactory:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    new-instance p2, Ljava/io/ByteArrayInputStream;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 523
    const-string v0, "DER"

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 522
    invoke-virtual {p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method private blacklist generateTbsCert()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    .registers 3

    .line 505
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 507
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->generate()Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;)V

    .line 510
    :cond_13
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6

    .line 249
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 250
    return-void
.end method

.method public blacklist addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    .registers 6

    .line 273
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    .line 274
    return-void
.end method

.method public blacklist addExtension(Ljava/lang/String;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5

    .line 238
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 239
    return-void
.end method

.method public blacklist addExtension(Ljava/lang/String;Z[B)V
    .registers 5

    .line 262
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    .line 263
    return-void
.end method

.method public blacklist copyAndAddExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLjava/security/cert/X509Certificate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 317
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->copyAndAddExtension(Ljava/lang/String;ZLjava/security/cert/X509Certificate;)V

    .line 318
    return-void
.end method

.method public blacklist copyAndAddExtension(Ljava/lang/String;ZLjava/security/cert/X509Certificate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 287
    invoke-virtual {p3, p1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p3

    .line 289
    if-eqz p3, :cond_1a

    .line 296
    :try_start_6
    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p3

    .line 298
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Ljava/lang/String;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_f

    .line 303
    nop

    .line 304
    return-void

    .line 300
    :catch_f
    move-exception p1

    .line 302
    new-instance p2, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 291
    :cond_1a
    new-instance p2, Ljava/security/cert/CertificateParsingException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "extension "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " not present"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public blacklist generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 419
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public blacklist generate(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public blacklist generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 481
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->generateTbsCert()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v5

    .line 486
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->sigOID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    move-object v3, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/x509/X509Util;->calculateSignature(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object p1
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_1f

    .line 491
    nop

    .line 495
    :try_start_10
    invoke-direct {p0, v5, p1}, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->generateJcaObject(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;[B)Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_15

    return-object p1

    .line 497
    :catch_15
    move-exception v0

    move-object p1, v0

    .line 499
    new-instance p2, Lcom/android/internal/org/bouncycastle/x509/ExtCertificateEncodingException;

    const-string p3, "exception producing certificate object"

    invoke-direct {p2, p3, p1}, Lcom/android/internal/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 488
    :catch_1f
    move-exception v0

    move-object p1, v0

    .line 490
    new-instance p2, Lcom/android/internal/org/bouncycastle/x509/ExtCertificateEncodingException;

    const-string p3, "exception encoding TBS cert"

    invoke-direct {p2, p3, p1}, Lcom/android/internal/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public blacklist generate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 436
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->generateTbsCert()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    .line 441
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->sigOID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    invoke-static {v1, v2, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/x509/X509Util;->calculateSignature(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_1b

    .line 446
    nop

    .line 450
    :try_start_d
    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->generateJcaObject(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;[B)Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_12

    return-object p1

    .line 452
    :catch_12
    move-exception p1

    .line 454
    new-instance p2, Lcom/android/internal/org/bouncycastle/x509/ExtCertificateEncodingException;

    const-string v0, "exception producing certificate object"

    invoke-direct {p2, v0, p1}, Lcom/android/internal/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 443
    :catch_1b
    move-exception p1

    .line 445
    new-instance p2, Lcom/android/internal/org/bouncycastle/x509/ExtCertificateEncodingException;

    const-string v0, "exception encoding TBS cert"

    invoke-direct {p2, v0, p1}, Lcom/android/internal/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public blacklist generateX509Certificate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 331
    :try_start_0
    const-string v0, "BC"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_7
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_7} :catch_8

    return-object p1

    .line 333
    :catch_8
    move-exception p1

    .line 335
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "BC provider not installed!"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 370
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public blacklist generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 387
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_4} :catch_23
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_4} :catch_21
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_4} :catch_1f
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    .line 401
    :catch_5
    move-exception p1

    .line 403
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 397
    :catch_1f
    move-exception p1

    .line 399
    throw p1

    .line 393
    :catch_21
    move-exception p1

    .line 395
    throw p1

    .line 389
    :catch_23
    move-exception p1

    .line 391
    throw p1
.end method

.method public blacklist generateX509Certificate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 352
    :try_start_0
    const-string v0, "BC"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_6
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 354
    :catch_7
    move-exception p1

    .line 356
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "BC provider not installed!"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getSignatureAlgNames()Ljava/util/Iterator;
    .registers 2

    .line 533
    invoke-static {}, Lcom/android/internal/org/bouncycastle/x509/X509Util;->getAlgNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 71
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    .line 72
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->reset()V

    .line 73
    return-void
.end method

.method public blacklist setIssuerDN(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V

    .line 114
    return-void
.end method

.method public blacklist setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V
    .registers 5

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_10

    .line 103
    nop

    .line 104
    return-void

    .line 100
    :catch_10
    move-exception p1

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t process principal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setIssuerUniqueID([Z)V
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->booleanToBitString([Z)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuerUniqueID(Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V

    .line 207
    return-void
.end method

.method public blacklist setNotAfter(Ljava/util/Date;)V
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setEndDate(Lcom/android/internal/org/bouncycastle/asn1/x509/Time;)V

    .line 126
    return-void
.end method

.method public blacklist setNotBefore(Ljava/util/Date;)V
    .registers 4

    .line 119
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setStartDate(Lcom/android/internal/org/bouncycastle/asn1/x509/Time;)V

    .line 120
    return-void
.end method

.method public blacklist setPublicKey(Ljava/security/PublicKey;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    .line 160
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    .line 159
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    .line 165
    nop

    .line 166
    return-void

    .line 162
    :catch_18
    move-exception p1

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to process key - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSerialNumber(Ljava/math/BigInteger;)V
    .registers 4

    .line 81
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_13

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSerialNumber(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    .line 87
    return-void

    .line 83
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "serial number must be a positive integer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setSignatureAlgorithm(Ljava/lang/String;)V
    .registers 5

    .line 177
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    .line 181
    :try_start_2
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/x509/X509Util;->getAlgorithmOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->sigOID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_19

    .line 186
    nop

    .line 188
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->sigOID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/x509/X509Util;->getSigAlgID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 190
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 191
    return-void

    .line 183
    :catch_19
    move-exception v0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown signature type requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSubjectDN(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V

    .line 151
    return-void
.end method

.method public blacklist setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V
    .registers 5

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_10

    .line 141
    nop

    .line 142
    return-void

    .line 138
    :catch_10
    move-exception p1

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t process principal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSubjectUniqueID([Z)V
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/x509/X509V3CertificateGenerator;->booleanToBitString([Z)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectUniqueID(Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V

    .line 199
    return-void
.end method
