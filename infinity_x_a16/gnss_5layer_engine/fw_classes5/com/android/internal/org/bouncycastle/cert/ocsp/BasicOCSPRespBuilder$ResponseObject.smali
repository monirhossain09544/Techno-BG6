.class Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;
.super Ljava/lang/Object;
.source "BasicOCSPRespBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseObject"
.end annotation


# instance fields
.field blacklist certId:Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;

.field blacklist certStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

.field blacklist extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field blacklist nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

.field blacklist thisUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V
    .registers 10

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certId:Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;

    .line 57
    const/4 p1, 0x0

    if-nez p2, :cond_10

    .line 59
    new-instance p2, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    invoke-direct {p2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;-><init>()V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    goto :goto_5a

    .line 61
    :cond_10
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/cert/ocsp/UnknownStatus;

    if-eqz v0, :cond_1f

    .line 63
    new-instance p2, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    const/4 v0, 0x2

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {p2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    goto :goto_5a

    .line 67
    :cond_1f
    check-cast p2, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;

    .line 69
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;->hasRevocationReason()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 71
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 72
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;->getRevocationTime()Ljava/util/Date;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;->getRevocationReason()I

    move-result p2

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->lookup(I)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    goto :goto_5a

    .line 76
    :cond_45
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 77
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;->getRevocationTime()Ljava/util/Date;

    move-result-object p2

    invoke-direct {v2, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-direct {v1, v2, p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    .line 81
    :goto_5a
    new-instance p2, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->thisUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 83
    if-eqz p4, :cond_6b

    .line 85
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {p1, p4}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    goto :goto_6d

    .line 89
    :cond_6b
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 92
    :goto_6d
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 93
    return-void
.end method


# virtual methods
.method public blacklist toResponse()Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certId:Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->thisUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    return-object v0
.end method
