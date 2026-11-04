.class public Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;
.super Ljava/lang/Object;
.source "X509CertificateHolderSelector.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Selector;


# instance fields
.field private blacklist issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field private blacklist serialNumber:Ljava/math/BigInteger;

.field private blacklist subjectKeyId:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .registers 4

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 59
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    .line 60
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    .line 61
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    .line 34
    return-void
.end method

.method private blacklist equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 112
    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_c

    :cond_7
    if-nez p2, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 5

    .line 152
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 98
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 100
    return v1

    .line 103
    :cond_6
    check-cast p1, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    .line 105
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    .line 106
    invoke-direct {p0, v0, v2}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 107
    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    nop

    .line 105
    :goto_29
    return v1
.end method

.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getSubjectKeyIdentifier()[B
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v1, :cond_11

    .line 84
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 87
    :cond_11
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v1, :cond_1c

    .line 89
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 92
    :cond_1c
    return v0
.end method

.method public blacklist match(Ljava/lang/Object;)Z
    .registers 5

    .line 117
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_61

    .line 119
    check-cast p1, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 123
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V

    .line 125
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 126
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result p1

    if-eqz p1, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    nop

    .line 125
    :goto_31
    return v1

    .line 128
    :cond_32
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    if-eqz v0, :cond_60

    .line 130
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    .line 132
    if-nez v0, :cond_4d

    .line 134
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator;->calculateKeyId(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1

    .line 137
    :cond_4d
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1

    .line 141
    :cond_60
    goto :goto_6e

    .line 142
    :cond_61
    instance-of v0, p1, [B

    if-eqz v0, :cond_6e

    .line 144
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->subjectKeyId:[B

    check-cast p1, [B

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1

    .line 147
    :cond_6e
    :goto_6e
    return v1
.end method
