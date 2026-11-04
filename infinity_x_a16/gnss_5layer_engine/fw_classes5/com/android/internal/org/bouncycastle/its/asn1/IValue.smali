.class public Lcom/android/internal/org/bouncycastle/its/asn1/IValue;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "IValue.java"


# instance fields
.field private final blacklist value:Ljava/math/BigInteger;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result v0

    .line 28
    if-ltz v0, :cond_19

    const v1, 0xffff

    if-gt v0, v1, :cond_19

    .line 33
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/IValue;->value:Ljava/math/BigInteger;

    .line 34
    return-void

    .line 30
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "value out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/IValue;
    .registers 2

    .line 38
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/IValue;

    if-eqz v0, :cond_7

    .line 40
    check-cast p0, Lcom/android/internal/org/bouncycastle/its/asn1/IValue;

    return-object p0

    .line 42
    :cond_7
    if-eqz p0, :cond_13

    .line 44
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/IValue;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/its/asn1/IValue;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    return-object v0

    .line 47
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 52
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/IValue;->value:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method
