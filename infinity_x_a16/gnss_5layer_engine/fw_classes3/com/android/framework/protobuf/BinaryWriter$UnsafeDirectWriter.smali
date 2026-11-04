.class final Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;
.super Lcom/android/framework/protobuf/BinaryWriter;
.source "BinaryWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeDirectWriter"
.end annotation


# instance fields
.field private blacklist buffer:Ljava/nio/ByteBuffer;

.field private blacklist bufferOffset:J

.field private blacklist limitMinusOne:J

.field private blacklist pos:J


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/BufferAllocator;I)V
    .registers 4

    .line 2526
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/framework/protobuf/BinaryWriter;-><init>(Lcom/android/framework/protobuf/BufferAllocator;ILcom/android/framework/protobuf/BinaryWriter$1;)V

    .line 2527
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer()V

    .line 2528
    return-void
.end method

.method static synthetic blacklist access$000()Z
    .registers 1

    .line 2519
    invoke-static {}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->isSupported()Z

    move-result v0

    return v0
.end method

.method private blacklist bufferPos()I
    .registers 5

    .line 2590
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferOffset:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private blacklist bytesWrittenToCurrentBuffer()I
    .registers 5

    .line 2570
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->limitMinusOne:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static blacklist isSupported()Z
    .registers 1

    .line 2532
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    return v0
.end method

.method private blacklist nextBuffer()V
    .registers 2

    .line 2536
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->newDirectBuffer()Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer(Lcom/android/framework/protobuf/AllocatedBuffer;)V

    .line 2537
    return-void
.end method

.method private blacklist nextBuffer(I)V
    .registers 2

    .line 2540
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->newDirectBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer(Lcom/android/framework/protobuf/AllocatedBuffer;)V

    .line 2541
    return-void
.end method

.method private blacklist nextBuffer(Lcom/android/framework/protobuf/AllocatedBuffer;)V
    .registers 6

    .line 2544
    invoke-virtual {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->hasNioBuffer()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2547
    invoke-virtual {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2548
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2552
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->finishCurrentBuffer()V

    .line 2553
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2555
    iput-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 2556
    iget-object p1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Java8Compatibility;->limit(Ljava/nio/Buffer;I)V

    .line 2557
    iget-object p1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 2559
    iget-object p1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/android/framework/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferOffset:J

    .line 2560
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferOffset:J

    iget-object p1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->limitMinusOne:J

    .line 2561
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->limitMinusOne:J

    iput-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    .line 2562
    return-void

    .line 2549
    :cond_46
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Allocator returned non-direct buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2545
    :cond_4e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Allocated buffer does not have NIO buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist spaceLeft()I
    .registers 2

    .line 2574
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferPos()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist writeVarint32FiveBytes(I)V
    .registers 8

    .line 2786
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v4, p1, 0x1c

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2787
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v4, p1, 0x15

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2788
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v4, p1, 0xe

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2789
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2790
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2791
    return-void
.end method

.method private blacklist writeVarint32FourBytes(I)V
    .registers 8

    .line 2779
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v4, p1, 0x15

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2780
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v4, p1, 0xe

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2781
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2782
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2783
    return-void
.end method

.method private blacklist writeVarint32OneByte(I)V
    .registers 6

    .line 2764
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2765
    return-void
.end method

.method private blacklist writeVarint32ThreeBytes(I)V
    .registers 8

    .line 2773
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v4, p1, 0xe

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2774
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2775
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2776
    return-void
.end method

.method private blacklist writeVarint32TwoBytes(I)V
    .registers 8

    .line 2768
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v4, p1, 0x7

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2769
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2770
    return-void
.end method

.method private blacklist writeVarint64EightBytes(J)V
    .registers 13

    .line 2879
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x31

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2880
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2881
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2882
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2883
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2884
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2885
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2886
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2887
    return-void
.end method

.method private blacklist writeVarint64FiveBytes(J)V
    .registers 13

    .line 2852
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2853
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2854
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2855
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2856
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2857
    return-void
.end method

.method private blacklist writeVarint64FourBytes(J)V
    .registers 13

    .line 2845
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2846
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2847
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2848
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2849
    return-void
.end method

.method private blacklist writeVarint64NineBytes(J)V
    .registers 13

    .line 2890
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2891
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x31

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2892
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2893
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2894
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2895
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2896
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2897
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2898
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2899
    return-void
.end method

.method private blacklist writeVarint64OneByte(J)V
    .registers 7

    .line 2830
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2831
    return-void
.end method

.method private blacklist writeVarint64SevenBytes(J)V
    .registers 13

    .line 2869
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2870
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2871
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2872
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2873
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2874
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2875
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2876
    return-void
.end method

.method private blacklist writeVarint64SixBytes(J)V
    .registers 13

    .line 2860
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2861
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2862
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2863
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2864
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2865
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2866
    return-void
.end method

.method private blacklist writeVarint64TenBytes(J)V
    .registers 13

    .line 2902
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x3f

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2903
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2904
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x31

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2905
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2906
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2907
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2908
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2909
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2910
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2911
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2912
    return-void
.end method

.method private blacklist writeVarint64ThreeBytes(J)V
    .registers 13

    .line 2839
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    long-to-int v4, p1

    ushr-int/lit8 v4, v4, 0xe

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2840
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2841
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2842
    return-void
.end method

.method private blacklist writeVarint64TwoBytes(J)V
    .registers 9

    .line 2834
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2835
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2836
    return-void
.end method


# virtual methods
.method blacklist finishCurrentBuffer()V
    .registers 3

    .line 2579
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_21

    .line 2580
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    .line 2582
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 2583
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 2584
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    .line 2585
    iput-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->limitMinusOne:J

    .line 2587
    :cond_21
    return-void
.end method

.method public blacklist getTotalBytesWritten()I
    .registers 3

    .line 2566
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method blacklist requireSpace(I)V
    .registers 3

    .line 3053
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p1, :cond_9

    .line 3054
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer(I)V

    .line 3056
    :cond_9
    return-void
.end method

.method public blacklist write(B)V
    .registers 6

    .line 2986
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2987
    return-void
.end method

.method public blacklist write(Ljava/nio/ByteBuffer;)V
    .registers 7

    .line 3021
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 3022
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_d

    .line 3023
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer(I)V

    .line 3026
    :cond_d
    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    .line 3027
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 3028
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 3029
    return-void
.end method

.method public blacklist write([BII)V
    .registers 8

    .line 2991
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_9

    .line 2992
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer(I)V

    .line 2995
    :cond_9
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    .line 2996
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 2997
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 2998
    return-void
.end method

.method public blacklist writeBool(IZ)V
    .registers 4

    .line 2644
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2645
    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->write(B)V

    .line 2646
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2647
    return-void
.end method

.method blacklist writeBool(Z)V
    .registers 2

    .line 2740
    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->write(B)V

    .line 2741
    return-void
.end method

.method public blacklist writeBytes(ILcom/android/framework/protobuf/ByteString;)V
    .registers 4

    .line 2662
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/android/framework/protobuf/ByteString;->writeToReverse(Lcom/android/framework/protobuf/ByteOutput;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_15

    .line 2666
    nop

    .line 2668
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2669
    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2670
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2671
    return-void

    .line 2663
    :catch_15
    move-exception p1

    .line 2665
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public blacklist writeEndGroup(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2716
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2717
    return-void
.end method

.method blacklist writeFixed32(I)V
    .registers 8

    .line 2916
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2917
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2918
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2919
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2920
    return-void
.end method

.method public blacklist writeFixed32(II)V
    .registers 4

    .line 2616
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2617
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeFixed32(I)V

    .line 2618
    const/4 p2, 0x5

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2619
    return-void
.end method

.method public blacklist writeFixed64(IJ)V
    .registers 5

    .line 2637
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2638
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeFixed64(J)V

    .line 2639
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2640
    return-void
.end method

.method blacklist writeFixed64(J)V
    .registers 9

    .line 2924
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x38

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2925
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x30

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2926
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x28

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2927
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2928
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x18

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2929
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2930
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x8

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2931
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2932
    return-void
.end method

.method public blacklist writeGroup(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2695
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2696
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/android/framework/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 2697
    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2698
    return-void
.end method

.method public blacklist writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2702
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2703
    invoke-interface {p3, p2, p0}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 2704
    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2705
    return-void
.end method

.method blacklist writeInt32(I)V
    .registers 4

    .line 2721
    if-ltz p1, :cond_6

    .line 2722
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    goto :goto_a

    .line 2724
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64(J)V

    .line 2726
    :goto_a
    return-void
.end method

.method public blacklist writeInt32(II)V
    .registers 4

    .line 2602
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2603
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeInt32(I)V

    .line 2604
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2605
    return-void
.end method

.method public blacklist writeLazy(Ljava/nio/ByteBuffer;)V
    .registers 7

    .line 3033
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 3034
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_1c

    .line 3037
    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    .line 3038
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 3042
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer()V

    .line 3043
    return-void

    .line 3046
    :cond_1c
    iget-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    .line 3047
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 3048
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 3049
    return-void
.end method

.method public blacklist writeLazy([BII)V
    .registers 8

    .line 3002
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_18

    .line 3005
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    .line 3006
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/AllocatedBuffer;->wrap([BII)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 3010
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer()V

    .line 3011
    return-void

    .line 3014
    :cond_18
    iget-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    .line 3015
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 3016
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 3017
    return-void
.end method

.method public blacklist writeMessage(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2675
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->getTotalBytesWritten()I

    move-result v0

    .line 2676
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Lcom/android/framework/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 2677
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, v0

    .line 2678
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2679
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2680
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2681
    return-void
.end method

.method public blacklist writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2685
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->getTotalBytesWritten()I

    move-result v0

    .line 2686
    invoke-interface {p3, p2, p0}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 2687
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, v0

    .line 2688
    const/16 p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2689
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2690
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2691
    return-void
.end method

.method blacklist writeSInt32(I)V
    .registers 2

    .line 2730
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2731
    return-void
.end method

.method public blacklist writeSInt32(II)V
    .registers 4

    .line 2609
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2610
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeSInt32(I)V

    .line 2611
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2612
    return-void
.end method

.method public blacklist writeSInt64(IJ)V
    .registers 5

    .line 2630
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2631
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeSInt64(J)V

    .line 2632
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2633
    return-void
.end method

.method blacklist writeSInt64(J)V
    .registers 3

    .line 2735
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64(J)V

    .line 2736
    return-void
.end method

.method public blacklist writeStartGroup(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2710
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2711
    return-void
.end method

.method public blacklist writeString(ILjava/lang/String;)V
    .registers 4

    .line 2651
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->getTotalBytesWritten()I

    move-result v0

    .line 2652
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeString(Ljava/lang/String;)V

    .line 2653
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, v0

    .line 2654
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2655
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2656
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2657
    return-void
.end method

.method blacklist writeString(Ljava/lang/String;)V
    .registers 14

    .line 2937
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2940
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2943
    :goto_d
    const/16 v1, 0x80

    const-wide/16 v2, 0x1

    if-ltz v0, :cond_26

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v1, :cond_26

    .line 2944
    iget-wide v5, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v1, v5, v2

    iput-wide v1, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-byte v1, v4

    invoke-static {v5, v6, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2943
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 2946
    :cond_26
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2a

    .line 2948
    return-void

    .line 2950
    :cond_2a
    :goto_2a
    if-ltz v0, :cond_116

    .line 2951
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2952
    if-ge v5, v1, :cond_46

    iget-wide v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    iget-wide v8, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferOffset:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_46

    .line 2953
    iget-wide v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    goto/16 :goto_113

    .line 2954
    :cond_46
    const/16 v6, 0x800

    if-ge v5, v6, :cond_6f

    iget-wide v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    iget-wide v8, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferOffset:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_6f

    .line 2955
    iget-wide v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 v8, v5, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2956
    iget-wide v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v5, v5, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    goto/16 :goto_113

    .line 2957
    :cond_6f
    const v6, 0xd800

    if-lt v5, v6, :cond_79

    const v6, 0xdfff

    if-ge v6, v5, :cond_ad

    :cond_79
    iget-wide v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    iget-wide v8, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferOffset:J

    add-long/2addr v8, v2

    cmp-long v6, v6, v8

    if-lez v6, :cond_ad

    .line 2960
    iget-wide v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 v8, v5, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2961
    iget-wide v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2962
    iget-wide v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v5, v5, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    goto :goto_113

    .line 2963
    :cond_ad
    iget-wide v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    iget-wide v8, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferOffset:J

    const-wide/16 v10, 0x2

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-lez v6, :cond_10e

    .line 2967
    if-eqz v0, :cond_106

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v7

    if-eqz v7, :cond_106

    .line 2970
    add-int/lit8 v0, v0, -0x1

    .line 2971
    invoke-static {v6, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    .line 2972
    iget-wide v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 v8, v5, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2973
    iget-wide v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2974
    iget-wide v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2975
    iget-wide v6, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v5, v5, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2976
    goto :goto_113

    .line 2968
    :cond_106
    new-instance p1, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p1, v1, v0}, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p1

    .line 2978
    :cond_10e
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2979
    add-int/lit8 v0, v0, 0x1

    .line 2950
    :goto_113
    add-int/2addr v0, v4

    goto/16 :goto_2a

    .line 2982
    :cond_116
    return-void
.end method

.method blacklist writeTag(II)V
    .registers 3

    .line 2745
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2746
    return-void
.end method

.method public blacklist writeUInt32(II)V
    .registers 4

    .line 2595
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2596
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2597
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2598
    return-void
.end method

.method public blacklist writeUInt64(IJ)V
    .registers 5

    .line 2623
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2624
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64(J)V

    .line 2625
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2626
    return-void
.end method

.method blacklist writeVarint32(I)V
    .registers 3

    .line 2750
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    .line 2751
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32OneByte(I)V

    goto :goto_25

    .line 2752
    :cond_8
    and-int/lit16 v0, p1, -0x4000

    if-nez v0, :cond_10

    .line 2753
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32TwoBytes(I)V

    goto :goto_25

    .line 2754
    :cond_10
    const/high16 v0, -0x200000

    and-int/2addr v0, p1

    if-nez v0, :cond_19

    .line 2755
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32ThreeBytes(I)V

    goto :goto_25

    .line 2756
    :cond_19
    const/high16 v0, -0x10000000

    and-int/2addr v0, p1

    if-nez v0, :cond_22

    .line 2757
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32FourBytes(I)V

    goto :goto_25

    .line 2759
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32FiveBytes(I)V

    .line 2761
    :goto_25
    return-void
.end method

.method blacklist writeVarint64(J)V
    .registers 4

    .line 2795
    # invokes: Lcom/android/framework/protobuf/BinaryWriter;->computeUInt64SizeNoTag(J)B
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->access$200(J)B

    move-result v0

    packed-switch v0, :pswitch_data_32

    goto :goto_30

    .line 2824
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64TenBytes(J)V

    goto :goto_30

    .line 2821
    :pswitch_c
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64NineBytes(J)V

    .line 2822
    goto :goto_30

    .line 2818
    :pswitch_10
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64EightBytes(J)V

    .line 2819
    goto :goto_30

    .line 2815
    :pswitch_14
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64SevenBytes(J)V

    .line 2816
    goto :goto_30

    .line 2812
    :pswitch_18
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64SixBytes(J)V

    .line 2813
    goto :goto_30

    .line 2809
    :pswitch_1c
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64FiveBytes(J)V

    .line 2810
    goto :goto_30

    .line 2806
    :pswitch_20
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64FourBytes(J)V

    .line 2807
    goto :goto_30

    .line 2803
    :pswitch_24
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64ThreeBytes(J)V

    .line 2804
    goto :goto_30

    .line 2800
    :pswitch_28
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64TwoBytes(J)V

    .line 2801
    goto :goto_30

    .line 2797
    :pswitch_2c
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64OneByte(J)V

    .line 2798
    nop

    .line 2827
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
