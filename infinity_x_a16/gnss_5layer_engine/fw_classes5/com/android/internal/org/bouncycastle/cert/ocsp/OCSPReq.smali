.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;
.super Ljava/lang/Object;
.source "OCSPReq.java"


# static fields
.field private static final blacklist EMPTY_CERTS:[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;


# instance fields
.field private blacklist extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field private blacklist req:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    sput-object v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->EMPTY_CERTS:[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    const-string v0, "malformed request: "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    :try_start_5
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->req:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    .line 86
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->req:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    if-eqz p1, :cond_21

    .line 90
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->req:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->getRequestExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 103
    nop

    .line 104
    return-void

    .line 88
    :cond_21
    new-instance p1, Lcom/android/internal/org/bouncycastle/cert/CertIOException;

    const-string v1, "malformed request: no request data found"

    invoke-direct {p1, v1}, Lcom/android/internal/org/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_29} :catch_61
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_29} :catch_45
    .catch Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception; {:try_start_5 .. :try_end_29} :catch_29

    .line 100
    :catch_29
    move-exception p1

    .line 102
    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/android/internal/org/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 96
    :catch_45
    move-exception p1

    .line 98
    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/android/internal/org/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 92
    :catch_61
    move-exception p1

    .line 94
    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/android/internal/org/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;)V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->req:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    .line 69
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->getRequestExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 70
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;)V

    .line 77
    return-void
.end method


# virtual methods
.method public blacklist getCerts()[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .registers 7

    .line 187
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->req:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 189
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->req:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->getCerts()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_30

    .line 193
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v2, v1, [Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    .line 195
    const/4 v3, 0x0

    :goto_1b
    if-eq v3, v1, :cond_2f

    .line 197
    new-instance v4, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V

    aput-object v4, v2, v3

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 200
    :cond_2f
    return-object v2

    .line 203
    :cond_30
    sget-object v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->EMPTY_CERTS:[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    return-object v0

    .line 207
    :cond_33
    sget-object v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->EMPTY_CERTS:[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    return-object v0
.end method

.method public blacklist getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->getCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->req:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_b

    .line 138
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object p1

    return-object p1

    .line 141
    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getExtensionOIDs()Ljava/util/List;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->getExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->getNonCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRequestList()[Lcom/android/internal/org/bouncycastle/cert/ocsp/Req;
    .registers 7

    .line 118
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->req:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->getRequestList()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v2, v1, [Lcom/android/internal/org/bouncycastle/cert/ocsp/Req;

    .line 121
    const/4 v3, 0x0

    :goto_11
    if-eq v3, v1, :cond_25

    .line 123
    new-instance v4, Lcom/android/internal/org/bouncycastle/cert/ocsp/Req;

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/cert/ocsp/Req;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;)V

    aput-object v4, v2, v3

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 126
    :cond_25
    return-object v2
.end method

.method public blacklist getRequestorName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->req:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->getRequestorName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignature()[B
    .registers 2

    .line 174
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->isSigned()Z

    move-result v0

    if-nez v0, :cond_8

    .line 176
    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_8
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->req:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignatureAlgOID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->isSigned()Z

    move-result v0

    if-nez v0, :cond_8

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_8
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->req:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVersionNumber()I
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->req:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist hasExtensions()Z
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isSignatureValid(Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->isSigned()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 235
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->req:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;

    move-result-object p1

    .line 236
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->req:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->getSignature()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result p1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2f} :catch_30

    return p1

    .line 242
    :catch_30
    move-exception p1

    .line 244
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception processing signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 230
    :cond_4a
    new-instance p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    const-string v0, "attempt to verify signature on unsigned object"

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist isSigned()Z
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;->req:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
