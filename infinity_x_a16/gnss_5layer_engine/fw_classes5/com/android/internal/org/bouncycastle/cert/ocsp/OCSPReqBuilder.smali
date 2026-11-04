.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;
.super Ljava/lang/Object;
.source "OCSPReqBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;
    }
.end annotation


# instance fields
.field private blacklist list:Ljava/util/List;

.field private blacklist requestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field private blacklist requestorName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 31
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-void
.end method

.method private blacklist generateRequest(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 119
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 123
    :try_start_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;->toRequest()Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_1f

    .line 128
    goto :goto_b

    .line 125
    :catch_1f
    move-exception p1

    .line 127
    new-instance p2, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    const-string v0, "exception creating Request"

    invoke-direct {p2, v0, p1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 131
    :cond_28
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    .line 133
    nop

    .line 135
    if-eqz p1, :cond_a8

    .line 137
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_a0

    .line 144
    :try_start_3d
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 146
    const-string v2, "DER"

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 148
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4d} :catch_86

    .line 153
    nop

    .line 155
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    .line 157
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    .line 159
    if-eqz p2, :cond_80

    array-length v2, p2

    if-lez v2, :cond_80

    .line 161
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 163
    const/4 v3, 0x0

    :goto_66
    array-length v4, p2

    if-eq v3, v4, :cond_75

    .line 165
    aget-object v4, p2, v3

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    .line 168
    :cond_75
    new-instance p2, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p2, p1, v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/DERBitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 169
    goto :goto_a9

    .line 172
    :cond_80
    new-instance p2, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    invoke-direct {p2, p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V

    goto :goto_a9

    .line 150
    :catch_86
    move-exception p1

    .line 152
    new-instance p2, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception processing TBSRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 139
    :cond_a0
    new-instance p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    const-string p2, "requestorName must be specified if request is signed."

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_a8
    const/4 p2, 0x0

    .line 176
    :goto_a9
    new-instance p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-direct {v1, v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;)V

    invoke-direct {p1, v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;)V

    return-object p1
.end method


# virtual methods
.method public blacklist addRequest(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;)Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .registers 5

    .line 61
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;-><init>(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-object p0
.end method

.method public blacklist addRequest(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;-><init>(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-object p0
.end method

.method public blacklist build()Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->generateRequest(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;

    move-result-object v0

    return-object v0
.end method

.method public blacklist build(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 196
    if-eqz p1, :cond_7

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->generateRequest(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;

    move-result-object p1

    return-object p1

    .line 198
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no signer specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setRequestExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 107
    return-object p0
.end method

.method public blacklist setRequestorName(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .registers 4

    .line 89
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 91
    return-object p0
.end method

.method public blacklist setRequestorName(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 99
    return-object p0
.end method
