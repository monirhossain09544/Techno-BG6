.class public Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
.super Ljava/lang/Object;
.source "SignerInformation.java"


# instance fields
.field private final blacklist content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

.field private final blacklist contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field protected final blacklist digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected final blacklist encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected final blacklist info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

.field private final blacklist isCounterSignature:Z

.field private blacklist resultDigest:[B

.field private final blacklist sid:Lcom/android/internal/org/bouncycastle/cms/SignerId;

.field private final blacklist signature:[B

.field protected final blacklist signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

.field protected final blacklist unsignedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V
    .registers 7

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    .line 70
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 71
    if-nez p2, :cond_b

    const/4 p2, 0x1

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    :goto_c
    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    .line 73
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getSID()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object p2

    .line 75
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 77
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->getId()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p2

    .line 79
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerId;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/cms/SignerId;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->sid:Lcom/android/internal/org/bouncycastle/cms/SignerId;

    .line 80
    goto :goto_47

    .line 83
    :cond_2c
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->getId()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object p2

    .line 85
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerId;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/android/internal/org/bouncycastle/cms/SignerId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->sid:Lcom/android/internal/org/bouncycastle/cms/SignerId;

    .line 88
    :goto_47
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 89
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 90
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getUnauthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 91
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 92
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signature:[B

    .line 94
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    .line 95
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    .line 96
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;)V
    .registers 3

    .line 107
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;)V

    .line 108
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;)V
    .registers 4

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    .line 121
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 122
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    .line 123
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSID()Lcom/android/internal/org/bouncycastle/cms/SignerId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->sid:Lcom/android/internal/org/bouncycastle/cms/SignerId;

    .line 124
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 125
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 126
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getUnauthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 127
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 128
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signature:[B

    .line 129
    iget-object p2, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    .line 130
    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    .line 133
    return-void
.end method

.method public static blacklist addCounterSigners(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;)Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .registers 11

    .line 777
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    .line 778
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    .line 781
    if-eqz v1, :cond_d

    .line 783
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    goto :goto_12

    .line 787
    :cond_d
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 790
    :goto_12
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 792
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 794
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1f

    .line 797
    :cond_33
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p1, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 799
    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    .line 800
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getSID()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    .line 801
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v8, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    const/4 v1, 0x0

    invoke-direct {p1, v2, v0, p0, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V

    .line 799
    return-object p1
.end method

.method private blacklist doVerify(Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 359
    const-string v0, "can\'t process mime object to create signature."

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getEncryptionAlgOID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->getEncryptionAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v2, :cond_17

    .line 361
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    goto :goto_23

    :cond_17
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->translateBrokenRSAPkcs7(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 366
    :goto_23
    :try_start_23
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->getContentVerifier(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;

    move-result-object v3
    :try_end_29
    .catch Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException; {:try_start_23 .. :try_end_29} :catch_124

    .line 371
    nop

    .line 375
    :try_start_2a
    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 377
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-nez v5, :cond_84

    .line 379
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->getDigestCalculator(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    move-result-object p1

    .line 380
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    if-eqz v5, :cond_6a

    .line 382
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 384
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-nez v6, :cond_5a

    .line 386
    instance-of v6, v3, Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;

    if-eqz v6, :cond_4c

    .line 388
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    invoke-interface {v6, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    goto :goto_66

    .line 392
    :cond_4c
    new-instance v6, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;

    invoke-direct {v6, v5, v4}, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 394
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    invoke-interface {v7, v6}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    .line 396
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 397
    goto :goto_66

    .line 401
    :cond_5a
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    invoke-interface {v6, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    .line 402
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 405
    :goto_66
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 406
    goto :goto_75

    .line 407
    :cond_6a
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v5, :cond_7c

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 417
    :goto_75
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    .line 418
    goto :goto_99

    .line 414
    :cond_7c
    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v1, "data not encapsulated in signature - use detached constructor."

    invoke-direct {p1, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 421
    :cond_84
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-nez p1, :cond_92

    .line 423
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    if-eqz p1, :cond_99

    .line 425
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    invoke-interface {p1, v4}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    goto :goto_99

    .line 430
    :cond_92
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 434
    :cond_99
    :goto_99
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_9c} :catch_11d
    .catch Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException; {:try_start_2a .. :try_end_9c} :catch_ff

    .line 443
    nop

    .line 446
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->verifyContentTypeAttributeValue()V

    .line 448
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object p1

    .line 451
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->verifyAlgorithmIdentifierProtectionAttribute(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)V

    .line 454
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->verifyMessageDigestAttribute()V

    .line 457
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->verifyCounterSignatureAttribute(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)V

    .line 461
    :try_start_ad
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-nez p1, :cond_ef

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-eqz p1, :cond_ef

    .line 463
    instance-of p1, v3, Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;

    if-eqz p1, :cond_ef

    .line 465
    check-cast v3, Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;

    .line 467
    const-string p1, "RSA"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e4

    .line 469
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-direct {p1, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 471
    const-string v1, "DER"

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v1

    invoke-interface {v3, p1, v1}, Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;->verify([B[B)Z

    move-result p1

    return p1

    .line 474
    :cond_e4
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v1

    invoke-interface {v3, p1, v1}, Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;->verify([B[B)Z

    move-result p1

    return p1

    .line 478
    :cond_ef
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result p1
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_f7} :catch_f8

    return p1

    .line 480
    :catch_f8
    move-exception p1

    .line 482
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 440
    :catch_ff
    move-exception p1

    .line 442
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t create digest calculator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 436
    :catch_11d
    move-exception p1

    .line 438
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 368
    :catch_124
    move-exception p1

    .line 370
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t create content verifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private blacklist encodeObj(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    if-eqz p1, :cond_b

    .line 151
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object p1

    return-object p1

    .line 154
    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist getSigningTime()Lcom/android/internal/org/bouncycastle/asn1/cms/Time;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 718
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->signingTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "signing-time"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 721
    if-nez v0, :cond_c

    .line 723
    const/4 v0, 0x0

    return-object v0

    .line 728
    :cond_c
    :try_start_c
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Time;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_10} :catch_11

    return-object v0

    .line 730
    :catch_11
    move-exception v0

    .line 732
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v1, "signing-time attribute value not a valid \'Time\' structure"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getSingleValuedSignedAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 678
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    .line 679
    if-eqz v0, :cond_30

    .line 680
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-gtz v0, :cond_11

    goto :goto_30

    .line 682
    :cond_11
    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " attribute MUST NOT be an unsigned attribute"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 686
    :cond_30
    :goto_30
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    .line 687
    const/4 v1, 0x0

    if-nez v0, :cond_38

    .line 689
    return-object v1

    .line 692
    :cond_38
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    .line 693
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_9e

    .line 710
    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The SignedAttributes in a signerInfo MUST NOT include multiple instances of the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " attribute"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 699
    :pswitch_62
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    .line 700
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    .line 701
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7d

    .line 707
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    .line 703
    :cond_7d
    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " attribute MUST have a single attribute value"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 696
    :pswitch_9c
    return-object v1

    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_62
    .end packed-switch
.end method

.method public static blacklist replaceUnsignedAttributes(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .registers 12

    .line 749
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    .line 750
    nop

    .line 752
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    .line 754
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object v9, v2

    goto :goto_12

    .line 752
    :cond_11
    move-object v9, v1

    .line 757
    :goto_12
    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    .line 758
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getSID()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    .line 759
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v8

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    invoke-direct {p1, v3, v0, p0, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V

    .line 757
    return-object p1
.end method

.method private static blacklist translateBrokenRSAPkcs7(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 3

    .line 807
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 810
    sget-object p0, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-nez p0, :cond_24

    sget-object p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 811
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 813
    :cond_24
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object p1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    .line 817
    :cond_2e
    return-object p1
.end method

.method private blacklist verifyAlgorithmIdentifierProtectionAttribute(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 566
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    .line 567
    if-eqz v0, :cond_1b

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-gtz v0, :cond_13

    goto :goto_1b

    .line 569
    :cond_13
    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v0, "A cmsAlgorithmProtect attribute MUST be a signed attribute"

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 571
    :cond_1b
    :goto_1b
    if-eqz p1, :cond_8e

    .line 573
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    .line 574
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_86

    .line 579
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-lez v0, :cond_8e

    .line 581
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    move-result-object p1

    .line 582
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-ne v2, v1, :cond_7e

    .line 587
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttributeValues()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;

    move-result-object p1

    .line 589
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->isEquivalent(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 594
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->isEquivalent(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result p1

    if-eqz p1, :cond_6e

    goto :goto_8e

    .line 596
    :cond_6e
    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v0, "CMS Algorithm Identifier Protection check failed for signatureAlgorithm"

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 591
    :cond_76
    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v0, "CMS Algorithm Identifier Protection check failed for digestAlgorithm"

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 584
    :cond_7e
    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v0, "A cmsAlgorithmProtect attribute MUST contain exactly one value"

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 576
    :cond_86
    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v0, "Only one instance of a cmsAlgorithmProtect attribute can be present"

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 600
    :cond_8e
    :goto_8e
    return-void
.end method

.method private blacklist verifyContentTypeAttributeValue()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 494
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "content-type"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 496
    if-nez v0, :cond_1b

    .line 498
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-nez v0, :cond_13

    goto :goto_2d

    .line 500
    :cond_13
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v1, "The content-type attribute type MUST be present whenever signed attributes are present in signed-data"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_1b
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    if-nez v1, :cond_3e

    .line 510
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_36

    .line 515
    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 517
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 522
    :cond_2d
    :goto_2d
    return-void

    .line 519
    :cond_2e
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v1, "content-type attribute value does not match eContentType"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_36
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v1, "content-type attribute value not of ASN.1 type \'OBJECT IDENTIFIER\'"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_3e
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v1, "[For counter signatures,] the signedAttributes field MUST NOT contain a content-type attribute"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist verifyCounterSignatureAttribute(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 611
    if-eqz p1, :cond_17

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 612
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result p1

    if-gtz p1, :cond_f

    goto :goto_17

    .line 614
    :cond_f
    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v0, "A countersignature attribute MUST NOT be a signed attribute"

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 617
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object p1

    .line 618
    if-eqz p1, :cond_48

    .line 620
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    .line 621
    const/4 v0, 0x0

    :goto_24
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-ge v0, v1, :cond_48

    .line 623
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    move-result-object v1

    .line 624
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_40

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 626
    :cond_40
    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v0, "A countersignature attribute MUST contain at least one AttributeValue"

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 632
    :cond_48
    return-void
.end method

.method private blacklist verifyMessageDigestAttribute()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 532
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "message-digest"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 534
    if-nez v0, :cond_17

    .line 536
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-nez v0, :cond_f

    goto :goto_29

    .line 538
    :cond_f
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v1, "the message-digest signed attribute type MUST be present when there are any signed attributes present"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_17
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_32

    .line 548
    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 550
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 555
    :goto_29
    return-void

    .line 552
    :cond_2a
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignerDigestMismatchException;

    const-string v1, "message-digest attribute value does not match calculated value"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignerDigestMismatchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_32
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v1, "message-digest attribute value not of ASN.1 type \'OCTET STRING\'"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getContentDigest()[B
    .registers 3

    .line 203
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-eqz v0, :cond_b

    .line 208
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 205
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "method can only be called after verify."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist getCounterSignatures()Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;
    .registers 9

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    .line 285
    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 287
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 290
    :cond_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 297
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    .line 299
    nop

    :goto_1e
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    if-ge v1, v3, :cond_59

    .line 301
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    .line 308
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    .line 309
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    .line 314
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    :goto_35
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 330
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v4

    .line 332
    new-instance v5, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    new-instance v6, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;-><init>([B)V

    const/4 v7, 0x0

    invoke-direct {v5, v4, v7, v6, v7}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    goto :goto_35

    .line 299
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 336
    :cond_59
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getDigestAlgOID()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDigestAlgParams()[B
    .registers 5

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encodeObj(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 192
    :catch_b
    move-exception v0

    .line 194
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception getting digest parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getDigestAlgorithmID()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getEncodedSignedAttributes()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_d

    .line 349
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 352
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEncryptionAlgOID()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEncryptionAlgParams()[B
    .registers 5

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encodeObj(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 229
    :catch_b
    move-exception v0

    .line 231
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception getting encryption parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getSID()Lcom/android/internal/org/bouncycastle/cms/SignerId;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->sid:Lcom/android/internal/org/bouncycastle/cms/SignerId;

    return-object v0
.end method

.method public blacklist getSignature()[B
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signature:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_11

    .line 243
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    .line 246
    :cond_11
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public blacklist getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_11

    .line 257
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    .line 260
    :cond_11
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public blacklist getVersion()I
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    return v0
.end method

.method public blacklist isCounterSignature()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    return v0
.end method

.method public blacklist toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    .registers 2

    .line 671
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    return-object v0
.end method

.method public blacklist verify(Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 646
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSigningTime()Lcom/android/internal/org/bouncycastle/asn1/cms/Time;

    move-result-object v0

    .line 648
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->hasAssociatedCertificate()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 650
    if-eqz v0, :cond_23

    .line 652
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->getAssociatedCertificate()Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    move-result-object v1

    .line 654
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->isValidOn(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_23

    .line 656
    :cond_1b
    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/CMSVerifierCertificateNotValidException;

    const-string v0, "verifier not valid at signingTime"

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSVerifierCertificateNotValidException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 661
    :cond_23
    :goto_23
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->doVerify(Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;)Z

    move-result p1

    return p1
.end method
