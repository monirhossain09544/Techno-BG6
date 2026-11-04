.class final Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;
.super Lcom/android/framework/protobuf/BinaryWriter;
.source "BinaryWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeDirectWriter"
.end annotation


# instance fields
.field private blacklist buffer:Ljava/nio/ByteBuffer;

.field private blacklist limitMinusOne:I

.field private blacklist pos:I


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/BufferAllocator;I)V
    .registers 4

    .line 1974
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/framework/protobuf/BinaryWriter;-><init>(Lcom/android/framework/protobuf/BufferAllocator;ILcom/android/framework/protobuf/BinaryWriter$1;)V

    .line 1975
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer()V

    .line 1976
    return-void
.end method

.method private blacklist bytesWrittenToCurrentBuffer()I
    .registers 3

    .line 2014
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->limitMinusOne:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private blacklist nextBuffer()V
    .registers 2

    .line 1979
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->newDirectBuffer()Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer(Lcom/android/framework/protobuf/AllocatedBuffer;)V

    .line 1980
    return-void
.end method

.method private blacklist nextBuffer(I)V
    .registers 2

    .line 1983
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->newDirectBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer(Lcom/android/framework/protobuf/AllocatedBuffer;)V

    .line 1984
    return-void
.end method

.method private blacklist nextBuffer(Lcom/android/framework/protobuf/AllocatedBuffer;)V
    .registers 4

    .line 1987
    invoke-virtual {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->hasNioBuffer()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1990
    invoke-virtual {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1991
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1995
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->finishCurrentBuffer()V

    .line 1996
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1998
    iput-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 1999
    iget-object p1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Java8Compatibility;->limit(Ljava/nio/Buffer;I)V

    .line 2000
    iget-object p1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 2002
    iget-object p1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2004
    iget-object p1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->limitMinusOne:I

    .line 2005
    iget p1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->limitMinusOne:I

    iput p1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2006
    return-void

    .line 1992
    :cond_41
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Allocator returned non-direct buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1988
    :cond_49
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Allocated buffer does not have NIO buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist spaceLeft()I
    .registers 2

    .line 2018
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist writeVarint32FiveBytes(I)V
    .registers 6

    .line 2237
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v2, p1, 0x1c

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2238
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2239
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v2, p1, 0x15

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v3, p1, 0xe

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    ushr-int/lit8 v3, p1, 0x7

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    or-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2245
    return-void
.end method

.method private blacklist writeVarint32FourBytes(I)V
    .registers 7

    .line 2226
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2227
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    const/high16 v2, 0xfe00000

    and-int/2addr v2, p1

    shl-int/lit8 v2, v2, 0x3

    const v3, 0x1fc000

    and-int/2addr v3, p1

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    and-int/lit16 v3, p1, 0x3f80

    or-int/lit16 v3, v3, 0x4000

    shl-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    or-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2233
    return-void
.end method

.method private blacklist writeVarint32OneByte(I)V
    .registers 5

    .line 2205
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    int-to-byte p1, p1

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2206
    return-void
.end method

.method private blacklist writeVarint32ThreeBytes(I)V
    .registers 6

    .line 2216
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2217
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const v2, 0x1fc000

    and-int/2addr v2, p1

    shl-int/lit8 v2, v2, 0xa

    and-int/lit16 v3, p1, 0x3f80

    or-int/lit16 v3, v3, 0x4000

    shl-int/lit8 v3, v3, 0x9

    or-int/2addr v2, v3

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2222
    return-void
.end method

.method private blacklist writeVarint32TwoBytes(I)V
    .registers 5

    .line 2210
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2211
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v2, p1, 0x3f80

    shl-int/lit8 v2, v2, 0x1

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    or-int/2addr p1, v2

    int-to-short p1, p1

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 2212
    return-void
.end method

.method private blacklist writeVarint64EightBytes(J)V
    .registers 12

    .line 2340
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2341
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const-wide/high16 v3, 0xfe000000000000L

    and-long/2addr v3, p1

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    const-wide v5, 0x1fc0000000000L

    and-long/2addr v5, p1

    const-wide/high16 v7, 0x2000000000000L

    or-long/2addr v5, v7

    const/4 v7, 0x6

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide v5, 0x3f800000000L

    and-long/2addr v5, p1

    const-wide v7, 0x40000000000L

    or-long/2addr v5, v7

    const/4 v7, 0x5

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide v5, 0x7f0000000L

    and-long/2addr v5, p1

    const-wide v7, 0x800000000L

    or-long/2addr v5, v7

    const/4 v7, 0x4

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide/32 v5, 0xfe00000

    and-long/2addr v5, p1

    const-wide/32 v7, 0x10000000

    or-long/2addr v5, v7

    const/4 v7, 0x3

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide/32 v5, 0x1fc000

    and-long/2addr v5, p1

    const-wide/32 v7, 0x200000

    or-long/2addr v5, v7

    const/4 v7, 0x2

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide/16 v5, 0x3f80

    and-long/2addr v5, p1

    const-wide/16 v7, 0x4000

    or-long/2addr v5, v7

    shl-long/2addr v5, v2

    or-long v2, v3, v5

    const-wide/16 v4, 0x7f

    and-long/2addr p1, v4

    const-wide/16 v4, 0x80

    or-long/2addr p1, v4

    or-long/2addr p1, v2

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2351
    return-void
.end method

.method private blacklist writeVarint64EightBytesWithSign(J)V
    .registers 12

    .line 2355
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2356
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const-wide/high16 v3, 0xfe000000000000L

    and-long/2addr v3, p1

    const-wide/high16 v5, 0x100000000000000L

    or-long/2addr v3, v5

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    const-wide v5, 0x1fc0000000000L

    and-long/2addr v5, p1

    const-wide/high16 v7, 0x2000000000000L

    or-long/2addr v5, v7

    const/4 v7, 0x6

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide v5, 0x3f800000000L

    and-long/2addr v5, p1

    const-wide v7, 0x40000000000L

    or-long/2addr v5, v7

    const/4 v7, 0x5

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide v5, 0x7f0000000L

    and-long/2addr v5, p1

    const-wide v7, 0x800000000L

    or-long/2addr v5, v7

    const/4 v7, 0x4

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide/32 v5, 0xfe00000

    and-long/2addr v5, p1

    const-wide/32 v7, 0x10000000

    or-long/2addr v5, v7

    const/4 v7, 0x3

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide/32 v5, 0x1fc000

    and-long/2addr v5, p1

    const-wide/32 v7, 0x200000

    or-long/2addr v5, v7

    const/4 v7, 0x2

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide/16 v5, 0x3f80

    and-long/2addr v5, p1

    const-wide/16 v7, 0x4000

    or-long/2addr v5, v7

    shl-long/2addr v5, v2

    or-long v2, v3, v5

    const-wide/16 v4, 0x7f

    and-long/2addr p1, v4

    const-wide/16 v4, 0x80

    or-long/2addr p1, v4

    or-long/2addr p1, v2

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2366
    return-void
.end method

.method private blacklist writeVarint64FiveBytes(J)V
    .registers 11

    .line 2301
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2302
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, -0x2

    const-wide v2, 0x7f0000000L

    and-long/2addr v2, p1

    const/16 v4, 0x1c

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xfe00000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x10000000

    or-long/2addr v4, v6

    const/16 v6, 0x1b

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/32 v4, 0x1fc000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x200000

    or-long/2addr v4, v6

    const/16 v6, 0x1a

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3f80

    and-long/2addr v4, p1

    const-wide/16 v6, 0x4000

    or-long/2addr v4, v6

    const/16 v6, 0x19

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x7f

    and-long/2addr p1, v4

    const-wide/16 v4, 0x80

    or-long/2addr p1, v4

    const/16 v4, 0x18

    shl-long/2addr p1, v4

    or-long/2addr p1, v2

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2309
    return-void
.end method

.method private blacklist writeVarint64FourBytes(J)V
    .registers 3

    .line 2296
    long-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32FourBytes(I)V

    .line 2297
    return-void
.end method

.method private blacklist writeVarint64NineBytes(J)V
    .registers 7

    .line 2369
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2370
    const-wide v0, 0xffffffffffffffL

    and-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64EightBytesWithSign(J)V

    .line 2371
    return-void
.end method

.method private blacklist writeVarint64OneByte(J)V
    .registers 3

    .line 2284
    long-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32OneByte(I)V

    .line 2285
    return-void
.end method

.method private blacklist writeVarint64SevenBytes(J)V
    .registers 11

    .line 2326
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x7

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2327
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const-wide v2, 0x1fc0000000000L

    and-long/2addr v2, p1

    const/16 v4, 0xe

    shl-long/2addr v2, v4

    const-wide v4, 0x3f800000000L

    and-long/2addr v4, p1

    const-wide v6, 0x40000000000L

    or-long/2addr v4, v6

    const/16 v6, 0xd

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide v4, 0x7f0000000L

    and-long/2addr v4, p1

    const-wide v6, 0x800000000L

    or-long/2addr v4, v6

    const/16 v6, 0xc

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/32 v4, 0xfe00000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x10000000

    or-long/2addr v4, v6

    const/16 v6, 0xb

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/32 v4, 0x1fc000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x200000

    or-long/2addr v4, v6

    const/16 v6, 0xa

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3f80

    and-long/2addr v4, p1

    const-wide/16 v6, 0x4000

    or-long/2addr v4, v6

    const/16 v6, 0x9

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x7f

    and-long/2addr p1, v4

    const-wide/16 v4, 0x80

    or-long/2addr p1, v4

    const/16 v4, 0x8

    shl-long/2addr p1, v4

    or-long/2addr p1, v2

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2336
    return-void
.end method

.method private blacklist writeVarint64SixBytes(J)V
    .registers 11

    .line 2313
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2314
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, -0x1

    const-wide v2, 0x3f800000000L

    and-long/2addr v2, p1

    const/16 v4, 0x15

    shl-long/2addr v2, v4

    const-wide v4, 0x7f0000000L

    and-long/2addr v4, p1

    const-wide v6, 0x800000000L

    or-long/2addr v4, v6

    const/16 v6, 0x14

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/32 v4, 0xfe00000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x10000000

    or-long/2addr v4, v6

    const/16 v6, 0x13

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/32 v4, 0x1fc000

    and-long/2addr v4, p1

    const-wide/32 v6, 0x200000

    or-long/2addr v4, v6

    const/16 v6, 0x12

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3f80

    and-long/2addr v4, p1

    const-wide/16 v6, 0x4000

    or-long/2addr v4, v6

    const/16 v6, 0x11

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x7f

    and-long/2addr p1, v4

    const-wide/16 v4, 0x80

    or-long/2addr p1, v4

    const/16 v4, 0x10

    shl-long/2addr p1, v4

    or-long/2addr p1, v2

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2322
    return-void
.end method

.method private blacklist writeVarint64TenBytes(J)V
    .registers 9

    .line 2374
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const/16 v2, 0x3f

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2375
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    const-wide/16 v4, 0x7f

    and-long/2addr v2, v4

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2376
    const-wide v0, 0xffffffffffffffL

    and-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64EightBytesWithSign(J)V

    .line 2377
    return-void
.end method

.method private blacklist writeVarint64ThreeBytes(J)V
    .registers 3

    .line 2292
    long-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32ThreeBytes(I)V

    .line 2293
    return-void
.end method

.method private blacklist writeVarint64TwoBytes(J)V
    .registers 3

    .line 2288
    long-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32TwoBytes(I)V

    .line 2289
    return-void
.end method


# virtual methods
.method blacklist finishCurrentBuffer()V
    .registers 3

    .line 2023
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1e

    .line 2024
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    .line 2026
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 2027
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 2028
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2029
    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->limitMinusOne:I

    .line 2031
    :cond_1e
    return-void
.end method

.method public blacklist getTotalBytesWritten()I
    .registers 3

    .line 2010
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method blacklist requireSpace(I)V
    .registers 3

    .line 2512
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p1, :cond_9

    .line 2513
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer(I)V

    .line 2515
    :cond_9
    return-void
.end method

.method public blacklist write(B)V
    .registers 5

    .line 2445
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2446
    return-void
.end method

.method public blacklist write(Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 2480
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2481
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_d

    .line 2482
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer(I)V

    .line 2485
    :cond_d
    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2486
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 2487
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 2488
    return-void
.end method

.method public blacklist write([BII)V
    .registers 6

    .line 2450
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_9

    .line 2451
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer(I)V

    .line 2454
    :cond_9
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2455
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 2456
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 2457
    return-void
.end method

.method public blacklist writeBool(IZ)V
    .registers 4

    .line 2084
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2085
    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->write(B)V

    .line 2086
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2087
    return-void
.end method

.method blacklist writeBool(Z)V
    .registers 2

    .line 2181
    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->write(B)V

    .line 2182
    return-void
.end method

.method public blacklist writeBytes(ILcom/android/framework/protobuf/ByteString;)V
    .registers 4

    .line 2102
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/android/framework/protobuf/ByteString;->writeToReverse(Lcom/android/framework/protobuf/ByteOutput;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_15

    .line 2106
    nop

    .line 2108
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2109
    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 2110
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2111
    return-void

    .line 2103
    :catch_15
    move-exception p1

    .line 2105
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public blacklist writeEndGroup(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2157
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2158
    return-void
.end method

.method blacklist writeFixed32(I)V
    .registers 4

    .line 2381
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2382
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2383
    return-void
.end method

.method public blacklist writeFixed32(II)V
    .registers 4

    .line 2056
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2057
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeFixed32(I)V

    .line 2058
    const/4 p2, 0x5

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2059
    return-void
.end method

.method public blacklist writeFixed64(IJ)V
    .registers 5

    .line 2077
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2078
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeFixed64(J)V

    .line 2079
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2080
    return-void
.end method

.method blacklist writeFixed64(J)V
    .registers 5

    .line 2387
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2388
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2389
    return-void
.end method

.method public blacklist writeGroup(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2136
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2137
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/android/framework/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 2138
    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2139
    return-void
.end method

.method public blacklist writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2143
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2144
    invoke-interface {p3, p2, p0}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 2145
    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2146
    return-void
.end method

.method blacklist writeInt32(I)V
    .registers 4

    .line 2162
    if-ltz p1, :cond_6

    .line 2163
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    goto :goto_a

    .line 2165
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64(J)V

    .line 2167
    :goto_a
    return-void
.end method

.method public blacklist writeInt32(II)V
    .registers 4

    .line 2042
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2043
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeInt32(I)V

    .line 2044
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2045
    return-void
.end method

.method public blacklist writeLazy(Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 2492
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2493
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_1c

    .line 2496
    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    .line 2497
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/android/framework/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2501
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer()V

    .line 2502
    return-void

    .line 2505
    :cond_1c
    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2506
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 2507
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 2508
    return-void
.end method

.method public blacklist writeLazy([BII)V
    .registers 6

    .line 2461
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_18

    .line 2464
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->totalDoneBytes:I

    .line 2465
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/AllocatedBuffer;->wrap([BII)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2469
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->nextBuffer()V

    .line 2470
    return-void

    .line 2473
    :cond_18
    iget v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2474
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 2475
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 2476
    return-void
.end method

.method public blacklist writeMessage(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2115
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->getTotalBytesWritten()I

    move-result v0

    .line 2116
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Lcom/android/framework/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 2117
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, v0

    .line 2118
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2119
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 2120
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2121
    return-void
.end method

.method public blacklist writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2125
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->getTotalBytesWritten()I

    move-result v0

    .line 2126
    invoke-interface {p3, p2, p0}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 2127
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, v0

    .line 2128
    const/16 p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2129
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 2130
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2131
    return-void
.end method

.method blacklist writeSInt32(I)V
    .registers 2

    .line 2171
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 2172
    return-void
.end method

.method public blacklist writeSInt32(II)V
    .registers 4

    .line 2049
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2050
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeSInt32(I)V

    .line 2051
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2052
    return-void
.end method

.method public blacklist writeSInt64(IJ)V
    .registers 5

    .line 2070
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2071
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeSInt64(J)V

    .line 2072
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2073
    return-void
.end method

.method blacklist writeSInt64(J)V
    .registers 3

    .line 2176
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64(J)V

    .line 2177
    return-void
.end method

.method public blacklist writeStartGroup(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2151
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2152
    return-void
.end method

.method public blacklist writeString(ILjava/lang/String;)V
    .registers 4

    .line 2091
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->getTotalBytesWritten()I

    move-result v0

    .line 2092
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeString(Ljava/lang/String;)V

    .line 2093
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, v0

    .line 2094
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2095
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 2096
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2097
    return-void
.end method

.method blacklist writeString(Ljava/lang/String;)V
    .registers 10

    .line 2394
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2397
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2398
    iget v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2401
    :goto_12
    const/16 v2, 0x80

    if-ltz v0, :cond_28

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ge v3, v2, :cond_28

    .line 2402
    iget-object v2, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/2addr v4, v0

    int-to-byte v3, v3

    invoke-virtual {v2, v4, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2401
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 2404
    :cond_28
    const/4 v3, -0x1

    if-ne v0, v3, :cond_31

    .line 2406
    iget p1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2407
    return-void

    .line 2409
    :cond_31
    iget v4, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 2410
    :goto_36
    if-ltz v0, :cond_124

    .line 2411
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2412
    if-ge v4, v2, :cond_50

    iget v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    if-ltz v5, :cond_50

    .line 2413
    iget-object v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    int-to-byte v4, v4

    invoke-virtual {v5, v6, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto/16 :goto_121

    .line 2414
    :cond_50
    const/16 v5, 0x800

    if-ge v4, v5, :cond_79

    iget v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    if-lez v5, :cond_79

    .line 2415
    iget-object v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    and-int/lit8 v7, v4, 0x3f

    or-int/2addr v7, v2

    int-to-byte v7, v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2416
    iget-object v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v4, v4, 0x6

    or-int/lit16 v4, v4, 0x3c0

    int-to-byte v4, v4

    invoke-virtual {v5, v6, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto/16 :goto_121

    .line 2417
    :cond_79
    const v5, 0xd800

    if-lt v4, v5, :cond_83

    const v5, 0xdfff

    if-ge v5, v4, :cond_b8

    :cond_83
    iget v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    if-le v5, v1, :cond_b8

    .line 2419
    iget-object v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    and-int/lit8 v7, v4, 0x3f

    or-int/2addr v7, v2

    int-to-byte v7, v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2420
    iget-object v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v7, v4, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v2

    int-to-byte v7, v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2421
    iget-object v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v4, v4, 0xc

    or-int/lit16 v4, v4, 0x1e0

    int-to-byte v4, v4

    invoke-virtual {v5, v6, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto :goto_121

    .line 2422
    :cond_b8
    iget v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_11c

    .line 2425
    nop

    .line 2426
    if-eqz v0, :cond_114

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_114

    .line 2429
    add-int/lit8 v0, v0, -0x1

    .line 2430
    invoke-static {v5, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    .line 2431
    iget-object v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    and-int/lit8 v7, v4, 0x3f

    or-int/2addr v7, v2

    int-to-byte v7, v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2432
    iget-object v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v7, v4, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v2

    int-to-byte v7, v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2433
    iget-object v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v2

    int-to-byte v7, v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2434
    iget-object v5, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    ushr-int/lit8 v4, v4, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    invoke-virtual {v5, v6, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 2435
    goto :goto_121

    .line 2427
    :cond_114
    new-instance p1, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p1, v1, v0}, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p1

    .line 2437
    :cond_11c
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2438
    add-int/lit8 v0, v0, 0x1

    .line 2410
    :goto_121
    add-int/2addr v0, v3

    goto/16 :goto_36

    .line 2441
    :cond_124
    return-void
.end method

.method blacklist writeTag(II)V
    .registers 3

    .line 2186
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 2187
    return-void
.end method

.method public blacklist writeUInt32(II)V
    .registers 4

    .line 2035
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2036
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32(I)V

    .line 2037
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2038
    return-void
.end method

.method public blacklist writeUInt64(IJ)V
    .registers 5

    .line 2063
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->requireSpace(I)V

    .line 2064
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64(J)V

    .line 2065
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeTag(II)V

    .line 2066
    return-void
.end method

.method blacklist writeVarint32(I)V
    .registers 3

    .line 2191
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    .line 2192
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32OneByte(I)V

    goto :goto_25

    .line 2193
    :cond_8
    and-int/lit16 v0, p1, -0x4000

    if-nez v0, :cond_10

    .line 2194
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32TwoBytes(I)V

    goto :goto_25

    .line 2195
    :cond_10
    const/high16 v0, -0x200000

    and-int/2addr v0, p1

    if-nez v0, :cond_19

    .line 2196
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32ThreeBytes(I)V

    goto :goto_25

    .line 2197
    :cond_19
    const/high16 v0, -0x10000000

    and-int/2addr v0, p1

    if-nez v0, :cond_22

    .line 2198
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32FourBytes(I)V

    goto :goto_25

    .line 2200
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint32FiveBytes(I)V

    .line 2202
    :goto_25
    return-void
.end method

.method blacklist writeVarint64(J)V
    .registers 4

    .line 2249
    # invokes: Lcom/android/framework/protobuf/BinaryWriter;->computeUInt64SizeNoTag(J)B
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->access$200(J)B

    move-result v0

    packed-switch v0, :pswitch_data_32

    goto :goto_30

    .line 2278
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64TenBytes(J)V

    goto :goto_30

    .line 2275
    :pswitch_c
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64NineBytes(J)V

    .line 2276
    goto :goto_30

    .line 2272
    :pswitch_10
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64EightBytes(J)V

    .line 2273
    goto :goto_30

    .line 2269
    :pswitch_14
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64SevenBytes(J)V

    .line 2270
    goto :goto_30

    .line 2266
    :pswitch_18
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64SixBytes(J)V

    .line 2267
    goto :goto_30

    .line 2263
    :pswitch_1c
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64FiveBytes(J)V

    .line 2264
    goto :goto_30

    .line 2260
    :pswitch_20
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64FourBytes(J)V

    .line 2261
    goto :goto_30

    .line 2257
    :pswitch_24
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64ThreeBytes(J)V

    .line 2258
    goto :goto_30

    .line 2254
    :pswitch_28
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64TwoBytes(J)V

    .line 2255
    goto :goto_30

    .line 2251
    :pswitch_2c
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;->writeVarint64OneByte(J)V

    .line 2252
    nop

    .line 2281
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
