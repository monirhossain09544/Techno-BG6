.class public Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "CrlID.java"


# instance fields
.field private blacklist crlNum:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private blacklist crlTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

.field private blacklist crlUrl:Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    .line 30
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 33
    :goto_7
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 35
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 37
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_50

    .line 49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :pswitch_38
    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;->crlTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 47
    goto :goto_4d

    .line 43
    :pswitch_3f
    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;->crlNum:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 44
    goto :goto_4d

    .line 40
    :pswitch_46
    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    .line 41
    nop

    .line 52
    :goto_4d
    goto :goto_7

    .line 53
    :cond_4e
    return-void

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_46
        :pswitch_3f
        :pswitch_38
    .end packed-switch
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;
    .registers 2

    .line 58
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;

    if-eqz v0, :cond_7

    .line 60
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;

    return-object p0

    .line 62
    :cond_7
    if-eqz p0, :cond_13

    .line 64
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 67
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getCrlNum()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;->crlNum:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getCrlTime()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;->crlTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public blacklist getCrlUrl()Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    if-eqz v0, :cond_b

    goto :goto_18

    .line 77
    :cond_b
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;Z)V

    goto :goto_1c

    .line 76
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    .line 75
    :goto_1c
    return-object v0
.end method

.method public blacklist getCrlUrlIA5()Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 106
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 108
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    .line 110
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 113
    :cond_16
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;->crlNum:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_24

    .line 115
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;->crlNum:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 118
    :cond_24
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;->crlTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_33

    .line 120
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CrlID;->crlTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 123
    :cond_33
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
