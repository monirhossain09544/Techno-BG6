.class final Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;
.super Lcom/android/framework/protobuf/CodedOutputStream;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeDirectNioEncoder"
.end annotation


# instance fields
.field private final blacklist address:J

.field private final blacklist buffer:Ljava/nio/ByteBuffer;

.field private final blacklist initialPosition:J

.field private final blacklist limit:J

.field private final blacklist oneVarintLimit:J

.field private final blacklist originalBuffer:Ljava/nio/ByteBuffer;

.field private blacklist position:J


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 6

    .line 1841
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;-><init>(Lcom/android/framework/protobuf/CodedOutputStream$1;)V

    .line 1842
    iput-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->originalBuffer:Ljava/nio/ByteBuffer;

    .line 1843
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    .line 1844
    invoke-static {p1}, Lcom/android/framework/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->address:J

    .line 1845
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->address:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->initialPosition:J

    .line 1846
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->address:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    .line 1847
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    const-wide/16 v2, 0xa

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->oneVarintLimit:J

    .line 1848
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->initialPosition:J

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 1849
    return-void
.end method

.method private blacklist bufferPos(J)I
    .registers 5

    .line 2185
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->address:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method static blacklist isSupported()Z
    .registers 1

    .line 1852
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    return v0
.end method

.method private blacklist repositionBuffer(J)V
    .registers 4

    .line 2181
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->bufferPos(J)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 2182
    return-void
.end method


# virtual methods
.method public blacklist flush()V
    .registers 4

    .line 2167
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->originalBuffer:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->bufferPos(J)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 2168
    return-void
.end method

.method public blacklist getTotalBytesWritten()I
    .registers 5

    .line 2177
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->initialPosition:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public blacklist spaceLeft()I
    .registers 5

    .line 2172
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public blacklist write(B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1969
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    .line 1973
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1974
    return-void

    .line 1970
    :cond_13
    new-instance p1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 1971
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist write(Ljava/nio/ByteBuffer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2103
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2104
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->repositionBuffer(J)V

    .line 2105
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 2106
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J
    :try_end_14
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_14} :catch_16

    .line 2109
    nop

    .line 2110
    return-void

    .line 2107
    :catch_16
    move-exception p1

    .line 2108
    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist write([BII)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2079
    if-eqz p1, :cond_23

    if-ltz p2, :cond_23

    if-ltz p3, :cond_23

    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_23

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    int-to-long v7, p3

    sub-long/2addr v0, v7

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    move-object v2, p1

    goto :goto_24

    .line 2091
    :cond_16
    int-to-long v3, p2

    iget-wide v5, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory([BJJJ)V

    .line 2092
    iget-wide p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 2093
    return-void

    .line 2079
    :cond_23
    move-object v2, p1

    .line 2084
    :goto_24
    if-nez v2, :cond_2f

    .line 2085
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2087
    :cond_2f
    new-instance p1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 2088
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, v0, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist writeBool(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1892
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1893
    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->write(B)V

    .line 1894
    return-void
.end method

.method public blacklist writeByteArray(I[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1910
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeByteArray(I[BII)V

    .line 1911
    return-void
.end method

.method public blacklist writeByteArray(I[BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1916
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1917
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeByteArrayNoTag([BII)V

    .line 1918
    return-void
.end method

.method public blacklist writeByteArrayNoTag([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1984
    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1985
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->write([BII)V

    .line 1986
    return-void
.end method

.method public blacklist writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1922
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1923
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1924
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    .line 1925
    return-void
.end method

.method public blacklist writeBytes(ILcom/android/framework/protobuf/ByteString;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1904
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1905
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V

    .line 1906
    return-void
.end method

.method public blacklist writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1978
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1979
    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/ByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    .line 1980
    return-void
.end method

.method public blacklist writeFixed32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1874
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1875
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeFixed32NoTag(I)V

    .line 1876
    return-void
.end method

.method public blacklist writeFixed32NoTag(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2039
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->bufferPos(J)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2040
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 2041
    return-void
.end method

.method public blacklist writeFixed64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1886
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1887
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeFixed64NoTag(J)V

    .line 1888
    return-void
.end method

.method public blacklist writeFixed64NoTag(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2073
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->bufferPos(J)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2074
    iget-wide p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 2075
    return-void
.end method

.method public blacklist writeInt32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1862
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1863
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeInt32NoTag(I)V

    .line 1864
    return-void
.end method

.method public blacklist writeInt32NoTag(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2001
    if-ltz p1, :cond_6

    .line 2002
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    goto :goto_a

    .line 2005
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt64NoTag(J)V

    .line 2007
    :goto_a
    return-void
.end method

.method public blacklist writeLazy(Ljava/nio/ByteBuffer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2114
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 2115
    return-void
.end method

.method public blacklist writeLazy([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2097
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->write([BII)V

    .line 2098
    return-void
.end method

.method public blacklist writeMessage(ILcom/android/framework/protobuf/MessageLite;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1929
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1930
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;)V

    .line 1931
    return-void
.end method

.method blacklist writeMessage(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1935
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1936
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V

    .line 1937
    return-void
.end method

.method public blacklist writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1957
    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1958
    invoke-interface {p1, p0}, Lcom/android/framework/protobuf/MessageLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 1959
    return-void
.end method

.method blacklist writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1963
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/AbstractMessageLite;

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/android/framework/protobuf/Schema;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1964
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->wrapper:Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    invoke-interface {p2, p1, v0}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 1965
    return-void
.end method

.method public blacklist writeMessageSetExtension(ILcom/android/framework/protobuf/MessageLite;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1941
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1942
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32(II)V

    .line 1943
    invoke-virtual {p0, v1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeMessage(ILcom/android/framework/protobuf/MessageLite;)V

    .line 1944
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1945
    return-void
.end method

.method public blacklist writeRawBytes(Ljava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1990
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1991
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->write([BII)V

    goto :goto_20

    .line 1993
    :cond_16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1994
    invoke-static {p1}, Lcom/android/framework/protobuf/Java8Compatibility;->clear(Ljava/nio/Buffer;)V

    .line 1995
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 1997
    :goto_20
    return-void
.end method

.method public blacklist writeRawMessageSetExtension(ILcom/android/framework/protobuf/ByteString;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1949
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1950
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32(II)V

    .line 1951
    invoke-virtual {p0, v1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    .line 1952
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1953
    return-void
.end method

.method public blacklist writeString(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1898
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1899
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeStringNoTag(Ljava/lang/String;)V

    .line 1900
    return-void
.end method

.method public blacklist writeStringNoTag(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2119
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 2123
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    .line 2124
    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->computeUInt32SizeNoTag(I)I

    move-result v2

    .line 2125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->computeUInt32SizeNoTag(I)I

    move-result v3

    .line 2126
    if-ne v3, v2, :cond_38

    .line 2129
    iget-wide v4, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v4, v5}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->bufferPos(J)I

    move-result v2

    add-int/2addr v2, v3

    .line 2130
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 2133
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lcom/android/framework/protobuf/Utf8;->encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 2136
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v2

    .line 2137
    invoke-virtual {p0, v3}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 2138
    iget-wide v4, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    int-to-long v2, v3

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 2139
    goto :goto_69

    .line 2141
    :cond_38
    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v2

    .line 2142
    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 2145
    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->repositionBuffer(J)V

    .line 2146
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lcom/android/framework/protobuf/Utf8;->encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 2147
    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J
    :try_end_4f
    .catch Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException; {:try_start_2 .. :try_end_4f} :catch_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_4f} :catch_57
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_4f} :catch_50

    goto :goto_69

    .line 2159
    :catch_50
    move-exception p1

    .line 2160
    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2156
    :catch_57
    move-exception p1

    .line 2158
    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2149
    :catch_5e
    move-exception v2

    .line 2151
    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 2152
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    invoke-direct {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->repositionBuffer(J)V

    .line 2155
    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;)V

    .line 2161
    :goto_69
    nop

    .line 2162
    return-void
.end method

.method public blacklist writeTag(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1857
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1858
    return-void
.end method

.method public blacklist writeUInt32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1868
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1869
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1870
    return-void
.end method

.method public blacklist writeUInt32NoTag(I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2011
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->oneVarintLimit:J

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x1

    if-gtz v0, :cond_29

    .line 2014
    :goto_a
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_18

    .line 2015
    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    int-to-byte p1, p1

    invoke-static {v3, v4, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2016
    return-void

    .line 2018
    :cond_18
    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long v5, v3, v1

    iput-wide v5, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v3, v4, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2019
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_a

    .line 2023
    :cond_29
    :goto_29
    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    iget-wide v5, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_50

    .line 2024
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_3f

    .line 2025
    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    int-to-byte p1, p1

    invoke-static {v3, v4, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2026
    return-void

    .line 2028
    :cond_3f
    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long v5, v3, v1

    iput-wide v5, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v3, v4, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2029
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_29

    .line 2032
    :cond_50
    new-instance p1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 2033
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist writeUInt64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1880
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeTag(II)V

    .line 1881
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->writeUInt64NoTag(J)V

    .line 1882
    return-void
.end method

.method public blacklist writeUInt64NoTag(J)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2045
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->oneVarintLimit:J

    cmp-long v0, v0, v2

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    const-wide/16 v6, 0x1

    if-gtz v0, :cond_31

    .line 2048
    :goto_f
    and-long v8, p1, v4

    cmp-long v0, v8, v2

    if-nez v0, :cond_20

    .line 2049
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2050
    return-void

    .line 2052
    :cond_20
    iget-wide v8, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long v10, v8, v6

    iput-wide v10, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v8, v9, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2053
    ushr-long/2addr p1, v1

    goto :goto_f

    .line 2057
    :cond_31
    :goto_31
    iget-wide v8, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    iget-wide v10, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    cmp-long v0, v8, v10

    if-gez v0, :cond_5b

    .line 2058
    and-long v8, p1, v4

    cmp-long v0, v8, v2

    if-nez v0, :cond_4a

    .line 2059
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2060
    return-void

    .line 2062
    :cond_4a
    iget-wide v8, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    add-long v10, v8, v6

    iput-wide v10, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v8, v9, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2063
    ushr-long/2addr p1, v1

    goto :goto_31

    .line 2066
    :cond_5b
    new-instance p1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->position:J

    .line 2067
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->limit:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p2, v0, v1}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
