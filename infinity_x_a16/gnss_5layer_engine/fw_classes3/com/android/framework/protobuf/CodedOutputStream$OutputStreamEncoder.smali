.class final Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;
.super Lcom/android/framework/protobuf/CodedOutputStream$AbstractBufferedEncoder;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OutputStreamEncoder"
.end annotation


# instance fields
.field private final blacklist out:Ljava/io/OutputStream;


# direct methods
.method constructor blacklist <init>(Ljava/io/OutputStream;I)V
    .registers 3

    .line 2668
    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$AbstractBufferedEncoder;-><init>(I)V

    .line 2669
    if-eqz p1, :cond_8

    .line 2672
    iput-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    .line 2673
    return-void

    .line 2670
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

    .line 3018
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 3019
    iput v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 3020
    return-void
.end method

.method private blacklist flushIfNotAvailable(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3012
    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_a

    .line 3013
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 3015
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

    .line 2928
    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    if-lez v0, :cond_7

    .line 2930
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2932
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

    .line 2822
    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    if-ne v0, v1, :cond_9

    .line 2823
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2826
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer(B)V

    .line 2827
    return-void
.end method

.method public blacklist write(Ljava/nio/ByteBuffer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2974
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2975
    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_1d

    .line 2977
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2978
    iget p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2979
    iget p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    goto :goto_62

    .line 2983
    :cond_1d
    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v1, v2

    .line 2984
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2985
    sub-int/2addr v0, v1

    .line 2986
    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2987
    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 2988
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2993
    :goto_36
    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_56

    .line 2995
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2996
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v4, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    invoke-virtual {v1, v3, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 2997
    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    sub-int/2addr v0, v1

    .line 2998
    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    goto :goto_36

    .line 3000
    :cond_56
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 3001
    iput v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 3002
    iget p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 3004
    :goto_62
    return-void
.end method

.method public blacklist write([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2936
    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_19

    .line 2938
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2939
    iget p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2940
    iget p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    goto :goto_4a

    .line 2944
    :cond_19
    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v0, v1

    .line 2945
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2946
    add-int/2addr p2, v0

    .line 2947
    sub-int/2addr p3, v0

    .line 2948
    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iput v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2949
    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 2950
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2955
    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    if-gt p3, v0, :cond_40

    .line 2957
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2958
    iput p3, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    goto :goto_45

    .line 2961
    :cond_40
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 2963
    :goto_45
    iget p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 2965
    :goto_4a
    return-void
.end method

.method public blacklist writeBool(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2717
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2718
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2719
    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer(B)V

    .line 2720
    return-void
.end method

.method public blacklist writeByteArray(I[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2736
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeByteArray(I[BII)V

    .line 2737
    return-void
.end method

.method public blacklist writeByteArray(I[BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2743
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2744
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeByteArrayNoTag([BII)V

    .line 2745
    return-void
.end method

.method public blacklist writeByteArrayNoTag([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2762
    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2763
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->write([BII)V

    .line 2764
    return-void
.end method

.method public blacklist writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2749
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2750
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2751
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    .line 2752
    return-void
.end method

.method public blacklist writeBytes(ILcom/android/framework/protobuf/ByteString;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2730
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2731
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V

    .line 2732
    return-void
.end method

.method public blacklist writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2756
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2757
    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/ByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    .line 2758
    return-void
.end method

.method public blacklist writeFixed32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2696
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2697
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2698
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferFixed32NoTag(I)V

    .line 2699
    return-void
.end method

.method public blacklist writeFixed32NoTag(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2847
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2848
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferFixed32NoTag(I)V

    .line 2849
    return-void
.end method

.method public blacklist writeFixed64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2710
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2711
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2712
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferFixed64NoTag(J)V

    .line 2713
    return-void
.end method

.method public blacklist writeFixed64NoTag(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2859
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2860
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferFixed64NoTag(J)V

    .line 2861
    return-void
.end method

.method public blacklist writeInt32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2682
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2683
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2684
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferInt32NoTag(I)V

    .line 2685
    return-void
.end method

.method public blacklist writeInt32NoTag(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2831
    if-ltz p1, :cond_6

    .line 2832
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    goto :goto_a

    .line 2835
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt64NoTag(J)V

    .line 2837
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

    .line 3008
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 3009
    return-void
.end method

.method public blacklist writeLazy([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2969
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->write([BII)V

    .line 2970
    return-void
.end method

.method public blacklist writeMessage(ILcom/android/framework/protobuf/MessageLite;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2779
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2780
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;)V

    .line 2781
    return-void
.end method

.method blacklist writeMessage(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2786
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2787
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V

    .line 2788
    return-void
.end method

.method public blacklist writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2810
    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2811
    invoke-interface {p1, p0}, Lcom/android/framework/protobuf/MessageLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 2812
    return-void
.end method

.method blacklist writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2816
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/AbstractMessageLite;

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/android/framework/protobuf/Schema;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2817
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->wrapper:Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    invoke-interface {p2, p1, v0}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 2818
    return-void
.end method

.method public blacklist writeMessageSetExtension(ILcom/android/framework/protobuf/MessageLite;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2793
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2794
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32(II)V

    .line 2795
    invoke-virtual {p0, v1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeMessage(ILcom/android/framework/protobuf/MessageLite;)V

    .line 2796
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2797
    return-void
.end method

.method public blacklist writeRawBytes(Ljava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2768
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2769
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->write([BII)V

    goto :goto_20

    .line 2771
    :cond_16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2772
    invoke-static {p1}, Lcom/android/framework/protobuf/Java8Compatibility;->clear(Ljava/nio/Buffer;)V

    .line 2773
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 2775
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

    .line 2802
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2803
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32(II)V

    .line 2804
    invoke-virtual {p0, v1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    .line 2805
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2806
    return-void
.end method

.method public blacklist writeString(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2724
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2725
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeStringNoTag(Ljava/lang/String;)V

    .line 2726
    return-void
.end method

.method public blacklist writeStringNoTag(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2868
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2869
    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    move-result v1

    .line 2873
    add-int v2, v1, v0

    iget v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    if-le v2, v3, :cond_1e

    .line 2878
    new-array v1, v0, [B

    .line 2879
    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/android/framework/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v0

    .line 2880
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2881
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeLazy([BII)V

    .line 2882
    return-void

    .line 2886
    :cond_1e
    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v0, v3

    if-le v2, v0, :cond_28

    .line 2888
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2893
    :cond_28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    move-result v0

    .line 2894
    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I
    :try_end_32
    .catch Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_32} :catch_7b

    .line 2897
    if-ne v0, v1, :cond_50

    .line 2898
    add-int v1, v2, v0

    :try_start_36
    iput v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2899
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    iget v4, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v5, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v4, v5

    invoke-static {p1, v1, v3, v4}, Lcom/android/framework/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 2902
    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2903
    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    .line 2904
    invoke-virtual {p0, v3}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt32NoTag(I)V

    .line 2905
    iput v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2906
    goto :goto_61

    .line 2907
    :cond_50
    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v3

    .line 2908
    invoke-virtual {p0, v3}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt32NoTag(I)V

    .line 2909
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-static {p1, v0, v1, v3}, Lcom/android/framework/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2911
    :goto_61
    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I
    :try_end_66
    .catch Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException; {:try_start_36 .. :try_end_66} :catch_6f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_36 .. :try_end_66} :catch_68

    .line 2920
    nop

    .line 2923
    goto :goto_7f

    .line 2918
    :catch_68
    move-exception v0

    .line 2919
    :try_start_69
    new-instance v1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2912
    :catch_6f
    move-exception v0

    .line 2915
    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    iget v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 2916
    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2917
    throw v0
    :try_end_7b
    .catch Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException; {:try_start_69 .. :try_end_7b} :catch_7b

    .line 2921
    :catch_7b
    move-exception v0

    .line 2922
    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;)V

    .line 2924
    :goto_7f
    return-void
.end method

.method public blacklist writeTag(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2677
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2678
    return-void
.end method

.method public blacklist writeUInt32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2689
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2690
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2691
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt32NoTag(I)V

    .line 2692
    return-void
.end method

.method public blacklist writeUInt32NoTag(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2841
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2842
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt32NoTag(I)V

    .line 2843
    return-void
.end method

.method public blacklist writeUInt64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2703
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2704
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2705
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt64NoTag(J)V

    .line 2706
    return-void
.end method

.method public blacklist writeUInt64NoTag(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2853
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2854
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt64NoTag(J)V

    .line 2855
    return-void
.end method
