.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;
.super Ljava/lang/Object;
.source "BasicOCSPResp.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Encodable;


# instance fields
.field private blacklist data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

.field private blacklist extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field private blacklist resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    .line 47
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    .line 48
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getResponseExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 209
    if-ne p1, p0, :cond_4

    .line 211
    const/4 p1, 0x1

    return p1

    .line 214
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;

    if-nez v0, :cond_a

    .line 216
    const/4 p1, 0x0

    return p1

    .line 219
    :cond_a
    check-cast p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;

    .line 221
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist getCerts()[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .registers 7

    .line 151
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getCerts()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 153
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getCerts()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_2c

    .line 157
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v2, v1, [Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    .line 159
    const/4 v3, 0x0

    :goto_17
    if-eq v3, v1, :cond_2b

    .line 161
    new-instance v4, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V

    aput-object v4, v2, v3

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 164
    :cond_2b
    return-object v2

    .line 167
    :cond_2c
    sget-object v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->EMPTY_CERTS:[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    return-object v0

    .line 171
    :cond_2f
    sget-object v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->EMPTY_CERTS:[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    return-object v0
.end method

.method public blacklist getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

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

    .line 204
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_b

    .line 114
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object p1

    return-object p1

    .line 117
    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getExtensionOIDs()Ljava/util/List;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->getExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->getNonCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getProducedAt()Ljava/util/Date;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getProducedAt()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->extractDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResponderId()Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getResponderID()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;)V

    return-object v0
.end method

.method public blacklist getResponses()[Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;
    .registers 7

    .line 94
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getResponses()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v2, v1, [Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;

    .line 97
    const/4 v3, 0x0

    :goto_d
    if-eq v3, v1, :cond_21

    .line 99
    new-instance v4, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;)V

    aput-object v4, v2, v3

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 102
    :cond_21
    return-object v2
.end method

.method public blacklist getSignature()[B
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignatureAlgOID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignatureAlgorithmID()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTBSResponseData()[B
    .registers 3

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 61
    :catch_d
    move-exception v0

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVersion()I
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist hasExtensions()Z
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isSignatureValid(Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;

    move-result-object p1

    .line 185
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 188
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->getSignature()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result p1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    return p1

    .line 192
    :catch_29
    move-exception p1

    .line 194
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception processing sig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
