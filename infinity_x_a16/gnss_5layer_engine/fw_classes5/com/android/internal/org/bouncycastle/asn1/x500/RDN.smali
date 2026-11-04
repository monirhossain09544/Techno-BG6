.class public Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "RDN.java"


# instance fields
.field private blacklist values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4

    .line 54
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V

    .line 55
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 25
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 60
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V
    .registers 3

    .line 68
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 70
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .registers 3

    .line 43
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .registers 2

    .line 29
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    if-eqz v0, :cond_7

    .line 31
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    return-object p0

    .line 33
    :cond_7
    if-eqz p0, :cond_13

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    return-object v0

    .line 38
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method blacklist collectAttributeTypes([Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;I)I
    .registers 7

    .line 111
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    .line 112
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 114
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v2

    .line 115
    add-int v3, p2, v1

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    aput-object v2, p1, v3

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 117
    :cond_1e
    return v0
.end method

.method blacklist containsAttributeType(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .registers 6

    .line 122
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    .line 123
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_23

    .line 125
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    .line 126
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 128
    const/4 p1, 0x1

    return p1

    .line 123
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 131
    :cond_23
    return v1
.end method

.method public blacklist getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTypesAndValues()[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .registers 5

    .line 99
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .line 101
    const/4 v2, 0x0

    :goto_9
    if-eq v2, v0, :cond_1a

    .line 103
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    aput-object v3, v1, v2

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 106
    :cond_1a
    return-object v1
.end method

.method public blacklist isMultiValued()Z
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public blacklist size()I
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method
