.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1BitString.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1String;
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;


# static fields
.field static final blacklist TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

.field private static final blacklist table:[C


# instance fields
.field final blacklist contents:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 18
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    .line 66
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->table:[C

    return-void

    :array_14
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor blacklist <init>(BI)V
    .registers 5

    .line 151
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 152
    const/4 v0, 0x7

    if-gt p2, v0, :cond_15

    if-ltz p2, :cond_15

    .line 157
    int-to-byte p2, p2

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    const/4 p2, 0x1

    aput-byte p1, v0, p2

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 158
    return-void

    .line 154
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor blacklist <init>([BI)V
    .registers 4

    .line 167
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 168
    if-eqz p1, :cond_28

    .line 172
    array-length v0, p1

    if-nez v0, :cond_13

    if-nez p2, :cond_b

    goto :goto_13

    .line 174
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "zero length data with non-zero pad bits"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 176
    :cond_13
    :goto_13
    const/4 v0, 0x7

    if-gt p2, v0, :cond_20

    if-ltz p2, :cond_20

    .line 181
    int-to-byte p2, p2

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->prepend([BB)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 182
    return-void

    .line 178
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_28
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'data\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor blacklist <init>([BZ)V
    .registers 5

    .line 185
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 186
    if-eqz p2, :cond_3a

    .line 188
    if-eqz p1, :cond_32

    .line 192
    array-length p2, p1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2a

    .line 197
    const/4 p2, 0x0

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    .line 198
    if-lez p2, :cond_3a

    .line 200
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_22

    .line 204
    const/4 v0, 0x7

    if-gt p2, v0, :cond_1a

    goto :goto_3a

    .line 206
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "zero length data with non-zero pad bits"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'contents\' cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_32
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'contents\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :cond_3a
    :goto_3a
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 212
    return-void
.end method

.method static blacklist createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 7

    .line 397
    array-length v0, p0

    .line 398
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2f

    .line 403
    const/4 v2, 0x0

    aget-byte v3, p0, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    .line 404
    if-lez v3, :cond_29

    .line 406
    const/4 v5, 0x7

    if-gt v3, v5, :cond_21

    const/4 v5, 0x2

    if-lt v0, v5, :cond_21

    .line 411
    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    .line 412
    shl-int v1, v4, v3

    and-int/2addr v1, v0

    int-to-byte v1, v1

    if-eq v0, v1, :cond_29

    .line 414
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;-><init>([BZ)V

    return-object v0

    .line 408
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid pad bits detected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 418
    :cond_29
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BZ)V

    return-object v0

    .line 400
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "truncated BIT STRING detected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static blacklist getBytes(I)[B
    .registers 6

    .line 124
    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 126
    new-array p0, v0, [B

    return-object p0

    .line 129
    :cond_6
    nop

    .line 130
    const/4 v1, 0x4

    const/4 v2, 0x3

    :goto_9
    const/16 v3, 0xff

    const/4 v4, 0x1

    if-lt v2, v4, :cond_1b

    .line 132
    mul-int/lit8 v4, v2, 0x8

    shl-int v4, v3, v4

    and-int/2addr v4, p0

    if-eqz v4, :cond_16

    .line 134
    goto :goto_1b

    .line 136
    :cond_16
    add-int/lit8 v1, v1, -0x1

    .line 130
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 139
    :cond_1b
    :goto_1b
    new-array v2, v1, [B

    .line 140
    nop

    :goto_1e
    if-ge v0, v1, :cond_2b

    .line 142
    mul-int/lit8 v4, v0, 0x8

    shr-int v4, p0, v4

    and-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 145
    :cond_2b
    return-object v2
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 3

    .line 63
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 4

    .line 33
    if-eqz p0, :cond_68

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    if-eqz v0, :cond_7

    goto :goto_68

    .line 38
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1a

    .line 40
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 41
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    if-eqz v1, :cond_19

    .line 43
    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object v0

    .line 45
    :cond_19
    goto :goto_47

    .line 46
    :cond_1a
    instance-of v0, p0, [B

    if-eqz v0, :cond_47

    .line 50
    :try_start_1e
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_28} :catch_29

    return-object p0

    .line 52
    :catch_29
    move-exception p0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct BIT STRING from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_47
    :goto_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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

    .line 35
    :cond_68
    :goto_68
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object p0
.end method

.method protected static blacklist getPadBits(I)I
    .registers 4

    .line 76
    nop

    .line 77
    const/4 v0, 0x3

    :goto_2
    const/4 v1, 0x0

    if-ltz v0, :cond_18

    .line 83
    if-eqz v0, :cond_10

    .line 85
    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p0, v2

    if-eqz v2, :cond_15

    .line 87
    and-int/lit16 p0, v2, 0xff

    .line 88
    goto :goto_19

    .line 93
    :cond_10
    if-eqz p0, :cond_15

    .line 95
    and-int/lit16 p0, p0, 0xff

    .line 96
    goto :goto_19

    .line 77
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_18
    move p0, v1

    .line 101
    :goto_19
    if-nez p0, :cond_1c

    .line 103
    return v1

    .line 107
    :cond_1c
    const/4 v0, 0x1

    move v1, v0

    .line 109
    :goto_1e
    shl-int/2addr p0, v0

    and-int/lit16 v2, p0, 0xff

    if-eqz v2, :cond_26

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 114
    :cond_26
    rsub-int/lit8 p0, v1, 0x8

    return p0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 9

    .line 346
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 348
    return v1

    .line 351
    :cond_6
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 352
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 354
    array-length v2, v0

    .line 355
    array-length v3, p1

    if-eq v3, v2, :cond_11

    .line 357
    return v1

    .line 359
    :cond_11
    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 361
    return v3

    .line 364
    :cond_15
    sub-int/2addr v2, v3

    .line 365
    move v4, v1

    :goto_17
    if-ge v4, v2, :cond_23

    .line 367
    aget-byte v5, v0, v4

    aget-byte v6, p1, v4

    if-eq v5, v6, :cond_20

    .line 369
    return v1

    .line 365
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 373
    :cond_23
    aget-byte v4, v0, v1

    const/16 v5, 0xff

    and-int/2addr v4, v5

    .line 374
    aget-byte v0, v0, v2

    shl-int v4, v5, v4

    and-int/2addr v0, v4

    int-to-byte v0, v0

    .line 375
    aget-byte p1, p1, v2

    and-int/2addr p1, v4

    int-to-byte p1, p1

    .line 377
    if-ne v0, p1, :cond_35

    move v1, v3

    :cond_35
    return v1
.end method

.method public blacklist getBitStream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public blacklist getBytes()[B
    .registers 6

    .line 304
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 306
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->EMPTY_OCTETS:[B

    return-object v0

    .line 309
    :cond_9
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    const/16 v2, 0xff

    and-int/2addr v0, v2

    .line 310
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v4, v4

    invoke-static {v3, v1, v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 312
    array-length v4, v3

    sub-int/2addr v4, v1

    aget-byte v1, v3, v4

    shl-int v0, v2, v0

    int-to-byte v0, v0

    and-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    .line 313
    return-object v3
.end method

.method public blacklist getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 382
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOctetStream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 222
    if-nez v0, :cond_e

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBitStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 224
    :cond_e
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected octet-aligned bitstring, but found padBits: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getOctets()[B
    .registers 4

    .line 294
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-nez v0, :cond_12

    .line 299
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v1, v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    .line 296
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to get non-octet aligned data from BIT STRING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getPadBits()I
    .registers 3

    .line 318
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public blacklist getString()Ljava/lang/String;
    .registers 7

    .line 245
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getEncoded()[B

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_36

    .line 250
    nop

    .line 252
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 253
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 255
    const/4 v2, 0x0

    :goto_15
    array-length v3, v0

    if-eq v2, v3, :cond_31

    .line 257
    aget-byte v3, v0, v2

    .line 258
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->table:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 259
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->table:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 262
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 247
    :catch_36
    move-exception v0

    .line 249
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error encoding BitString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 328
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v0, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_8

    .line 330
    return v2

    .line 333
    :cond_8
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v3, 0xff

    and-int/2addr v0, v3

    .line 334
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v4, v4

    sub-int/2addr v4, v2

    .line 336
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v2, v2, v4

    shl-int v0, v3, v0

    and-int/2addr v0, v2

    int-to-byte v0, v0

    .line 338
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    invoke-static {v2, v1, v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([BII)I

    move-result v1

    .line 339
    mul-int/lit16 v1, v1, 0x101

    .line 340
    xor-int/2addr v0, v1

    .line 341
    return v0
.end method

.method public blacklist intValue()I
    .registers 9

    .line 270
    nop

    .line 271
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x5

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 272
    const/4 v3, 0x0

    move v4, v1

    move v5, v3

    :goto_e
    const/16 v6, 0xff

    if-ge v4, v0, :cond_20

    .line 274
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v7, v7, v4

    and-int/2addr v6, v7

    add-int/lit8 v7, v4, -0x1

    mul-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 272
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 276
    :cond_20
    if-gt v1, v0, :cond_38

    if-ge v0, v2, :cond_38

    .line 278
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v2, v2, v3

    and-int/2addr v2, v6

    .line 279
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v3, v3, v0

    shl-int v2, v6, v2

    and-int/2addr v2, v3

    int-to-byte v2, v2

    .line 280
    and-int/2addr v2, v6

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    shl-int v0, v2, v0

    or-int/2addr v5, v0

    .line 282
    :cond_38
    return v5
.end method

.method public blacklist parser()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;
    .registers 1

    .line 232
    return-object p0
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 387
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BZ)V

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 392
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;-><init>([BZ)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
