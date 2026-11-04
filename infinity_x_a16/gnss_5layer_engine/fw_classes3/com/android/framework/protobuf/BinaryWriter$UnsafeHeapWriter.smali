.class final Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;
.super Lcom/android/framework/protobuf/BinaryWriter;
.source "BinaryWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeHeapWriter"
.end annotation


# instance fields
.field private blacklist allocatedBuffer:Lcom/android/framework/protobuf/AllocatedBuffer;

.field private blacklist buffer:[B

.field private blacklist limit:J

.field private blacklist limitMinusOne:J

.field private blacklist offset:J

.field private blacklist offsetMinusOne:J

.field private blacklist pos:J


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/BufferAllocator;I)V
    .registers 4

    .line 1439
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/framework/protobuf/BinaryWriter;-><init>(Lcom/android/framework/protobuf/BufferAllocator;ILcom/android/framework/protobuf/BinaryWriter$1;)V

    .line 1440
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->nextBuffer()V

    .line 1441
    return-void
.end method

.method private blacklist arrayPos()I
    .registers 3

    .line 1460
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    long-to-int v0, v0

    return v0
.end method

.method static blacklist isSupported()Z
    .registers 1

    .line 1445
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    return v0
.end method

.method private blacklist nextBuffer()V
    .registers 2

    .line 1464
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->newHeapBuffer()Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->nextBuffer(Lcom/android/framework/protobuf/AllocatedBuffer;)V

    .line 1465
    return-void
.end method

.method private blacklist nextBuffer(I)V
    .registers 2

    .line 1468
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->newHeapBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->nextBuffer(Lcom/android/framework/protobuf/AllocatedBuffer;)V

    .line 1469
    return-void
.end method

.method private blacklist nextBuffer(Lcom/android/framework/protobuf/AllocatedBuffer;)V
    .registers 6

    .line 1472
    invoke-virtual {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1476
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->finishCurrentBuffer()V

    .line 1477
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1479
    iput-object p1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->allocatedBuffer:Lcom/android/framework/protobuf/AllocatedBuffer;

    .line 1480
    invoke-virtual {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 1481
    invoke-virtual {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->arrayOffset()I

    move-result v0

    .line 1482
    int-to-long v0, v0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->limit:J

    .line 1483
    invoke-virtual {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->position()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->offset:J

    .line 1484
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->offset:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->offsetMinusOne:J

    .line 1485
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->limit:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->limitMinusOne:J

    .line 1486
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->limitMinusOne:J

    iput-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 1487
    return-void

    .line 1473
    :cond_3c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Allocator returned non-heap buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist writeVarint32FiveBytes(I)V
    .registers 9

    .line 1693
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, p1, 0x1c

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1694
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, p1, 0x15

    and-int/lit8 v5, v5, 0x7f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1695
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, p1, 0xe

    and-int/lit8 v5, v5, 0x7f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1696
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, p1, 0x7

    and-int/lit8 v5, v5, 0x7f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1697
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1698
    return-void
.end method

.method private blacklist writeVarint32FourBytes(I)V
    .registers 9

    .line 1686
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, p1, 0x15

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1687
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, p1, 0xe

    and-int/lit8 v5, v5, 0x7f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1688
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, p1, 0x7

    and-int/lit8 v5, v5, 0x7f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1689
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1690
    return-void
.end method

.method private blacklist writeVarint32OneByte(I)V
    .registers 7

    .line 1671
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1672
    return-void
.end method

.method private blacklist writeVarint32ThreeBytes(I)V
    .registers 9

    .line 1680
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, p1, 0xe

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1681
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, p1, 0x7

    and-int/lit8 v5, v5, 0x7f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1682
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1683
    return-void
.end method

.method private blacklist writeVarint32TwoBytes(I)V
    .registers 9

    .line 1675
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, p1, 0x7

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1676
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1677
    return-void
.end method

.method private blacklist writeVarint64EightBytes(J)V
    .registers 14

    .line 1786
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x31

    ushr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1787
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x2a

    ushr-long v5, p1, v5

    const-wide/16 v7, 0x7f

    and-long/2addr v5, v7

    const-wide/16 v9, 0x80

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1788
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x23

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1789
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x1c

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1790
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x15

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1791
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0xe

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1792
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v5, 0x7

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1793
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long/2addr p1, v7

    or-long/2addr p1, v9

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1794
    return-void
.end method

.method private blacklist writeVarint64FiveBytes(J)V
    .registers 14

    .line 1759
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x1c

    ushr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1760
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x15

    ushr-long v5, p1, v5

    const-wide/16 v7, 0x7f

    and-long/2addr v5, v7

    const-wide/16 v9, 0x80

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1761
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0xe

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1762
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v5, 0x7

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1763
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long/2addr p1, v7

    or-long/2addr p1, v9

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1764
    return-void
.end method

.method private blacklist writeVarint64FourBytes(J)V
    .registers 14

    .line 1752
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x15

    ushr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1753
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0xe

    ushr-long v5, p1, v5

    const-wide/16 v7, 0x7f

    and-long/2addr v5, v7

    const-wide/16 v9, 0x80

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1754
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v5, 0x7

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1755
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long/2addr p1, v7

    or-long/2addr p1, v9

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1756
    return-void
.end method

.method private blacklist writeVarint64NineBytes(J)V
    .registers 14

    .line 1797
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x38

    ushr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1798
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x31

    ushr-long v5, p1, v5

    const-wide/16 v7, 0x7f

    and-long/2addr v5, v7

    const-wide/16 v9, 0x80

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1799
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x2a

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1800
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x23

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1801
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x1c

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1802
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x15

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1803
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0xe

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1804
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v5, 0x7

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1805
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long/2addr p1, v7

    or-long/2addr p1, v9

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1806
    return-void
.end method

.method private blacklist writeVarint64OneByte(J)V
    .registers 8

    .line 1737
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1738
    return-void
.end method

.method private blacklist writeVarint64SevenBytes(J)V
    .registers 14

    .line 1776
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x2a

    ushr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1777
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x23

    ushr-long v5, p1, v5

    const-wide/16 v7, 0x7f

    and-long/2addr v5, v7

    const-wide/16 v9, 0x80

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1778
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x1c

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1779
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x15

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1780
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0xe

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1781
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v5, 0x7

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1782
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long/2addr p1, v7

    or-long/2addr p1, v9

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1783
    return-void
.end method

.method private blacklist writeVarint64SixBytes(J)V
    .registers 14

    .line 1767
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x23

    ushr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1768
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x1c

    ushr-long v5, p1, v5

    const-wide/16 v7, 0x7f

    and-long/2addr v5, v7

    const-wide/16 v9, 0x80

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1769
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x15

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1770
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0xe

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1771
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v5, 0x7

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1772
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long/2addr p1, v7

    or-long/2addr p1, v9

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1773
    return-void
.end method

.method private blacklist writeVarint64TenBytes(J)V
    .registers 14

    .line 1809
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x3f

    ushr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1810
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x38

    ushr-long v5, p1, v5

    const-wide/16 v7, 0x7f

    and-long/2addr v5, v7

    const-wide/16 v9, 0x80

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1811
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x31

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1812
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x2a

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1813
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x23

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1814
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x1c

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1815
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x15

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1816
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0xe

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1817
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v5, 0x7

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1818
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long/2addr p1, v7

    or-long/2addr p1, v9

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1819
    return-void
.end method

.method private blacklist writeVarint64ThreeBytes(J)V
    .registers 14

    .line 1746
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    long-to-int v5, p1

    ushr-int/lit8 v5, v5, 0xe

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1747
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v5, 0x7

    ushr-long v5, p1, v5

    const-wide/16 v7, 0x7f

    and-long/2addr v5, v7

    const-wide/16 v9, 0x80

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1748
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-long/2addr p1, v7

    or-long/2addr p1, v9

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1749
    return-void
.end method

.method private blacklist writeVarint64TwoBytes(J)V
    .registers 10

    .line 1741
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/4 v5, 0x7

    ushr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1742
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1743
    return-void
.end method


# virtual methods
.method blacklist bytesWrittenToCurrentBuffer()I
    .registers 5

    .line 1495
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->limitMinusOne:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method blacklist finishCurrentBuffer()V
    .registers 4

    .line 1450
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->allocatedBuffer:Lcom/android/framework/protobuf/AllocatedBuffer;

    if-eqz v0, :cond_28

    .line 1451
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    .line 1452
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->allocatedBuffer:Lcom/android/framework/protobuf/AllocatedBuffer;

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->arrayPos()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->allocatedBuffer:Lcom/android/framework/protobuf/AllocatedBuffer;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/AllocatedBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/AllocatedBuffer;->position(I)Lcom/android/framework/protobuf/AllocatedBuffer;

    .line 1453
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->allocatedBuffer:Lcom/android/framework/protobuf/AllocatedBuffer;

    .line 1454
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 1455
    iput-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->limitMinusOne:J

    .line 1457
    :cond_28
    return-void
.end method

.method public blacklist getTotalBytesWritten()I
    .registers 3

    .line 1491
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method blacklist requireSpace(I)V
    .registers 3

    .line 1961
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p1, :cond_9

    .line 1962
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->nextBuffer(I)V

    .line 1964
    :cond_9
    return-void
.end method

.method blacklist spaceLeft()I
    .registers 5

    .line 1499
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->offsetMinusOne:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public blacklist write(B)V
    .registers 7

    .line 1895
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    invoke-static {v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1896
    return-void
.end method

.method public blacklist write(Ljava/nio/ByteBuffer;)V
    .registers 7

    .line 1934
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1935
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1937
    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 1938
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->arrayPos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1939
    return-void
.end method

.method public blacklist write([BII)V
    .registers 8

    .line 1900
    if-ltz p2, :cond_1c

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1c

    .line 1904
    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1906
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 1907
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->arrayPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1908
    return-void

    .line 1901
    :cond_1c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p1

    .line 1902
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "value.length=%d, offset=%d, length=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist writeBool(IZ)V
    .registers 4

    .line 1553
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1554
    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->write(B)V

    .line 1555
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1556
    return-void
.end method

.method blacklist writeBool(Z)V
    .registers 2

    .line 1647
    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->write(B)V

    .line 1648
    return-void
.end method

.method public blacklist writeBytes(ILcom/android/framework/protobuf/ByteString;)V
    .registers 4

    .line 1571
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/android/framework/protobuf/ByteString;->writeToReverse(Lcom/android/framework/protobuf/ByteOutput;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_15

    .line 1575
    nop

    .line 1577
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1578
    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1579
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1580
    return-void

    .line 1572
    :catch_15
    move-exception p1

    .line 1574
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public blacklist writeEndGroup(I)V
    .registers 3

    .line 1623
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1624
    return-void
.end method

.method blacklist writeFixed32(I)V
    .registers 9

    .line 1823
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    shr-int/lit8 v5, p1, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1824
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    shr-int/lit8 v5, p1, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1825
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1826
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1827
    return-void
.end method

.method public blacklist writeFixed32(II)V
    .registers 4

    .line 1525
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1526
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeFixed32(I)V

    .line 1527
    const/4 p2, 0x5

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1528
    return-void
.end method

.method public blacklist writeFixed64(IJ)V
    .registers 5

    .line 1546
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1547
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeFixed64(J)V

    .line 1548
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1549
    return-void
.end method

.method blacklist writeFixed64(J)V
    .registers 10

    .line 1831
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x38

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1832
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x30

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1833
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x28

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1834
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x20

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1835
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x18

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1836
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x10

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1837
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    const/16 v5, 0x8

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-static {v0, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1838
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1839
    return-void
.end method

.method public blacklist writeGroup(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1604
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1605
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/android/framework/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 1606
    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1607
    return-void
.end method

.method public blacklist writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1611
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1612
    invoke-interface {p3, p2, p0}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 1613
    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1614
    return-void
.end method

.method blacklist writeInt32(I)V
    .registers 4

    .line 1628
    if-ltz p1, :cond_6

    .line 1629
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    goto :goto_a

    .line 1631
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64(J)V

    .line 1633
    :goto_a
    return-void
.end method

.method public blacklist writeInt32(II)V
    .registers 4

    .line 1511
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1512
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeInt32(I)V

    .line 1513
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1514
    return-void
.end method

.method public blacklist writeLazy(Ljava/nio/ByteBuffer;)V
    .registers 7

    .line 1943
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1944
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_1b

    .line 1947
    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    .line 1948
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1952
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->nextBuffer()V

    .line 1955
    :cond_1b
    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 1956
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->arrayPos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1957
    return-void
.end method

.method public blacklist writeLazy([BII)V
    .registers 8

    .line 1912
    if-ltz p2, :cond_31

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_31

    .line 1916
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_1f

    .line 1919
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->totalDoneBytes:I

    .line 1920
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/AllocatedBuffer;->wrap([BII)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1924
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->nextBuffer()V

    .line 1925
    return-void

    .line 1928
    :cond_1f
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 1929
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->arrayPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1930
    return-void

    .line 1913
    :cond_31
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p1

    .line 1914
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "value.length=%d, offset=%d, length=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist writeMessage(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1584
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->getTotalBytesWritten()I

    move-result v0

    .line 1585
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Lcom/android/framework/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 1586
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, v0

    .line 1587
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1588
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1589
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1590
    return-void
.end method

.method public blacklist writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1594
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->getTotalBytesWritten()I

    move-result v0

    .line 1595
    invoke-interface {p3, p2, p0}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 1596
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, v0

    .line 1597
    const/16 p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1598
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1599
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1600
    return-void
.end method

.method blacklist writeSInt32(I)V
    .registers 2

    .line 1637
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1638
    return-void
.end method

.method public blacklist writeSInt32(II)V
    .registers 4

    .line 1518
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1519
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeSInt32(I)V

    .line 1520
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1521
    return-void
.end method

.method public blacklist writeSInt64(IJ)V
    .registers 5

    .line 1539
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1540
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeSInt64(J)V

    .line 1541
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1542
    return-void
.end method

.method blacklist writeSInt64(J)V
    .registers 3

    .line 1642
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64(J)V

    .line 1643
    return-void
.end method

.method public blacklist writeStartGroup(I)V
    .registers 3

    .line 1618
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1619
    return-void
.end method

.method public blacklist writeString(ILjava/lang/String;)V
    .registers 4

    .line 1560
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->getTotalBytesWritten()I

    move-result v0

    .line 1561
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeString(Ljava/lang/String;)V

    .line 1562
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, v0

    .line 1563
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1564
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1565
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1566
    return-void
.end method

.method blacklist writeString(Ljava/lang/String;)V
    .registers 14

    .line 1844
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1847
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1852
    :goto_d
    const/16 v1, 0x80

    const-wide/16 v2, 0x1

    if-ltz v0, :cond_28

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v1, :cond_28

    .line 1853
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v2, v5, v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-byte v2, v4

    invoke-static {v1, v5, v6, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1852
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1855
    :cond_28
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2c

    .line 1857
    return-void

    .line 1859
    :cond_2c
    :goto_2c
    if-ltz v0, :cond_12c

    .line 1860
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1861
    if-ge v5, v1, :cond_4a

    iget-wide v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    iget-wide v8, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->offsetMinusOne:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_4a

    .line 1862
    iget-object v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v7, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v9, v7, v2

    iput-wide v9, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    int-to-byte v5, v5

    invoke-static {v6, v7, v8, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    goto/16 :goto_129

    .line 1863
    :cond_4a
    const/16 v6, 0x800

    if-ge v5, v6, :cond_77

    iget-wide v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    iget-wide v8, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->offset:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_77

    .line 1864
    iget-object v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v7, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v9, v7, v2

    iput-wide v9, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 v9, v5, 0x3f

    or-int/2addr v9, v1

    int-to-byte v9, v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1865
    iget-object v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v7, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v9, v7, v2

    iput-wide v9, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, v5, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    invoke-static {v6, v7, v8, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    goto/16 :goto_129

    .line 1866
    :cond_77
    const v6, 0xd800

    if-lt v5, v6, :cond_81

    const v6, 0xdfff

    if-ge v6, v5, :cond_bb

    :cond_81
    iget-wide v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    iget-wide v8, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->offset:J

    add-long/2addr v8, v2

    cmp-long v6, v6, v8

    if-lez v6, :cond_bb

    .line 1869
    iget-object v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v7, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v9, v7, v2

    iput-wide v9, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 v9, v5, 0x3f

    or-int/2addr v9, v1

    int-to-byte v9, v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1870
    iget-object v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v7, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v9, v7, v2

    iput-wide v9, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v1

    int-to-byte v9, v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1871
    iget-object v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v7, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v9, v7, v2

    iput-wide v9, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, v5, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    invoke-static {v6, v7, v8, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    goto :goto_129

    .line 1872
    :cond_bb
    iget-wide v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    iget-wide v8, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->offset:J

    const-wide/16 v10, 0x2

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-lez v6, :cond_124

    .line 1876
    if-eqz v0, :cond_11c

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v7

    if-eqz v7, :cond_11c

    .line 1879
    add-int/lit8 v0, v0, -0x1

    .line 1880
    invoke-static {v6, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    .line 1881
    iget-object v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v7, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v9, v7, v2

    iput-wide v9, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    and-int/lit8 v9, v5, 0x3f

    or-int/2addr v9, v1

    int-to-byte v9, v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1882
    iget-object v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v7, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v9, v7, v2

    iput-wide v9, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v1

    int-to-byte v9, v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1883
    iget-object v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v7, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v9, v7, v2

    iput-wide v9, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v1

    int-to-byte v9, v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1884
    iget-object v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    iget-wide v7, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long v9, v7, v2

    iput-wide v9, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    ushr-int/lit8 v5, v5, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    invoke-static {v6, v7, v8, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1885
    goto :goto_129

    .line 1877
    :cond_11c
    new-instance p1, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p1, v1, v0}, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p1

    .line 1887
    :cond_124
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1888
    add-int/lit8 v0, v0, 0x1

    .line 1859
    :goto_129
    add-int/2addr v0, v4

    goto/16 :goto_2c

    .line 1891
    :cond_12c
    return-void
.end method

.method blacklist writeTag(II)V
    .registers 3

    .line 1652
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1653
    return-void
.end method

.method public blacklist writeUInt32(II)V
    .registers 4

    .line 1504
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1505
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32(I)V

    .line 1506
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1507
    return-void
.end method

.method public blacklist writeUInt64(IJ)V
    .registers 5

    .line 1532
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->requireSpace(I)V

    .line 1533
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64(J)V

    .line 1534
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeTag(II)V

    .line 1535
    return-void
.end method

.method blacklist writeVarint32(I)V
    .registers 3

    .line 1657
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    .line 1658
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32OneByte(I)V

    goto :goto_25

    .line 1659
    :cond_8
    and-int/lit16 v0, p1, -0x4000

    if-nez v0, :cond_10

    .line 1660
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32TwoBytes(I)V

    goto :goto_25

    .line 1661
    :cond_10
    const/high16 v0, -0x200000

    and-int/2addr v0, p1

    if-nez v0, :cond_19

    .line 1662
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32ThreeBytes(I)V

    goto :goto_25

    .line 1663
    :cond_19
    const/high16 v0, -0x10000000

    and-int/2addr v0, p1

    if-nez v0, :cond_22

    .line 1664
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32FourBytes(I)V

    goto :goto_25

    .line 1666
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint32FiveBytes(I)V

    .line 1668
    :goto_25
    return-void
.end method

.method blacklist writeVarint64(J)V
    .registers 4

    .line 1702
    # invokes: Lcom/android/framework/protobuf/BinaryWriter;->computeUInt64SizeNoTag(J)B
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->access$200(J)B

    move-result v0

    packed-switch v0, :pswitch_data_32

    goto :goto_30

    .line 1731
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64TenBytes(J)V

    goto :goto_30

    .line 1728
    :pswitch_c
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64NineBytes(J)V

    .line 1729
    goto :goto_30

    .line 1725
    :pswitch_10
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64EightBytes(J)V

    .line 1726
    goto :goto_30

    .line 1722
    :pswitch_14
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64SevenBytes(J)V

    .line 1723
    goto :goto_30

    .line 1719
    :pswitch_18
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64SixBytes(J)V

    .line 1720
    goto :goto_30

    .line 1716
    :pswitch_1c
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64FiveBytes(J)V

    .line 1717
    goto :goto_30

    .line 1713
    :pswitch_20
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64FourBytes(J)V

    .line 1714
    goto :goto_30

    .line 1710
    :pswitch_24
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64ThreeBytes(J)V

    .line 1711
    goto :goto_30

    .line 1707
    :pswitch_28
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64TwoBytes(J)V

    .line 1708
    goto :goto_30

    .line 1704
    :pswitch_2c
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->writeVarint64OneByte(J)V

    .line 1705
    nop

    .line 1734
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method
