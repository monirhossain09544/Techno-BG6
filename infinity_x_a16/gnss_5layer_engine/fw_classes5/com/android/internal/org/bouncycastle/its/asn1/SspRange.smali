.class public Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "SspRange.java"


# instance fields
.field private final blacklist bitmapSspRange:Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

.field private final blacklist isAll:Z

.field private final blacklist opaque:Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->isAll:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->opaque:Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    .line 34
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->bitmapSspRange:Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->isAll:Z

    .line 67
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->bitmapSspRange:Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

    .line 68
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->opaque:Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    .line 69
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;)V
    .registers 5

    .line 38
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->isAll:Z

    .line 40
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_13

    .line 42
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->opaque:Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    .line 43
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->bitmapSspRange:Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

    goto :goto_22

    .line 48
    :cond_13
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->opaque:Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    .line 53
    :try_start_19
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

    move-result-object v2
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_1d} :catch_1e

    .line 58
    goto :goto_20

    .line 55
    :catch_1e
    move-exception p1

    .line 57
    nop

    .line 60
    :goto_20
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->bitmapSspRange:Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

    .line 62
    :goto_22
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;
    .registers 4

    .line 73
    if-nez p0, :cond_4

    .line 75
    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_4
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    if-eqz v0, :cond_b

    .line 80
    check-cast p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    return-object p0

    .line 83
    :cond_b
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;

    if-eqz v0, :cond_15

    .line 85
    new-instance p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;-><init>()V

    return-object p0

    .line 88
    :cond_15
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_23

    .line 90
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;-><init>(Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;)V

    return-object v0

    .line 93
    :cond_23
    instance-of v0, p0, [B

    if-eqz v0, :cond_3b

    .line 97
    :try_start_27
    check-cast p0, [B

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    move-result-object p0
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_31} :catch_32

    return-object p0

    .line 99
    :catch_32
    move-exception p0

    .line 101
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unable to parse encoded general name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 105
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getBitmapSspRange()Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->bitmapSspRange:Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

    return-object v0
.end method

.method public blacklist getOpaque()Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->opaque:Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    return-object v0
.end method

.method public blacklist isAll()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->isAll:Z

    return v0
.end method

.method public blacklist maybeOpaque()Z
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->opaque:Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 130
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->isAll:Z

    if-eqz v0, :cond_7

    .line 132
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    return-object v0

    .line 135
    :cond_7
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->bitmapSspRange:Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

    if-eqz v0, :cond_12

    .line 137
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->bitmapSspRange:Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 140
    :cond_12
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->opaque:Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
