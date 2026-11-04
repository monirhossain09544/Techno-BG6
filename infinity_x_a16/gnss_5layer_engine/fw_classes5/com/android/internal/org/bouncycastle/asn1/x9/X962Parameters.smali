.class public Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "X962Parameters.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private blacklist params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;)V
    .registers 3

    .line 75
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 76
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 3

    .line 69
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 70
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 71
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 3

    .line 80
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 81
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 82
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 64
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 65
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    .registers 2

    .line 53
    if-eqz p1, :cond_b

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object p0

    return-object p0

    .line 55
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "choice item must be explicitly tagged"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    .registers 4

    .line 24
    if-eqz p0, :cond_49

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    if-eqz v0, :cond_7

    goto :goto_49

    .line 29
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v0, :cond_13

    .line 31
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    return-object v0

    .line 34
    :cond_13
    instance-of v0, p0, [B

    if-eqz v0, :cond_41

    .line 38
    :try_start_17
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    check-cast p0, [B

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_23

    return-object v0

    .line 40
    :catch_23
    move-exception p0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to parse encoded data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object in getInstance()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_49
    :goto_49
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    return-object p0
.end method


# virtual methods
.method public blacklist getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public blacklist isImplicitlyCA()Z
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;

    return v0
.end method

.method public blacklist isNamedCurve()Z
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method
