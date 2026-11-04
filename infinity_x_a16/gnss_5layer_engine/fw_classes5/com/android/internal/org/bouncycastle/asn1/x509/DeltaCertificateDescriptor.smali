.class public Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "DeltaCertificateDescriptor.java"


# instance fields
.field private blacklist extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field private blacklist issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field private final blacklist serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private blacklist signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final blacklist signatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

.field private blacklist subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field private blacklist subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private blacklist validity:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 8

    .line 77
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 80
    nop

    .line 81
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    move v3, v1

    .line 82
    :goto_15
    instance-of v4, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v4, :cond_4b

    .line 84
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    packed-switch v4, :pswitch_data_7c

    goto :goto_41

    .line 97
    :pswitch_25
    invoke-static {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    goto :goto_41

    .line 94
    :pswitch_2c
    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->validity:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 95
    goto :goto_41

    .line 91
    :pswitch_33
    invoke-static {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 92
    goto :goto_41

    .line 88
    :pswitch_3a
    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 89
    nop

    .line 100
    :goto_41
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 101
    move-object v5, v3

    move v3, v2

    move-object v2, v5

    goto :goto_15

    .line 103
    :cond_4b
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 105
    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 106
    :goto_55
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_74

    .line 108
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_88

    goto :goto_6b

    .line 112
    :pswitch_65
    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 115
    :goto_6b
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 116
    move v3, v1

    move-object v1, v2

    goto :goto_55

    .line 118
    :cond_74
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 119
    return-void

    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_33
        :pswitch_2c
        :pswitch_25
    .end packed-switch

    :pswitch_data_88
    .packed-switch 0x4
        :pswitch_65
    .end packed-switch
.end method

.method private blacklist addOptional(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;IZLcom/android/internal/org/bouncycastle/asn1/ASN1Object;)V
    .registers 6

    .line 255
    if-eqz p4, :cond_a

    .line 257
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v0, p3, p2, p4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 259
    :cond_a
    return-void
.end method

.method public static blacklist fromExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
    .registers 2

    .line 73
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCertificateDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
    .registers 2

    .line 53
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    if-eqz v0, :cond_7

    .line 55
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    return-object p0

    .line 57
    :cond_7
    if-eqz p0, :cond_13

    .line 59
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 62
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getSignature()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getSignatureValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public blacklist getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public blacklist getValidity()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->validity:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 263
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 265
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 266
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;IZLcom/android/internal/org/bouncycastle/asn1/ASN1Object;)V

    .line 267
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;IZLcom/android/internal/org/bouncycastle/asn1/ASN1Object;)V

    .line 268
    const/4 v1, 0x2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->validity:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;IZLcom/android/internal/org/bouncycastle/asn1/ASN1Object;)V

    .line 269
    const/4 v1, 0x3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;IZLcom/android/internal/org/bouncycastle/asn1/ASN1Object;)V

    .line 270
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 271
    const/4 v1, 0x4

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;IZLcom/android/internal/org/bouncycastle/asn1/ASN1Object;)V

    .line 272
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 274
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public blacklist trimTo(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
    .registers 13

    .line 163
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 164
    iget-object v1, p1, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 165
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget-object v4, p1, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p1, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 169
    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 171
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 173
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 174
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v4, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 176
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 177
    :goto_38
    instance-of v8, v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v8, :cond_86

    .line 179
    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v8

    .line 180
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v9

    packed-switch v9, :pswitch_data_f8

    goto :goto_7f

    .line 204
    :pswitch_48
    invoke-static {v8, v6}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    .line 205
    invoke-virtual {v8, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7f

    .line 207
    invoke-virtual {v4, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_7f

    .line 197
    :pswitch_56
    invoke-static {v8, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    .line 198
    invoke-virtual {v8, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v8

    if-nez v8, :cond_7f

    .line 200
    invoke-virtual {v4, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_7f

    .line 190
    :pswitch_64
    invoke-static {v8, v6}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    .line 191
    invoke-virtual {v8, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7f

    .line 193
    invoke-virtual {v4, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_7f

    .line 183
    :pswitch_72
    invoke-static {v8, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    .line 184
    invoke-virtual {v8, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7f

    .line 186
    invoke-virtual {v4, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 211
    :cond_7f
    :goto_7f
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 212
    goto :goto_38

    .line 214
    :cond_86
    invoke-virtual {v4, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 216
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 217
    :goto_8f
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_ea

    .line 219
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    packed-switch v0, :pswitch_data_104

    goto :goto_e3

    .line 223
    :pswitch_9f
    invoke-static {p1, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    .line 224
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    .line 225
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v1

    :goto_ac
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 227
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v2

    .line 228
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v6

    .line 230
    if-eqz v6, :cond_cf

    .line 232
    invoke-virtual {v2, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_cf

    .line 234
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)V

    .line 237
    :cond_cf
    goto :goto_ac

    .line 240
    :cond_d0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e3

    .line 242
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-direct {p1, v5, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 245
    :cond_e3
    :goto_e3
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 246
    goto :goto_8f

    .line 248
    :cond_ea
    invoke-virtual {v4, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 250
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    new-instance p2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p2, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object p1

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_72
        :pswitch_64
        :pswitch_56
        :pswitch_48
    .end packed-switch

    :pswitch_data_104
    .packed-switch 0x4
        :pswitch_9f
    .end packed-switch
.end method
