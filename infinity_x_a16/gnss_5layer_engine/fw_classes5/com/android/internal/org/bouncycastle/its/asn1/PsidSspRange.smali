.class public Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "PsidSspRange.java"


# instance fields
.field private blacklist psid:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private blacklist sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 27
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;
    .registers 5

    .line 31
    if-nez p0, :cond_4

    .line 33
    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_4
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;

    if-eqz v0, :cond_b

    .line 37
    check-cast p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;

    return-object p0

    .line 41
    :cond_b
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    .line 42
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_42

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_42

    .line 48
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ne v1, v2, :cond_31

    .line 50
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v1, v0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->psid:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 52
    :cond_31
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ne v1, v3, :cond_41

    .line 54
    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    .line 56
    :cond_41
    return-object v0

    .line 45
    :cond_42
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "expected sequences with one or optionally two items"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getPsid()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->psid:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getSspRange()Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    return-object v0
.end method

.method public blacklist setPsid(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->psid:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 69
    return-void
.end method

.method public blacklist setSspRange(Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    .line 79
    return-void
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 83
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->psid:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 85
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    if-eqz v1, :cond_13

    .line 87
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 89
    :cond_13
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
