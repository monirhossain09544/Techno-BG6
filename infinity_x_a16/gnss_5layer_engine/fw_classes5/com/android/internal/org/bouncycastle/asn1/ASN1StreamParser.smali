.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;
.super Ljava/lang/Object;
.source "ASN1StreamParser.java"


# instance fields
.field private final blacklist _in:Ljava/io/InputStream;

.field private final blacklist _limit:I

.field private final blacklist tmpBuffers:[[B


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 20
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 21
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .registers 4

    .line 30
    const/16 v0, 0xb

    new-array v0, v0, [[B

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I[[B)V

    .line 31
    return-void
.end method

.method constructor blacklist <init>(Ljava/io/InputStream;I[[B)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    .line 36
    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    .line 37
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    .line 38
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3

    .line 25
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 26
    return-void
.end method

.method private blacklist set00Check(Z)V
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_d

    .line 272
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    .line 274
    :cond_d
    return-void
.end method


# virtual methods
.method blacklist implParseObject(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->set00Check(Z)V

    .line 61
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-static {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v1

    .line 66
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v1, v4, :cond_24

    const/4 v4, 0x4

    if-eq v1, v4, :cond_24

    const/16 v4, 0x10

    if-eq v1, v4, :cond_24

    const/16 v4, 0x11

    if-eq v1, v4, :cond_24

    const/16 v4, 0x8

    if-ne v1, v4, :cond_22

    goto :goto_24

    :cond_22
    move v4, v0

    goto :goto_25

    :cond_24
    :goto_24
    move v4, v5

    :goto_25
    invoke-static {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;IZ)I

    move-result v2

    .line 70
    if-gez v2, :cond_58

    .line 72
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_50

    .line 77
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 78
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    invoke-direct {v2, v0, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I[[B)V

    .line 80
    and-int/lit16 p1, p1, 0xc0

    .line 81
    if-eqz p1, :cond_4b

    .line 83
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    .line 86
    :cond_4b
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->parseImplicitConstructedIL(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1

    .line 74
    :cond_50
    new-instance p1, Ljava/io/IOException;

    const-string v0, "indefinite-length primitive encoding encountered"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_58
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v6, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v3, v4, v2, v6}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 92
    and-int/lit16 v2, p1, 0xe0

    if-nez v2, :cond_6a

    .line 94
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->parseImplicitPrimitive(ILcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1

    .line 97
    :cond_6a
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getLimit()I

    move-result v4

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    invoke-direct {v2, v3, v4, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I[[B)V

    .line 99
    and-int/lit16 v3, p1, 0xc0

    .line 100
    if-eqz v3, :cond_84

    .line 102
    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_7e

    move v0, v5

    .line 104
    :cond_7e
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;

    invoke-direct {p1, v3, v1, v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;-><init>(IIZLcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    .line 107
    :cond_84
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->parseImplicitConstructedDL(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1
.end method

.method blacklist loadTaggedDL(IIZ)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    if-nez p3, :cond_f

    .line 115
    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast p3, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p3

    .line 116
    invoke-static {p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->createPrimitive(II[B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    .line 119
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p3

    .line 120
    invoke-static {p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->createConstructedDL(IILcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1
.end method

.method blacklist loadTaggedIL(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    .line 126
    invoke-static {p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->createConstructedIL(IILcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1
.end method

.method blacklist parseImplicitConstructedDL(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    sparse-switch p1, :sswitch_data_3e

    .line 147
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown DL object encountered: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :sswitch_20
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DLSetParser;

    invoke-direct {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSetParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    .line 144
    :sswitch_26
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DLSequenceParser;

    invoke-direct {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSequenceParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    .line 137
    :sswitch_2c
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    .line 140
    :sswitch_32
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    .line 135
    :sswitch_38
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/BERBitStringParser;

    invoke-direct {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/BERBitStringParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    :sswitch_data_3e
    .sparse-switch
        0x3 -> :sswitch_38
        0x4 -> :sswitch_32
        0x8 -> :sswitch_2c
        0x10 -> :sswitch_26
        0x11 -> :sswitch_20
    .end sparse-switch
.end method

.method blacklist parseImplicitConstructedIL(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    sparse-switch p1, :sswitch_data_3e

    .line 167
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown BER object encountered: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :sswitch_20
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/BERSetParser;

    invoke-direct {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    .line 163
    :sswitch_26
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    .line 161
    :sswitch_2c
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    .line 158
    :sswitch_32
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    .line 156
    :sswitch_38
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/BERBitStringParser;

    invoke-direct {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/BERBitStringParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    :sswitch_data_3e
    .sparse-switch
        0x3 -> :sswitch_38
        0x4 -> :sswitch_32
        0x8 -> :sswitch_2c
        0x10 -> :sswitch_26
        0x11 -> :sswitch_20
    .end sparse-switch
.end method

.method blacklist parseImplicitPrimitive(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->parseImplicitPrimitive(ILcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1
.end method

.method blacklist parseImplicitPrimitive(ILcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    sparse-switch p1, :sswitch_data_38

    .line 195
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_5} :catch_2f

    goto :goto_2a

    .line 188
    :sswitch_6
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    const-string p2, "sequences must use constructed encoding (see X.690 8.9.1/8.10.1)"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :sswitch_e
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    const-string p2, "sets must use constructed encoding (see X.690 8.11.1/8.12.1)"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :sswitch_16
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    const-string p2, "externals must use constructed encoding (see X.690 8.18)"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 186
    :sswitch_1e
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetStringParser;

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    return-object p1

    .line 182
    :sswitch_24
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DLBitStringParser;

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DLBitStringParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    return-object p1

    .line 195
    :goto_2a
    :try_start_2a
    invoke-static {p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_2e} :catch_2f

    return-object p1

    .line 197
    :catch_2f
    move-exception p1

    .line 199
    new-instance p2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    const-string v0, "corrupted stream detected"

    invoke-direct {p2, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :sswitch_data_38
    .sparse-switch
        0x3 -> :sswitch_24
        0x4 -> :sswitch_1e
        0x8 -> :sswitch_16
        0x10 -> :sswitch_e
        0x11 -> :sswitch_6
    .end sparse-switch
.end method

.method blacklist parseObject(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    if-ltz p1, :cond_32

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_32

    .line 210
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 211
    if-gez v0, :cond_10

    .line 213
    const/4 p1, 0x0

    return-object p1

    .line 216
    :cond_10
    and-int/lit8 v1, v0, -0x21

    if-ne v1, p1, :cond_19

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->implParseObject(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1

    .line 218
    :cond_19
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected identifier encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 207
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid universal tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist parseTaggedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 227
    if-gez v0, :cond_a

    .line 229
    const/4 v0, 0x0

    return-object v0

    .line 232
    :cond_a
    and-int/lit16 v1, v0, 0xc0

    .line 233
    if-eqz v1, :cond_15

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->implParseObject(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    return-object v0

    .line 235
    :cond_15
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    const-string v1, "no tagged object found"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 43
    if-gez v0, :cond_a

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->implParseObject(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method blacklist readVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 245
    if-gez v0, :cond_f

    .line 247
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object v0

    .line 250
    :cond_f
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 253
    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->implParseObject(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 255
    instance-of v2, v0, Lcom/android/internal/org/bouncycastle/asn1/InMemoryRepresentable;

    if-eqz v2, :cond_26

    .line 257
    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/InMemoryRepresentable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/InMemoryRepresentable;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_2d

    .line 261
    :cond_26
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 264
    :goto_2d
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_14

    .line 265
    return-object v1
.end method
