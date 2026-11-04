.class abstract Lcom/android/framework/protobuf/BinaryWriter;
.super Lcom/android/framework/protobuf/ByteOutput;
.source "BinaryWriter.java"

# interfaces
.implements Lcom/android/framework/protobuf/Writer;


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;,
        Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;,
        Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;,
        Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_CHUNK_SIZE:I = 0x1000

.field private static final blacklist MAP_KEY_NUMBER:I = 0x1

.field private static final blacklist MAP_VALUE_NUMBER:I = 0x2


# instance fields
.field private final blacklist alloc:Lcom/android/framework/protobuf/BufferAllocator;

.field final blacklist buffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/framework/protobuf/AllocatedBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist chunkSize:I

.field blacklist totalDoneBytes:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/framework/protobuf/BufferAllocator;I)V
    .registers 5

    .line 123
    invoke-direct {p0}, Lcom/android/framework/protobuf/ByteOutput;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    .line 124
    if-lez p2, :cond_1a

    .line 127
    const-string v0, "alloc"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/BufferAllocator;

    iput-object p1, p0, Lcom/android/framework/protobuf/BinaryWriter;->alloc:Lcom/android/framework/protobuf/BufferAllocator;

    .line 128
    iput p2, p0, Lcom/android/framework/protobuf/BinaryWriter;->chunkSize:I

    .line 129
    return-void

    .line 125
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "chunkSize must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/BufferAllocator;ILcom/android/framework/protobuf/BinaryWriter$1;)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;-><init>(Lcom/android/framework/protobuf/BufferAllocator;I)V

    return-void
.end method

.method static synthetic blacklist access$200(J)B
    .registers 2

    .line 47
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter;->computeUInt64SizeNoTag(J)B

    move-result p0

    return p0
.end method

.method private static blacklist computeUInt64SizeNoTag(J)B
    .registers 8

    .line 871
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 873
    const/4 p0, 0x1

    return p0

    .line 875
    :cond_b
    cmp-long v0, p0, v2

    if-gez v0, :cond_12

    .line 877
    const/16 p0, 0xa

    return p0

    .line 880
    :cond_12
    nop

    .line 881
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    .line 883
    const/4 v0, 0x6

    int-to-byte v0, v0

    .line 884
    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_24

    .line 881
    :cond_23
    const/4 v0, 0x2

    .line 886
    :goto_24
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_32

    .line 888
    add-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 889
    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    .line 891
    :cond_32
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3c

    .line 893
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 895
    :cond_3c
    return v0
.end method

.method static blacklist isUnsafeDirectSupported()Z
    .registers 1

    .line 97
    # invokes: Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->isSupported()Z
    invoke-static {}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->access$000()Z

    move-result v0

    return v0
.end method

.method static blacklist isUnsafeHeapSupported()Z
    .registers 1

    .line 93
    invoke-static {}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->isSupported()Z

    move-result v0

    return v0
.end method

.method public static blacklist newDirectInstance(Lcom/android/framework/protobuf/BufferAllocator;)Lcom/android/framework/protobuf/BinaryWriter;
    .registers 2

    .line 79
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->newDirectInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist newDirectInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;
    .registers 3

    .line 87
    invoke-static {}, Lcom/android/framework/protobuf/BinaryWriter;->isUnsafeDirectSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 88
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter;->newUnsafeDirectInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;

    move-result-object p0

    goto :goto_f

    .line 89
    :cond_b
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter;->newSafeDirectInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;

    move-result-object p0

    .line 87
    :goto_f
    return-object p0
.end method

.method public static blacklist newHeapInstance(Lcom/android/framework/protobuf/BufferAllocator;)Lcom/android/framework/protobuf/BinaryWriter;
    .registers 2

    .line 61
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->newHeapInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist newHeapInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;
    .registers 3

    .line 69
    invoke-static {}, Lcom/android/framework/protobuf/BinaryWriter;->isUnsafeHeapSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 70
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter;->newUnsafeHeapInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;

    move-result-object p0

    goto :goto_f

    .line 71
    :cond_b
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter;->newSafeHeapInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;

    move-result-object p0

    .line 69
    :goto_f
    return-object p0
.end method

.method static blacklist newSafeDirectInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;
    .registers 3

    .line 112
    new-instance v0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;-><init>(Lcom/android/framework/protobuf/BufferAllocator;I)V

    return-object v0
.end method

.method static blacklist newSafeHeapInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;
    .registers 3

    .line 101
    new-instance v0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;-><init>(Lcom/android/framework/protobuf/BufferAllocator;I)V

    return-object v0
.end method

.method static blacklist newUnsafeDirectInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;
    .registers 3

    .line 116
    invoke-static {}, Lcom/android/framework/protobuf/BinaryWriter;->isUnsafeDirectSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 119
    new-instance v0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;-><init>(Lcom/android/framework/protobuf/BufferAllocator;I)V

    return-object v0

    .line 117
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unsafe operations not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist newUnsafeHeapInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;
    .registers 3

    .line 105
    invoke-static {}, Lcom/android/framework/protobuf/BinaryWriter;->isUnsafeHeapSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 108
    new-instance v0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;-><init>(Lcom/android/framework/protobuf/BufferAllocator;I)V

    return-object v0

    .line 106
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unsafe operations not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist writeBoolList_Internal(ILcom/android/framework/protobuf/BooleanArrayList;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    if-eqz p3, :cond_2e

    .line 498
    invoke-virtual {p2}, Lcom/android/framework/protobuf/BooleanArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    .line 499
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p3

    .line 500
    invoke-virtual {p2}, Lcom/android/framework/protobuf/BooleanArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_15
    if-ltz v0, :cond_21

    .line 501
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/BooleanArrayList;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeBool(Z)V

    .line 500
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 503
    :cond_21
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, p3

    .line 504
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 505
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 506
    goto :goto_40

    .line 507
    :cond_2e
    invoke-virtual {p2}, Lcom/android/framework/protobuf/BooleanArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_34
    if-ltz p3, :cond_40

    .line 508
    invoke-virtual {p2, p3}, Lcom/android/framework/protobuf/BooleanArrayList;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter;->writeBool(IZ)V

    .line 507
    add-int/lit8 p3, p3, -0x1

    goto :goto_34

    .line 511
    :cond_40
    :goto_40
    return-void
.end method

.method private blacklist writeBoolList_Internal(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    if-eqz p3, :cond_34

    .line 480
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    .line 481
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p3

    .line 482
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_15
    if-ltz v0, :cond_27

    .line 483
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeBool(Z)V

    .line 482
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 485
    :cond_27
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, p3

    .line 486
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 487
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 488
    goto :goto_4c

    .line 489
    :cond_34
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_3a
    if-ltz p3, :cond_4c

    .line 490
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter;->writeBool(IZ)V

    .line 489
    add-int/lit8 p3, p3, -0x1

    goto :goto_3a

    .line 493
    :cond_4c
    :goto_4c
    return-void
.end method

.method private blacklist writeDoubleList_Internal(ILcom/android/framework/protobuf/DoubleArrayList;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    if-eqz p3, :cond_34

    .line 446
    invoke-virtual {p2}, Lcom/android/framework/protobuf/DoubleArrayList;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x8

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    .line 447
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p3

    .line 448
    invoke-virtual {p2}, Lcom/android/framework/protobuf/DoubleArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_27

    .line 449
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/DoubleArrayList;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64(J)V

    .line 448
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 451
    :cond_27
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, p3

    .line 452
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 453
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 454
    goto :goto_46

    .line 455
    :cond_34
    invoke-virtual {p2}, Lcom/android/framework/protobuf/DoubleArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_3a
    if-ltz p3, :cond_46

    .line 456
    invoke-virtual {p2, p3}, Lcom/android/framework/protobuf/DoubleArrayList;->getDouble(I)D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeDouble(ID)V

    .line 455
    add-int/lit8 p3, p3, -0x1

    goto :goto_3a

    .line 459
    :cond_46
    :goto_46
    return-void
.end method

.method private blacklist writeDoubleList_Internal(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    if-eqz p3, :cond_3a

    .line 428
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x8

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    .line 429
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p3

    .line 430
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_2d

    .line 431
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64(J)V

    .line 430
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 433
    :cond_2d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, p3

    .line 434
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 435
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 436
    goto :goto_52

    .line 437
    :cond_3a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_40
    if-ltz p3, :cond_52

    .line 438
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeDouble(ID)V

    .line 437
    add-int/lit8 p3, p3, -0x1

    goto :goto_40

    .line 441
    :cond_52
    :goto_52
    return-void
.end method

.method private blacklist writeFixed32List_Internal(ILcom/android/framework/protobuf/IntArrayList;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    if-eqz p3, :cond_30

    .line 256
    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x4

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    .line 257
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p3

    .line 258
    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_23

    .line 259
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32(I)V

    .line 258
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 261
    :cond_23
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, p3

    .line 262
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 263
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 264
    goto :goto_42

    .line 265
    :cond_30
    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_36
    if-ltz p3, :cond_42

    .line 266
    invoke-virtual {p2, p3}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32(II)V

    .line 265
    add-int/lit8 p3, p3, -0x1

    goto :goto_36

    .line 269
    :cond_42
    :goto_42
    return-void
.end method

.method private blacklist writeFixed32List_Internal(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    if-eqz p3, :cond_36

    .line 238
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x4

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    .line 239
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p3

    .line 240
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_29

    .line 241
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32(I)V

    .line 240
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 243
    :cond_29
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, p3

    .line 244
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 245
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 246
    goto :goto_4e

    .line 247
    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_3c
    if-ltz p3, :cond_4e

    .line 248
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32(II)V

    .line 247
    add-int/lit8 p3, p3, -0x1

    goto :goto_3c

    .line 251
    :cond_4e
    :goto_4e
    return-void
.end method

.method private blacklist writeFixed64List_Internal(ILcom/android/framework/protobuf/LongArrayList;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    if-eqz p3, :cond_30

    .line 354
    invoke-virtual {p2}, Lcom/android/framework/protobuf/LongArrayList;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x8

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    .line 355
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p3

    .line 356
    invoke-virtual {p2}, Lcom/android/framework/protobuf/LongArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_23

    .line 357
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64(J)V

    .line 356
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 359
    :cond_23
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, p3

    .line 360
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 361
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 362
    goto :goto_42

    .line 363
    :cond_30
    invoke-virtual {p2}, Lcom/android/framework/protobuf/LongArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_36
    if-ltz p3, :cond_42

    .line 364
    invoke-virtual {p2, p3}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64(IJ)V

    .line 363
    add-int/lit8 p3, p3, -0x1

    goto :goto_36

    .line 367
    :cond_42
    :goto_42
    return-void
.end method

.method private blacklist writeFixed64List_Internal(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    if-eqz p3, :cond_36

    .line 336
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x8

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    .line 337
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p3

    .line 338
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_29

    .line 339
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64(J)V

    .line 338
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 341
    :cond_29
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, p3

    .line 342
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 343
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 344
    goto :goto_4e

    .line 345
    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_3c
    if-ltz p3, :cond_4e

    .line 346
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64(IJ)V

    .line 345
    add-int/lit8 p3, p3, -0x1

    goto :goto_3c

    .line 349
    :cond_4e
    :goto_4e
    return-void
.end method

.method private blacklist writeFloatList_Internal(ILcom/android/framework/protobuf/FloatArrayList;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    if-eqz p3, :cond_34

    .line 400
    invoke-virtual {p2}, Lcom/android/framework/protobuf/FloatArrayList;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x4

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    .line 401
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p3

    .line 402
    invoke-virtual {p2}, Lcom/android/framework/protobuf/FloatArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_27

    .line 403
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/FloatArrayList;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32(I)V

    .line 402
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 405
    :cond_27
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, p3

    .line 406
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 407
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 408
    goto :goto_46

    .line 409
    :cond_34
    invoke-virtual {p2}, Lcom/android/framework/protobuf/FloatArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_3a
    if-ltz p3, :cond_46

    .line 410
    invoke-virtual {p2, p3}, Lcom/android/framework/protobuf/FloatArrayList;->getFloat(I)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter;->writeFloat(IF)V

    .line 409
    add-int/lit8 p3, p3, -0x1

    goto :goto_3a

    .line 413
    :cond_46
    :goto_46
    return-void
.end method

.method private blacklist writeFloatList_Internal(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    if-eqz p3, :cond_3a

    .line 382
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x4

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    .line 383
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p3

    .line 384
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_2d

    .line 385
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32(I)V

    .line 384
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 387
    :cond_2d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, p3

    .line 388
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 389
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 390
    goto :goto_52

    .line 391
    :cond_3a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_40
    if-ltz p3, :cond_52

    .line 392
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter;->writeFloat(IF)V

    .line 391
    add-int/lit8 p3, p3, -0x1

    goto :goto_40

    .line 395
    :cond_52
    :goto_52
    return-void
.end method

.method private blacklist writeInt32List_Internal(ILcom/android/framework/protobuf/IntArrayList;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    if-eqz p3, :cond_30

    .line 210
    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    .line 211
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p3

    .line 212
    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_23

    .line 213
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeInt32(I)V

    .line 212
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 215
    :cond_23
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, p3

    .line 216
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 217
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 218
    goto :goto_42

    .line 219
    :cond_30
    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_36
    if-ltz p3, :cond_42

    .line 220
    invoke-virtual {p2, p3}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter;->writeInt32(II)V

    .line 219
    add-int/lit8 p3, p3, -0x1

    goto :goto_36

    .line 223
    :cond_42
    :goto_42
    return-void
.end method

.method private blacklist writeInt32List_Internal(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    if-eqz p3, :cond_36

    .line 192
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p3

    .line 194
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_29

    .line 195
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeInt32(I)V

    .line 194
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 197
    :cond_29
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, p3

    .line 198
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 199
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 200
    goto :goto_4e

    .line 201
    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_3c
    if-ltz p3, :cond_4e

    .line 202
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter;->writeInt32(II)V

    .line 201
    add-int/lit8 p3, p3, -0x1

    goto :goto_3c

    .line 205
    :cond_4e
    :goto_4e
    return-void
.end method

.method private blacklist writeLazyString(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 529
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeString(ILjava/lang/String;)V

    goto :goto_f

    .line 531
    :cond_a
    check-cast p2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    .line 533
    :goto_f
    return-void
.end method

.method static final blacklist writeMapEntryField(Lcom/android/framework/protobuf/Writer;ILcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 676
    sget-object v0, Lcom/android/framework/protobuf/BinaryWriter$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p2}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_e2

    .line 735
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported map value type for: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 726
    :pswitch_24
    instance-of p2, p3, Lcom/android/framework/protobuf/Internal$EnumLite;

    if-eqz p2, :cond_33

    .line 727
    check-cast p3, Lcom/android/framework/protobuf/Internal$EnumLite;

    invoke-interface {p3}, Lcom/android/framework/protobuf/Internal$EnumLite;->getNumber()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_e1

    .line 728
    :cond_33
    instance-of p2, p3, Ljava/lang/Integer;

    if-eqz p2, :cond_42

    .line 729
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_e1

    .line 731
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected type for enum in map."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 723
    :pswitch_4a
    check-cast p3, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    .line 724
    goto/16 :goto_e1

    .line 720
    :pswitch_51
    invoke-interface {p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    .line 721
    goto/16 :goto_e1

    .line 717
    :pswitch_56
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    .line 718
    goto/16 :goto_e1

    .line 714
    :pswitch_61
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    .line 715
    goto/16 :goto_e1

    .line 711
    :pswitch_6c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    .line 712
    goto/16 :goto_e1

    .line 708
    :pswitch_77
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    .line 709
    goto :goto_e1

    .line 705
    :pswitch_81
    check-cast p3, Ljava/lang/String;

    invoke-interface {p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 706
    goto :goto_e1

    .line 702
    :pswitch_87
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    .line 703
    goto :goto_e1

    .line 699
    :pswitch_91
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    .line 700
    goto :goto_e1

    .line 696
    :pswitch_9b
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    .line 697
    goto :goto_e1

    .line 693
    :pswitch_a5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    .line 694
    goto :goto_e1

    .line 690
    :pswitch_af
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    .line 691
    goto :goto_e1

    .line 687
    :pswitch_b9
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    .line 688
    goto :goto_e1

    .line 684
    :pswitch_c3
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    .line 685
    goto :goto_e1

    .line 681
    :pswitch_cd
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    .line 682
    goto :goto_e1

    .line 678
    :pswitch_d7
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    .line 679
    nop

    .line 737
    :goto_e1
    return-void

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_d7
        :pswitch_cd
        :pswitch_c3
        :pswitch_b9
        :pswitch_af
        :pswitch_a5
        :pswitch_9b
        :pswitch_91
        :pswitch_87
        :pswitch_81
        :pswitch_77
        :pswitch_6c
        :pswitch_61
        :pswitch_56
        :pswitch_51
        :pswitch_4a
        :pswitch_24
    .end packed-switch
.end method

.method private blacklist writeSInt32List_Internal(ILcom/android/framework/protobuf/IntArrayList;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 630
    if-eqz p3, :cond_30

    .line 631
    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x5

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    .line 632
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p3

    .line 633
    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_23

    .line 634
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt32(I)V

    .line 633
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 636
    :cond_23
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, p3

    .line 637
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 638
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 639
    goto :goto_42

    .line 640
    :cond_30
    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_36
    if-ltz p3, :cond_42

    .line 641
    invoke-virtual {p2, p3}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt32(II)V

    .line 640
    add-int/lit8 p3, p3, -0x1

    goto :goto_36

    .line 644
    :cond_42
    :goto_42
    return-void
.end method

.method private blacklist writeSInt32List_Internal(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 612
    if-eqz p3, :cond_36

    .line 613
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x5

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    .line 614
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p3

    .line 615
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_29

    .line 616
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt32(I)V

    .line 615
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 618
    :cond_29
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, p3

    .line 619
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 620
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 621
    goto :goto_4e

    .line 622
    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_3c
    if-ltz p3, :cond_4e

    .line 623
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt32(II)V

    .line 622
    add-int/lit8 p3, p3, -0x1

    goto :goto_3c

    .line 626
    :cond_4e
    :goto_4e
    return-void
.end method

.method private blacklist writeSInt64List_Internal(ILcom/android/framework/protobuf/LongArrayList;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 759
    if-eqz p3, :cond_30

    .line 760
    invoke-virtual {p2}, Lcom/android/framework/protobuf/LongArrayList;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    .line 761
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p3

    .line 762
    invoke-virtual {p2}, Lcom/android/framework/protobuf/LongArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_23

    .line 763
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt64(J)V

    .line 762
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 765
    :cond_23
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, p3

    .line 766
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 767
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 768
    goto :goto_42

    .line 769
    :cond_30
    invoke-virtual {p2}, Lcom/android/framework/protobuf/LongArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_36
    if-ltz p3, :cond_42

    .line 770
    invoke-virtual {p2, p3}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt64(IJ)V

    .line 769
    add-int/lit8 p3, p3, -0x1

    goto :goto_36

    .line 773
    :cond_42
    :goto_42
    return-void
.end method

.method private blacklist writeSInt64List_Internal(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 741
    if-eqz p3, :cond_36

    .line 742
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    .line 743
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p3

    .line 744
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_29

    .line 745
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt64(J)V

    .line 744
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 747
    :cond_29
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, p3

    .line 748
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 749
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 750
    goto :goto_4e

    .line 751
    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_3c
    if-ltz p3, :cond_4e

    .line 752
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt64(IJ)V

    .line 751
    add-int/lit8 p3, p3, -0x1

    goto :goto_3c

    .line 755
    :cond_4e
    :goto_4e
    return-void
.end method

.method private blacklist writeUInt32List_Internal(ILcom/android/framework/protobuf/IntArrayList;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 572
    if-eqz p3, :cond_30

    .line 573
    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x5

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    .line 574
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p3

    .line 575
    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_23

    .line 576
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 575
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 578
    :cond_23
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, p3

    .line 579
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 580
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 581
    goto :goto_42

    .line 582
    :cond_30
    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_36
    if-ltz p3, :cond_42

    .line 583
    invoke-virtual {p2, p3}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt32(II)V

    .line 582
    add-int/lit8 p3, p3, -0x1

    goto :goto_36

    .line 586
    :cond_42
    :goto_42
    return-void
.end method

.method private blacklist writeUInt32List_Internal(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    if-eqz p3, :cond_36

    .line 555
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x5

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    .line 556
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p3

    .line 557
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_29

    .line 558
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 557
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 560
    :cond_29
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, p3

    .line 561
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 562
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 563
    goto :goto_4e

    .line 564
    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_3c
    if-ltz p3, :cond_4e

    .line 565
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt32(II)V

    .line 564
    add-int/lit8 p3, p3, -0x1

    goto :goto_3c

    .line 568
    :cond_4e
    :goto_4e
    return-void
.end method

.method private blacklist writeUInt64List_Internal(ILcom/android/framework/protobuf/LongArrayList;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    if-eqz p3, :cond_30

    .line 308
    invoke-virtual {p2}, Lcom/android/framework/protobuf/LongArrayList;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    .line 309
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p3

    .line 310
    invoke-virtual {p2}, Lcom/android/framework/protobuf/LongArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_23

    .line 311
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint64(J)V

    .line 310
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 313
    :cond_23
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, p3

    .line 314
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 315
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 316
    goto :goto_42

    .line 317
    :cond_30
    invoke-virtual {p2}, Lcom/android/framework/protobuf/LongArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_36
    if-ltz p3, :cond_42

    .line 318
    invoke-virtual {p2, p3}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt64(IJ)V

    .line 317
    add-int/lit8 p3, p3, -0x1

    goto :goto_36

    .line 321
    :cond_42
    :goto_42
    return-void
.end method

.method private blacklist writeUInt64List_Internal(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    if-eqz p3, :cond_36

    .line 290
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    .line 291
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p3

    .line 292
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_29

    .line 293
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint64(J)V

    .line 292
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 295
    :cond_29
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, p3

    .line 296
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 297
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 298
    goto :goto_4e

    .line 299
    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_3c
    if-ltz p3, :cond_4e

    .line 300
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt64(IJ)V

    .line 299
    add-int/lit8 p3, p3, -0x1

    goto :goto_3c

    .line 303
    :cond_4e
    :goto_4e
    return-void
.end method


# virtual methods
.method public final blacklist complete()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/android/framework/protobuf/AllocatedBuffer;",
            ">;"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->finishCurrentBuffer()V

    .line 146
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method public final blacklist fieldOrder()Lcom/android/framework/protobuf/Writer$FieldOrder;
    .registers 2

    .line 133
    sget-object v0, Lcom/android/framework/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    return-object v0
.end method

.method abstract blacklist finishCurrentBuffer()V
.end method

.method public abstract blacklist getTotalBytesWritten()I
.end method

.method final blacklist newDirectBuffer()Lcom/android/framework/protobuf/AllocatedBuffer;
    .registers 3

    .line 828
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter;->alloc:Lcom/android/framework/protobuf/BufferAllocator;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter;->chunkSize:I

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method final blacklist newDirectBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;
    .registers 4

    .line 832
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter;->alloc:Lcom/android/framework/protobuf/BufferAllocator;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter;->chunkSize:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object p1

    return-object p1
.end method

.method final blacklist newHeapBuffer()Lcom/android/framework/protobuf/AllocatedBuffer;
    .registers 3

    .line 820
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter;->alloc:Lcom/android/framework/protobuf/BufferAllocator;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter;->chunkSize:I

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/BufferAllocator;->allocateHeapBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method final blacklist newHeapBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;
    .registers 4

    .line 824
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter;->alloc:Lcom/android/framework/protobuf/BufferAllocator;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter;->chunkSize:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/BufferAllocator;->allocateHeapBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object p1

    return-object p1
.end method

.method abstract blacklist requireSpace(I)V
.end method

.method abstract blacklist writeBool(Z)V
.end method

.method public final blacklist writeBoolList(ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    instance-of v0, p2, Lcom/android/framework/protobuf/BooleanArrayList;

    if-eqz v0, :cond_a

    .line 471
    check-cast p2, Lcom/android/framework/protobuf/BooleanArrayList;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeBoolList_Internal(ILcom/android/framework/protobuf/BooleanArrayList;Z)V

    goto :goto_d

    .line 473
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeBoolList_Internal(ILjava/util/List;Z)V

    .line 475
    :goto_d
    return-void
.end method

.method public final blacklist writeBytesList(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 537
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    .line 538
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    .line 537
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 540
    :cond_14
    return-void
.end method

.method public final blacklist writeDouble(ID)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64(IJ)V

    .line 172
    return-void
.end method

.method public final blacklist writeDoubleList(ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    instance-of v0, p2, Lcom/android/framework/protobuf/DoubleArrayList;

    if-eqz v0, :cond_a

    .line 419
    check-cast p2, Lcom/android/framework/protobuf/DoubleArrayList;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeDoubleList_Internal(ILcom/android/framework/protobuf/DoubleArrayList;Z)V

    goto :goto_d

    .line 421
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeDoubleList_Internal(ILjava/util/List;Z)V

    .line 423
    :goto_d
    return-void
.end method

.method public final blacklist writeEnum(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeInt32(II)V

    .line 177
    return-void
.end method

.method public final blacklist writeEnumList(ILjava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeInt32List(ILjava/util/List;Z)V

    .line 465
    return-void
.end method

.method abstract blacklist writeFixed32(I)V
.end method

.method public final blacklist writeFixed32List(ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    instance-of v0, p2, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_a

    .line 229
    check-cast p2, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32List_Internal(ILcom/android/framework/protobuf/IntArrayList;Z)V

    goto :goto_d

    .line 231
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32List_Internal(ILjava/util/List;Z)V

    .line 233
    :goto_d
    return-void
.end method

.method abstract blacklist writeFixed64(J)V
.end method

.method public final blacklist writeFixed64List(ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    instance-of v0, p2, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_a

    .line 327
    check-cast p2, Lcom/android/framework/protobuf/LongArrayList;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64List_Internal(ILcom/android/framework/protobuf/LongArrayList;Z)V

    goto :goto_d

    .line 329
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64List_Internal(ILjava/util/List;Z)V

    .line 331
    :goto_d
    return-void
.end method

.method public final blacklist writeFloat(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32(II)V

    .line 167
    return-void
.end method

.method public final blacklist writeFloatList(ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    instance-of v0, p2, Lcom/android/framework/protobuf/FloatArrayList;

    if-eqz v0, :cond_a

    .line 373
    check-cast p2, Lcom/android/framework/protobuf/FloatArrayList;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFloatList_Internal(ILcom/android/framework/protobuf/FloatArrayList;Z)V

    goto :goto_d

    .line 375
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFloatList_Internal(ILjava/util/List;Z)V

    .line 377
    :goto_d
    return-void
.end method

.method public final blacklist writeGroupList(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 793
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_12

    .line 794
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeGroup(ILjava/lang/Object;)V

    .line 793
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 796
    :cond_12
    return-void
.end method

.method public final blacklist writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Schema;",
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

    .line 802
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_12

    .line 803
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    .line 802
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 805
    :cond_12
    return-void
.end method

.method abstract blacklist writeInt32(I)V
.end method

.method public final blacklist writeInt32List(ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    instance-of v0, p2, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_a

    .line 183
    check-cast p2, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeInt32List_Internal(ILcom/android/framework/protobuf/IntArrayList;Z)V

    goto :goto_d

    .line 185
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeInt32List_Internal(ILjava/util/List;Z)V

    .line 187
    :goto_d
    return-void
.end method

.method public final blacklist writeInt64(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt64(IJ)V

    .line 157
    return-void
.end method

.method public final blacklist writeInt64List(ILjava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt64List(ILjava/util/List;Z)V

    .line 275
    return-void
.end method

.method public blacklist writeMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 663
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 664
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    .line 665
    iget-object v2, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {p0, v4, v2, v3}, Lcom/android/framework/protobuf/BinaryWriter;->writeMapEntryField(Lcom/android/framework/protobuf/Writer;ILcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 666
    iget-object v2, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {p0, v3, v2, v0}, Lcom/android/framework/protobuf/BinaryWriter;->writeMapEntryField(Lcom/android/framework/protobuf/Writer;ILcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 667
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    sub-int/2addr v0, v1

    .line 668
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 669
    invoke-virtual {p0, p1, v4}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 670
    goto :goto_8

    .line 671
    :cond_38
    return-void
.end method

.method public final blacklist writeMessageList(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 777
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_12

    .line 778
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeMessage(ILjava/lang/Object;)V

    .line 777
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 780
    :cond_12
    return-void
.end method

.method public final blacklist writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 785
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_12

    .line 786
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    .line 785
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 788
    :cond_12
    return-void
.end method

.method public final blacklist writeMessageSetItem(ILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 809
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 810
    instance-of v0, p2, Lcom/android/framework/protobuf/ByteString;

    const/4 v2, 0x3

    if-eqz v0, :cond_10

    .line 811
    check-cast p2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p0, v2, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto :goto_13

    .line 813
    :cond_10
    invoke-virtual {p0, v2, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeMessage(ILjava/lang/Object;)V

    .line 815
    :goto_13
    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt32(II)V

    .line 816
    invoke-virtual {p0, v1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    .line 817
    return-void
.end method

.method public final blacklist writeSFixed32(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32(II)V

    .line 152
    return-void
.end method

.method public final blacklist writeSFixed32List(ILjava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32List(ILjava/util/List;Z)V

    .line 592
    return-void
.end method

.method public final blacklist writeSFixed64(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64(IJ)V

    .line 162
    return-void
.end method

.method public final blacklist writeSFixed64List(ILjava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64List(ILjava/util/List;Z)V

    .line 598
    return-void
.end method

.method abstract blacklist writeSInt32(I)V
.end method

.method public final blacklist writeSInt32List(ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    instance-of v0, p2, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_a

    .line 604
    check-cast p2, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt32List_Internal(ILcom/android/framework/protobuf/IntArrayList;Z)V

    goto :goto_d

    .line 606
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt32List_Internal(ILjava/util/List;Z)V

    .line 608
    :goto_d
    return-void
.end method

.method abstract blacklist writeSInt64(J)V
.end method

.method public final blacklist writeSInt64List(ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 649
    instance-of v0, p2, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_a

    .line 650
    check-cast p2, Lcom/android/framework/protobuf/LongArrayList;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt64List_Internal(ILcom/android/framework/protobuf/LongArrayList;Z)V

    goto :goto_d

    .line 652
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt64List_Internal(ILjava/util/List;Z)V

    .line 654
    :goto_d
    return-void
.end method

.method abstract blacklist writeString(Ljava/lang/String;)V
.end method

.method public final blacklist writeStringList(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 515
    instance-of v0, p2, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v0, :cond_1a

    .line 516
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/LazyStringList;

    .line 517
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_d
    if-ltz p2, :cond_19

    .line 518
    invoke-interface {v0, p2}, Lcom/android/framework/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeLazyString(ILjava/lang/Object;)V

    .line 517
    add-int/lit8 p2, p2, -0x1

    goto :goto_d

    .line 520
    :cond_19
    goto :goto_2e

    .line 521
    :cond_1a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_20
    if-ltz v0, :cond_2e

    .line 522
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeString(ILjava/lang/String;)V

    .line 521
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 525
    :cond_2e
    :goto_2e
    return-void
.end method

.method abstract blacklist writeTag(II)V
.end method

.method public final blacklist writeUInt32List(ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    instance-of v0, p2, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_a

    .line 546
    check-cast p2, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt32List_Internal(ILcom/android/framework/protobuf/IntArrayList;Z)V

    goto :goto_d

    .line 548
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt32List_Internal(ILjava/util/List;Z)V

    .line 550
    :goto_d
    return-void
.end method

.method public final blacklist writeUInt64List(ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    instance-of v0, p2, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_a

    .line 281
    check-cast p2, Lcom/android/framework/protobuf/LongArrayList;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt64List_Internal(ILcom/android/framework/protobuf/LongArrayList;Z)V

    goto :goto_d

    .line 283
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt64List_Internal(ILjava/util/List;Z)V

    .line 285
    :goto_d
    return-void
.end method

.method abstract blacklist writeVarint32(I)V
.end method

.method abstract blacklist writeVarint64(J)V
.end method
