.class public Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "GeneralName.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final blacklist dNSName:I = 0x2

.field public static final blacklist directoryName:I = 0x4

.field public static final blacklist ediPartyName:I = 0x5

.field public static final blacklist iPAddress:I = 0x7

.field public static final blacklist otherName:I = 0x0

.field public static final blacklist registeredID:I = 0x8

.field public static final blacklist rfc822Name:I = 0x1

.field public static final blacklist uniformResourceIdentifier:I = 0x6

.field public static final blacklist x400Address:I = 0x3


# instance fields
.field private blacklist obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

.field private blacklist tag:I


# direct methods
.method public constructor blacklist <init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    .line 113
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 115
    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    .line 116
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 5

    .line 144
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 145
    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    .line 147
    const/4 v0, 0x1

    if-eq p1, v0, :cond_58

    const/4 v0, 0x2

    if-eq p1, v0, :cond_58

    const/4 v0, 0x6

    if-ne p1, v0, :cond_f

    goto :goto_58

    .line 151
    :cond_f
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1b

    .line 153
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    goto :goto_5f

    .line 155
    :cond_1b
    const/4 v0, 0x4

    if-ne p1, v0, :cond_26

    .line 157
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    goto :goto_5f

    .line 159
    :cond_26
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3f

    .line 161
    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->toGeneralNameEncoding(Ljava/lang/String;)[B

    move-result-object p1

    .line 162
    if-eqz p1, :cond_37

    .line 164
    new-instance p2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {p2, p1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 170
    goto :goto_5f

    .line 168
    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IP Address is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_3f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t process String for tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 149
    :cond_58
    :goto_58
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 175
    :goto_5f
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 2

    .line 78
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 80
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    .line 81
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 2

    .line 71
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 72
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 73
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    .line 74
    return-void
.end method

.method private blacklist copyInts([I[BI)V
    .registers 8

    .line 376
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-eq v0, v1, :cond_1a

    .line 378
    mul-int/lit8 v1, v0, 0x2

    add-int v2, v1, p3

    aget v3, p1, v0

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 379
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p3

    aget v2, p1, v0

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 381
    :cond_1a
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .registers 2

    .line 233
    if-eqz p1, :cond_c

    .line 238
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object p0

    return-object p0

    .line 235
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "choice item must be explicitly tagged"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .registers 4

    .line 180
    if-eqz p0, :cond_9b

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_8

    goto/16 :goto_9b

    .line 185
    :cond_8
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_62

    .line 187
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    .line 190
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_9e

    .line 210
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :pswitch_2f
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2

    .line 205
    :pswitch_39
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2

    .line 203
    :pswitch_43
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    .line 200
    :pswitch_4e
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2

    .line 195
    :pswitch_58
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2

    .line 214
    :cond_62
    instance-of v0, p0, [B

    if-eqz v0, :cond_7a

    .line 218
    :try_start_66
    check-cast p0, [B

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object p0
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_70} :catch_71

    return-object p0

    .line 220
    :catch_71
    move-exception p0

    .line 222
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unable to parse encoded general name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 226
    :cond_7a
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

    .line 182
    :cond_9b
    :goto_9b
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    return-object p0

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_58
        :pswitch_4e
        :pswitch_4e
        :pswitch_58
        :pswitch_43
        :pswitch_58
        :pswitch_4e
        :pswitch_39
        :pswitch_2f
    .end packed-switch
.end method

.method private blacklist parseIPv4(Ljava/lang/String;[BI)V
    .registers 7

    .line 353
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "./"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const/4 p1, 0x0

    .line 356
    :goto_8
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 358
    add-int/lit8 v1, p1, 0x1

    add-int/2addr p1, p3

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p2, p1

    move p1, v1

    goto :goto_8

    .line 360
    :cond_1e
    return-void
.end method

.method private blacklist parseIPv4Mask(Ljava/lang/String;[BI)V
    .registers 9

    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 345
    const/4 v0, 0x0

    :goto_5
    if-eq v0, p1, :cond_1a

    .line 347
    div-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p3

    aget-byte v2, p2, v1

    rem-int/lit8 v3, v0, 0x8

    rsub-int/lit8 v3, v3, 0x7

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 349
    :cond_1a
    return-void
.end method

.method private blacklist parseIPv6(Ljava/lang/String;)[I
    .registers 13

    .line 385
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ":"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 386
    nop

    .line 387
    const/16 v3, 0x8

    new-array v4, v3, [I

    .line 389
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_1f

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v7, :cond_1f

    .line 391
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 394
    :cond_1f
    const/4 p1, -0x1

    move v2, v5

    .line 396
    :goto_21
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 398
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 400
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 402
    nop

    .line 403
    add-int/lit8 p1, v2, 0x1

    aput v5, v4, v2

    move v10, v2

    move v2, p1

    move p1, v10

    goto :goto_8a

    .line 407
    :cond_3a
    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_57

    .line 409
    add-int/lit8 v7, v2, 0x1

    const/16 v8, 0x10

    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v4, v2

    .line 410
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 412
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 423
    :cond_55
    move v2, v7

    goto :goto_8a

    .line 417
    :cond_57
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, "."

    invoke-direct {v7, v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    shl-int/2addr v8, v3

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    or-int/2addr v8, v9

    aput v8, v4, v2

    .line 420
    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    shl-int/2addr v8, v3

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v7, v8

    aput v7, v4, v6

    .line 423
    :goto_8a
    goto :goto_21

    .line 425
    :cond_8b
    if-eq v2, v3, :cond_9b

    .line 427
    sub-int/2addr v2, p1

    rsub-int/lit8 v0, v2, 0x8

    invoke-static {v4, p1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    nop

    :goto_94
    if-eq p1, v0, :cond_9b

    .line 430
    aput v5, v4, p1

    .line 428
    add-int/lit8 p1, p1, 0x1

    goto :goto_94

    .line 434
    :cond_9b
    return-object v4
.end method

.method private blacklist parseMask(Ljava/lang/String;)[I
    .registers 8

    .line 364
    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 365
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 367
    const/4 v1, 0x0

    :goto_9
    if-eq v1, p1, :cond_1c

    .line 369
    div-int/lit8 v2, v1, 0x10

    aget v3, v0, v2

    rem-int/lit8 v4, v1, 0x10

    rsub-int/lit8 v4, v4, 0xf

    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    aput v3, v0, v2

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 371
    :cond_1c
    return-object v0
.end method

.method private blacklist toGeneralNameEncoding(Ljava/lang/String;)[B
    .registers 7

    .line 275
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv6WithNetmask(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x2f

    const/4 v2, 0x0

    if-nez v0, :cond_4d

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_4d

    .line 306
    :cond_10
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv4WithNetmask(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    .line 338
    :cond_1d
    const/4 p1, 0x0

    return-object p1

    .line 308
    :cond_1f
    :goto_1f
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 310
    const/4 v1, 0x4

    if-gez v0, :cond_2c

    .line 312
    new-array v0, v1, [B

    .line 314
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->parseIPv4(Ljava/lang/String;[BI)V

    .line 316
    return-object v0

    .line 320
    :cond_2c
    const/16 v3, 0x8

    new-array v3, v3, [B

    .line 322
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->parseIPv4(Ljava/lang/String;[BI)V

    .line 324
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 325
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_49

    .line 327
    invoke-direct {p0, p1, v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->parseIPv4(Ljava/lang/String;[BI)V

    goto :goto_4c

    .line 331
    :cond_49
    invoke-direct {p0, p1, v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->parseIPv4Mask(Ljava/lang/String;[BI)V

    .line 334
    :goto_4c
    return-object v3

    .line 277
    :cond_4d
    :goto_4d
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 279
    const/16 v1, 0x10

    if-gez v0, :cond_5f

    .line 281
    new-array v0, v1, [B

    .line 282
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->parseIPv6(Ljava/lang/String;)[I

    move-result-object p1

    .line 283
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->copyInts([I[BI)V

    .line 285
    return-object v0

    .line 289
    :cond_5f
    const/16 v3, 0x20

    new-array v3, v3, [B

    .line 290
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->parseIPv6(Ljava/lang/String;)[I

    move-result-object v4

    .line 291
    invoke-direct {p0, v4, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->copyInts([I[BI)V

    .line 292
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 293
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_81

    .line 295
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->parseIPv6(Ljava/lang/String;)[I

    move-result-object p1

    goto :goto_85

    .line 299
    :cond_81
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->parseMask(Ljava/lang/String;)[I

    move-result-object p1

    .line 301
    :goto_85
    invoke-direct {p0, p1, v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->copyInts([I[BI)V

    .line 303
    return-object v3
.end method


# virtual methods
.method public blacklist getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public blacklist getTagNo()I
    .registers 2

    .line 243
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 440
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 442
    :goto_8
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 253
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 255
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 256
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    packed-switch v1, :pswitch_data_40

    .line 268
    :pswitch_14
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3a

    .line 265
    :pswitch_1e
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    goto :goto_3a

    .line 262
    :pswitch_2c
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    nop

    .line 270
    :goto_3a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2c
        :pswitch_14
        :pswitch_1e
        :pswitch_14
        :pswitch_2c
    .end packed-switch
.end method
