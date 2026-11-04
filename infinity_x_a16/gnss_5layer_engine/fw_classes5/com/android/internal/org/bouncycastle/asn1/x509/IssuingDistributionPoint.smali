.class public Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "IssuingDistributionPoint.java"


# instance fields
.field private blacklist distributionPoint:Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

.field private blacklist indirectCRL:Z

.field private blacklist onlyContainsAttributeCerts:Z

.field private blacklist onlyContainsCACerts:Z

.field private blacklist onlyContainsUserCerts:Z

.field private blacklist onlySomeReasons:Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

.field private blacklist seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6

    .line 148
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 151
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v1, v2, :cond_67

    .line 153
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 155
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    packed-switch v3, :pswitch_data_68

    .line 177
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in IssuingDistributionPoint"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :pswitch_24
    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    .line 175
    goto :goto_64

    .line 171
    :pswitch_2f
    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    .line 172
    goto :goto_64

    .line 168
    :pswitch_3a
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)V

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    .line 169
    goto :goto_64

    .line 165
    :pswitch_46
    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    .line 166
    goto :goto_64

    .line 162
    :pswitch_51
    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    .line 163
    goto :goto_64

    .line 159
    :pswitch_5c
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    .line 160
    nop

    .line 151
    :goto_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 181
    :cond_67
    return-void

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_51
        :pswitch_46
        :pswitch_3a
        :pswitch_2f
        :pswitch_24
    .end packed-switch
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;ZZ)V
    .registers 11

    .line 140
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;ZZLcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;ZZ)V

    .line 141
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;ZZLcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;ZZ)V
    .registers 11

    .line 88
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    .line 90
    iput-boolean p5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    .line 91
    iput-boolean p6, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    .line 92
    iput-boolean p3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    .line 93
    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    .line 94
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    .line 96
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 97
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_21

    .line 99
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 101
    :cond_21
    if-eqz p2, :cond_2f

    .line 103
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object p2

    invoke-direct {p1, v1, v2, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 105
    :cond_2f
    if-eqz p3, :cond_3e

    .line 107
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 p2, 0x2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object p3

    invoke-direct {p1, v1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 109
    :cond_3e
    if-eqz p4, :cond_49

    .line 111
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 p2, 0x3

    invoke-direct {p1, v1, p2, p4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 113
    :cond_49
    if-eqz p5, :cond_58

    .line 115
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 p2, 0x4

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object p3

    invoke-direct {p1, v1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 117
    :cond_58
    if-eqz p6, :cond_67

    .line 119
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 p2, 0x5

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object p3

    invoke-direct {p1, v1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 122
    :cond_67
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 123
    return-void
.end method

.method private blacklist appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 262
    nop

    .line 264
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    return-void
.end method

.method private blacklist booleanToString(Z)Ljava/lang/String;
    .registers 2

    .line 276
    if-eqz p1, :cond_5

    const-string p1, "true"

    goto :goto_7

    :cond_5
    const-string p1, "false"

    :goto_7
    return-object p1
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .registers 2

    .line 48
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .registers 2

    .line 54
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    if-eqz v0, :cond_7

    .line 56
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    return-object p0

    .line 58
    :cond_7
    if-eqz p0, :cond_13

    .line 60
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 63
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getDistributionPoint()Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    return-object v0
.end method

.method public blacklist getOnlySomeReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    return-object v0
.end method

.method public blacklist isIndirectCRL()Z
    .registers 2

    .line 195
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    return v0
.end method

.method public blacklist onlyContainsAttributeCerts()Z
    .registers 2

    .line 200
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    return v0
.end method

.method public blacklist onlyContainsCACerts()Z
    .registers 2

    .line 190
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    return v0
.end method

.method public blacklist onlyContainsUserCerts()Z
    .registers 2

    .line 185
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 226
    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 229
    const-string v2, "IssuingDistributionPoint: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    if-eqz v2, :cond_20

    .line 233
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "distributionPoint"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_20
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    if-eqz v2, :cond_2f

    .line 237
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsUserCerts"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_2f
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    if-eqz v2, :cond_3e

    .line 241
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsCACerts"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_3e
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    if-eqz v2, :cond_4d

    .line 245
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlySomeReasons"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_4d
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    if-eqz v2, :cond_5c

    .line 249
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsAttributeCerts"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_5c
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    if-eqz v2, :cond_6b

    .line 253
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "indirectCRL"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_6b
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
