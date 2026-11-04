.class public Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "SignedData.java"


# static fields
.field private static final blacklist VERSION_1:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private static final blacklist VERSION_3:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private static final blacklist VERSION_4:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private static final blacklist VERSION_5:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# instance fields
.field private blacklist certificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist certsBer:Z

.field private blacklist contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

.field private blacklist crls:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist crlsBer:Z

.field private blacklist digestAlgorithms:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist signerInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->VERSION_1:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 64
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 65
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->VERSION_4:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 66
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->VERSION_5:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    .line 222
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 223
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 225
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 226
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 227
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    .line 229
    :goto_23
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 231
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 238
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_71

    .line 240
    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 242
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_78

    .line 253
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 249
    :pswitch_5a
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    .line 250
    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->crls:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 251
    goto :goto_70

    .line 245
    :pswitch_65
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    .line 246
    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->certificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 247
    nop

    .line 255
    :goto_70
    goto :goto_75

    .line 258
    :cond_71
    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->signerInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 260
    :goto_75
    goto :goto_23

    .line 261
    :cond_76
    return-void

    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_65
        :pswitch_5a
    .end packed-switch
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V
    .registers 7

    .line 112
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 113
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->calculateVersion(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 114
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 115
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    .line 116
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->certificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 117
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->crls:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 118
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->signerInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 119
    instance-of p1, p4, Lcom/android/internal/org/bouncycastle/asn1/BERSet;

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    .line 120
    instance-of p1, p3, Lcom/android/internal/org/bouncycastle/asn1/BERSet;

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    .line 121
    return-void
.end method

.method private blacklist calculateVersion(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 13

    .line 130
    nop

    .line 131
    nop

    .line 132
    nop

    .line 133
    nop

    .line 135
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3b

    .line 137
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object p2

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_f
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 139
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    .line 140
    instance-of v6, v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v6, :cond_3a

    .line 142
    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v5

    .line 144
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    if-ne v6, v0, :cond_29

    .line 146
    move v3, v0

    goto :goto_3a

    .line 148
    :cond_29
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_32

    .line 150
    move v4, v0

    goto :goto_3a

    .line 152
    :cond_32
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3a

    .line 154
    move v2, v0

    .line 157
    :cond_3a
    :goto_3a
    goto :goto_f

    .line 135
    :cond_3b
    move v2, v1

    move v3, v2

    move v4, v3

    .line 160
    :cond_3e
    if-eqz v2, :cond_48

    .line 162
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 p2, 0x5

    invoke-direct {p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object p1

    .line 165
    :cond_48
    if-eqz p3, :cond_5e

    .line 167
    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object p2

    :goto_4e
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p3

    if-eqz p3, :cond_5e

    .line 169
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p3

    .line 170
    instance-of p3, p3, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz p3, :cond_5d

    .line 172
    move v1, v0

    .line 174
    :cond_5d
    goto :goto_4e

    .line 177
    :cond_5e
    if-eqz v1, :cond_63

    .line 179
    sget-object p1, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->VERSION_5:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object p1

    .line 182
    :cond_63
    if-eqz v4, :cond_68

    .line 184
    sget-object p1, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->VERSION_4:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object p1

    .line 187
    :cond_68
    if-eqz v3, :cond_6d

    .line 189
    sget-object p1, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object p1

    .line 192
    :cond_6d
    invoke-direct {p0, p4}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->checkForVersion3(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Z

    move-result p2

    if-eqz p2, :cond_76

    .line 194
    sget-object p1, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object p1

    .line 197
    :cond_76
    sget-object p2, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p2, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-nez p1, :cond_81

    .line 199
    sget-object p1, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object p1

    .line 202
    :cond_81
    sget-object p1, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->VERSION_1:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object p1
.end method

.method private blacklist checkForVersion3(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Z
    .registers 4

    .line 207
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 209
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    .line 213
    const/4 p1, 0x1

    return p1

    .line 215
    :cond_1f
    goto :goto_4

    .line 217
    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;
    .registers 2

    .line 94
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    if-eqz v0, :cond_7

    .line 96
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    return-object p0

    .line 98
    :cond_7
    if-eqz p0, :cond_13

    .line 100
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 103
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getCRLs()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->crls:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public blacklist getCertificates()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->certificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public blacklist getDigestAlgorithms()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public blacklist getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    .registers 2

    .line 275
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public blacklist getSignerInfos()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->signerInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public blacklist getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 298
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 300
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 301
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 302
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 304
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->certificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    .line 306
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    if-eqz v1, :cond_29

    .line 308
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->certificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_33

    .line 312
    :cond_29
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->certificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 316
    :cond_33
    :goto_33
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->crls:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_51

    .line 318
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_47

    .line 320
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->crls:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_51

    .line 324
    :cond_47
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->crls:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 328
    :cond_51
    :goto_51
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->signerInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 330
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
