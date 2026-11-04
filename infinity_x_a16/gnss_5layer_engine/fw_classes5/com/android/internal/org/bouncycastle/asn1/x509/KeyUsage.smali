.class public Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "KeyUsage.java"


# static fields
.field public static final blacklist cRLSign:I = 0x2

.field public static final blacklist dataEncipherment:I = 0x10

.field public static final blacklist decipherOnly:I = 0x8000

.field public static final blacklist digitalSignature:I = 0x80

.field public static final blacklist encipherOnly:I = 0x1

.field public static final blacklist keyAgreement:I = 0x8

.field public static final blacklist keyCertSign:I = 0x4

.field public static final blacklist keyEncipherment:I = 0x20

.field public static final blacklist nonRepudiation:I = 0x40


# instance fields
.field private blacklist bitString:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3

    .line 70
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 71
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 72
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)V
    .registers 2

    .line 76
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 78
    return-void
.end method

.method public static blacklist fromExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;
    .registers 2

    .line 58
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;
    .registers 2

    .line 44
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;

    if-eqz v0, :cond_7

    .line 46
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;

    return-object p0

    .line 48
    :cond_7
    if-eqz p0, :cond_13

    .line 50
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)V

    return-object v0

    .line 53
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getBytes()[B
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPadBits()I
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result v0

    return v0
.end method

.method public blacklist hasUsages(I)Z
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->intValue()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 103
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    .line 105
    array-length v1, v0

    const/4 v2, 0x0

    const-string v3, "KeyUsage: 0x"

    const/4 v4, 0x1

    if-ne v1, v4, :cond_27

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
