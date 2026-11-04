.class Lcom/android/framework/protobuf/IterableByteBufferInputStream;
.super Ljava/io/InputStream;
.source "IterableByteBufferInputStream.java"


# instance fields
.field private blacklist currentAddress:J

.field private blacklist currentArray:[B

.field private blacklist currentArrayOffset:I

.field private blacklist currentByteBuffer:Ljava/nio/ByteBuffer;

.field private blacklist currentByteBufferPos:I

.field private blacklist currentIndex:I

.field private blacklist dataSize:I

.field private blacklist hasArray:Z

.field private blacklist iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 48
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->iterator:Ljava/util/Iterator;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->dataSize:I

    .line 50
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 51
    iget v1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->dataSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->dataSize:I

    .line 52
    goto :goto_10

    .line 53
    :cond_23
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentIndex:I

    .line 55
    invoke-direct {p0}, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->getNextByteBuffer()Z

    move-result p1

    if-nez p1, :cond_38

    .line 56
    sget-object p1, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    .line 57
    iput v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentIndex:I

    .line 58
    iput v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBufferPos:I

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentAddress:J

    .line 61
    :cond_38
    return-void
.end method

.method private blacklist getNextByteBuffer()Z
    .registers 5

    .line 64
    iget v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentIndex:I

    .line 65
    iget-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 66
    return v2

    .line 68
    :cond_10
    iget-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    .line 69
    iget-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBufferPos:I

    .line 70
    iget-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 71
    iput-boolean v1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->hasArray:Z

    .line 72
    iget-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentArray:[B

    .line 73
    iget-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentArrayOffset:I

    goto :goto_4a

    .line 75
    :cond_3d
    iput-boolean v2, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->hasArray:Z

    .line 76
    iget-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentAddress:J

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentArray:[B

    .line 79
    :goto_4a
    return v1
.end method

.method private blacklist updateCurrentByteBufferPos(I)V
    .registers 3

    .line 83
    iget v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBufferPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBufferPos:I

    .line 84
    iget p1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBufferPos:I

    iget-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-ne p1, v0, :cond_12

    .line 85
    invoke-direct {p0}, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->getNextByteBuffer()Z

    .line 87
    :cond_12
    return-void
.end method


# virtual methods
.method public whitelist test-api read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentIndex:I

    iget v1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->dataSize:I

    if-ne v0, v1, :cond_8

    .line 92
    const/4 v0, -0x1

    return v0

    .line 94
    :cond_8
    iget-boolean v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->hasArray:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 95
    iget-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentArray:[B

    iget v2, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBufferPos:I

    iget v3, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentArrayOffset:I

    add-int/2addr v2, v3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 96
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->updateCurrentByteBufferPos(I)V

    .line 97
    return v0

    .line 99
    :cond_1c
    iget v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBufferPos:I

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentAddress:J

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 100
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->updateCurrentByteBufferPos(I)V

    .line 101
    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentIndex:I

    iget v1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->dataSize:I

    if-ne v0, v1, :cond_8

    .line 108
    const/4 p1, -0x1

    return p1

    .line 110
    :cond_8
    iget-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBufferPos:I

    sub-int/2addr v0, v1

    .line 111
    if-le p3, v0, :cond_14

    .line 112
    move p3, v0

    .line 114
    :cond_14
    iget-boolean v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->hasArray:Z

    if-eqz v0, :cond_26

    .line 115
    iget-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentArray:[B

    iget v1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBufferPos:I

    iget v2, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentArrayOffset:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->updateCurrentByteBufferPos(I)V

    goto :goto_40

    .line 119
    :cond_26
    iget-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBufferPos:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 121
    iget-object v1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 122
    iget-object p1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 123
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->updateCurrentByteBufferPos(I)V

    .line 125
    :goto_40
    return p3
.end method
