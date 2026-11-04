.class final Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;
.super Lcom/android/framework/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeDirectNioDecoder"
.end annotation


# instance fields
.field private final blacklist address:J

.field private final blacklist buffer:Ljava/nio/ByteBuffer;

.field private blacklist bufferSizeAfterLimit:I

.field private blacklist currentLimit:I

.field private blacklist enableAliasing:Z

.field private final blacklist immutable:Z

.field private blacklist lastTag:I

.field private blacklist limit:J

.field private blacklist pos:J

.field private blacklist startPos:J


# direct methods
.method private constructor blacklist <init>(Ljava/nio/ByteBuffer;Z)V
    .registers 7

    .line 1307
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream;-><init>(Lcom/android/framework/protobuf/CodedInputStream$1;)V

    .line 1301
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 1308
    iput-object p1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    .line 1309
    invoke-static {p1}, Lcom/android/framework/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    .line 1310
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    .line 1311
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1312
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    .line 1313
    iput-boolean p2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    .line 1314
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/nio/ByteBuffer;ZLcom/android/framework/protobuf/CodedInputStream$1;)V
    .registers 4

    .line 1266
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method private blacklist bufferPos(J)I
    .registers 5

    .line 1966
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method static blacklist isSupported()Z
    .registers 1

    .line 1304
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    return v0
.end method

.method private blacklist recomputeBufferSizeAfterLimit()V
    .registers 5

    .line 1950
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    .line 1951
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 1952
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    if-le v0, v1, :cond_20

    .line 1954
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    .line 1955
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    goto :goto_23

    .line 1957
    :cond_20
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    .line 1959
    :goto_23
    return-void
.end method

.method private blacklist remaining()I
    .registers 5

    .line 1962
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private blacklist skipRawVarint()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1711
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_c

    .line 1712
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarintFastPath()V

    goto :goto_f

    .line 1714
    :cond_c
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarintSlowPath()V

    .line 1716
    :goto_f
    return-void
.end method

.method private blacklist skipRawVarintFastPath()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1719
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_16

    .line 1720
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-ltz v1, :cond_13

    .line 1721
    return-void

    .line 1719
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1724
    :cond_16
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist skipRawVarintSlowPath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1728
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 1729
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_c

    .line 1730
    return-void

    .line 1728
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1733
    :cond_f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist slice(JJ)Ljava/nio/ByteBuffer;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1970
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1971
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 1974
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    .line 1976
    :try_start_e
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1977
    invoke-direct {p0, p3, p4}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 1978
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_22} :catch_2b
    .catchall {:try_start_e .. :try_end_22} :catchall_29

    .line 1984
    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1985
    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 1978
    return-object p1

    .line 1984
    :catchall_29
    move-exception p1

    goto :goto_34

    .line 1979
    :catch_2b
    move-exception p1

    .line 1980
    :try_start_2c
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p2

    .line 1981
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1982
    throw p2
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_29

    .line 1984
    :goto_34
    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1985
    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 1986
    throw p1
.end method


# virtual methods
.method public blacklist checkLastTagWas(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1334
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    if-ne v0, p1, :cond_5

    .line 1337
    return-void

    .line 1335
    :cond_5
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public blacklist enableAliasing(Z)V
    .registers 2

    .line 1857
    iput-boolean p1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    .line 1858
    return-void
.end method

.method public blacklist getBytesUntilLimit()I
    .registers 3

    .line 1890
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    .line 1891
    const/4 v0, -0x1

    return v0

    .line 1894
    :cond_9
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getTotalBytesRead()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist getLastTag()I
    .registers 2

    .line 1341
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    return v0
.end method

.method public blacklist getTotalBytesRead()I
    .registers 5

    .line 1904
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public blacklist isAtEnd()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1899
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist popLimit(I)V
    .registers 2

    .line 1884
    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 1885
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recomputeBufferSizeAfterLimit()V

    .line 1886
    return-void
.end method

.method public blacklist pushLimit(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1867
    if-ltz p1, :cond_16

    .line 1870
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getTotalBytesRead()I

    move-result v0

    add-int/2addr p1, v0

    .line 1871
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 1872
    if-gt p1, v0, :cond_11

    .line 1875
    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 1877
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recomputeBufferSizeAfterLimit()V

    .line 1879
    return v0

    .line 1873
    :cond_11
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1868
    :cond_16
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public blacklist readBool()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1461
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist readByteArray()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1603
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist readByteBuffer()Ljava/nio/ByteBuffer;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1608
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1609
    if-lez v0, :cond_38

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_38

    .line 1613
    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    if-nez v1, :cond_24

    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    if-eqz v1, :cond_24

    .line 1614
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1615
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1616
    return-object v0

    .line 1619
    :cond_24
    new-array v5, v0, [B

    .line 1620
    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v8, v0

    const-wide/16 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 1621
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1622
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 1627
    :cond_38
    if-nez v0, :cond_3d

    .line 1628
    sget-object v0, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    .line 1630
    :cond_3d
    if-gez v0, :cond_44

    .line 1631
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1633
    :cond_44
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readBytes()Lcom/android/framework/protobuf/ByteString;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1577
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1578
    if-lez v0, :cond_3c

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_3c

    .line 1579
    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    if-eqz v1, :cond_28

    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    if-eqz v1, :cond_28

    .line 1580
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1581
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1582
    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 1585
    :cond_28
    new-array v3, v0, [B

    .line 1586
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v6, v0

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 1587
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1588
    invoke-static {v3}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 1592
    :cond_3c
    if-nez v0, :cond_41

    .line 1593
    sget-object v0, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    return-object v0

    .line 1595
    :cond_41
    if-gez v0, :cond_48

    .line 1596
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1598
    :cond_48
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1426
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1643
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1456
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public blacklist readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1451
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1431
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public blacklist readGroup(ILcom/android/framework/protobuf/Parser;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">(I",
            "Lcom/android/framework/protobuf/Parser<",
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

    .line 1526
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkRecursionLimit()V

    .line 1527
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1528
    invoke-interface {p2, p0, p3}, Lcom/android/framework/protobuf/Parser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/framework/protobuf/MessageLite;

    .line 1529
    const/4 p3, 0x4

    invoke-static {p1, p3}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1530
    iget p1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1531
    return-object p2
.end method

.method public blacklist readGroup(ILcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1513
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkRecursionLimit()V

    .line 1514
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1515
    invoke-interface {p2, p0, p3}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    .line 1516
    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1517
    iget p1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1518
    return-void
.end method

.method public blacklist readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1446
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1441
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readMessage(Lcom/android/framework/protobuf/Parser;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">(",
            "Lcom/android/framework/protobuf/Parser<",
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

    .line 1561
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1562
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkRecursionLimit()V

    .line 1563
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pushLimit(I)I

    move-result v0

    .line 1564
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1565
    invoke-interface {p1, p0, p2}, Lcom/android/framework/protobuf/Parser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/MessageLite;

    .line 1566
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1567
    iget p2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1568
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getBytesUntilLimit()I

    move-result p2

    if-nez p2, :cond_2b

    .line 1571
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->popLimit(I)V

    .line 1572
    return-object p1

    .line 1569
    :cond_2b
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public blacklist readMessage(Lcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1545
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1546
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkRecursionLimit()V

    .line 1547
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pushLimit(I)I

    move-result v0

    .line 1548
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1549
    invoke-interface {p1, p0, p2}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    .line 1550
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1551
    iget p1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1552
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getBytesUntilLimit()I

    move-result p1

    if-nez p1, :cond_28

    .line 1555
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->popLimit(I)V

    .line 1556
    return-void

    .line 1553
    :cond_28
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public blacklist readRawByte()B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1909
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    .line 1912
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    return v0

    .line 1910
    :cond_14
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readRawBytes(I)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1917
    if-ltz p1, :cond_1d

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_1d

    .line 1918
    new-array v0, p1, [B

    .line 1919
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v5, p1

    add-long/2addr v3, v5

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1920
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1921
    return-object v0

    .line 1924
    :cond_1d
    if-gtz p1, :cond_29

    .line 1925
    if-nez p1, :cond_24

    .line 1926
    sget-object p1, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object p1

    .line 1928
    :cond_24
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1932
    :cond_29
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public blacklist readRawLittleEndian32()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1823
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1825
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_39

    .line 1829
    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1830
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    .line 1831
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const-wide/16 v3, 0x2

    add-long/2addr v3, v0

    .line 1832
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const-wide/16 v3, 0x3

    add-long/2addr v0, v3

    .line 1833
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    .line 1830
    return v0

    .line 1826
    :cond_39
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readRawLittleEndian64()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1838
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1840
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_72

    .line 1844
    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1845
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    .line 1846
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x2

    add-long/2addr v6, v0

    .line 1847
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    .line 1848
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x4

    add-long/2addr v6, v0

    .line 1849
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x5

    add-long/2addr v6, v0

    .line 1850
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x6

    add-long/2addr v6, v0

    .line 1851
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x7

    add-long/2addr v0, v6

    .line 1852
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    .line 1845
    return-wide v0

    .line 1841
    :cond_72
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readRawVarint32()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1673
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1675
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_a

    .line 1676
    goto/16 :goto_86

    .line 1680
    :cond_a
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-ltz v0, :cond_17

    .line 1681
    iput-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1682
    return v0

    .line 1683
    :cond_17
    iget-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v1, v6, v8

    if-gez v1, :cond_21

    .line 1684
    goto :goto_86

    .line 1685
    :cond_21
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_2f

    .line 1686
    xor-int/lit8 v0, v0, -0x80

    goto :goto_91

    .line 1687
    :cond_2f
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3e

    .line 1688
    xor-int/lit16 v0, v0, 0x3f80

    move-wide v6, v4

    goto :goto_91

    .line 1689
    :cond_3e
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_4e

    .line 1690
    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_91

    .line 1692
    :cond_4e
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    .line 1693
    shl-int/lit8 v6, v1, 0x1c

    xor-int/2addr v0, v6

    .line 1694
    const v6, 0xfe03f80

    xor-int/2addr v0, v6

    .line 1695
    if-gez v1, :cond_90

    add-long v6, v4, v2

    .line 1696
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_91

    add-long v4, v6, v2

    .line 1697
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_8e

    add-long v6, v4, v2

    .line 1698
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_91

    add-long v4, v6, v2

    .line 1699
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_8c

    add-long v6, v4, v2

    .line 1700
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_91

    .line 1701
    nop

    .line 1707
    :goto_86
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 1699
    :cond_8c
    move-wide v6, v4

    goto :goto_91

    .line 1697
    :cond_8e
    move-wide v6, v4

    goto :goto_91

    .line 1695
    :cond_90
    move-wide v6, v4

    .line 1704
    :cond_91
    :goto_91
    iput-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1705
    return v0
.end method

.method public blacklist readRawVarint64()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1751
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1753
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_a

    .line 1754
    goto/16 :goto_d4

    .line 1759
    :cond_a
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-ltz v0, :cond_18

    .line 1760
    iput-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1761
    int-to-long v0, v0

    return-wide v0

    .line 1762
    :cond_18
    iget-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v1, v6, v8

    if-gez v1, :cond_23

    .line 1763
    goto/16 :goto_d4

    .line 1764
    :cond_23
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_33

    .line 1765
    xor-int/lit8 v0, v0, -0x80

    int-to-long v0, v0

    goto/16 :goto_dc

    .line 1766
    :cond_33
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_44

    .line 1767
    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v6, v4

    goto/16 :goto_dc

    .line 1768
    :cond_44
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_56

    .line 1769
    const v1, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    goto/16 :goto_dc

    .line 1770
    :cond_56
    int-to-long v0, v0

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0x1c

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_6f

    .line 1771
    const-wide/32 v2, 0xfe03f80

    xor-long/2addr v0, v2

    move-wide v6, v4

    goto/16 :goto_dc

    .line 1772
    :cond_6f
    add-long v8, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x23

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_86

    .line 1773
    const-wide v2, -0x7f01fc080L

    xor-long/2addr v0, v2

    move-wide v6, v8

    goto :goto_dc

    .line 1774
    :cond_86
    add-long v4, v8, v2

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x2a

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-ltz v8, :cond_9d

    .line 1775
    const-wide v2, 0x3f80fe03f80L

    xor-long/2addr v0, v2

    move-wide v6, v4

    goto :goto_dc

    .line 1776
    :cond_9d
    add-long v8, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x31

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_b4

    .line 1777
    const-wide v2, -0x1fc07f01fc080L

    xor-long/2addr v0, v2

    move-wide v6, v8

    goto :goto_dc

    .line 1786
    :cond_b4
    add-long v4, v8, v2

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    .line 1787
    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v0, v8

    .line 1796
    cmp-long v8, v0, v6

    if-gez v8, :cond_db

    .line 1797
    add-long/2addr v2, v4

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v6

    if-gez v4, :cond_d9

    .line 1798
    nop

    .line 1805
    :goto_d4
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    .line 1797
    :cond_d9
    move-wide v6, v2

    goto :goto_dc

    .line 1796
    :cond_db
    move-wide v6, v4

    .line 1802
    :goto_dc
    iput-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1803
    return-wide v0
.end method

.method blacklist readRawVarint64SlowPath()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1810
    nop

    .line 1811
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    const/16 v3, 0x40

    if-ge v2, v3, :cond_19

    .line 1812
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawByte()B

    move-result v3

    .line 1813
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 1814
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_16

    .line 1815
    return-wide v0

    .line 1811
    :cond_16
    add-int/lit8 v2, v2, 0x7

    goto :goto_4

    .line 1818
    :cond_19
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1648
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public blacklist readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1653
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1658
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public blacklist readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1663
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readString()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1466
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1467
    if-lez v0, :cond_23

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_23

    .line 1472
    new-array v4, v0, [B

    .line 1473
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v7, v0

    const-wide/16 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 1474
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v4, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1475
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    add-long/2addr v1, v7

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1476
    return-object v0

    .line 1479
    :cond_23
    if-nez v0, :cond_28

    .line 1480
    const-string v0, ""

    return-object v0

    .line 1482
    :cond_28
    if-gez v0, :cond_2f

    .line 1483
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1485
    :cond_2f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readStringRequireUtf8()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1490
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1491
    if-lez v0, :cond_1f

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_1f

    .line 1492
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-direct {p0, v1, v2}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result v1

    .line 1493
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v2, v1, v0}, Lcom/android/framework/protobuf/Utf8;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    .line 1494
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1495
    return-object v1

    .line 1498
    :cond_1f
    if-nez v0, :cond_24

    .line 1499
    const-string v0, ""

    return-object v0

    .line 1501
    :cond_24
    if-gtz v0, :cond_2b

    .line 1502
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1504
    :cond_2b
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readTag()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1318
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1319
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    .line 1320
    return v0

    .line 1323
    :cond_a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    .line 1324
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_1b

    .line 1329
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    return v0

    .line 1327
    :cond_1b
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1638
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1436
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readUnknownGroup(ILcom/android/framework/protobuf/MessageLite$Builder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1538
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readGroup(ILcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 1539
    return-void
.end method

.method public blacklist resetSizeCounter()V
    .registers 3

    .line 1862
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    .line 1863
    return-void
.end method

.method public blacklist skipField(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1346
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_36

    .line 1367
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1364
    :pswitch_e
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    .line 1365
    return v2

    .line 1362
    :pswitch_12
    const/4 p1, 0x0

    return p1

    .line 1357
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipMessage()V

    .line 1358
    nop

    .line 1359
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 1358
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1360
    return v2

    .line 1354
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    .line 1355
    return v2

    .line 1351
    :pswitch_2c
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    .line 1352
    return v2

    .line 1348
    :pswitch_32
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarint()V

    .line 1349
    return v2

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2c
        :pswitch_24
        :pswitch_14
        :pswitch_12
        :pswitch_e
    .end packed-switch
.end method

.method public blacklist skipField(ILcom/android/framework/protobuf/CodedOutputStream;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1373
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_52

    .line 1418
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1412
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    .line 1413
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1414
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 1415
    return v1

    .line 1408
    :pswitch_18
    const/4 p1, 0x0

    return p1

    .line 1397
    :pswitch_1a
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1398
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipMessage(Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 1399
    nop

    .line 1401
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    .line 1400
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 1402
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1403
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1404
    return v1

    .line 1390
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    .line 1391
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1392
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V

    .line 1393
    return v1

    .line 1383
    :pswitch_3c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 1384
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1385
    invoke-virtual {p2, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 1386
    return v1

    .line 1376
    :pswitch_47
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readInt64()J

    move-result-wide v2

    .line 1377
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1378
    invoke-virtual {p2, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 1379
    return v1

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_47
        :pswitch_3c
        :pswitch_31
        :pswitch_1a
        :pswitch_18
        :pswitch_d
    .end packed-switch
.end method

.method public blacklist skipRawBytes(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1937
    if-ltz p1, :cond_f

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_f

    .line 1939
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1940
    return-void

    .line 1943
    :cond_f
    if-gez p1, :cond_16

    .line 1944
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1946
    :cond_16
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method
