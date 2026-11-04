.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "IssuerAndSerialNumber.java"


# instance fields
.field blacklist certSerialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field blacklist name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 67
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 59
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;Ljava/math/BigInteger;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 51
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 52
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;
    .registers 2

    .line 27
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    if-eqz v0, :cond_7

    .line 29
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    return-object p0

    .line 31
    :cond_7
    if-eqz p0, :cond_13

    .line 33
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 36
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getCertificateSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getName()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 82
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 84
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 85
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 87
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
