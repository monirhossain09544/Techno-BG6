.class public Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;
.super Ljava/lang/Object;
.source "PKCS10CertificationRequest.java"


# static fields
.field private static blacklist EMPTY_ARRAY:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;


# instance fields
.field private final blacklist altPublicKey:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private final blacklist altSignature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final blacklist altSignatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

.field private final blacklist certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

.field private final blacklist isAltRequest:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    sput-object v0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;)V
    .registers 8

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-eqz p1, :cond_a3

    .line 95
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    .line 97
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    .line 99
    nop

    .line 100
    nop

    .line 101
    nop

    .line 103
    const/4 v0, 0x0

    if-eqz p1, :cond_66

    .line 105
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    move-object v1, v0

    move-object v2, v1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 107
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v3

    .line 109
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->altSignatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 111
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->getSingleValue(Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 113
    :cond_3d
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectAltPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 115
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->getSingleValue(Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    .line 117
    :cond_51
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->altSignatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 119
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->getSingleValue(Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    .line 121
    :cond_65
    goto :goto_1b

    .line 103
    :cond_66
    move-object v1, v0

    move-object v2, v1

    .line 124
    :cond_68
    const/4 p1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6e

    move v4, p1

    goto :goto_6f

    :cond_6e
    move v4, v3

    :goto_6f
    if-eqz v1, :cond_73

    move v5, p1

    goto :goto_74

    :cond_73
    move v5, v3

    :goto_74
    or-int/2addr v4, v5

    if-eqz v2, :cond_79

    move v5, p1

    goto :goto_7a

    :cond_79
    move v5, v3

    :goto_7a
    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->isAltRequest:Z

    .line 125
    iget-boolean v4, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->isAltRequest:Z

    if-eqz v4, :cond_9c

    .line 127
    if-eqz v0, :cond_85

    move v4, p1

    goto :goto_86

    :cond_85
    move v4, v3

    :goto_86
    if-eqz v1, :cond_8a

    move v5, p1

    goto :goto_8b

    :cond_8a
    move v5, v3

    :goto_8b
    and-int/2addr v4, v5

    if-eqz v2, :cond_8f

    goto :goto_90

    :cond_8f
    move p1, v3

    :goto_90
    and-int/2addr p1, v4

    if-eqz p1, :cond_94

    goto :goto_9c

    .line 129
    :cond_94
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid alternate public key details found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_9c
    :goto_9c
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->altSignature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 134
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->altPublicKey:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 135
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->altSignatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 136
    return-void

    .line 93
    :cond_a3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "certificationRequest cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor blacklist <init>([B)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->parseBytes([B)Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;-><init>(Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;)V

    .line 148
    return-void
.end method

.method private static blacklist getSingleValue(Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getAttributeValues()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    .line 76
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 81
    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    .line 78
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "single value attribute value not size of 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist parseBytes([B)Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    const-string v0, "malformed data: "

    :try_start_2
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object p0

    .line 56
    if-eqz p0, :cond_d

    .line 61
    return-object p0

    .line 58
    :cond_d
    new-instance p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCSIOException;

    const-string v1, "empty data passed to constructor"

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_15} :catch_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_15} :catch_15

    .line 67
    :catch_15
    move-exception p0

    .line 69
    new-instance v1, Lcom/android/internal/org/bouncycastle/pkcs/PKCSIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/android/internal/org/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 63
    :catch_31
    move-exception p0

    .line 65
    new-instance v1, Lcom/android/internal/org/bouncycastle/pkcs/PKCSIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/android/internal/org/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 418
    if-ne p1, p0, :cond_4

    .line 420
    const/4 p1, 0x1

    return p1

    .line 423
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;

    if-nez v0, :cond_a

    .line 425
    const/4 p1, 0x0

    return p1

    .line 428
    :cond_a
    check-cast p1, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;

    .line 430
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist getAttributes()[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    .registers 5

    .line 207
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    .line 209
    if-nez v0, :cond_f

    .line 211
    sget-object v0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    return-object v0

    .line 214
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    .line 216
    const/4 v2, 0x0

    :goto_16
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_29

    .line 218
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v3

    aput-object v3, v1, v2

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 221
    :cond_29
    return-object v1
.end method

.method public blacklist getAttributes(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    .registers 7

    .line 232
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    .line 234
    if-nez v0, :cond_f

    .line 236
    sget-object p1, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    return-object p1

    .line 239
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_33

    .line 243
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v3

    .line 244
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 246
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 250
    :cond_33
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3c

    .line 252
    sget-object p1, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    return-object p1

    .line 255
    :cond_3c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    return-object p1
.end method

.method public blacklist getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRequestedExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .registers 10

    .line 367
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->getAttributes()[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v0

    .line 368
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    array-length v3, v0

    if-eq v2, v3, :cond_ea

    .line 370
    aget-object v3, v0, v2

    .line 371
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_extensionRequest:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 373
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    .line 375
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    .line 376
    if-eqz v2, :cond_de

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eqz v3, :cond_de

    .line 381
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 385
    :try_start_30
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    :goto_34
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 387
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 389
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v4, v5, :cond_5a

    invoke-virtual {v3, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v4

    if-eqz v4, :cond_5a

    move v4, v6

    goto :goto_5b

    :cond_5a
    move v4, v1

    .line 390
    :goto_5b
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7a

    .line 392
    invoke-virtual {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-virtual {v0, v4, v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    goto :goto_97

    .line 394
    :cond_7a
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    if-ne v6, v5, :cond_98

    .line 396
    invoke-virtual {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v3, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-virtual {v0, v5, v4, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    .line 402
    :goto_97
    goto :goto_34

    .line 400
    :cond_98
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incorrect sequence size of Extension get "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expected 2 or three"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_bb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_bb} :catch_c1

    .line 407
    :cond_bb
    nop

    .line 409
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    return-object v0

    .line 404
    :catch_c1
    move-exception v0

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asn1 processing issue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    .line 378
    :cond_de
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pkcs_9_at_extensionRequest present but has no value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_e6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 412
    :cond_ea
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSignature()[B
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasAltPublicKey()Z
    .registers 2

    .line 303
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->isAltRequest:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 435
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isAltSignatureValid(Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    .line 316
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->isAltRequest:Z

    if-eqz v0, :cond_88

    .line 321
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    .line 323
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 325
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 327
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v3

    .line 329
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->altSignatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 331
    goto :goto_17

    .line 334
    :cond_32
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 335
    goto :goto_17

    .line 337
    :cond_36
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v3, v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    .line 342
    :try_start_48
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->altSignature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {p1, v0}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;

    move-result-object p1

    .line 344
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 346
    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 348
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5e} :catch_6a

    .line 353
    nop

    .line 355
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->altSignatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result p1

    return p1

    .line 350
    :catch_6a
    move-exception p1

    .line 352
    new-instance v0, Lcom/android/internal/org/bouncycastle/pkcs/PKCSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to process signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 318
    :cond_88
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no alternate public key present"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist isSignatureValid(Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    .line 280
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;

    move-result-object p1

    .line 282
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 284
    const-string v2, "DER"

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 286
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_20} :catch_2a

    .line 291
    nop

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->getSignature()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result p1

    return p1

    .line 288
    :catch_2a
    move-exception p1

    .line 290
    new-instance v0, Lcom/android/internal/org/bouncycastle/pkcs/PKCSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to process signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    return-object v0
.end method
