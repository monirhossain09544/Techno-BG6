.class public Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "Attributes.java"


# instance fields
.field private blacklist attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DLSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 40
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 35
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;
    .registers 2

    .line 73
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;
    .registers 2

    .line 57
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;

    if-eqz v0, :cond_7

    .line 59
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;

    return-object p0

    .line 61
    :cond_7
    if-eqz p0, :cond_13

    .line 63
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    return-object v0

    .line 66
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getAttributes()[Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    .registers 5

    .line 78
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    .line 80
    const/4 v2, 0x0

    :goto_9
    if-eq v2, v0, :cond_1a

    .line 82
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    move-result-object v3

    aput-object v3, v1, v2

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 85
    :cond_1a
    return-object v1
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method
