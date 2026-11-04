.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
.super Ljava/lang/Object;
.source "BasicOCSPRespBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;
    }
.end annotation


# instance fields
.field private blacklist list:Ljava/util/List;

.field private blacklist responderID:Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;

.field private blacklist responseExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 122
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responderID:Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;

    .line 123
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;)V
    .registers 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 108
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responderID:Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;

    .line 109
    return-void
.end method


# virtual methods
.method public blacklist addResponse(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .registers 9

    .line 135
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    .line 137
    return-object v0
.end method

.method public blacklist addResponse(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .registers 10

    .line 152
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    .line 154
    return-object v0
.end method

.method public blacklist addResponse(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .registers 11

    .line 171
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    .line 173
    return-object v0
.end method

.method public blacklist addResponse(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .registers 11

    .line 190
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    .line 192
    return-object v0
.end method

.method public blacklist addResponse(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .registers 13

    .line 211
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;-><init>(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    return-object p0
.end method

.method public blacklist build(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Ljava/util/Date;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 237
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 239
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 243
    :try_start_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->toResponse()Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_1f

    .line 248
    goto :goto_b

    .line 245
    :catch_1f
    move-exception p1

    .line 247
    new-instance p2, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    const-string p3, "exception creating Request"

    invoke-direct {p2, p3, p1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 251
    :cond_28
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responderID:Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v3, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    new-instance p3, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v0, v2, v3, p3, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    .line 256
    :try_start_3f
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    .line 258
    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 259
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    .line 261
    new-instance p3, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v1

    invoke-direct {p3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_58} :catch_8a

    .line 266
    nop

    .line 268
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    .line 270
    nop

    .line 271
    if-eqz p2, :cond_7e

    array-length v1, p2

    if-lez v1, :cond_7e

    .line 273
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 275
    const/4 v2, 0x0

    :goto_69
    array-length v3, p2

    if-eq v2, v3, :cond_78

    .line 277
    aget-object v3, p2, v2

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 280
    :cond_78
    new-instance p2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    goto :goto_7f

    .line 283
    :cond_7e
    const/4 p2, 0x0

    :goto_7f
    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-direct {v2, v0, p1, p3, p2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/DERBitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;)V

    return-object v1

    .line 263
    :catch_8a
    move-exception p1

    .line 265
    new-instance p2, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception processing TBSRequest: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public blacklist setResponseExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 226
    return-object p0
.end method
