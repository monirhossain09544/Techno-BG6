.class public abstract Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;
.super Ljava/lang/Object;
.source "AbstractX500NameStyle.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist calcHashCode(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I
    .registers 2

    .line 49
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalString(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public static blacklist copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .registers 5

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 38
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 40
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 41
    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    goto :goto_9

    .line 44
    :cond_1b
    return-object v0
.end method

.method private blacklist foundMatch(ZLcom/android/internal/org/bouncycastle/asn1/x500/RDN;[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z
    .registers 8

    .line 167
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1b

    .line 169
    array-length p1, p3

    sub-int/2addr p1, v2

    :goto_7
    if-ltz p1, :cond_31

    .line 171
    aget-object v3, p3, p1

    if-eqz v3, :cond_18

    aget-object v3, p3, p1

    invoke-virtual {p0, p2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->rdnAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 173
    aput-object v0, p3, p1

    .line 174
    return v2

    .line 169
    :cond_18
    add-int/lit8 p1, p1, -0x1

    goto :goto_7

    .line 180
    :cond_1b
    move p1, v1

    :goto_1c
    array-length v3, p3

    if-eq p1, v3, :cond_31

    .line 182
    aget-object v3, p3, p1

    if-eqz v3, :cond_2e

    aget-object v3, p3, p1

    invoke-virtual {p0, p2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->rdnAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 184
    aput-object v0, p3, p1

    .line 185
    return v2

    .line 180
    :cond_2e
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    .line 190
    :cond_31
    return v1
.end method


# virtual methods
.method public blacklist areEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Z
    .registers 8

    .line 136
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->size()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 138
    return v2

    .line 141
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object p1

    .line 142
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object p2

    .line 144
    nop

    .line 146
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    .line 147
    aget-object v1, p2, v2

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v1

    .line 149
    const/4 v3, 0x1

    if-eqz v0, :cond_34

    if-eqz v1, :cond_34

    .line 151
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    xor-int/2addr v0, v3

    goto :goto_35

    .line 154
    :cond_34
    move v0, v2

    :goto_35
    move v1, v2

    :goto_36
    array-length v4, p1

    if-eq v1, v4, :cond_45

    .line 156
    aget-object v4, p1, v1

    invoke-direct {p0, v0, v4, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->foundMatch(ZLcom/android/internal/org/bouncycastle/asn1/x500/RDN;[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 158
    return v2

    .line 154
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 162
    :cond_45
    return v3
.end method

.method public blacklist calculateHashCode(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)I
    .registers 8

    .line 55
    nop

    .line 56
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object p1

    .line 59
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_8
    array-length v3, p1

    if-eq v1, v3, :cond_58

    .line 61
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 63
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    .line 65
    move v4, v0

    :goto_1a
    array-length v5, v3

    if-eq v4, v5, :cond_36

    .line 67
    aget-object v5, v3, v4

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v5

    xor-int/2addr v2, v5

    .line 68
    aget-object v5, v3, v4

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->calcHashCode(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v5

    xor-int/2addr v2, v5

    .line 65
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 70
    :cond_36
    goto :goto_55

    .line 73
    :cond_37
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    .line 74
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->calcHashCode(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v3

    xor-int/2addr v2, v3

    .line 59
    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 78
    :cond_58
    return v2
.end method

.method protected blacklist encodeStringValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3

    .line 131
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method protected blacklist rdnAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z
    .registers 3

    .line 195
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->rDNAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z

    move-result p1

    return p1
.end method

.method public blacklist stringToValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 7

    .line 98
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_33

    .line 102
    :try_start_10
    invoke-static {p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->valueFromHexString(Ljava/lang/String;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_15

    return-object p1

    .line 104
    :catch_15
    move-exception p2

    .line 106
    new-instance p2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t recode value for oid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 110
    :cond_33
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_45

    .line 112
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 115
    :cond_45
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->encodeStringValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1
.end method
