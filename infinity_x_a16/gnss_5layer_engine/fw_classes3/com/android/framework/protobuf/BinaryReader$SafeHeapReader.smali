.class final Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;
.super Lcom/android/framework/protobuf/BinaryReader;
.source "BinaryReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/BinaryReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeHeapReader"
.end annotation


# instance fields
.field private final blacklist buffer:[B

.field private final blacklist bufferIsImmutable:Z

.field private blacklist endGroupTag:I

.field private final blacklist initialPos:I

.field private blacklist limit:I

.field private blacklist pos:I

.field private blacklist tag:I


# direct methods
.method public constructor blacklist <init>(Ljava/nio/ByteBuffer;Z)V
    .registers 4

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader;-><init>(Lcom/android/framework/protobuf/BinaryReader$1;)V

    .line 79
    iput-boolean p2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->bufferIsImmutable:Z

    .line 80
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 81
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iput p2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->initialPos:I

    .line 82
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 83
    return-void
.end method

.method private blacklist isAtEnd()Z
    .registers 3

    .line 86
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private blacklist readByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1602
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-eq v0, v1, :cond_11

    .line 1605
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    aget-byte v0, v0, v1

    return v0

    .line 1603
    :cond_11
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1443
    sget-object v0, Lcom/android/framework/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_a2

    .line 1479
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1477
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1475
    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1473
    :pswitch_26
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1471
    :pswitch_2b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1469
    :pswitch_34
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1467
    :pswitch_3d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1465
    :pswitch_46
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1463
    :pswitch_4f
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readMessage(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1461
    :pswitch_54
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1459
    :pswitch_5d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1457
    :pswitch_66
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 1455
    :pswitch_6f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1453
    :pswitch_78
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1451
    :pswitch_81
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1449
    :pswitch_8a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1447
    :pswitch_93
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    return-object p1

    .line 1445
    :pswitch_98
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_98
        :pswitch_93
        :pswitch_8a
        :pswitch_81
        :pswitch_78
        :pswitch_6f
        :pswitch_66
        :pswitch_5d
        :pswitch_54
        :pswitch_4f
        :pswitch_46
        :pswitch_3d
        :pswitch_34
        :pswitch_2b
        :pswitch_26
        :pswitch_1d
        :pswitch_14
    .end packed-switch
.end method

.method private blacklist readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-interface {p1}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 275
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 276
    invoke-interface {p1, v0}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 277
    return-object v0
.end method

.method private blacklist readLittleEndian32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1609
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1610
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v0

    return v0
.end method

.method private blacklist readLittleEndian32_NoCheck()I
    .registers 5

    .line 1619
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1620
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 1621
    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1622
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method private blacklist readLittleEndian64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1614
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1615
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist readLittleEndian64_NoCheck()J
    .registers 10

    .line 1629
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1630
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 1631
    add-int/lit8 v2, v0, 0x8

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1632
    aget-byte v2, v1, v0

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-interface {p1}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 229
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 230
    invoke-interface {p1, v0}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 231
    return-object v0
.end method

.method private blacklist readVarint32()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1486
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1488
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-eq v1, v2, :cond_8e

    .line 1493
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-ltz v0, :cond_13

    .line 1494
    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1495
    return v0

    .line 1496
    :cond_13
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    sub-int/2addr v1, v2

    const/16 v3, 0x9

    if-ge v1, v3, :cond_20

    .line 1497
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 1498
    :cond_20
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_2e

    .line 1499
    xor-int/lit8 v0, v0, -0x80

    goto :goto_8b

    .line 1500
    :cond_2e
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v2, v3, 0x1

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3d

    .line 1501
    xor-int/lit16 v0, v0, 0x3f80

    move v3, v2

    goto :goto_8b

    .line 1502
    :cond_3d
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_4d

    .line 1503
    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_8b

    .line 1505
    :cond_4d
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v2, v3, 0x1

    aget-byte v1, v1, v3

    .line 1506
    shl-int/lit8 v3, v1, 0x1c

    xor-int/2addr v0, v3

    .line 1507
    const v3, 0xfe03f80

    xor-int/2addr v0, v3

    .line 1508
    if-gez v1, :cond_8a

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    if-gez v1, :cond_8b

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v2, v3, 0x1

    aget-byte v1, v1, v3

    if-gez v1, :cond_8a

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    if-gez v1, :cond_8b

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v2, v3, 0x1

    aget-byte v1, v1, v3

    if-gez v1, :cond_8a

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    if-ltz v1, :cond_85

    goto :goto_8b

    .line 1514
    :cond_85
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1508
    :cond_8a
    move v3, v2

    .line 1517
    :cond_8b
    :goto_8b
    iput v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1518
    return v0

    .line 1489
    :cond_8e
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist readVarint64SlowPath()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1590
    nop

    .line 1591
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    const/16 v3, 0x40

    if-ge v2, v3, :cond_19

    .line 1592
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readByte()B

    move-result v3

    .line 1593
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 1594
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_16

    .line 1595
    return-wide v0

    .line 1591
    :cond_16
    add-int/lit8 v2, v2, 0x7

    goto :goto_4

    .line 1598
    :cond_19
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist requireBytes(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1686
    if-ltz p1, :cond_a

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_a

    .line 1689
    return-void

    .line 1687
    :cond_a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private blacklist requirePosition(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1714
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ne v0, p1, :cond_5

    .line 1717
    return-void

    .line 1715
    :cond_5
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private blacklist requireWireType(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1692
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-ne v0, p1, :cond_9

    .line 1695
    return-void

    .line 1693
    :cond_9
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method private blacklist skipBytes(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1666
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1668
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1669
    return-void
.end method

.method private blacklist skipGroup()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1672
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 1673
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 1675
    :cond_f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->getFieldNumber()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1f

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1676
    nop

    .line 1679
    :cond_1f
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-ne v1, v2, :cond_28

    .line 1682
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 1683
    return-void

    .line 1680
    :cond_28
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist skipVarint()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1643
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1d

    .line 1644
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 1645
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1646
    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_1d

    .line 1647
    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v0, v2

    if-ltz v2, :cond_19

    .line 1648
    iput v4, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1649
    return-void

    .line 1646
    :cond_19
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_e

    .line 1653
    :cond_1d
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipVarintSlowPath()V

    .line 1654
    return-void
.end method

.method private blacklist skipVarintSlowPath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1657
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 1658
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readByte()B

    move-result v1

    if-ltz v1, :cond_c

    .line 1659
    return-void

    .line 1657
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1662
    :cond_f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist verifyPackedFixed32Length(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1706
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1707
    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_8

    .line 1711
    return-void

    .line 1709
    :cond_8
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private blacklist verifyPackedFixed64Length(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1698
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1699
    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_8

    .line 1703
    return-void

    .line 1701
    :cond_8
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public blacklist getFieldNumber()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_a

    .line 97
    return v1

    .line 99
    :cond_a
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 100
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-ne v0, v2, :cond_17

    .line 101
    return v1

    .line 103
    :cond_17
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 108
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    return v0
.end method

.method public blacklist getTotalBytesRead()I
    .registers 3

    .line 91
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->initialPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 284
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 287
    :try_start_f
    invoke-interface {p2, p1, p0, p3}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 288
    iget p1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget p2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_21

    if-ne p1, p2, :cond_1c

    .line 293
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 294
    nop

    .line 295
    return-void

    .line 289
    :cond_1c
    :try_start_1c
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_21

    .line 293
    :catchall_21
    move-exception p1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 294
    throw p1
.end method

.method public blacklist mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 238
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 241
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 242
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    .line 243
    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 246
    :try_start_e
    invoke-interface {p2, p1, p0, p3}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 247
    iget p1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_1e

    if-ne p1, v2, :cond_19

    .line 252
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 253
    nop

    .line 254
    return-void

    .line 248
    :cond_19
    :try_start_19
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_1e

    .line 252
    :catchall_1e
    move-exception p1

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 253
    throw p1
.end method

.method public blacklist readBool()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 183
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public blacklist readBoolList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 800
    instance-of v0, p1, Lcom/android/framework/protobuf/BooleanArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4f

    .line 801
    check-cast p1, Lcom/android/framework/protobuf/BooleanArrayList;

    .line 802
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_9e

    .line 828
    :pswitch_11
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 804
    :pswitch_16
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 805
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v3, v0

    .line 806
    :goto_1d
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v3, :cond_2e

    .line 807
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    if-eqz v0, :cond_29

    move v0, v1

    goto :goto_2a

    :cond_29
    move v0, v2

    :goto_2a
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    goto :goto_1d

    .line 809
    :cond_2e
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 810
    nop

    .line 830
    goto :goto_7d

    .line 813
    :goto_33
    :pswitch_33
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 815
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 816
    return-void

    .line 818
    :cond_41
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 819
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 820
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_4e

    .line 823
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 824
    return-void

    .line 826
    :cond_4e
    goto :goto_33

    .line 831
    :cond_4f
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_a8

    .line 857
    :pswitch_58
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 833
    :pswitch_5d
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 834
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v3, v0

    .line 835
    :goto_64
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v3, :cond_79

    .line 836
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    if-eqz v0, :cond_70

    move v0, v1

    goto :goto_71

    :cond_70
    move v0, v2

    :goto_71
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 838
    :cond_79
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 839
    nop

    .line 860
    :goto_7d
    return-void

    .line 842
    :goto_7e
    :pswitch_7e
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 845
    return-void

    .line 847
    :cond_90
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 848
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 849
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_9d

    .line 852
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 853
    return-void

    .line 855
    :cond_9d
    goto :goto_7e

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_33
        :pswitch_11
        :pswitch_16
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_58
        :pswitch_5d
    .end packed-switch
.end method

.method public blacklist readBytes()Lcom/android/framework/protobuf/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 300
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 301
    if-nez v0, :cond_d

    .line 302
    sget-object v0, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    return-object v0

    .line 305
    :cond_d
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 307
    iget-boolean v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->bufferIsImmutable:Z

    if-eqz v1, :cond_1d

    .line 308
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-static {v1, v2, v0}, Lcom/android/framework/protobuf/ByteString;->wrap([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    goto :goto_25

    .line 309
    :cond_1d
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-static {v1, v2, v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    .line 310
    :goto_25
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 311
    return-object v1
.end method

.method public blacklist readBytesList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 984
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 989
    :goto_9
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 992
    return-void

    .line 994
    :cond_17
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 995
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 996
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_24

    .line 999
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1000
    return-void

    .line 1002
    :cond_24
    goto :goto_9

    .line 985
    :cond_25
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 141
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readDoubleList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    instance-of v0, p1, Lcom/android/framework/protobuf/DoubleArrayList;

    if-eqz v0, :cond_4b

    .line 353
    check-cast p1, Lcom/android/framework/protobuf/DoubleArrayList;

    .line 354
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_98

    .line 380
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 356
    :pswitch_14
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 357
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 358
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 359
    :goto_1e
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_2e

    .line 360
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    goto :goto_1e

    .line 382
    :cond_2e
    goto :goto_77

    .line 365
    :goto_2f
    :pswitch_2f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    .line 367
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 368
    return-void

    .line 370
    :cond_3d
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 371
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 372
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_4a

    .line 375
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 376
    return-void

    .line 378
    :cond_4a
    goto :goto_2f

    .line 383
    :cond_4b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_a0

    .line 409
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 385
    :pswitch_59
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 386
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 387
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 388
    :goto_63
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_77

    .line 389
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    .line 412
    :cond_77
    :goto_77
    return-void

    .line 394
    :goto_78
    :pswitch_78
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 397
    return-void

    .line 399
    :cond_8a
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 400
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 401
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_97

    .line 404
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 405
    return-void

    .line 407
    :cond_97
    goto :goto_78

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_14
    .end packed-switch

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_78
        :pswitch_59
    .end packed-switch
.end method

.method public blacklist readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 323
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readEnumList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1069
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_44

    .line 1070
    check-cast p1, Lcom/android/framework/protobuf/IntArrayList;

    .line 1071
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_8a

    .line 1096
    :pswitch_f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1073
    :pswitch_14
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1074
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1075
    :goto_1b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_27

    .line 1076
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_1b

    .line 1098
    :cond_27
    goto :goto_69

    .line 1081
    :goto_28
    :pswitch_28
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 1083
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1084
    return-void

    .line 1086
    :cond_36
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1087
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1088
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_43

    .line 1091
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1092
    return-void

    .line 1094
    :cond_43
    goto :goto_28

    .line 1099
    :cond_44
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_94

    .line 1124
    :pswitch_4d
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1101
    :pswitch_52
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1102
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1103
    :goto_59
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_69

    .line 1104
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 1127
    :cond_69
    :goto_69
    return-void

    .line 1109
    :goto_6a
    :pswitch_6a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 1112
    return-void

    .line 1114
    :cond_7c
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1115
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1116
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_89

    .line 1119
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1120
    return-void

    .line 1122
    :cond_89
    goto :goto_6a

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_28
        :pswitch_f
        :pswitch_14
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_4d
        :pswitch_52
    .end packed-switch
.end method

.method public blacklist readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 177
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    return v0
.end method

.method public blacklist readFixed32List(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 736
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_47

    .line 737
    check-cast p1, Lcom/android/framework/protobuf/IntArrayList;

    .line 738
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_90

    .line 764
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 749
    :goto_14
    :sswitch_14
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 751
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 752
    return-void

    .line 754
    :cond_22
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 755
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 756
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_2f

    .line 759
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 760
    return-void

    .line 762
    :cond_2f
    goto :goto_14

    .line 740
    :sswitch_30
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 741
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 742
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 743
    :goto_3a
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_46

    .line 744
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_3a

    .line 766
    :cond_46
    goto :goto_8f

    .line 767
    :cond_47
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_9a

    .line 793
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 778
    :goto_55
    :sswitch_55
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 781
    return-void

    .line 783
    :cond_67
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 784
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 785
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_74

    .line 788
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 789
    return-void

    .line 791
    :cond_74
    goto :goto_55

    .line 769
    :sswitch_75
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 770
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 771
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 772
    :goto_7f
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_8f

    .line 773
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    .line 796
    :cond_8f
    :goto_8f
    return-void

    :sswitch_data_90
    .sparse-switch
        0x2 -> :sswitch_30
        0x5 -> :sswitch_14
    .end sparse-switch

    :sswitch_data_9a
    .sparse-switch
        0x2 -> :sswitch_75
        0x5 -> :sswitch_55
    .end sparse-switch
.end method

.method public blacklist readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 171
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readFixed64List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 672
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_47

    .line 673
    check-cast p1, Lcom/android/framework/protobuf/LongArrayList;

    .line 674
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_90

    .line 700
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 676
    :pswitch_14
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 677
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 678
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 679
    :goto_1e
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_2a

    .line 680
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1e

    .line 702
    :cond_2a
    goto :goto_6f

    .line 685
    :goto_2b
    :pswitch_2b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 687
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 688
    return-void

    .line 690
    :cond_39
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 691
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 692
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_46

    .line 695
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 696
    return-void

    .line 698
    :cond_46
    goto :goto_2b

    .line 703
    :cond_47
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_98

    .line 729
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 705
    :pswitch_55
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 706
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 707
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 708
    :goto_5f
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_6f

    .line 709
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 732
    :cond_6f
    :goto_6f
    return-void

    .line 714
    :goto_70
    :pswitch_70
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 717
    return-void

    .line 719
    :cond_82
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 720
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 721
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_8f

    .line 724
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 725
    return-void

    .line 727
    :cond_8f
    goto :goto_70

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_14
    .end packed-switch

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_70
        :pswitch_55
    .end packed-switch
.end method

.method public blacklist readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 147
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public blacklist readFloatList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    instance-of v0, p1, Lcom/android/framework/protobuf/FloatArrayList;

    if-eqz v0, :cond_4b

    .line 417
    check-cast p1, Lcom/android/framework/protobuf/FloatArrayList;

    .line 418
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_98

    .line 444
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 429
    :goto_14
    :sswitch_14
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    .line 431
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 432
    return-void

    .line 434
    :cond_22
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 435
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 436
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_2f

    .line 439
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 440
    return-void

    .line 442
    :cond_2f
    goto :goto_14

    .line 420
    :sswitch_30
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 421
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 422
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 423
    :goto_3a
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_4a

    .line 424
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    goto :goto_3a

    .line 446
    :cond_4a
    goto :goto_97

    .line 447
    :cond_4b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_a2

    .line 473
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 458
    :goto_59
    :sswitch_59
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 461
    return-void

    .line 463
    :cond_6b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 464
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 465
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_78

    .line 468
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 469
    return-void

    .line 471
    :cond_78
    goto :goto_59

    .line 449
    :sswitch_79
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 450
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 451
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 452
    :goto_83
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_97

    .line 453
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 476
    :cond_97
    :goto_97
    return-void

    :sswitch_data_98
    .sparse-switch
        0x2 -> :sswitch_30
        0x5 -> :sswitch_14
    .end sparse-switch

    :sswitch_data_a2
    .sparse-switch
        0x2 -> :sswitch_79
        0x5 -> :sswitch_59
    .end sparse-switch
.end method

.method public blacklist readGroup(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 261
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist readGroupBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist readGroupList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 961
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    .line 964
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 966
    :goto_b
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 969
    return-void

    .line 971
    :cond_19
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 972
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 973
    if-eq v2, v0, :cond_24

    .line 976
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 977
    return-void

    .line 979
    :cond_24
    goto :goto_b

    .line 962
    :cond_25
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist readGroupList(Ljava/util/List;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 952
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object p2

    .line 953
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readGroupList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 954
    return-void
.end method

.method public blacklist readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 165
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readInt32List(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_48

    .line 609
    check-cast p1, Lcom/android/framework/protobuf/IntArrayList;

    .line 610
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_92

    .line 636
    :pswitch_f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 612
    :pswitch_14
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 613
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 614
    :goto_1b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_27

    .line 615
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_1b

    .line 617
    :cond_27
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 618
    nop

    .line 638
    goto :goto_71

    .line 621
    :goto_2c
    :pswitch_2c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 623
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 624
    return-void

    .line 626
    :cond_3a
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 627
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 628
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_47

    .line 631
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 632
    return-void

    .line 634
    :cond_47
    goto :goto_2c

    .line 639
    :cond_48
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_9c

    .line 665
    :pswitch_51
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 641
    :pswitch_56
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 642
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 643
    :goto_5d
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_6d

    .line 644
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 646
    :cond_6d
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 647
    nop

    .line 668
    :goto_71
    return-void

    .line 650
    :goto_72
    :pswitch_72
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 653
    return-void

    .line 655
    :cond_84
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 656
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 657
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_91

    .line 660
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 661
    return-void

    .line 663
    :cond_91
    goto :goto_72

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_f
        :pswitch_14
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_72
        :pswitch_51
        :pswitch_56
    .end packed-switch
.end method

.method public blacklist readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 159
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readInt64List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_48

    .line 545
    check-cast p1, Lcom/android/framework/protobuf/LongArrayList;

    .line 546
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_92

    .line 572
    :pswitch_f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 548
    :pswitch_14
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 549
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 550
    :goto_1b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_27

    .line 551
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1b

    .line 553
    :cond_27
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 554
    nop

    .line 574
    goto :goto_71

    .line 557
    :goto_2c
    :pswitch_2c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 559
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 560
    return-void

    .line 562
    :cond_3a
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 563
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 564
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_47

    .line 567
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 568
    return-void

    .line 570
    :cond_47
    goto :goto_2c

    .line 575
    :cond_48
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_9c

    .line 601
    :pswitch_51
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 577
    :pswitch_56
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 578
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 579
    :goto_5d
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_6d

    .line 580
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 582
    :cond_6d
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 583
    nop

    .line 604
    :goto_71
    return-void

    .line 586
    :goto_72
    :pswitch_72
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 589
    return-void

    .line 591
    :cond_84
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 592
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 593
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_91

    .line 596
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 597
    return-void

    .line 599
    :cond_91
    goto :goto_72

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_f
        :pswitch_14
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_72
        :pswitch_51
        :pswitch_56
    .end packed-switch
.end method

.method public blacklist readMap(Ljava/util/Map;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1388
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 1389
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1390
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1393
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1394
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    .line 1395
    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1398
    :try_start_12
    iget-object v0, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 1399
    iget-object v2, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1401
    :goto_16
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->getFieldNumber()I

    move-result v3

    .line 1402
    const v4, 0x7fffffff

    if-ne v3, v4, :cond_27

    .line 1403
    nop

    .line 1431
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_5e

    .line 1434
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1435
    nop

    .line 1436
    return-void

    .line 1406
    :cond_27
    const-string v4, "Unable to parse map entry."

    packed-switch v3, :pswitch_data_62

    .line 1419
    :try_start_2c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v3

    goto :goto_48

    .line 1411
    :pswitch_31
    iget-object v3, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    iget-object v5, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1415
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 1413
    invoke-direct {p0, v3, v5, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    .line 1417
    goto :goto_4a

    .line 1408
    :pswitch_3e
    iget-object v3, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5, v5}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    .line 1409
    goto :goto_4a

    .line 1424
    :catch_46
    move-exception v3

    goto :goto_51

    .line 1419
    :goto_48
    if-eqz v3, :cond_4b

    .line 1429
    :goto_4a
    goto :goto_57

    .line 1420
    :cond_4b
    new-instance v3, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {v3, v4}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_51
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2c .. :try_end_51} :catch_46
    .catchall {:try_start_2c .. :try_end_51} :catchall_5e

    .line 1426
    :goto_51
    :try_start_51
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 1430
    :goto_57
    goto :goto_16

    .line 1427
    :cond_58
    new-instance p1, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, v4}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5e
    .catchall {:try_start_51 .. :try_end_5e} :catchall_5e

    .line 1434
    :catchall_5e
    move-exception p1

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1435
    throw p1

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_31
    .end packed-switch
.end method

.method public blacklist readMessage(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 216
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist readMessageBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist readMessageList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 926
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 929
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 931
    :goto_b
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 934
    return-void

    .line 936
    :cond_19
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 937
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 938
    if-eq v2, v0, :cond_24

    .line 941
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 942
    return-void

    .line 944
    :cond_24
    goto :goto_b

    .line 927
    :cond_25
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist readMessageList(Ljava/util/List;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 918
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object p2

    .line 919
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readMessageList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 920
    return-void
.end method

.method public blacklist readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 329
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    return v0
.end method

.method public blacklist readSFixed32List(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1131
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_47

    .line 1132
    check-cast p1, Lcom/android/framework/protobuf/IntArrayList;

    .line 1133
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_90

    .line 1159
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1144
    :goto_14
    :sswitch_14
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 1146
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1147
    return-void

    .line 1149
    :cond_22
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1150
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1151
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_2f

    .line 1154
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1155
    return-void

    .line 1157
    :cond_2f
    goto :goto_14

    .line 1135
    :sswitch_30
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1136
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 1137
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1138
    :goto_3a
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_46

    .line 1139
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_3a

    .line 1161
    :cond_46
    goto :goto_8f

    .line 1162
    :cond_47
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_9a

    .line 1188
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1173
    :goto_55
    :sswitch_55
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1176
    return-void

    .line 1178
    :cond_67
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1179
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1180
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_74

    .line 1183
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1184
    return-void

    .line 1186
    :cond_74
    goto :goto_55

    .line 1164
    :sswitch_75
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1165
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 1166
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1167
    :goto_7f
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_8f

    .line 1168
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    .line 1191
    :cond_8f
    :goto_8f
    return-void

    :sswitch_data_90
    .sparse-switch
        0x2 -> :sswitch_30
        0x5 -> :sswitch_14
    .end sparse-switch

    :sswitch_data_9a
    .sparse-switch
        0x2 -> :sswitch_75
        0x5 -> :sswitch_55
    .end sparse-switch
.end method

.method public blacklist readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 335
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readSFixed64List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1195
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_47

    .line 1196
    check-cast p1, Lcom/android/framework/protobuf/LongArrayList;

    .line 1197
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_90

    .line 1223
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1199
    :pswitch_14
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1200
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 1201
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1202
    :goto_1e
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_2a

    .line 1203
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1e

    .line 1225
    :cond_2a
    goto :goto_6f

    .line 1208
    :goto_2b
    :pswitch_2b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 1210
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1211
    return-void

    .line 1213
    :cond_39
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1214
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1215
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_46

    .line 1218
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1219
    return-void

    .line 1221
    :cond_46
    goto :goto_2b

    .line 1226
    :cond_47
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_98

    .line 1252
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1228
    :pswitch_55
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1229
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 1230
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1231
    :goto_5f
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_6f

    .line 1232
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 1255
    :cond_6f
    :goto_6f
    return-void

    .line 1237
    :goto_70
    :pswitch_70
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1239
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1240
    return-void

    .line 1242
    :cond_82
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1243
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1244
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_8f

    .line 1247
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1248
    return-void

    .line 1250
    :cond_8f
    goto :goto_70

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_14
    .end packed-switch

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_70
        :pswitch_55
    .end packed-switch
.end method

.method public blacklist readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 341
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public blacklist readSInt32List(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1259
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_48

    .line 1260
    check-cast p1, Lcom/android/framework/protobuf/IntArrayList;

    .line 1261
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_92

    .line 1286
    :pswitch_f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1263
    :pswitch_14
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1264
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1265
    :goto_1b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_2b

    .line 1266
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_1b

    .line 1288
    :cond_2b
    goto :goto_71

    .line 1271
    :goto_2c
    :pswitch_2c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 1273
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1274
    return-void

    .line 1276
    :cond_3a
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1277
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1278
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_47

    .line 1281
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1282
    return-void

    .line 1284
    :cond_47
    goto :goto_2c

    .line 1289
    :cond_48
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_9c

    .line 1314
    :pswitch_51
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1291
    :pswitch_56
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1292
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1293
    :goto_5d
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_71

    .line 1294
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 1317
    :cond_71
    :goto_71
    return-void

    .line 1299
    :goto_72
    :pswitch_72
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1301
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 1302
    return-void

    .line 1304
    :cond_84
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1305
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1306
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_91

    .line 1309
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1310
    return-void

    .line 1312
    :cond_91
    goto :goto_72

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_f
        :pswitch_14
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_72
        :pswitch_51
        :pswitch_56
    .end packed-switch
.end method

.method public blacklist readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 347
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readSInt64List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1321
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_48

    .line 1322
    check-cast p1, Lcom/android/framework/protobuf/LongArrayList;

    .line 1323
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_92

    .line 1348
    :pswitch_f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1325
    :pswitch_14
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1326
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1327
    :goto_1b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_2b

    .line 1328
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1b

    .line 1350
    :cond_2b
    goto :goto_71

    .line 1333
    :goto_2c
    :pswitch_2c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 1335
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1336
    return-void

    .line 1338
    :cond_3a
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1339
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1340
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_47

    .line 1343
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1344
    return-void

    .line 1346
    :cond_47
    goto :goto_2c

    .line 1351
    :cond_48
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_9c

    .line 1376
    :pswitch_51
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1353
    :pswitch_56
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1354
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1355
    :goto_5d
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_71

    .line 1356
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 1379
    :cond_71
    :goto_71
    return-void

    .line 1361
    :goto_72
    :pswitch_72
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1363
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 1364
    return-void

    .line 1366
    :cond_84
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1367
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1368
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_91

    .line 1371
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1372
    return-void

    .line 1374
    :cond_91
    goto :goto_72

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_f
        :pswitch_14
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_72
        :pswitch_51
        :pswitch_56
    .end packed-switch
.end method

.method public blacklist readString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readStringInternal(Z)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 198
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 199
    if-nez v0, :cond_d

    .line 200
    const-string p1, ""

    return-object p1

    .line 203
    :cond_d
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 204
    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_25

    .line 205
    :cond_20
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 207
    :cond_25
    :goto_25
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sget-object v3, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 208
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 209
    return-object p1
.end method

.method public blacklist readStringList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 864
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringListInternal(Ljava/util/List;Z)V

    .line 865
    return-void
.end method

.method public blacklist readStringListInternal(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 874
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4a

    .line 878
    instance-of v0, p1, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v0, :cond_2e

    if-nez p2, :cond_2e

    .line 879
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LazyStringList;

    .line 881
    :goto_12
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/LazyStringList;->add(Lcom/android/framework/protobuf/ByteString;)V

    .line 883
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 884
    return-void

    .line 886
    :cond_20
    iget p1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 887
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result p2

    .line 888
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq p2, v1, :cond_2d

    .line 891
    iput p1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 892
    return-void

    .line 894
    :cond_2d
    goto :goto_12

    .line 897
    :cond_2e
    :goto_2e
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 900
    return-void

    .line 902
    :cond_3c
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 903
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 904
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_49

    .line 907
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 908
    return-void

    .line 910
    :cond_49
    goto :goto_2e

    .line 875
    :cond_4a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist readStringListRequireUtf8(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 869
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringListInternal(Ljava/util/List;Z)V

    .line 870
    return-void
.end method

.method public blacklist readStringRequireUtf8()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 317
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readUInt32List(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1007
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_44

    .line 1008
    check-cast p1, Lcom/android/framework/protobuf/IntArrayList;

    .line 1009
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_8a

    .line 1034
    :pswitch_f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1011
    :pswitch_14
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1012
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1013
    :goto_1b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_27

    .line 1014
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_1b

    .line 1036
    :cond_27
    goto :goto_69

    .line 1019
    :goto_28
    :pswitch_28
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 1021
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1022
    return-void

    .line 1024
    :cond_36
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1025
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1026
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_43

    .line 1029
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1030
    return-void

    .line 1032
    :cond_43
    goto :goto_28

    .line 1037
    :cond_44
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_94

    .line 1062
    :pswitch_4d
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1039
    :pswitch_52
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1040
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1041
    :goto_59
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_69

    .line 1042
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 1065
    :cond_69
    :goto_69
    return-void

    .line 1047
    :goto_6a
    :pswitch_6a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 1050
    return-void

    .line 1052
    :cond_7c
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1053
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1054
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_89

    .line 1057
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1058
    return-void

    .line 1060
    :cond_89
    goto :goto_6a

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_28
        :pswitch_f
        :pswitch_14
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_4d
        :pswitch_52
    .end packed-switch
.end method

.method public blacklist readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 153
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readUInt64List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_48

    .line 481
    check-cast p1, Lcom/android/framework/protobuf/LongArrayList;

    .line 482
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_92

    .line 508
    :pswitch_f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 484
    :pswitch_14
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 485
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 486
    :goto_1b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_27

    .line 487
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1b

    .line 489
    :cond_27
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 490
    nop

    .line 510
    goto :goto_71

    .line 493
    :goto_2c
    :pswitch_2c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 495
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 496
    return-void

    .line 498
    :cond_3a
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 499
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 500
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_47

    .line 503
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 504
    return-void

    .line 506
    :cond_47
    goto :goto_2c

    .line 511
    :cond_48
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_9c

    .line 537
    :pswitch_51
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 513
    :pswitch_56
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 514
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 515
    :goto_5d
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v0, v1, :cond_6d

    .line 516
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 518
    :cond_6d
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 519
    nop

    .line 540
    :goto_71
    return-void

    .line 522
    :goto_72
    :pswitch_72
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 525
    return-void

    .line 527
    :cond_84
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 528
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 529
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_91

    .line 532
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 533
    return-void

    .line 535
    :cond_91
    goto :goto_72

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_f
        :pswitch_14
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_72
        :pswitch_51
        :pswitch_56
    .end packed-switch
.end method

.method public blacklist readVarint64()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1533
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1535
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-eq v1, v0, :cond_cf

    .line 1539
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 1542
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-ltz v0, :cond_12

    .line 1543
    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1544
    int-to-long v0, v0

    return-wide v0

    .line 1545
    :cond_12
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    sub-int/2addr v3, v2

    const/16 v4, 0x9

    if-ge v3, v4, :cond_1e

    .line 1546
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    .line 1547
    :cond_1e
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v0, v2

    if-gez v0, :cond_2c

    .line 1548
    xor-int/lit8 v0, v0, -0x80

    int-to-long v0, v0

    goto/16 :goto_cc

    .line 1549
    :cond_2c
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0xe

    xor-int/2addr v0, v3

    if-ltz v0, :cond_3b

    .line 1550
    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move v3, v2

    goto/16 :goto_cc

    .line 1551
    :cond_3b
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    if-gez v0, :cond_4b

    .line 1552
    const v1, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    goto/16 :goto_cc

    .line 1553
    :cond_4b
    int-to-long v4, v0

    add-int/lit8 v0, v3, 0x1

    aget-byte v2, v1, v3

    int-to-long v2, v2

    const/16 v6, 0x1c

    shl-long/2addr v2, v6

    xor-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_64

    .line 1554
    const-wide/32 v4, 0xfe03f80

    xor-long v1, v2, v4

    move v3, v0

    move-wide v0, v1

    goto/16 :goto_cc

    .line 1555
    :cond_64
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-gez v0, :cond_79

    .line 1556
    const-wide v0, -0x7f01fc080L

    xor-long/2addr v0, v2

    move v3, v6

    goto :goto_cc

    .line 1557
    :cond_79
    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-ltz v6, :cond_90

    .line 1558
    const-wide v4, 0x3f80fe03f80L

    xor-long v1, v2, v4

    move v3, v0

    move-wide v0, v1

    goto :goto_cc

    .line 1559
    :cond_90
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-gez v0, :cond_a5

    .line 1560
    const-wide v0, -0x1fc07f01fc080L

    xor-long/2addr v0, v2

    move v3, v6

    goto :goto_cc

    .line 1569
    :cond_a5
    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    .line 1570
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v2, v6

    .line 1579
    cmp-long v6, v2, v4

    if-gez v6, :cond_c9

    .line 1580
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v0, v0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_c4

    move-wide v0, v2

    move v3, v6

    goto :goto_cc

    .line 1581
    :cond_c4
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1579
    :cond_c9
    move-wide v9, v2

    move v3, v0

    move-wide v0, v9

    .line 1585
    :goto_cc
    iput v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1586
    return-wide v0

    .line 1536
    :cond_cf
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist skipField()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_37

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-ne v0, v1, :cond_d

    goto :goto_37

    .line 117
    :cond_d
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_3a

    .line 134
    :pswitch_17
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 128
    :pswitch_1c
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    .line 129
    return v1

    .line 131
    :pswitch_21
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipGroup()V

    .line 132
    return v1

    .line 125
    :pswitch_25
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    .line 126
    return v1

    .line 122
    :pswitch_2d
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    .line 123
    return v1

    .line 119
    :pswitch_33
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipVarint()V

    .line 120
    return v1

    .line 114
    :cond_37
    :goto_37
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2d
        :pswitch_25
        :pswitch_21
        :pswitch_17
        :pswitch_1c
    .end packed-switch
.end method
