.class public Lcom/android/internal/org/bouncycastle/its/asn1/ToBeSignedCertificate;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "ToBeSignedCertificate.java"


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 35
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/ToBeSignedCertificate;
    .registers 2

    .line 39
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/ToBeSignedCertificate;

    if-eqz v0, :cond_7

    .line 41
    check-cast p0, Lcom/android/internal/org/bouncycastle/its/asn1/ToBeSignedCertificate;

    return-object p0

    .line 43
    :cond_7
    if-eqz p0, :cond_13

    .line 46
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/ToBeSignedCertificate;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/its/asn1/ToBeSignedCertificate;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 49
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method
