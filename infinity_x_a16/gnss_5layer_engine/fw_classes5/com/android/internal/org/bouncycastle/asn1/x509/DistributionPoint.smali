.class public Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "DistributionPoint.java"


# instance fields
.field blacklist cRLIssuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

.field blacklist distributionPoint:Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

.field blacklist reasons:Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6

    .line 57
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v1, v2, :cond_55

    .line 60
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    packed-switch v3, :pswitch_data_56

    .line 74
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag encountered in structure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :pswitch_37
    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 72
    goto :goto_52

    .line 68
    :pswitch_3e
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)V

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    .line 69
    goto :goto_52

    .line 65
    :pswitch_4a
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    .line 66
    nop

    .line 58
    :goto_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 77
    :cond_55
    return-void

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_3e
        :pswitch_37
    .end packed-switch
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)V
    .registers 4

    .line 83
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    .line 85
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    .line 86
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 87
    return-void
.end method

.method private blacklist appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 154
    nop

    .line 156
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .registers 2

    .line 36
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .registers 4

    .line 42
    if-eqz p0, :cond_34

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;

    if-eqz v0, :cond_7

    goto :goto_34

    .line 47
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_13

    .line 49
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 52
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DistributionPoint: "

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

    .line 44
    :cond_34
    :goto_34
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;

    return-object p0
.end method


# virtual methods
.method public blacklist getCRLIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public blacklist getDistributionPoint()Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    return-object v0
.end method

.method public blacklist getReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 106
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 108
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 113
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 116
    :cond_15
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    if-eqz v1, :cond_24

    .line 118
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 121
    :cond_24
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_33

    .line 123
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 126
    :cond_33
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 131
    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    const-string v2, "DistributionPoint: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    if-eqz v2, :cond_20

    .line 137
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "distributionPoint"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_20
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    if-eqz v2, :cond_2f

    .line 141
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "reasons"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_2f
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v2, :cond_3e

    .line 145
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cRLIssuer"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_3e
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
