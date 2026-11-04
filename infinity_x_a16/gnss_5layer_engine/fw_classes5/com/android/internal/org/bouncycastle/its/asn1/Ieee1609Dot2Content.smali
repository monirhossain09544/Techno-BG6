.class public Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Content;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "Ieee1609Dot2Content.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Content;
    .registers 2

    .line 29
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Content;

    if-eqz v0, :cond_7

    .line 31
    check-cast p0, Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Content;

    return-object p0

    .line 33
    :cond_7
    if-eqz p0, :cond_12

    .line 36
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Content;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Content;

    move-result-object p0

    return-object p0

    .line 39
    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 44
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 46
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
