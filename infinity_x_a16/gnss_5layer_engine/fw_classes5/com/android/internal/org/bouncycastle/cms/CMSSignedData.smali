.class public Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
.super Ljava/lang/Object;
.source "CMSSignedData.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Encodable;


# static fields
.field private static final blacklist DIGEST_ALG_ID_FINDER:Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

.field private static final blacklist HELPER:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;


# instance fields
.field blacklist contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

.field private blacklist hashes:Ljava/util/Map;

.field blacklist signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

.field blacklist signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

.field blacklist signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->HELPER:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    .line 72
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->DIGEST_ALG_ID_FINDER:Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    .line 194
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getSignedData()Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    .line 200
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    .line 201
    if-eqz p1, :cond_45

    .line 203
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_33

    .line 205
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 206
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    goto :goto_48

    .line 210
    :cond_33
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    goto :goto_48

    .line 215
    :cond_45
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    .line 217
    :goto_48
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    if-eqz v0, :cond_c

    .line 151
    check-cast p1, Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    goto :goto_13

    .line 155
    :cond_c
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData$1;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    .line 175
    :goto_13
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    .line 176
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getSignedData()Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    .line 177
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V

    .line 132
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 103
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V

    .line 104
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;)V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    .line 86
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    .line 87
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    .line 88
    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    .line 89
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 141
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V

    .line 142
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    .line 185
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    .line 186
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getSignedData()Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    .line 187
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 117
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Ljava/util/Map;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V

    .line 118
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 95
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V

    .line 96
    return-void
.end method

.method public static blacklist addDigestAlgorithm(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .registers 3

    .line 516
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->DIGEST_ALG_ID_FINDER:Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->addDigestAlgorithm(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist addDigestAlgorithm(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .registers 8

    .line 531
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getDigestAlgorithmIDs()Ljava/util/Set;

    move-result-object v0

    .line 532
    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->HELPER:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->fixDigestAlgID(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    .line 537
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 539
    return-object p0

    .line 545
    :cond_11
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    invoke-direct {v1, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;)V

    .line 550
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 552
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 553
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 555
    sget-object v3, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->HELPER:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v3, v4, p2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->fixDigestAlgID(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 557
    :cond_35
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->convertToDlSet(Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    .line 560
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 565
    new-instance p2, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    invoke-direct {p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 566
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 567
    invoke-virtual {p2, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 569
    const/4 p1, 0x2

    :goto_59
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq p1, v0, :cond_69

    .line 571
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 569
    add-int/lit8 p1, p1, 0x1

    goto :goto_59

    .line 574
    :cond_69
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    move-result-object p0

    iput-object p0, v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    .line 579
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    iget-object p1, v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    iget-object p2, v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p0, v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    .line 581
    return-object v1
.end method

.method private blacklist getSignedData()Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 224
    const-string v0, "Malformed content."

    :try_start_2
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_c} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_c} :catch_d

    return-object v0

    .line 230
    :catch_d
    move-exception v1

    .line 232
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 226
    :catch_14
    move-exception v1

    .line 228
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public static blacklist replaceCertificatesAndCRLs(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;Lcom/android/internal/org/bouncycastle/util/Store;Lcom/android/internal/org/bouncycastle/util/Store;Lcom/android/internal/org/bouncycastle/util/Store;)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 690
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;)V

    .line 695
    nop

    .line 696
    nop

    .line 698
    const/4 v1, 0x0

    if-nez p1, :cond_c

    if-eqz p2, :cond_2f

    .line 700
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 702
    if-eqz p1, :cond_1a

    .line 704
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getCertificatesFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 706
    :cond_1a
    if-eqz p2, :cond_23

    .line 708
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getAttributeCertificatesFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 711
    :cond_23
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    .line 713
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result p2

    if-eqz p2, :cond_2f

    .line 715
    move-object v5, p1

    goto :goto_30

    .line 719
    :cond_2f
    move-object v5, v1

    :goto_30
    if-eqz p3, :cond_42

    .line 721
    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getCRLsFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    .line 723
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result p2

    if-eqz p2, :cond_42

    .line 725
    move-object v6, p1

    goto :goto_43

    .line 732
    :cond_42
    move-object v6, v1

    :goto_43
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getDigestAlgorithms()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    .line 733
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v4

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    .line 736
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iput-object v2, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    .line 741
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    iget-object p1, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    iget-object p2, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p0, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    .line 743
    return-object v0
.end method

.method public static blacklist replaceSigners(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .registers 3

    .line 597
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->DIGEST_ALG_ID_FINDER:Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->replaceSigners(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist replaceSigners(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .registers 7

    .line 618
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;)V

    .line 623
    iput-object p1, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    .line 628
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 630
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object p1

    .line 631
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 633
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 634
    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 636
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    .line 637
    invoke-static {v1, v3, p2}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->addDigestAlgs(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    .line 638
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 639
    goto :goto_1d

    .line 641
    :cond_34
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->convertToDlSet(Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    .line 642
    new-instance p2, Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    invoke-direct {p2, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 643
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 648
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 649
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 650
    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 652
    const/4 p1, 0x2

    :goto_5a
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_6c

    .line 654
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 652
    add-int/lit8 p1, p1, 0x1

    goto :goto_5a

    .line 657
    :cond_6c
    invoke-virtual {v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 659
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    .line 664
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    iget-object p1, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    iget-object p2, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p0, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    .line 666
    return-object v0
.end method


# virtual methods
.method public blacklist getAttributeCertificates()Lcom/android/internal/org/bouncycastle/util/Store;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/org/bouncycastle/util/Store<",
            "Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;",
            ">;"
        }
    .end annotation

    .line 326
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->HELPER:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getCertificates()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->getAttributeCertificates(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Lcom/android/internal/org/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCRLs()Lcom/android/internal/org/bouncycastle/util/Store;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/org/bouncycastle/util/Store<",
            "Lcom/android/internal/org/bouncycastle/cert/X509CRLHolder;",
            ">;"
        }
    .end annotation

    .line 316
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->HELPER:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getCRLs()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->getCRLs(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Lcom/android/internal/org/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCertificates()Lcom/android/internal/org/bouncycastle/util/Store;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/org/bouncycastle/util/Store<",
            "Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;",
            ">;"
        }
    .end annotation

    .line 306
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->HELPER:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getCertificates()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->getCertificates(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Lcom/android/internal/org/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDigestAlgorithmIDs()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;",
            ">;"
        }
    .end annotation

    .line 352
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 354
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getDigestAlgorithms()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 356
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 359
    :cond_21
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

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

    .line 392
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignedContent()Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;
    .registers 2

    .line 375
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    return-object v0
.end method

.method public blacklist getSignedContentTypeOID()Ljava/lang/String;
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignerInfos()Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;
    .registers 9

    .line 250
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    if-nez v0, :cond_7b

    .line 252
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_74

    .line 257
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v3

    .line 258
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    .line 260
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    const/4 v6, 0x0

    if-nez v5, :cond_38

    .line 262
    new-instance v5, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    invoke-direct {v5, v3, v4, v7, v6}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 266
    :cond_38
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 267
    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_59

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    goto :goto_63

    :cond_59
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    :goto_63
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 269
    new-instance v7, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    invoke-direct {v7, v3, v4, v6, v5}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :goto_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 273
    :cond_74
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    .line 276
    :cond_7b
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    return-object v0
.end method

.method public blacklist getVersion()I
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    return v0
.end method

.method public blacklist isCertificateManagementMessage()Z
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public blacklist isDetachedSignature()Z
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public blacklist toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    .registers 2

    .line 383
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method
