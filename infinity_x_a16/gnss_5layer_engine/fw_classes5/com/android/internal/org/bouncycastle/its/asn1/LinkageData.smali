.class public Lcom/android/internal/org/bouncycastle/its/asn1/LinkageData;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "LinkageData.java"


# instance fields
.field private final blacklist groupLinkageValue:Lcom/android/internal/org/bouncycastle/its/asn1/GroupLinkageValue;

.field private final blacklist iCert:Lcom/android/internal/org/bouncycastle/its/asn1/IValue;

.field private final blacklist linkageValue:Lcom/android/internal/org/bouncycastle/its/asn1/LinkageValue;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    .line 28
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_12

    goto :goto_1a

    .line 31
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence must be size 2 or 3"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_1a
    :goto_1a
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/its/asn1/IValue;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/IValue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/LinkageData;->iCert:Lcom/android/internal/org/bouncycastle/its/asn1/IValue;

    .line 35
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/its/asn1/LinkageValue;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/LinkageValue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/LinkageData;->linkageValue:Lcom/android/internal/org/bouncycastle/its/asn1/LinkageValue;

    .line 36
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/its/asn1/GroupLinkageValue;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/GroupLinkageValue;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/LinkageData;->groupLinkageValue:Lcom/android/internal/org/bouncycastle/its/asn1/GroupLinkageValue;

    .line 37
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/LinkageData;
    .registers 2

    .line 41
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/LinkageData;

    if-eqz v0, :cond_7

    .line 43
    check-cast p0, Lcom/android/internal/org/bouncycastle/its/asn1/LinkageData;

    return-object p0

    .line 45
    :cond_7
    if-eqz p0, :cond_13

    .line 48
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/LinkageData;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/its/asn1/LinkageData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 51
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 58
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
