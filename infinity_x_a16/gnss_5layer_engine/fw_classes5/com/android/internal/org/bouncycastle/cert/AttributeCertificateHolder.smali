.class public Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;
.super Ljava/lang/Object;
.source "AttributeCertificateHolder.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Selector;


# static fields
.field private static blacklist digestCalculatorProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;


# instance fields
.field final blacklist holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;


# direct methods
.method public constructor blacklist <init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V
    .registers 8

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v2, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 121
    invoke-static {p4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    invoke-direct {v1, p1, p3, v2, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    .line 122
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->generateGeneralNames(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    .line 91
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .registers 6

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->generateGeneralNames(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object p1

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v2, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)V
    .registers 6

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->generateGeneralNames(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 80
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    .line 81
    return-void
.end method

.method private blacklist generateGeneralNames(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 4

    .line 192
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V

    return-object v0
.end method

.method private blacklist getPrincipals([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)[Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 6

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    const/4 v1, 0x0

    :goto_7
    array-length v2, p1

    if-eq v1, v2, :cond_23

    .line 221
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_20

    .line 223
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 227
    :cond_23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object p1
.end method

.method private blacklist matchesDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)Z
    .registers 8

    .line 197
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object p2

    .line 199
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    array-length v2, p2

    if-eq v1, v2, :cond_25

    .line 201
    aget-object v2, p2, v1

    .line 203
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_22

    .line 205
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 207
    const/4 p1, 0x1

    return p1

    .line 199
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 212
    :cond_25
    return v0
.end method

.method public static blacklist setDigestCalculatorProvider(Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;)V
    .registers 1

    .line 372
    sput-object p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->digestCalculatorProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    .line 373
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 281
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 344
    if-ne p1, p0, :cond_4

    .line 346
    const/4 p1, 0x1

    return p1

    .line 349
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;

    if-nez v0, :cond_a

    .line 351
    const/4 p1, 0x0

    return p1

    .line 354
    :cond_a
    check-cast p1, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;

    .line 356
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 156
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0

    .line 158
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDigestedObjectType()I
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 142
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestedObjectType()Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result v0

    return v0

    .line 144
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getEntityNames()[Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 241
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->getPrincipals([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)[Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0

    .line 244
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIssuer()[Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 256
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->getPrincipals([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)[Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0

    .line 259
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getObjectDigest()[B
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 170
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getObjectDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 172
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOtherObjectTypeID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 185
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getOtherObjectTypeID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 187
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 271
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 273
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 276
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 361
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist match(Ljava/lang/Object;)Z
    .registers 7

    .line 286
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 288
    return v1

    .line 291
    :cond_6
    check-cast p1, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    .line 293
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3d

    .line 295
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 296
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->matchesDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result p1

    if-eqz p1, :cond_3b

    move v1, v2

    goto :goto_3c

    :cond_3b
    nop

    .line 295
    :goto_3c
    return v1

    .line 299
    :cond_3d
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 301
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    .line 302
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    .line 301
    invoke-direct {p0, v0, v3}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->matchesDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 304
    return v2

    .line 308
    :cond_56
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 312
    :try_start_5e
    sget-object v0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->digestCalculatorProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    .line 313
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->getDigestedObjectType()I

    move-result v4

    packed-switch v4, :pswitch_data_a4

    goto :goto_8e

    .line 322
    :pswitch_7a
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_8e

    .line 319
    :pswitch_82
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 320
    nop

    .line 326
    :goto_8e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 328
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->getObjectDigest()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_9d} :catch_a1

    if-eqz p1, :cond_a0

    .line 330
    return v2

    .line 336
    :cond_a0
    goto :goto_a3

    .line 333
    :catch_a1
    move-exception p1

    .line 335
    return v1

    .line 339
    :cond_a3
    :goto_a3
    return v1

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7a
    .end packed-switch
.end method
