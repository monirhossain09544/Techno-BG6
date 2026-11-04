.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBEParameter;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "PBEParameter.java"


# instance fields
.field blacklist iterations:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field blacklist salt:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBEParameter;->salt:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBEParameter;->iterations:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 41
    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 5

    .line 27
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 28
    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_18

    .line 32
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBEParameter;->salt:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 33
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBEParameter;->iterations:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 34
    return-void

    .line 30
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "salt length must be 8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBEParameter;
    .registers 2

    .line 46
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBEParameter;

    if-eqz v0, :cond_7

    .line 48
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBEParameter;

    return-object p0

    .line 50
    :cond_7
    if-eqz p0, :cond_13

    .line 52
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBEParameter;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBEParameter;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 55
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getIterationCount()Ljava/math/BigInteger;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBEParameter;->iterations:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSalt()[B
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBEParameter;->salt:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 72
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBEParameter;->salt:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 73
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBEParameter;->iterations:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 75
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
