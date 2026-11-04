.class final Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;
.super Lcom/android/framework/protobuf/CodedOutputStream$AbstractBufferedEncoder;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteOutputEncoder"
.end annotation


# instance fields
.field private final blacklist out:Lcom/android/framework/protobuf/ByteOutput;


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/ByteOutput;I)V
    .registers 3

    .line 2354
    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$AbstractBufferedEncoder;-><init>(I)V

    .line 2355
    if-eqz p1, :cond_8

    .line 2358
    iput-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/android/framework/protobuf/ByteOutput;

    .line 2359
    return-void

    .line 2356
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "out"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist doFlush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2655
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/android/framework/protobuf/ByteOutput;

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/framework/protobuf/ByteOutput;->write([BII)V

    .line 2656
    iput v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2657
    return-void
.end method

.method private blacklist flushIfNotAvailable(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2649
    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->limit:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_a

    .line 2650
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->doFlush()V

    .line 2652
    :cond_a
    return-void
.end method


# virtual methods
.method public blacklist flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2612
    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    if-lez v0, :cond_7

    .line 2614
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->doFlush()V

    .line 2616
    :cond_7
    return-void
.end method

.method public blacklist write(B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2508
    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->limit:I

    if-ne v0, v1, :cond_9

    .line 2509
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->doFlush()V

    .line 2512
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->buffer(B)V

    .line 2513
    return-void
.end method

.method public blacklist write(Ljava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2634
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->flush()V

    .line 2635
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2636
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/android/framework/protobuf/ByteOutput;

    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/ByteOutput;->write(Ljava/nio/ByteBuffer;)V

    .line 2637
    iget p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    .line 2638
    return-void
.end method

.method public blacklist write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2620
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->flush()V

    .line 2621
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/android/framework/protobuf/ByteOutput;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/ByteOutput;->write([BII)V

    .line 2622
    iget p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    .line 2623
    return-void
.end method

.method public blacklist writeBool(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2403
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2404
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 2405
    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->buffer(B)V

    .line 2406
    return-void
.end method

.method public blacklist writeByteArray(I[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2422
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeByteArray(I[BII)V

    .line 2423
    return-void
.end method

.method public blacklist writeByteArray(I[BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2429
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2430
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeByteArrayNoTag([BII)V

    .line 2431
    return-void
.end method

.method public blacklist writeByteArrayNoTag([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2448
    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2449
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->write([BII)V

    .line 2450
    return-void
.end method

.method public blacklist writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2435
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2436
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2437
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    .line 2438
    return-void
.end method

.method public blacklist writeBytes(ILcom/android/framework/protobuf/ByteString;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2416
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2417
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V

    .line 2418
    return-void
.end method

.method public blacklist writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2442
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2443
    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/ByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    .line 2444
    return-void
.end method

.method public blacklist writeFixed32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2382
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2383
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 2384
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferFixed32NoTag(I)V

    .line 2385
    return-void
.end method

.method public blacklist writeFixed32NoTag(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2533
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2534
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferFixed32NoTag(I)V

    .line 2535
    return-void
.end method

.method public blacklist writeFixed64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2396
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2397
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 2398
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferFixed64NoTag(J)V

    .line 2399
    return-void
.end method

.method public blacklist writeFixed64NoTag(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2545
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2546
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferFixed64NoTag(J)V

    .line 2547
    return-void
.end method

.method public blacklist writeInt32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2368
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2369
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 2370
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferInt32NoTag(I)V

    .line 2371
    return-void
.end method

.method public blacklist writeInt32NoTag(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2517
    if-ltz p1, :cond_6

    .line 2518
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    goto :goto_a

    .line 2521
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt64NoTag(J)V

    .line 2523
    :goto_a
    return-void
.end method

.method public blacklist writeLazy(Ljava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2642
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->flush()V

    .line 2643
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2644
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/android/framework/protobuf/ByteOutput;

    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/ByteOutput;->writeLazy(Ljava/nio/ByteBuffer;)V

    .line 2645
    iget p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    .line 2646
    return-void
.end method

.method public blacklist writeLazy([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2627
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->flush()V

    .line 2628
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/android/framework/protobuf/ByteOutput;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/ByteOutput;->writeLazy([BII)V

    .line 2629
    iget p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    .line 2630
    return-void
.end method

.method public blacklist writeMessage(ILcom/android/framework/protobuf/MessageLite;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2465
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2466
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;)V

    .line 2467
    return-void
.end method

.method blacklist writeMessage(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2472
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2473
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V

    .line 2474
    return-void
.end method

.method public blacklist writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2496
    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2497
    invoke-interface {p1, p0}, Lcom/android/framework/protobuf/MessageLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 2498
    return-void
.end method

.method blacklist writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2502
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/AbstractMessageLite;

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/android/framework/protobuf/Schema;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2503
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->wrapper:Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    invoke-interface {p2, p1, v0}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 2504
    return-void
.end method

.method public blacklist writeMessageSetExtension(ILcom/android/framework/protobuf/MessageLite;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2479
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2480
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32(II)V

    .line 2481
    invoke-virtual {p0, v1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeMessage(ILcom/android/framework/protobuf/MessageLite;)V

    .line 2482
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2483
    return-void
.end method

.method public blacklist writeRawBytes(Ljava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2454
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2455
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->write([BII)V

    goto :goto_20

    .line 2457
    :cond_16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2458
    invoke-static {p1}, Lcom/android/framework/protobuf/Java8Compatibility;->clear(Ljava/nio/Buffer;)V

    .line 2459
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 2461
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

    .line 2488
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2489
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32(II)V

    .line 2490
    invoke-virtual {p0, v1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    .line 2491
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2492
    return-void
.end method

.method public blacklist writeString(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2410
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2411
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeStringNoTag(Ljava/lang/String;)V

    .line 2412
    return-void
.end method

.method public blacklist writeStringNoTag(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2553
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2554
    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->computeUInt32SizeNoTag(I)I

    move-result v1

    .line 2558
    add-int v2, v1, v0

    iget v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->limit:I

    if-le v2, v3, :cond_1e

    .line 2563
    new-array v1, v0, [B

    .line 2564
    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/android/framework/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result p1

    .line 2565
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2566
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeLazy([BII)V

    .line 2567
    return-void

    .line 2571
    :cond_1e
    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->limit:I

    iget v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    sub-int/2addr v0, v3

    if-le v2, v0, :cond_28

    .line 2573
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->doFlush()V

    .line 2576
    :cond_28
    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2580
    :try_start_2a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->computeUInt32SizeNoTag(I)I

    move-result v2

    .line 2582
    if-ne v2, v1, :cond_55

    .line 2583
    add-int v1, v0, v2

    iput v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2584
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->buffer:[B

    iget v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    iget v4, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->limit:I

    iget v5, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    sub-int/2addr v4, v5

    invoke-static {p1, v1, v3, v4}, Lcom/android/framework/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 2587
    iput v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2588
    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 2589
    invoke-virtual {p0, v3}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt32NoTag(I)V

    .line 2590
    iput v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2591
    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    .line 2592
    goto :goto_81

    .line 2593
    :cond_55
    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v1

    .line 2594
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt32NoTag(I)V

    .line 2595
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->buffer:[B

    iget v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    invoke-static {p1, v2, v3, v1}, Lcom/android/framework/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v2

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2596
    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I
    :try_end_6b
    .catch Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException; {:try_start_2a .. :try_end_6b} :catch_73
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2a .. :try_end_6b} :catch_6c

    goto :goto_81

    .line 2605
    :catch_6c
    move-exception p1

    .line 2606
    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2598
    :catch_73
    move-exception v1

    .line 2600
    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    iget v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    sub-int/2addr v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    .line 2601
    iput v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2604
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;)V

    .line 2607
    :goto_81
    nop

    .line 2608
    return-void
.end method

.method public blacklist writeTag(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2363
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2364
    return-void
.end method

.method public blacklist writeUInt32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2375
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2376
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 2377
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt32NoTag(I)V

    .line 2378
    return-void
.end method

.method public blacklist writeUInt32NoTag(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2527
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2528
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt32NoTag(I)V

    .line 2529
    return-void
.end method

.method public blacklist writeUInt64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2389
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2390
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 2391
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt64NoTag(J)V

    .line 2392
    return-void
.end method

.method public blacklist writeUInt64NoTag(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2539
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2540
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt64NoTag(J)V

    .line 2541
    return-void
.end method
