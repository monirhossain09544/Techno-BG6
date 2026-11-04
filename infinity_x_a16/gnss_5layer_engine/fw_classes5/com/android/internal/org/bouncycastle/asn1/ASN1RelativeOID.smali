.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1RelativeOID.java"


# static fields
.field private static final blacklist LONG_LIMIT:J = 0xffffffffffff80L

.field static final blacklist TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field private blacklist contents:[B

.field private final blacklist identifier:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;Ljava/lang/String;)V
    .registers 5

    .line 84
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 85
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->isValidIdentifier(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    .line 91
    return-void

    .line 87
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "string "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " not a valid OID branch"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5

    .line 70
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 71
    if-eqz p1, :cond_2e

    .line 75
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->isValidIdentifier(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 80
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    .line 81
    return-void

    .line 77
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " not a relative OID"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'identifier\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor blacklist <init>([BZ)V
    .registers 19

    .line 94
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 95
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    nop

    .line 97
    nop

    .line 98
    nop

    .line 100
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v11, v5

    move v8, v7

    const-wide/16 v9, 0x0

    :goto_16
    array-length v12, v1

    if-eq v8, v12, :cond_6b

    .line 102
    aget-byte v12, v1, v8

    and-int/lit16 v12, v12, 0xff

    .line 104
    const-wide v13, 0xffffffffffff80L

    cmp-long v13, v9, v13

    const/16 v14, 0x2e

    const/4 v15, 0x7

    if-gtz v13, :cond_40

    .line 106
    and-int/lit8 v13, v12, 0x7f

    int-to-long v3, v13

    add-long/2addr v9, v3

    .line 107
    and-int/lit16 v3, v12, 0x80

    if-nez v3, :cond_3e

    .line 109
    if-eqz v6, :cond_35

    .line 111
    move v6, v7

    goto :goto_38

    .line 115
    :cond_35
    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    :goto_38
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 119
    const-wide/16 v9, 0x0

    goto :goto_68

    .line 123
    :cond_3e
    shl-long/2addr v9, v15

    goto :goto_68

    .line 128
    :cond_40
    if-nez v11, :cond_46

    .line 130
    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    .line 132
    :cond_46
    and-int/lit8 v3, v12, 0x7f

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 133
    and-int/lit16 v4, v12, 0x80

    if-nez v4, :cond_64

    .line 135
    if-eqz v6, :cond_59

    .line 137
    move v6, v7

    goto :goto_5c

    .line 141
    :cond_59
    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    :goto_5c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 145
    nop

    .line 146
    move-object v11, v5

    const-wide/16 v9, 0x0

    goto :goto_68

    .line 150
    :cond_64
    invoke-virtual {v3, v15}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    .line 100
    :goto_68
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 155
    :cond_6b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    .line 156
    if-eqz p2, :cond_77

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    :cond_77
    iput-object v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->contents:[B

    .line 157
    return-void
.end method

.method static blacklist createPrimitive([BZ)Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;
    .registers 3

    .line 243
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;-><init>([BZ)V

    return-object v0
.end method

.method private blacklist doOutput(Ljava/io/ByteArrayOutputStream;)V
    .registers 6

    .line 212
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;-><init>(Ljava/lang/String;)V

    .line 213
    :goto_7
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 215
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    if-gt v2, v3, :cond_21

    .line 218
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_29

    .line 222
    :cond_21
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    .line 224
    :goto_29
    goto :goto_7

    .line 225
    :cond_2a
    return-void
.end method

.method public static blacklist fromContents([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;
    .registers 2

    .line 26
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->createPrimitive([BZ)Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized blacklist getContents()[B
    .registers 2

    monitor-enter p0

    .line 229
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->contents:[B

    if-nez v0, :cond_13

    .line 231
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 233
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->doOutput(Ljava/io/ByteArrayOutputStream;)V

    .line 235
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->contents:[B

    .line 238
    :cond_13
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->contents:[B
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v0

    .line 228
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;
    .registers 3

    .line 61
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;
    .registers 4

    .line 31
    if-eqz p0, :cond_68

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    if-eqz v0, :cond_7

    goto :goto_68

    .line 35
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1a

    .line 37
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 38
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    if-eqz v1, :cond_19

    .line 40
    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    return-object v0

    .line 42
    :cond_19
    goto :goto_47

    .line 43
    :cond_1a
    instance-of v0, p0, [B

    if-eqz v0, :cond_47

    .line 45
    check-cast p0, [B

    .line 48
    :try_start_20
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_28} :catch_29

    return-object p0

    .line 50
    :catch_29
    move-exception p0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct relative OID from byte[]: "

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

    .line 56
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

    .line 33
    :cond_68
    :goto_68
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    return-object p0
.end method

.method static blacklist isValidIdentifier(Ljava/lang/String;I)Z
    .registers 9

    .line 248
    nop

    .line 250
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 251
    :goto_7
    add-int/lit8 v0, v0, -0x1

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-lt v0, p1, :cond_30

    .line 253
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 255
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_26

    .line 257
    if-eqz v2, :cond_25

    if-le v2, v4, :cond_23

    add-int/lit8 v2, v0, 0x1

    .line 258
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_23

    goto :goto_25

    .line 263
    :cond_23
    move v2, v1

    goto :goto_2e

    .line 260
    :cond_25
    :goto_25
    return v1

    .line 265
    :cond_26
    if-gt v3, v5, :cond_2f

    const/16 v3, 0x39

    if-gt v5, v3, :cond_2f

    .line 267
    add-int/lit8 v2, v2, 0x1

    .line 273
    :goto_2e
    goto :goto_7

    .line 271
    :cond_2f
    return v1

    .line 275
    :cond_30
    if-eqz v2, :cond_3d

    if-le v2, v4, :cond_3c

    add-int/2addr v0, v4

    .line 276
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v3, :cond_3c

    goto :goto_3d

    .line 281
    :cond_3c
    return v4

    .line 278
    :cond_3d
    :goto_3d
    return v1
.end method

.method static blacklist writeField(Ljava/io/ByteArrayOutputStream;J)V
    .registers 8

    .line 286
    const/16 v0, 0x9

    new-array v0, v0, [B

    .line 287
    nop

    .line 288
    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    .line 289
    :goto_d
    const-wide/16 v3, 0x80

    cmp-long v1, p1, v3

    if-ltz v1, :cond_1e

    .line 291
    const/4 v1, 0x7

    shr-long/2addr p1, v1

    .line 292
    add-int/lit8 v2, v2, -0x1

    long-to-int v1, p1

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_d

    .line 294
    :cond_1e
    rsub-int/lit8 p1, v2, 0x9

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 295
    return-void
.end method

.method static blacklist writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .registers 9

    .line 299
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    const/4 v1, 0x7

    div-int/2addr v0, v1

    .line 300
    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 302
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_31

    .line 306
    :cond_f
    nop

    .line 307
    new-array v3, v0, [B

    .line 308
    add-int/lit8 v4, v0, -0x1

    move v5, v4

    :goto_15
    if-ltz v5, :cond_27

    .line 310
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 311
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 308
    add-int/lit8 v5, v5, -0x1

    goto :goto_15

    .line 313
    :cond_27
    aget-byte p1, v3, v4

    and-int/lit8 p1, p1, 0x7f

    int-to-byte p1, p1

    aput-byte p1, v3, v4

    .line 314
    invoke-virtual {p0, v3, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 316
    :goto_31
    return-void
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 3

    .line 181
    if-ne p0, p1, :cond_4

    .line 183
    const/4 p1, 0x1

    return p1

    .line 185
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    if-nez v0, :cond_a

    .line 187
    const/4 p1, 0x0

    return p1

    .line 190
    :cond_a
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    .line 192
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;
    .registers 3

    .line 161
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;Ljava/lang/String;)V

    return-object v0
.end method

.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->getContents()[B

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    .line 203
    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method blacklist encodedLength(Z)I
    .registers 3

    .line 197
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->getContents()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p1

    return p1
.end method

.method public blacklist getId()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
