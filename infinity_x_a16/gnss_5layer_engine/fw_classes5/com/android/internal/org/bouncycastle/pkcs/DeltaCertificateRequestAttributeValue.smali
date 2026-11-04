.class public Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;
.super Ljava/lang/Object;
.source "DeltaCertificateRequestAttributeValue.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field private final blacklist attrSeq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field private final blacklist extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field private final blacklist signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final blacklist subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field private final blacklist subjectPKInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 9

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->attrSeq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 37
    nop

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_21

    .line 40
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 41
    move v1, v3

    goto :goto_24

    .line 45
    :cond_21
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move v1, v0

    .line 48
    :goto_24
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->subjectPKInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 49
    add-int/2addr v1, v3

    .line 51
    nop

    .line 52
    nop

    .line 54
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-eq v1, v4, :cond_67

    move-object v4, v2

    .line 56
    :goto_38
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v1, v5, :cond_68

    .line 58
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v5

    .line 59
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    if-ne v6, v3, :cond_51

    .line 61
    invoke-static {v5, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v2

    goto :goto_5c

    .line 63
    :cond_51
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_5f

    .line 65
    invoke-static {v5, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    .line 71
    :goto_5c
    add-int/lit8 v1, v1, 0x1

    .line 72
    goto :goto_38

    .line 69
    :cond_5f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_67
    move-object v4, v2

    .line 75
    :cond_68
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 76
    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;)V
    .registers 3

    .line 29
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getAttributeValues()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 30
    return-void
.end method


# virtual methods
.method public blacklist getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public blacklist getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getSubjectPKInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->subjectPKInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->attrSeq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
