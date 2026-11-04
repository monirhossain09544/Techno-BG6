.class final Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;
.super Lcom/android/framework/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IterableDirectByteBufferDecoder"
.end annotation


# instance fields
.field private blacklist bufferSizeAfterCurrentLimit:I

.field private blacklist currentAddress:J

.field private blacklist currentByteBuffer:Ljava/nio/ByteBuffer;

.field private blacklist currentByteBufferLimit:J

.field private blacklist currentByteBufferPos:J

.field private blacklist currentByteBufferStartPos:J

.field private blacklist currentLimit:I

.field private blacklist enableAliasing:Z

.field private final blacklist immutable:Z

.field private final blacklist input:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist lastTag:I

.field private blacklist startOffset:I

.field private blacklist totalBufferSize:I

.field private blacklist totalBytesRead:I


# direct methods
.method private constructor blacklist <init>(Ljava/lang/Iterable;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;IZ)V"
        }
    .end annotation

    .line 3135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream;-><init>(Lcom/android/framework/protobuf/CodedInputStream$1;)V

    .line 3108
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    .line 3136
    iput p2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    .line 3137
    iput-object p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->input:Ljava/lang/Iterable;

    .line 3138
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->input:Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->iterator:Ljava/util/Iterator;

    .line 3139
    iput-boolean p3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->immutable:Z

    .line 3140
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->startOffset:I

    .line 3141
    if-nez p2, :cond_2d

    .line 3142
    sget-object p1, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    .line 3143
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3144
    iput-wide p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    .line 3145
    iput-wide p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    .line 3146
    iput-wide p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    goto :goto_30

    .line 3148
    :cond_2d
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->tryGetNextByteBuffer()V

    .line 3150
    :goto_30
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/Iterable;IZLcom/android/framework/protobuf/CodedInputStream$1;)V
    .registers 5

    .line 3086
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;-><init>(Ljava/lang/Iterable;IZ)V

    return-void
.end method

.method private blacklist currentRemaining()J
    .registers 5

    .line 3885
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist getNextByteBuffer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3154
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3157
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->tryGetNextByteBuffer()V

    .line 3158
    return-void

    .line 3155
    :cond_c
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist readRawBytesTo([BII)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3808
    if-ltz p3, :cond_34

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_34

    .line 3809
    move v0, p3

    .line 3810
    :goto_9
    if-lez v0, :cond_33

    .line 3811
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_18

    .line 3812
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getNextByteBuffer()V

    .line 3814
    :cond_18
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3815
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-int v4, p3, v0

    add-int/2addr v4, p2

    int-to-long v5, v4

    int-to-long v7, v1

    move-object v4, p1

    invoke-static/range {v2 .. v8}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 3816
    sub-int/2addr v0, v1

    .line 3817
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v1, v7

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3818
    goto :goto_9

    .line 3819
    :cond_33
    return-void

    .line 3822
    :cond_34
    if-gtz p3, :cond_3e

    .line 3823
    if-nez p3, :cond_39

    .line 3824
    return-void

    .line 3826
    :cond_39
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3829
    :cond_3e
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private blacklist recomputeBufferSizeAfterLimit()V
    .registers 3

    .line 3732
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->bufferSizeAfterCurrentLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    .line 3733
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->startOffset:I

    sub-int/2addr v0, v1

    .line 3734
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    if-le v0, v1, :cond_1d

    .line 3736
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->bufferSizeAfterCurrentLimit:I

    .line 3737
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->bufferSizeAfterCurrentLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    goto :goto_20

    .line 3739
    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->bufferSizeAfterCurrentLimit:I

    .line 3741
    :goto_20
    return-void
.end method

.method private blacklist remaining()I
    .registers 5

    .line 3875
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    add-long/2addr v0, v2

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

    .line 3861
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 3862
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_c

    .line 3863
    return-void

    .line 3861
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3866
    :cond_f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist slice(II)Ljava/nio/ByteBuffer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3889
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 3890
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 3893
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    .line 3895
    :try_start_e
    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 3896
    invoke-virtual {v2, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 3897
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_1a} :catch_23
    .catchall {:try_start_e .. :try_end_1a} :catchall_21

    .line 3901
    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 3902
    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 3897
    return-object p1

    .line 3901
    :catchall_21
    move-exception p1

    goto :goto_29

    .line 3898
    :catch_23
    move-exception p1

    .line 3899
    :try_start_24
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_21

    .line 3901
    :goto_29
    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 3902
    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 3903
    throw p1
.end method

.method private blacklist tryGetNextByteBuffer()V
    .registers 6

    .line 3161
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    .line 3162
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    .line 3163
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3164
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    .line 3165
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    .line 3166
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    .line 3167
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3168
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    .line 3169
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    .line 3170
    return-void
.end method


# virtual methods
.method public blacklist checkLastTagWas(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3190
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    if-ne v0, p1, :cond_5

    .line 3193
    return-void

    .line 3191
    :cond_5
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public blacklist enableAliasing(Z)V
    .registers 2

    .line 3706
    iput-boolean p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->enableAliasing:Z

    .line 3707
    return-void
.end method

.method public blacklist getBytesUntilLimit()I
    .registers 3

    .line 3751
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    .line 3752
    const/4 v0, -0x1

    return v0

    .line 3755
    :cond_9
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getTotalBytesRead()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist getLastTag()I
    .registers 2

    .line 3197
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    return v0
.end method

.method public blacklist getTotalBytesRead()I
    .registers 5

    .line 3765
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->startOffset:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

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

    .line 3760
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public blacklist popLimit(I)V
    .registers 2

    .line 3745
    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    .line 3746
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recomputeBufferSizeAfterLimit()V

    .line 3747
    return-void
.end method

.method public blacklist pushLimit(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3716
    if-ltz p1, :cond_16

    .line 3719
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getTotalBytesRead()I

    move-result v0

    add-int/2addr p1, v0

    .line 3720
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    .line 3721
    if-gt p1, v0, :cond_11

    .line 3724
    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    .line 3726
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recomputeBufferSizeAfterLimit()V

    .line 3728
    return v0

    .line 3722
    :cond_11
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3717
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

    .line 3317
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64()J

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

    .line 3486
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist readByteBuffer()Ljava/nio/ByteBuffer;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3491
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    .line 3492
    if-lez v0, :cond_41

    int-to-long v6, v0

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v1

    cmp-long v1, v6, v1

    if-gtz v1, :cond_41

    .line 3493
    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->immutable:Z

    if-nez v1, :cond_2e

    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->enableAliasing:Z

    if-eqz v1, :cond_2e

    .line 3494
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3495
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    sub-long/2addr v0, v2

    sub-long/2addr v0, v6

    long-to-int v0, v0

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 3499
    :cond_2e
    new-array v3, v0, [B

    .line 3500
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 3501
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3502
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 3504
    :cond_41
    if-lez v0, :cond_54

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_54

    .line 3505
    new-array v1, v0, [B

    .line 3506
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytesTo([BII)V

    .line 3507
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 3510
    :cond_54
    if-nez v0, :cond_59

    .line 3511
    sget-object v0, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    .line 3513
    :cond_59
    if-gez v0, :cond_60

    .line 3514
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3516
    :cond_60
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

    .line 3440
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    .line 3441
    if-lez v0, :cond_40

    int-to-long v6, v0

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v1, v3

    cmp-long v1, v6, v1

    if-gtz v1, :cond_40

    .line 3442
    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->immutable:Z

    if-eqz v1, :cond_2d

    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->enableAliasing:Z

    if-eqz v1, :cond_2d

    .line 3443
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 3444
    add-int/2addr v0, v1

    invoke-direct {p0, v1, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    .line 3445
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v1, v6

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3446
    return-object v0

    .line 3448
    :cond_2d
    new-array v3, v0, [B

    .line 3449
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 3450
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3451
    invoke-static {v3}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 3453
    :cond_40
    if-lez v0, :cond_99

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_99

    .line 3454
    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->immutable:Z

    if-eqz v1, :cond_8e

    iget-boolean v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->enableAliasing:Z

    if-eqz v1, :cond_8e

    .line 3455
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3456
    nop

    .line 3457
    :goto_56
    if-lez v0, :cond_89

    .line 3458
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_65

    .line 3459
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getNextByteBuffer()V

    .line 3461
    :cond_65
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3462
    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    iget-wide v5, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    .line 3463
    add-int v4, v3, v2

    invoke-direct {p0, v3, v4}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/android/framework/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3464
    sub-int/2addr v0, v2

    .line 3465
    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3466
    goto :goto_56

    .line 3467
    :cond_89
    invoke-static {v1}, Lcom/android/framework/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 3469
    :cond_8e
    new-array v1, v0, [B

    .line 3470
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytesTo([BII)V

    .line 3471
    invoke-static {v1}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 3475
    :cond_99
    if-nez v0, :cond_9e

    .line 3476
    sget-object v0, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    return-object v0

    .line 3478
    :cond_9e
    if-gez v0, :cond_a5

    .line 3479
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3481
    :cond_a5
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

    .line 3282
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian64()J

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

    .line 3526
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

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

    .line 3312
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian32()I

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

    .line 3307
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian64()J

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

    .line 3287
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian32()I

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

    .line 3389
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkRecursionLimit()V

    .line 3390
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3391
    invoke-interface {p2, p0, p3}, Lcom/android/framework/protobuf/Parser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/framework/protobuf/MessageLite;

    .line 3392
    const/4 p3, 0x4

    invoke-static {p1, p3}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3393
    iget p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3394
    return-object p2
.end method

.method public blacklist readGroup(ILcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3376
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkRecursionLimit()V

    .line 3377
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3378
    invoke-interface {p2, p0, p3}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    .line 3379
    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3380
    iget p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3381
    return-void
.end method

.method public blacklist readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3302
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

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

    .line 3297
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64()J

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

    .line 3424
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    .line 3425
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkRecursionLimit()V

    .line 3426
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->pushLimit(I)I

    move-result v0

    .line 3427
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3428
    invoke-interface {p1, p0, p2}, Lcom/android/framework/protobuf/Parser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/MessageLite;

    .line 3429
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3430
    iget p2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3431
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getBytesUntilLimit()I

    move-result p2

    if-nez p2, :cond_2b

    .line 3434
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->popLimit(I)V

    .line 3435
    return-object p1

    .line 3432
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

    .line 3408
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    .line 3409
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkRecursionLimit()V

    .line 3410
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->pushLimit(I)I

    move-result v0

    .line 3411
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3412
    invoke-interface {p1, p0, p2}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    .line 3413
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3414
    iget p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3415
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getBytesUntilLimit()I

    move-result p1

    if-nez p1, :cond_28

    .line 3418
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->popLimit(I)V

    .line 3419
    return-void

    .line 3416
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

    .line 3771
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    .line 3772
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getNextByteBuffer()V

    .line 3774
    :cond_d
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    return v0
.end method

.method public blacklist readRawBytes(I)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3779
    if-ltz p1, :cond_1a

    int-to-long v5, p1

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v0

    cmp-long v0, v5, v0

    if-gtz v0, :cond_1a

    .line 3780
    new-array v2, p1, [B

    .line 3781
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    const-wide/16 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 3782
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3783
    return-object v2

    .line 3785
    :cond_1a
    if-ltz p1, :cond_29

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_29

    .line 3786
    new-array v0, p1, [B

    .line 3787
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytesTo([BII)V

    .line 3788
    return-object v0

    .line 3791
    :cond_29
    if-gtz p1, :cond_35

    .line 3792
    if-nez p1, :cond_30

    .line 3793
    sget-object p1, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object p1

    .line 3795
    :cond_30
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3799
    :cond_35
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

    .line 3666
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3c

    .line 3667
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3668
    iget-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3669
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    .line 3670
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const-wide/16 v3, 0x2

    add-long/2addr v3, v0

    .line 3671
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const-wide/16 v3, 0x3

    add-long/2addr v0, v3

    .line 3672
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    .line 3669
    return v0

    .line 3674
    :cond_3c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 3675
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 3676
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 3677
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 3674
    return v0
.end method

.method public blacklist readRawLittleEndian64()J
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3682
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v1

    const-wide/16 v3, 0x8

    cmp-long v1, v1, v3

    const/16 v5, 0x30

    const/16 v6, 0x28

    const/16 v7, 0x20

    const/16 v8, 0x18

    const/16 v9, 0x10

    const/16 v10, 0x8

    const-wide/16 v11, 0xff

    if-ltz v1, :cond_7b

    .line 3683
    iget-wide v13, v0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3684
    move-wide v15, v3

    const/16 v1, 0x38

    iget-wide v2, v0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v2, v15

    iput-wide v2, v0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3685
    invoke-static {v13, v14}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v2, v0

    and-long/2addr v2, v11

    const-wide/16 v15, 0x1

    add-long/2addr v15, v13

    .line 3686
    invoke-static/range {v15 .. v16}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    move v4, v1

    move-wide v15, v2

    int-to-long v1, v0

    and-long v0, v1, v11

    shl-long/2addr v0, v10

    or-long/2addr v0, v15

    const-wide/16 v2, 0x2

    add-long/2addr v2, v13

    .line 3687
    invoke-static {v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v11

    shl-long/2addr v2, v9

    or-long/2addr v0, v2

    const-wide/16 v2, 0x3

    add-long/2addr v2, v13

    .line 3688
    invoke-static {v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v11

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    const-wide/16 v2, 0x4

    add-long/2addr v2, v13

    .line 3689
    invoke-static {v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v11

    shl-long/2addr v2, v7

    or-long/2addr v0, v2

    const-wide/16 v2, 0x5

    add-long/2addr v2, v13

    .line 3690
    invoke-static {v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v11

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    const-wide/16 v2, 0x6

    add-long/2addr v2, v13

    .line 3691
    invoke-static {v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v11

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    const-wide/16 v2, 0x7

    add-long/2addr v13, v2

    .line 3692
    invoke-static {v13, v14}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v11

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 3685
    return-wide v0

    .line 3694
    :cond_7b
    const/16 v4, 0x38

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v11

    .line 3695
    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v3

    int-to-long v13, v3

    and-long/2addr v13, v11

    shl-long/2addr v13, v10

    or-long/2addr v1, v13

    .line 3696
    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v3

    int-to-long v13, v3

    and-long/2addr v13, v11

    shl-long v9, v13, v9

    or-long/2addr v1, v9

    .line 3697
    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v3

    int-to-long v9, v3

    and-long/2addr v9, v11

    shl-long v8, v9, v8

    or-long/2addr v1, v8

    .line 3698
    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v3

    int-to-long v8, v3

    and-long/2addr v8, v11

    shl-long v7, v8, v7

    or-long/2addr v1, v7

    .line 3699
    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v3

    int-to-long v7, v3

    and-long/2addr v7, v11

    shl-long v6, v7, v6

    or-long/2addr v1, v6

    .line 3700
    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v3

    int-to-long v6, v3

    and-long/2addr v6, v11

    shl-long v5, v6, v5

    or-long/2addr v1, v5

    .line 3701
    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v0

    int-to-long v5, v0

    and-long/2addr v5, v11

    shl-long v3, v5, v4

    or-long v0, v1, v3

    .line 3694
    return-wide v0
.end method

.method public blacklist readRawVarint32()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3553
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3555
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_c

    .line 3556
    goto/16 :goto_8d

    .line 3560
    :cond_c
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-ltz v0, :cond_1c

    .line 3561
    iget-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3562
    return v0

    .line 3563
    :cond_1c
    iget-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v8, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

    cmp-long v1, v6, v8

    if-gez v1, :cond_28

    .line 3564
    goto :goto_8d

    .line 3565
    :cond_28
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_36

    .line 3566
    xor-int/lit8 v0, v0, -0x80

    goto :goto_98

    .line 3567
    :cond_36
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_45

    .line 3568
    xor-int/lit16 v0, v0, 0x3f80

    move-wide v6, v4

    goto :goto_98

    .line 3569
    :cond_45
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_55

    .line 3570
    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_98

    .line 3572
    :cond_55
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    .line 3573
    shl-int/lit8 v6, v1, 0x1c

    xor-int/2addr v0, v6

    .line 3574
    const v6, 0xfe03f80

    xor-int/2addr v0, v6

    .line 3575
    if-gez v1, :cond_97

    add-long v6, v4, v2

    .line 3576
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_98

    add-long v4, v6, v2

    .line 3577
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_95

    add-long v6, v4, v2

    .line 3578
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_98

    add-long v4, v6, v2

    .line 3579
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_93

    add-long v6, v4, v2

    .line 3580
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_98

    .line 3581
    nop

    .line 3587
    :goto_8d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 3579
    :cond_93
    move-wide v6, v4

    goto :goto_98

    .line 3577
    :cond_95
    move-wide v6, v4

    goto :goto_98

    .line 3575
    :cond_97
    move-wide v6, v4

    .line 3584
    :cond_98
    :goto_98
    iput-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3585
    return v0
.end method

.method public blacklist readRawVarint64()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3594
    iget-wide v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3596
    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_c

    .line 3597
    goto/16 :goto_db

    .line 3602
    :cond_c
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-ltz v0, :cond_1d

    .line 3603
    iget-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3604
    int-to-long v0, v0

    return-wide v0

    .line 3605
    :cond_1d
    iget-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v8, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

    cmp-long v1, v6, v8

    if-gez v1, :cond_2a

    .line 3606
    goto/16 :goto_db

    .line 3607
    :cond_2a
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_3a

    .line 3608
    xor-int/lit8 v0, v0, -0x80

    int-to-long v0, v0

    goto/16 :goto_e3

    .line 3609
    :cond_3a
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_4b

    .line 3610
    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v6, v4

    goto/16 :goto_e3

    .line 3611
    :cond_4b
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_5d

    .line 3612
    const v1, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    goto/16 :goto_e3

    .line 3613
    :cond_5d
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

    if-ltz v8, :cond_76

    .line 3614
    const-wide/32 v2, 0xfe03f80

    xor-long/2addr v0, v2

    move-wide v6, v4

    goto/16 :goto_e3

    .line 3615
    :cond_76
    add-long v8, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x23

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_8d

    .line 3616
    const-wide v2, -0x7f01fc080L

    xor-long/2addr v0, v2

    move-wide v6, v8

    goto :goto_e3

    .line 3617
    :cond_8d
    add-long v4, v8, v2

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x2a

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-ltz v8, :cond_a4

    .line 3618
    const-wide v2, 0x3f80fe03f80L

    xor-long/2addr v0, v2

    move-wide v6, v4

    goto :goto_e3

    .line 3619
    :cond_a4
    add-long v8, v4, v2

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x31

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_bb

    .line 3620
    const-wide v2, -0x1fc07f01fc080L

    xor-long/2addr v0, v2

    move-wide v6, v8

    goto :goto_e3

    .line 3629
    :cond_bb
    add-long v4, v8, v2

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    .line 3630
    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v0, v8

    .line 3639
    cmp-long v8, v0, v6

    if-gez v8, :cond_e2

    .line 3640
    add-long/2addr v2, v4

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v6

    if-gez v4, :cond_e0

    .line 3641
    nop

    .line 3648
    :goto_db
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    .line 3640
    :cond_e0
    move-wide v6, v2

    goto :goto_e3

    .line 3639
    :cond_e2
    move-wide v6, v4

    .line 3645
    :goto_e3
    iput-wide v6, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3646
    return-wide v0
.end method

.method blacklist readRawVarint64SlowPath()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3653
    nop

    .line 3654
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    const/16 v3, 0x40

    if-ge v2, v3, :cond_19

    .line 3655
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v3

    .line 3656
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 3657
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_16

    .line 3658
    return-wide v0

    .line 3654
    :cond_16
    add-int/lit8 v2, v2, 0x7

    goto :goto_4

    .line 3661
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

    .line 3531
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian32()I

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

    .line 3536
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian64()J

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

    .line 3541
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->decodeZigZag32(I)I

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

    .line 3546
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readString()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3322
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    .line 3323
    if-lez v0, :cond_26

    int-to-long v6, v0

    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v1, v3

    cmp-long v1, v6, v1

    if-gtz v1, :cond_26

    .line 3324
    new-array v3, v0, [B

    .line 3325
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/framework/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 3326
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 3327
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v1, v6

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3328
    return-object v0

    .line 3329
    :cond_26
    if-lez v0, :cond_3c

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_3c

    .line 3331
    new-array v1, v0, [B

    .line 3332
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytesTo([BII)V

    .line 3333
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 3334
    return-object v0

    .line 3337
    :cond_3c
    if-nez v0, :cond_41

    .line 3338
    const-string v0, ""

    return-object v0

    .line 3340
    :cond_41
    if-gez v0, :cond_48

    .line 3341
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3343
    :cond_48
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readStringRequireUtf8()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3348
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    .line 3349
    if-lez v0, :cond_22

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v5, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-gtz v3, :cond_22

    .line 3350
    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    iget-wide v5, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    .line 3351
    iget-object v4, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v4, v3, v0}, Lcom/android/framework/protobuf/Utf8;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    .line 3352
    iget-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3353
    return-object v0

    .line 3355
    :cond_22
    if-ltz v0, :cond_35

    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_35

    .line 3356
    new-array v1, v0, [B

    .line 3357
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytesTo([BII)V

    .line 3358
    invoke-static {v1, v2, v0}, Lcom/android/framework/protobuf/Utf8;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3361
    :cond_35
    if-nez v0, :cond_3a

    .line 3362
    const-string v0, ""

    return-object v0

    .line 3364
    :cond_3a
    if-gtz v0, :cond_41

    .line 3365
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3367
    :cond_41
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

    .line 3174
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3175
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    .line 3176
    return v0

    .line 3179
    :cond_a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    .line 3180
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_1b

    .line 3185
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    return v0

    .line 3183
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

    .line 3521
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

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

    .line 3292
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64()J

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

    .line 3401
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readGroup(ILcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 3402
    return-void
.end method

.method public blacklist resetSizeCounter()V
    .registers 5

    .line 3711
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->startOffset:I

    .line 3712
    return-void
.end method

.method public blacklist skipField(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3202
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_36

    .line 3223
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 3220
    :pswitch_e
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipRawBytes(I)V

    .line 3221
    return v2

    .line 3218
    :pswitch_12
    const/4 p1, 0x0

    return p1

    .line 3213
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipMessage()V

    .line 3214
    nop

    .line 3215
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 3214
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3216
    return v2

    .line 3210
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipRawBytes(I)V

    .line 3211
    return v2

    .line 3207
    :pswitch_2c
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipRawBytes(I)V

    .line 3208
    return v2

    .line 3204
    :pswitch_32
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipRawVarint()V

    .line 3205
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

    .line 3229
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_52

    .line 3274
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 3268
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian32()I

    move-result v0

    .line 3269
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 3270
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 3271
    return v1

    .line 3264
    :pswitch_18
    const/4 p1, 0x0

    return p1

    .line 3253
    :pswitch_1a
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 3254
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipMessage(Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 3255
    nop

    .line 3257
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    .line 3256
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 3258
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3259
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 3260
    return v1

    .line 3246
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    .line 3247
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 3248
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V

    .line 3249
    return v1

    .line 3239
    :pswitch_3c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 3240
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 3241
    invoke-virtual {p2, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 3242
    return v1

    .line 3232
    :pswitch_47
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readInt64()J

    move-result-wide v2

    .line 3233
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 3234
    invoke-virtual {p2, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 3235
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
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3834
    if-ltz p1, :cond_35

    int-to-long v0, p1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_35

    .line 3841
    nop

    .line 3842
    :goto_14
    if-lez p1, :cond_34

    .line 3843
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    .line 3844
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getNextByteBuffer()V

    .line 3846
    :cond_23
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3847
    sub-int/2addr p1, v0

    .line 3848
    iget-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/framework/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3849
    goto :goto_14

    .line 3850
    :cond_34
    return-void

    .line 3853
    :cond_35
    if-gez p1, :cond_3c

    .line 3854
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3856
    :cond_3c
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method
