.class public Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;
.super Ljava/lang/Object;
.source "IETFUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addMultiValuedRDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;)V
    .registers 6

    .line 165
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_2f

    .line 171
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_10

    .line 173
    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->addRDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;Ljava/lang/String;)V

    .line 174
    return-void

    .line 177
    :cond_10
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 178
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 182
    :cond_1a
    invoke-static {p0, v1, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->collectAttributeTypeAndValue(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 185
    if-nez v0, :cond_1a

    .line 187
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->toOIDArray(Ljava/util/Vector;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->toValueArray(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;[Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;

    .line 188
    return-void

    .line 168
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "badly formatted directory string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist addRDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;Ljava/lang/String;)V
    .registers 5

    .line 192
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    const/16 v1, 0x3d

    invoke-direct {v0, p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 194
    const/4 p2, 0x1

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->nextToken(Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;Z)Ljava/lang/String;

    move-result-object p2

    .line 195
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->nextToken(Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;Z)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    .line 198
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 200
    invoke-virtual {p1, p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;->addRDN(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;

    .line 201
    return-void
.end method

.method private static blacklist addRDNs(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;)V
    .registers 6

    .line 150
    nop

    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 152
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_18

    .line 154
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    invoke-static {p0, p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->addMultiValuedRDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;)V

    goto :goto_1

    .line 158
    :cond_18
    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->addRDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 161
    :cond_1c
    return-void
.end method

.method public static blacklist appendRDN(Ljava/lang/StringBuffer;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Ljava/util/Hashtable;)V
    .registers 7

    .line 323
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 325
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object p1

    .line 326
    nop

    .line 328
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_e
    array-length v3, p1

    if-eq v2, v3, :cond_22

    .line 330
    if-eqz v1, :cond_15

    .line 332
    move v1, v0

    goto :goto_1a

    .line 336
    :cond_15
    const/16 v3, 0x2b

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 339
    :goto_1a
    aget-object v3, p1, v2

    invoke-static {p0, v3, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->appendTypeAndValue(Ljava/lang/StringBuffer;Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 341
    :cond_22
    goto :goto_30

    .line 344
    :cond_23
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 346
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->appendTypeAndValue(Ljava/lang/StringBuffer;Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V

    .line 349
    :cond_30
    :goto_30
    return-void
.end method

.method public static blacklist appendTypeAndValue(Ljava/lang/StringBuffer;Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V
    .registers 4

    .line 356
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 358
    if-eqz p2, :cond_10

    .line 360
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 364
    :cond_10
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    :goto_1b
    const/16 p2, 0x3d

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 369
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    return-void
.end method

.method private static blacklist atvAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Z
    .registers 6

    .line 565
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 567
    return v0

    .line 570
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_31

    if-nez p1, :cond_a

    goto :goto_31

    .line 575
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    .line 576
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 578
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 580
    return v1

    .line 583
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalString(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object p0

    .line 584
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalString(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object p1

    .line 586
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    .line 588
    return v1

    .line 591
    :cond_30
    return v0

    .line 572
    :cond_31
    :goto_31
    return v1
.end method

.method public static blacklist canonicalString(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .registers 1

    .line 496
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 457
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1d

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-ne v0, v2, :cond_1d

    .line 459
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->decodeObject(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 460
    instance-of v2, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    if-eqz v2, :cond_1d

    .line 462
    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object p0

    .line 466
    :cond_1d
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 468
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 469
    const/4 v2, 0x2

    if-ge v0, v2, :cond_29

    .line 471
    return-object p0

    .line 474
    :cond_29
    add-int/lit8 v0, v0, -0x1

    .line 475
    :goto_2b
    const/16 v2, 0x20

    const/16 v3, 0x5c

    if-ge v1, v0, :cond_42

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_42

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_42

    .line 477
    add-int/lit8 v1, v1, 0x2

    goto :goto_2b

    .line 480
    :cond_42
    add-int/lit8 v4, v1, 0x1

    move v5, v0

    .line 481
    :goto_45
    if-le v5, v4, :cond_58

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_58

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v2, :cond_58

    .line 483
    add-int/lit8 v5, v5, -0x2

    goto :goto_45

    .line 486
    :cond_58
    if-gtz v1, :cond_5c

    if-ge v5, v0, :cond_62

    .line 488
    :cond_5c
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 491
    :cond_62
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist collectAttributeTypeAndValue(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;)V
    .registers 6

    .line 205
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    const/16 v1, 0x3d

    invoke-direct {v0, p3, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 207
    const/4 p3, 0x1

    invoke-static {v0, p3}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->nextToken(Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;Z)Ljava/lang/String;

    move-result-object p3

    .line 208
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->nextToken(Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;Z)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    .line 211
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 213
    invoke-virtual {p1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p2, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method private static blacklist convertHex(C)I
    .registers 3

    .line 125
    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    .line 127
    sub-int/2addr p0, v0

    return p0

    .line 129
    :cond_a
    const/16 v0, 0x61

    if-gt v0, p0, :cond_16

    const/16 v1, 0x66

    if-gt p0, v1, :cond_16

    .line 131
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 133
    :cond_16
    add-int/lit8 p0, p0, -0x41

    add-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public static blacklist decodeAttrName(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 5

    .line 283
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OID."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 285
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 287
    :cond_17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_2e

    .line 289
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 292
    :cond_2e
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 293
    if-eqz p1, :cond_3b

    .line 298
    return-object p1

    .line 295
    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown object id - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " - passed to distinguished name"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist decodeObject(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 503
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;II)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    .line 505
    :catch_f
    move-exception p0

    .line 507
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown encoding in name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist findAttrNamesForOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Hashtable;)[Ljava/lang/String;
    .registers 7

    .line 255
    nop

    .line 256
    invoke-virtual {p1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 258
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 264
    :cond_1a
    new-array v0, v2, [Ljava/lang/String;

    .line 265
    nop

    .line 267
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 269
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 270
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 272
    add-int/lit8 v4, v1, 0x1

    aput-object v3, v0, v1

    move v1, v4

    .line 274
    :cond_3c
    goto :goto_21

    .line 276
    :cond_3d
    return-object v0
.end method

.method private static blacklist isHexDigit(C)Z
    .registers 2

    .line 120
    const/16 v0, 0x30

    if-gt v0, p0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-gt v0, p0, :cond_10

    const/16 v0, 0x66

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private static blacklist nextToken(Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;Z)Ljava/lang/String;
    .registers 3

    .line 219
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result p0

    if-ne p0, p1, :cond_d

    .line 224
    return-object v0

    .line 222
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "badly formatted directory string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist rDNAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z
    .registers 6

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 541
    return v2

    .line 544
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object p0

    .line 545
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object p1

    .line 547
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_19

    .line 549
    return v2

    .line 552
    :cond_19
    move v0, v2

    :goto_1a
    array-length v1, p0

    if-eq v0, v1, :cond_2b

    .line 554
    aget-object v1, p0, v0

    aget-object v3, p1, v0

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->atvAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 556
    return v2

    .line 552
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 560
    :cond_2b
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist rDNsFromString(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;)[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .registers 3

    .line 138
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 139
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;)V

    .line 141
    invoke-static {p1, p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->addRDNs(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;->build()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 514
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_9

    .line 516
    return-object p0

    .line 519
    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 521
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 524
    const/4 v2, 0x1

    :goto_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 526
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 527
    const/16 v4, 0x20

    if-ne v1, v4, :cond_27

    if-eq v3, v4, :cond_2b

    .line 529
    :cond_27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 530
    move v1, v3

    .line 524
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 534
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist toOIDArray(Ljava/util/Vector;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 5

    .line 241
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 243
    const/4 v2, 0x0

    :goto_7
    if-eq v2, v0, :cond_14

    .line 245
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v3, v1, v2

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 248
    :cond_14
    return-object v1
.end method

.method private static blacklist toValueArray(Ljava/util/Vector;)[Ljava/lang/String;
    .registers 5

    .line 229
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 231
    const/4 v2, 0x0

    :goto_7
    if-eq v2, v0, :cond_14

    .line 233
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 236
    :cond_14
    return-object v1
.end method

.method private static blacklist unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 31
    return-object p0

    .line 33
    :cond_7
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x22

    if-gez v1, :cond_1c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1c

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 38
    :cond_1c
    nop

    .line 39
    nop

    .line 40
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 41
    nop

    .line 45
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v0, :cond_40

    .line 47
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x23

    if-ne v4, v6, :cond_40

    .line 49
    nop

    .line 50
    const-string v4, "\\#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x2

    goto :goto_41

    .line 54
    :cond_40
    move v4, v3

    :goto_41
    nop

    .line 55
    nop

    .line 56
    nop

    .line 58
    move v6, v3

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_49
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x20

    if-eq v4, v11, :cond_a0

    .line 60
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 62
    if-eq v11, v12, :cond_58

    .line 64
    move v9, v5

    .line 67
    :cond_58
    if-ne v11, v2, :cond_64

    .line 69
    if-nez v6, :cond_5f

    .line 71
    xor-int/lit8 v8, v8, 0x1

    goto :goto_9d

    .line 75
    :cond_5f
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 76
    move v6, v3

    goto :goto_9d

    .line 79
    :cond_64
    if-ne v11, v0, :cond_71

    if-nez v6, :cond_71

    if-nez v8, :cond_71

    .line 81
    nop

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    move v6, v5

    goto :goto_9d

    .line 86
    :cond_71
    if-ne v11, v12, :cond_78

    if-nez v6, :cond_78

    if-nez v9, :cond_78

    .line 88
    goto :goto_9d

    .line 90
    :cond_78
    if-eqz v6, :cond_99

    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->isHexDigit(C)Z

    move-result v12

    if-eqz v12, :cond_99

    .line 92
    if-eqz v10, :cond_96

    .line 94
    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v6

    mul-int/lit8 v6, v6, 0x10

    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v10

    add-int/2addr v6, v10

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 95
    nop

    .line 96
    nop

    .line 97
    move v6, v3

    move v10, v6

    goto :goto_9d

    .line 99
    :cond_96
    nop

    .line 100
    move v10, v11

    goto :goto_9d

    .line 102
    :cond_99
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    move v6, v3

    .line 58
    :goto_9d
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 107
    :cond_a0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_c1

    .line 109
    :goto_a6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, v5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    if-ne p0, v12, :cond_c1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, v5

    if-eq v7, p0, :cond_c1

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, v5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_a6

    .line 115
    :cond_c1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist valueFromHexString(Ljava/lang/String;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 307
    const/4 v2, 0x0

    :goto_a
    if-eq v2, v0, :cond_2a

    .line 309
    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 310
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 312
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 315
    :cond_2a
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist valueToString(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .registers 8

    .line 374
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 376
    instance-of v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    const/16 v2, 0x5c

    const/16 v3, 0x23

    const/4 v4, 0x0

    if-eqz v1, :cond_2b

    instance-of v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;

    if-nez v1, :cond_2b

    .line 378
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object p0

    .line 379
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_27

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_27

    .line 381
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 384
    :cond_27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    goto :goto_40

    .line 390
    :cond_2b
    :try_start_2b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 392
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    const-string v1, "DER"

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3f} :catch_a4

    .line 397
    nop

    .line 400
    :goto_40
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    .line 401
    nop

    .line 403
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-lt v1, v6, :cond_5a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_5a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_5a

    .line 405
    goto :goto_5b

    .line 408
    :cond_5a
    move v6, v4

    :goto_5b
    const-string v1, "\\"

    if-eq v6, p0, :cond_71

    .line 410
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_ae

    .line 428
    add-int/lit8 v6, v6, 0x1

    .line 429
    goto :goto_5b

    .line 421
    :sswitch_69
    invoke-virtual {v0, v6, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    add-int/lit8 v6, v6, 0x2

    .line 423
    add-int/lit8 p0, p0, 0x1

    .line 424
    goto :goto_5b

    .line 434
    :cond_71
    nop

    .line 435
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    const/16 v3, 0x20

    if-lez p0, :cond_8c

    .line 437
    :goto_7a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-le p0, v4, :cond_8c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    if-ne p0, v3, :cond_8c

    .line 439
    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    add-int/lit8 v4, v4, 0x2

    goto :goto_7a

    .line 444
    :cond_8c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, v5

    .line 446
    :goto_91
    if-lt p0, v4, :cond_9f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_9f

    .line 448
    invoke-virtual {v0, p0, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 449
    add-int/lit8 p0, p0, -0x1

    goto :goto_91

    .line 452
    :cond_9f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 394
    :catch_a4
    move-exception p0

    .line 396
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Other value has no encoded form"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_ae
    .sparse-switch
        0x22 -> :sswitch_69
        0x2b -> :sswitch_69
        0x2c -> :sswitch_69
        0x3b -> :sswitch_69
        0x3c -> :sswitch_69
        0x3d -> :sswitch_69
        0x3e -> :sswitch_69
        0x5c -> :sswitch_69
    .end sparse-switch
.end method
