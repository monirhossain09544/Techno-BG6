.class public Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "RevokedInfo.java"


# instance fields
.field private blacklist revocationReason:Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

.field private blacklist revocationTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;)V
    .registers 3

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;)V

    .line 27
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->revocationTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 34
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->revocationReason:Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    .line 35
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->revocationTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 42
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_26

    .line 44
    nop

    .line 45
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 44
    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->revocationReason:Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    .line 47
    :cond_26
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;
    .registers 2

    .line 53
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;
    .registers 2

    .line 59
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    if-eqz v0, :cond_7

    .line 61
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    return-object p0

    .line 63
    :cond_7
    if-eqz p0, :cond_13

    .line 65
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 68
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getRevocationReason()Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->revocationReason:Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    return-object v0
.end method

.method public blacklist getRevocationTime()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->revocationTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 91
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 93
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->revocationTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 94
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->revocationReason:Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    if-eqz v1, :cond_1b

    .line 96
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->revocationReason:Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 99
    :cond_1b
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
