.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;
.super Ljava/lang/Object;
.source "RespID.java"


# static fields
.field public static final blacklist HASH_SHA1:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field blacklist id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;->HASH_SHA1:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    .line 29
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    :try_start_3
    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;->HASH_SHA1:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 56
    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 59
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 61
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    .line 66
    nop

    .line 67
    return-void

    .line 53
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "only SHA-1 can be used with RespID - found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_54} :catch_54

    .line 63
    :catch_54
    move-exception p1

    .line 65
    new-instance p2, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "problem creating ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 77
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;

    if-nez v0, :cond_6

    .line 79
    const/4 p1, 0x0

    return p1

    .line 82
    :cond_6
    check-cast p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    return-object v0
.end method
