.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
.super Ljava/lang/Object;
.source "CertificateID.java"


# static fields
.field public static final blacklist HASH_SHA1:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private final blacklist id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->HASH_SHA1:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-eqz p1, :cond_8

    .line 38
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    .line 39
    return-void

    .line 36
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'id\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Ljava/math/BigInteger;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-static {p1, p2, v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->createCertID(Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    .line 56
    return-void
.end method

.method private static blacklist createCertID(Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 137
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 140
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 142
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 144
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    .line 146
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 148
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 149
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 151
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 153
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    return-object v1

    .line 155
    :catch_4a
    move-exception p0

    .line 157
    new-instance p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "problem creating ID: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static blacklist deriveCertificateID(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .registers 7

    .line 129
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getIssuerNameHash()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getIssuerKeyHash()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v4, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 103
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;

    if-nez v0, :cond_6

    .line 105
    const/4 p1, 0x0

    return p1

    .line 108
    :cond_6
    check-cast p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;

    .line 110
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    return p1
.end method

.method public blacklist getHashAlgOID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIssuerKeyHash()[B
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getIssuerKeyHash()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIssuerNameHash()[B
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getIssuerNameHash()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist matchesIssuer(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->createCertID(Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1a
    .catch Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_1a} :catch_1b

    return p1

    .line 89
    :catch_1b
    move-exception p1

    .line 91
    new-instance p2, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to create digest calculator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    return-object v0
.end method
