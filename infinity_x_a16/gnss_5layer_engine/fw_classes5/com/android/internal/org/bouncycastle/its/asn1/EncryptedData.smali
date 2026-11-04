.class public Lcom/android/internal/org/bouncycastle/its/asn1/EncryptedData;
.super Ljava/lang/Object;
.source "EncryptedData.java"


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/EncryptedData;
    .registers 2

    .line 24
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/EncryptedData;

    if-eqz v0, :cond_7

    .line 26
    check-cast p0, Lcom/android/internal/org/bouncycastle/its/asn1/EncryptedData;

    return-object p0

    .line 28
    :cond_7
    if-eqz p0, :cond_13

    .line 30
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/EncryptedData;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/its/asn1/EncryptedData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 33
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method
