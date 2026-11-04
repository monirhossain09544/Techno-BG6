.class public Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "X500Name.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# static fields
.field private static blacklist defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;


# instance fields
.field private blacklist hashCodeValue:I

.field private blacklist isHashCodeCalculated:Z

.field private blacklist rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

.field private blacklist rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

.field private blacklist style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3

    .line 107
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 108
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 9

    .line 113
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 114
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    .line 116
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 117
    new-array p1, v0, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    .line 119
    nop

    .line 120
    const/4 p1, 0x1

    const/4 v1, 0x0

    move v3, p1

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_29

    .line 122
    invoke-virtual {p2, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    .line 123
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v5

    .line 124
    if-ne v5, v4, :cond_20

    move v4, p1

    goto :goto_21

    :cond_20
    move v4, v1

    :goto_21
    and-int/2addr v3, v4

    .line 125
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    aput-object v5, v4, v2

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 128
    :cond_29
    if-eqz v3, :cond_32

    .line 130
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->convert(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    goto :goto_3b

    .line 134
    :cond_32
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    .line 136
    :goto_3b
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 49
    iget-object p1, p2, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    .line 50
    iget-object p1, p2, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V
    .registers 3

    .line 163
    invoke-interface {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;->fromString(Ljava/lang/String;)[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>([Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)V

    .line 165
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 166
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)V
    .registers 3

    .line 147
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 149
    invoke-virtual {p2}, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    .line 150
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    .line 151
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 156
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)V
    .registers 3

    .line 141
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)V

    .line 142
    return-void
.end method

.method public static blacklist getDefaultStyle()Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;
    .registers 1

    .line 315
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 65
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 3

    .line 87
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_c

    .line 89
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v0

    .line 91
    :cond_c
    if-eqz p1, :cond_18

    .line 93
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 96
    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 71
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_7

    .line 73
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object p0

    .line 75
    :cond_7
    if-eqz p0, :cond_13

    .line 77
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 80
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist setDefaultStyle(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;)V
    .registers 2

    .line 300
    if-eqz p0, :cond_5

    .line 305
    sput-object p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 306
    return-void

    .line 302
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "cannot set style to null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 261
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 263
    return v0

    .line 266
    :cond_4
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    const/4 v2, 0x0

    if-nez v1, :cond_e

    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v1, :cond_e

    .line 268
    return v2

    .line 271
    :cond_e
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 275
    return v0

    .line 280
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;->areEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Z

    move-result p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_2b

    return p1

    .line 282
    :catch_2b
    move-exception p1

    .line 284
    return v2
.end method

.method public blacklist getAttributeTypes()[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 6

    .line 185
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    array-length v0, v0

    .line 186
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_6
    if-ge v2, v0, :cond_14

    .line 188
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    aget-object v4, v4, v2

    .line 189
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->size()I

    move-result v4

    add-int/2addr v3, v4

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 192
    :cond_14
    new-array v2, v3, [Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 193
    nop

    .line 194
    move v3, v1

    :goto_18
    if-ge v1, v0, :cond_26

    .line 196
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    aget-object v4, v4, v1

    .line 197
    invoke-virtual {v4, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->collectAttributeTypes([Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;I)I

    move-result v4

    add-int/2addr v3, v4

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 199
    :cond_26
    return-object v2
.end method

.method public blacklist getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    invoke-virtual {v0}, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    return-object v0
.end method

.method public blacklist getRDNs(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .registers 9

    .line 210
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    array-length v0, v0

    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    .line 211
    nop

    .line 213
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_9
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    array-length v5, v5

    if-eq v3, v5, :cond_20

    .line 215
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    aget-object v5, v5, v3

    .line 216
    invoke-virtual {v5, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->containsAttributeType(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 218
    add-int/lit8 v6, v4, 0x1

    aput-object v5, v1, v4

    move v4, v6

    .line 213
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 222
    :cond_20
    if-ge v4, v0, :cond_28

    .line 224
    new-array p1, v4, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    .line 225
    invoke-static {v1, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    move-object v1, p1

    .line 229
    :cond_28
    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 244
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    if-eqz v0, :cond_7

    .line 246
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    return v0

    .line 249
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    .line 251
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;->calculateHashCode(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    .line 253
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    return v0
.end method

.method public blacklist size()I
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    array-length v0, v0

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;->toString(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
