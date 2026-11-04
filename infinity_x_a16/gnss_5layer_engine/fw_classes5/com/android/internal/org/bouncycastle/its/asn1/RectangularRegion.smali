.class public Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "RectangularRegion.java"


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 23
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;
    .registers 2

    .line 27
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;

    if-eqz v0, :cond_7

    .line 29
    check-cast p0, Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;

    return-object p0

    .line 31
    :cond_7
    if-eqz p0, :cond_13

    .line 33
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 36
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method
