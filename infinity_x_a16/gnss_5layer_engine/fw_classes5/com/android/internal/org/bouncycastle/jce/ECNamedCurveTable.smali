.class public Lcom/android/internal/org/bouncycastle/jce/ECNamedCurveTable;
.super Ljava/lang/Object;
.source "ECNamedCurveTable.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getNames()Ljava/util/Enumeration;
    .registers 1

    .line 79
    invoke-static {}, Lcom/android/internal/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getParameterSpec(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;
    .registers 11

    .line 29
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jce/ECNamedCurveTable;->possibleOID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_c} :catch_f

    goto :goto_e

    :cond_d
    move-object v0, v1

    .line 34
    :goto_e
    goto :goto_11

    .line 31
    :catch_f
    move-exception v0

    .line 33
    move-object v0, v1

    .line 37
    :goto_11
    if-eqz v0, :cond_18

    .line 39
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    goto :goto_1c

    .line 43
    :cond_18
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 46
    :goto_1c
    if-nez v2, :cond_29

    .line 48
    if-eqz v0, :cond_25

    .line 50
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    goto :goto_29

    .line 54
    :cond_25
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 58
    :cond_29
    :goto_29
    if-nez v2, :cond_2c

    .line 60
    return-object v1

    .line 63
    :cond_2c
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    .line 65
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    .line 66
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 67
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v7

    .line 68
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v8

    .line 69
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v9

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 63
    return-object v3
.end method

.method private static blacklist possibleOID(Ljava/lang/String;)Z
    .registers 5

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt v0, v1, :cond_21

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_12

    goto :goto_21

    .line 90
    :cond_12
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 91
    const/16 v1, 0x30

    if-lt p0, v1, :cond_20

    const/16 v1, 0x32

    if-le p0, v1, :cond_1f

    goto :goto_20

    .line 96
    :cond_1f
    return v0

    .line 93
    :cond_20
    :goto_20
    return v2

    .line 87
    :cond_21
    :goto_21
    return v2
.end method
